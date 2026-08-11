`timescale 1ns / 1ps

module tb_VDP;

    // ------------------------------------------------------------
    // Clock / reset
    // ------------------------------------------------------------
    reg clk_100 = 1'b0;
    reg resetn  = 1'b0;

    always #5 clk_100 = ~clk_100;   // 100 MHz


    // ------------------------------------------------------------
    // VGA
    // ------------------------------------------------------------
    wire       h_sync;
    wire       v_sync;
    wire [3:0] vga_r;
    wire [3:0] vga_g;
    wire [3:0] vga_b;


    // ------------------------------------------------------------
    // DUT
    // ------------------------------------------------------------
    VDP #(
        .VGA_H_ACTIVE(640),
        .VGA_V_ACTIVE(480),

        .VGA_H_SYNC(96),
        .VGA_V_SYNC(2),

        .VGA_H_FRONT_PORCH(16),
        .VGA_V_FRONT_PORCH(11),

        .VGA_H_BACK_PORCH(48),
        .VGA_V_BACK_PORCH(31)
    ) dut (

        .s_axi_aclk(clk_100),
        .s_axi_aresetn(resetn),

        .h_sync(h_sync),
        .v_sync(v_sync),

        .vga_r(vga_r),
        .vga_g(vga_g),
        .vga_b(vga_b)
    );


    // ============================================================
    // Testbench drives CPU-side BRAM ports
    // ============================================================

    reg [12:0] map_cpu_addr_tb;
    reg [31:0] map_cpu_din_tb;
    reg        map_cpu_en_tb;
    reg [3:0]  map_cpu_wen_tb;

    reg [13:0] data_cpu_addr_tb;
    reg [31:0] data_cpu_din_tb;
    reg        data_cpu_en_tb;
    reg [3:0]  data_cpu_wen_tb;


    // ============================================================
    // Initialization data
    // ============================================================

    integer n;
    integer x;
    integer y;

    reg [7:0] A_bitmap [0:7];


    // ============================================================
    // Write one 8-bit pixel into TILE DATA RAM
    //
    // CPU side is 32-bit:
    //
    // byte 0 -> bits  7:0
    // byte 1 -> bits 15:8
    // byte 2 -> bits 23:16
    // byte 3 -> bits 31:24
    // ============================================================

    task write_tile_byte;

        input [15:0] byte_addr;
        input [7:0]  data;

        begin

            @(negedge clk_100);

            data_cpu_addr_tb = byte_addr >> 2;
            data_cpu_din_tb  = 32'b0;
            data_cpu_wen_tb  = 4'b0000;
            data_cpu_en_tb   = 1'b1;

            case(byte_addr[1:0])

                2'd0: begin
                    data_cpu_din_tb[7:0] = data;
                    data_cpu_wen_tb = 4'b0001;
                end

                2'd1: begin
                    data_cpu_din_tb[15:8] = data;
                    data_cpu_wen_tb = 4'b0010;
                end

                2'd2: begin
                    data_cpu_din_tb[23:16] = data;
                    data_cpu_wen_tb = 4'b0100;
                end

                2'd3: begin
                    data_cpu_din_tb[31:24] = data;
                    data_cpu_wen_tb = 4'b1000;
                end

            endcase


            @(posedge clk_100);


            @(negedge clk_100);

            data_cpu_en_tb  = 1'b0;
            data_cpu_wen_tb = 4'b0000;

        end

    endtask


    // ============================================================
    // Write one complete 32-bit TILE DATA word
    //
    // Much faster for initializing complete tiles.
    // ============================================================

    task write_tile_word;

        input [13:0] addr;
        input [31:0] data;

        begin

            @(negedge clk_100);

            data_cpu_addr_tb = addr;
            data_cpu_din_tb  = data;
            data_cpu_en_tb   = 1'b1;
            data_cpu_wen_tb  = 4'b1111;


            @(posedge clk_100);


            @(negedge clk_100);

            data_cpu_en_tb   = 1'b0;
            data_cpu_wen_tb  = 4'b0000;

        end

    endtask


    // ============================================================
    // Write one 16-bit MAP entry
    //
    // VDP side:
    //
    //     16 bits / map entry
    //
    // CPU side:
    //
    //     32 bits = two map entries
    //
    // even entry -> bits 15:0
    // odd entry  -> bits 31:16
    //
    // Only bits [9:0] currently contain tile number.
    // ============================================================

    task write_map_entry;

        input [13:0] entry_addr;
        input [9:0]  tile;

        begin

            @(negedge clk_100);

            map_cpu_addr_tb = entry_addr >> 1;
            map_cpu_din_tb  = 32'b0;
            map_cpu_en_tb   = 1'b1;


            if(entry_addr[0] == 1'b0) begin

                // Even entry
                map_cpu_din_tb[15:0] = {
                    6'b000000,
                    tile
                };

                map_cpu_wen_tb = 4'b0011;

            end
            else begin

                // Odd entry
                map_cpu_din_tb[31:16] = {
                    6'b000000,
                    tile
                };

                map_cpu_wen_tb = 4'b1100;

            end


            @(posedge clk_100);


            @(negedge clk_100);

            map_cpu_en_tb  = 1'b0;
            map_cpu_wen_tb = 4'b0000;

        end

    endtask


    // ============================================================
    // Write two map entries simultaneously
    //
    // CPU address contains:
    //
    // bits 15:0  = even entry
    // bits 31:16 = odd entry
    // ============================================================

    task write_map_word;

        input [12:0] addr;
        input [15:0] even_entry;
        input [15:0] odd_entry;

        begin

            @(negedge clk_100);

            map_cpu_addr_tb = addr;

            map_cpu_din_tb = {
                odd_entry,
                even_entry
            };

            map_cpu_en_tb  = 1'b1;
            map_cpu_wen_tb = 4'b1111;


            @(posedge clk_100);


            @(negedge clk_100);

            map_cpu_en_tb  = 1'b0;
            map_cpu_wen_tb = 4'b0000;

        end

    endtask


    // ============================================================
    // Reset + initialize memories
    // ============================================================

    initial begin

        resetn = 1'b0;


        // --------------------------------------------------------
        // Initial TB values
        // --------------------------------------------------------

        map_cpu_addr_tb = 13'b0;
        map_cpu_din_tb  = 32'b0;
        map_cpu_en_tb   = 1'b0;
        map_cpu_wen_tb  = 4'b0;

        data_cpu_addr_tb = 14'b0;
        data_cpu_din_tb  = 32'b0;
        data_cpu_en_tb   = 1'b0;
        data_cpu_wen_tb  = 4'b0;


        // --------------------------------------------------------
        // Connect TB signals to internal CPU BRAM ports
        // --------------------------------------------------------

        force dut.T0_gen.map_cpu_addr =
            map_cpu_addr_tb;

        force dut.T0_gen.map_cpu_din =
            map_cpu_din_tb;

        force dut.T0_gen.map_cpu_en =
            map_cpu_en_tb;

        force dut.T0_gen.map_cpu_wen =
            map_cpu_wen_tb;


        force dut.T0_gen.data_cpu_addr =
            data_cpu_addr_tb;

        force dut.T0_gen.data_cpu_din =
            data_cpu_din_tb;

        force dut.T0_gen.data_cpu_en =
            data_cpu_en_tb;

        force dut.T0_gen.data_cpu_wen =
            data_cpu_wen_tb;


        // --------------------------------------------------------
        // 8x8 bitmap A
        //
        // #..##...
        // ..#..#..
        // .#....#.
        // .#....#.
        // .######.
        // .#....#.
        // .#....#.
        // .......#
        // --------------------------------------------------------

        A_bitmap[0] = 8'b10011000;
        A_bitmap[1] = 8'b00100100;
        A_bitmap[2] = 8'b01000010;
        A_bitmap[3] = 8'b01000010;
        A_bitmap[4] = 8'b01111110;
        A_bitmap[5] = 8'b01000010;
        A_bitmap[6] = 8'b01000010;
        A_bitmap[7] = 8'b00000001;


        // Let BRAM behavioral model settle
        repeat (20)
            @(posedge clk_100);


        // ========================================================
        // TILE 0 = white A on black
        //
        // palette index:
        //
        // 1 = black
        // 2 = white
        //
        // 64 bytes per tile
        // ========================================================

        $display("Writing TILE 0 = A");

        for(y = 0; y < 8; y = y + 1) begin

            for(x = 0; x < 8; x = x + 1) begin

                if(A_bitmap[y][7-x])

                    write_tile_byte(
                        (y * 8) + x,
                        8'd2
                    );

                else

                    write_tile_byte(
                        (y * 8) + x,
                        8'd1
                    );

            end

        end


        // ========================================================
        // TILE 1 = completely black
        //
        // byte addresses 64..127
        // ========================================================

        $display("Writing TILE 1 = black");

        for(n = 0; n < 64; n = n + 1) begin

            write_tile_byte(
                16'd64 + n,
                8'd1
            );

        end


        // ========================================================
        // TILE 2 = alternating black/white pattern
        //
        // byte addresses 128..191
        // ========================================================

        $display("Writing TILE 2 = lines");

        for(n = 0; n < 64; n = n + 1) begin

            write_tile_byte(
                16'd128 + n,
                8'd1 + n[0]
            );

        end


        // ========================================================
        // Fill entire 128 x 128 map with TILE 1
        //
        // 16384 entries
        //
        // CPU writes 2 entries per operation
        //
        // therefore:
        //
        // 8192 x 32-bit writes
        // ========================================================

        $display("Initializing tile map...");

        for(n = 0; n < 8192; n = n + 1) begin

            write_map_word(
                n,
                16'h0001,
                16'h0001
            );

        end


        // ========================================================
        // Special map entries
        // ========================================================

        // top-left
        write_map_entry(
            14'd0,
            10'd0
        );


        // Last tile on first visible 640-pixel line
        //
        // 640 / 8 = 80 tiles
        //
        // indices 0..79
        write_map_entry(
            14'd79,
            10'd0
        );


        // First tile of map row 1
        write_map_entry(
            14'd128,
            10'd2
        );


        // another A
        write_map_entry(
            14'd7631,
            10'd0
        );


        $display("Tile/map initialization complete");


        repeat (10)
            @(posedge clk_100);


        // --------------------------------------------------------
        // Release VDP reset
        // --------------------------------------------------------

        resetn = 1'b1;

        $display("VDP reset released");

    end


    // ============================================================
    // Frame capture
    // ============================================================

    integer frame_file;
    integer pixel_count;


    initial begin

        pixel_count = 0;

        frame_file = $fopen(
            "frame.ppm",
            "w"
        );


        if(frame_file == 0) begin

            $display(
                "ERROR: Could not open frame.ppm"
            );

            $finish;

        end


        // ASCII PPM
        $fwrite(frame_file, "P3\n");
        $fwrite(frame_file, "640 480\n");
        $fwrite(frame_file, "255\n");

    end


    // ------------------------------------------------------------
    // Capture one active pixel per VGA pixel clock
    // ------------------------------------------------------------

    always @(posedge dut.VGA_clk) begin

        if(resetn && dut.rgb_active) begin


            // RGB444 -> RGB888

            $fwrite(
                frame_file,
                "%0d %0d %0d\n",
                vga_r * 17,
                vga_g * 17,
                vga_b * 17
            );


            pixel_count = pixel_count + 1;


            if(pixel_count == 640 * 480) begin

                $fclose(frame_file);

                $display("");
                $display("====================================");
                $display("VGA frame captured");
                $display("Pixels: %0d", pixel_count);
                $display("Output: frame.ppm");
                $display("====================================");
                $display("");

                #100;
                $finish;

            end

        end

    end


    // ============================================================
    // Safety timeout
    // ============================================================

    initial begin

        #100000000;

        $display(
            "ERROR: Simulation timeout"
        );

        $fclose(frame_file);

        $finish;

    end

endmodule