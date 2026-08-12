`timescale 1ns / 1ps

module tb_VDP;

    // ============================================================
    // Clock / reset
    // ============================================================

    reg clk_100 = 1'b0;
    reg resetn  = 1'b0;

    always #5 clk_100 = ~clk_100;   // 100 MHz


    // ============================================================
    // VGA
    // ============================================================

    wire       h_sync;
    wire       v_sync;
    wire [3:0] vga_r;
    wire [3:0] vga_g;
    wire [3:0] vga_b;


    // ============================================================
    // TILE 0 MAP CPU BRAM interface
    //
    // 32 KiB
    // byte addressed
    // ============================================================

    reg  [14:0] t0_map_cpu_addr = 15'b0;
    reg  [31:0] t0_map_cpu_din  = 32'b0;
    wire [31:0] t0_map_cpu_dout;

    reg         t0_map_cpu_en  = 1'b0;
    reg  [3:0]  t0_map_cpu_wen = 4'b0;


    // ============================================================
    // TILE 0 DATA CPU BRAM interface
    //
    // 64 KiB
    // byte addressed
    // ============================================================

    reg  [15:0] t0_data_cpu_addr = 16'b0;
    reg  [31:0] t0_data_cpu_din  = 32'b0;
    wire [31:0] t0_data_cpu_dout;

    reg         t0_data_cpu_en  = 1'b0;
    reg  [3:0]  t0_data_cpu_wen = 4'b0;


    // ============================================================
    // SPRITE 0 ATTRIBUTE CPU BRAM interface
    //
    // 512 bytes
    // byte addressed
    // ============================================================

    reg  [8:0]  s0_att_cpu_addr = 9'b0;
    reg  [31:0] s0_att_cpu_din  = 32'b0;
    wire [31:0] s0_att_cpu_dout;

    reg         s0_att_cpu_en  = 1'b0;
    reg  [3:0]  s0_att_cpu_wen = 4'b0;


    // ============================================================
    // SPRITE 0 DATA CPU BRAM interface
    //
    // 32 KiB
    // Not initialized because all sprites are disabled.
    // ============================================================

    reg  [14:0] s0_data_cpu_addr = 15'b0;
    reg  [31:0] s0_data_cpu_din  = 32'b0;
    wire [31:0] s0_data_cpu_dout;

    reg         s0_data_cpu_en  = 1'b0;
    reg  [3:0]  s0_data_cpu_wen = 4'b0;


    // ============================================================
    // DUT
    // ============================================================

    VDP #(
        .VGA_H_ACTIVE(640),
        .VGA_V_ACTIVE(480),

        .VGA_H_SYNC(96),
        .VGA_V_SYNC(2),

        .VGA_H_FRONT_PORCH(16),
        .VGA_V_FRONT_PORCH(11),

        .VGA_H_BACK_PORCH(48),
        .VGA_V_BACK_PORCH(31),

        .NUM_GEN(2),
        .T0_GEN_NUM(0),
        .S0_GEN_NUM(1)

    ) dut (

        // --------------------------------------------------------
        // TILE 0 MAP
        // --------------------------------------------------------

        .t0_map_cpu_addr(t0_map_cpu_addr),
        .t0_map_cpu_din(t0_map_cpu_din),
        .t0_map_cpu_dout(t0_map_cpu_dout),
        .t0_map_cpu_en(t0_map_cpu_en),
        .t0_map_cpu_wen(t0_map_cpu_wen),
        .t0_map_cpu_clk(clk_100),


        // --------------------------------------------------------
        // TILE 0 DATA
        // --------------------------------------------------------

        .t0_data_cpu_addr(t0_data_cpu_addr),
        .t0_data_cpu_din(t0_data_cpu_din),
        .t0_data_cpu_dout(t0_data_cpu_dout),
        .t0_data_cpu_en(t0_data_cpu_en),
        .t0_data_cpu_wen(t0_data_cpu_wen),
        .t0_data_cpu_clk(clk_100),


        // --------------------------------------------------------
        // SPRITE 0 ATTRIBUTES
        // --------------------------------------------------------

        .s0_att_cpu_addr(s0_att_cpu_addr),
        .s0_att_cpu_din(s0_att_cpu_din),
        .s0_att_cpu_dout(s0_att_cpu_dout),
        .s0_att_cpu_en(s0_att_cpu_en),
        .s0_att_cpu_wen(s0_att_cpu_wen),
        .s0_att_cpu_clk(clk_100),


        // --------------------------------------------------------
        // SPRITE 0 DATA
        // --------------------------------------------------------

        .s0_data_cpu_addr(s0_data_cpu_addr),
        .s0_data_cpu_din(s0_data_cpu_din),
        .s0_data_cpu_dout(s0_data_cpu_dout),
        .s0_data_cpu_en(s0_data_cpu_en),
        .s0_data_cpu_wen(s0_data_cpu_wen),
        .s0_data_cpu_clk(clk_100),


        // --------------------------------------------------------
        // Common VDP
        // --------------------------------------------------------

        .s_axi_aclk(clk_100),
        .s_axi_aresetn(resetn),

        .h_sync(h_sync),
        .v_sync(v_sync),

        .vga_r(vga_r),
        .vga_g(vga_g),
        .vga_b(vga_b)
    );


    // ============================================================
    // Initialization data
    // ============================================================

    integer n;
    integer x;
    integer y;

    reg [7:0] A_bitmap [0:7];


    // ============================================================
    // Write one byte into TILE DATA RAM
    //
    // IMPORTANT:
    //
    // t0_data_cpu_addr is a BYTE address.
    //
    // CPU BRAM data width = 32 bits.
    //
    // addr ...00 -> WEN 0001 -> data[7:0]
    // addr ...01 -> WEN 0010 -> data[15:8]
    // addr ...10 -> WEN 0100 -> data[23:16]
    // addr ...11 -> WEN 1000 -> data[31:24]
    // ============================================================

    task write_tile_byte;

        input [15:0] byte_addr;
        input [7:0]  data;

        begin

            @(negedge clk_100);

            // BRAM controller/native interface uses byte address.
            // Keep the 32-bit word address aligned.
            t0_data_cpu_addr = {
                byte_addr[15:2],
                2'b00
            };

            t0_data_cpu_din = 32'b0;
            t0_data_cpu_wen = 4'b0000;
            t0_data_cpu_en  = 1'b1;


            case(byte_addr[1:0])

                2'd0: begin
                    t0_data_cpu_din[7:0] = data;
                    t0_data_cpu_wen = 4'b0001;
                end

                2'd1: begin
                    t0_data_cpu_din[15:8] = data;
                    t0_data_cpu_wen = 4'b0010;
                end

                2'd2: begin
                    t0_data_cpu_din[23:16] = data;
                    t0_data_cpu_wen = 4'b0100;
                end

                2'd3: begin
                    t0_data_cpu_din[31:24] = data;
                    t0_data_cpu_wen = 4'b1000;
                end

            endcase


            @(posedge clk_100);


            @(negedge clk_100);

            t0_data_cpu_en  = 1'b0;
            t0_data_cpu_wen = 4'b0000;

        end

    endtask


    // ============================================================
    // Write complete 32-bit TILE DATA word
    //
    // word_num:
    //
    // 0 -> byte address 0
    // 1 -> byte address 4
    // 2 -> byte address 8
    // ...
    // ============================================================

    task write_tile_word;

        input [13:0] word_num;
        input [31:0] data;

        begin

            @(negedge clk_100);

            t0_data_cpu_addr = {
                word_num,
                2'b00
            };

            t0_data_cpu_din = data;
            t0_data_cpu_en  = 1'b1;
            t0_data_cpu_wen = 4'b1111;


            @(posedge clk_100);


            @(negedge clk_100);

            t0_data_cpu_en  = 1'b0;
            t0_data_cpu_wen = 4'b0000;

        end

    endtask


    // ============================================================
    // Write one 16-bit MAP entry
    //
    // Each map entry = 16 bits.
    //
    // 32-bit CPU word:
    //
    // [15:0]  even map entry
    // [31:16] odd map entry
    //
    // t0_map_cpu_addr is BYTE addressed.
    // ============================================================

    task write_map_entry;

        input [13:0] entry_addr;
        input [9:0]  tile;

        begin

            @(negedge clk_100);


            // Two map entries per 32-bit word.
            //
            // entry 0/1 -> byte address 0
            // entry 2/3 -> byte address 4
            // entry 4/5 -> byte address 8

            t0_map_cpu_addr = {
                entry_addr[13:1],
                2'b00
            };


            t0_map_cpu_din = 32'b0;
            t0_map_cpu_en  = 1'b1;


            if(entry_addr[0] == 1'b0) begin

                // Even entry -> lower 16 bits

                t0_map_cpu_din[15:0] = {
                    6'b000000,
                    tile
                };

                t0_map_cpu_wen = 4'b0011;

            end
            else begin

                // Odd entry -> upper 16 bits

                t0_map_cpu_din[31:16] = {
                    6'b000000,
                    tile
                };

                t0_map_cpu_wen = 4'b1100;

            end


            @(posedge clk_100);


            @(negedge clk_100);

            t0_map_cpu_en  = 1'b0;
            t0_map_cpu_wen = 4'b0000;

        end

    endtask


    // ============================================================
    // Write two map entries at once
    //
    // word_num = CPU 32-bit word number.
    //
    // Each call writes:
    //
    // entry word_num*2
    // entry word_num*2+1
    // ============================================================

    task write_map_word;

        input [12:0] word_num;
        input [15:0] even_entry;
        input [15:0] odd_entry;

        begin

            @(negedge clk_100);


            // Convert 32-bit word number -> BYTE address

            t0_map_cpu_addr = {
                word_num,
                2'b00
            };


            t0_map_cpu_din = {
                odd_entry,
                even_entry
            };

            t0_map_cpu_en  = 1'b1;
            t0_map_cpu_wen = 4'b1111;


            @(posedge clk_100);


            @(negedge clk_100);

            t0_map_cpu_en  = 1'b0;
            t0_map_cpu_wen = 4'b0000;

        end

    endtask


    // ============================================================
    // Write one complete 32-bit word to SPRITE ATTRIBUTE RAM
    //
    // Attribute RAM = 512 bytes
    //
    // 128 x 32-bit CPU words
    //
    // One sprite attribute = 64 bits
    //                       = two CPU words
    // ============================================================

    task write_sprite_att_word;

        input [6:0]  word_num;
        input [31:0] data;

        begin

            @(negedge clk_100);

            s0_att_cpu_addr = {
                word_num,
                2'b00
            };

            s0_att_cpu_din = data;
            s0_att_cpu_en  = 1'b1;
            s0_att_cpu_wen = 4'b1111;


            @(posedge clk_100);


            @(negedge clk_100);

            s0_att_cpu_en  = 1'b0;
            s0_att_cpu_wen = 4'b0000;

        end

    endtask

// ============================================================
// Write one byte into SPRITE DATA RAM
// ============================================================
task write_sprite_data_byte;

    input [14:0] byte_addr;
    input [7:0]  data;

    begin
        @(negedge clk_100);

        s0_data_cpu_addr = {
            byte_addr[14:2],
            2'b00
        };

        s0_data_cpu_din = 32'b0;
        s0_data_cpu_en  = 1'b1;
        s0_data_cpu_wen = 4'b0000;

        case (byte_addr[1:0])

            2'd0: begin
                s0_data_cpu_din[7:0] = data;
                s0_data_cpu_wen = 4'b0001;
            end

            2'd1: begin
                s0_data_cpu_din[15:8] = data;
                s0_data_cpu_wen = 4'b0010;
            end

            2'd2: begin
                s0_data_cpu_din[23:16] = data;
                s0_data_cpu_wen = 4'b0100;
            end

            2'd3: begin
                s0_data_cpu_din[31:24] = data;
                s0_data_cpu_wen = 4'b1000;
            end

        endcase

        @(posedge clk_100);

        @(negedge clk_100);

        s0_data_cpu_en  = 1'b0;
        s0_data_cpu_wen = 4'b0000;
    end

endtask

// ============================================================
// Write one 64-bit sprite attribute
//
// Attribute RAM CPU port = 32-bit
// Therefore one sprite attribute uses two writes.
// ============================================================
task write_sprite_attribute;

    input [5:0]  sprite_num;
    input [63:0] attribute;

    reg [8:0] byte_addr;

    begin

        // Each sprite attribute = 8 bytes
        byte_addr = sprite_num << 3;


        // --------------------------------------------------------
        // Lower 32 bits
        // --------------------------------------------------------
        @(negedge clk_100);

        s0_att_cpu_addr = byte_addr;
        s0_att_cpu_din  = attribute[31:0];
        s0_att_cpu_en   = 1'b1;
        s0_att_cpu_wen  = 4'b1111;

        @(posedge clk_100);

        @(negedge clk_100);

        s0_att_cpu_en  = 1'b0;
        s0_att_cpu_wen = 4'b0000;


        // --------------------------------------------------------
        // Upper 32 bits
        // --------------------------------------------------------
        @(negedge clk_100);

        s0_att_cpu_addr = byte_addr + 9'd4;
        s0_att_cpu_din  = attribute[63:32];
        s0_att_cpu_en   = 1'b1;
        s0_att_cpu_wen  = 4'b1111;

        @(posedge clk_100);

        @(negedge clk_100);

        s0_att_cpu_en  = 1'b0;
        s0_att_cpu_wen = 4'b0000;

    end

endtask
    // ============================================================
    // Reset + initialize memories
    // ============================================================
    reg [7:0] smile [0:255];
    reg [7:0] smile32 [0:1023];
    reg [63:0] sprite2_att;
    
    reg [63:0] sprite_att;
integer s;
    initial begin

        resetn = 1'b0;


        // --------------------------------------------------------
        // Make sure all CPU interfaces start inactive
        // --------------------------------------------------------

        t0_map_cpu_addr = 0;
        t0_map_cpu_din  = 0;
        t0_map_cpu_en   = 0;
        t0_map_cpu_wen  = 0;

        t0_data_cpu_addr = 0;
        t0_data_cpu_din  = 0;
        t0_data_cpu_en   = 0;
        t0_data_cpu_wen  = 0;

        s0_att_cpu_addr = 0;
        s0_att_cpu_din  = 0;
        s0_att_cpu_en   = 0;
        s0_att_cpu_wen  = 0;

        // Sprite DATA port intentionally unused
        s0_data_cpu_addr = 0;
        s0_data_cpu_din  = 0;
        s0_data_cpu_en   = 0;
        s0_data_cpu_wen  = 0;


        // --------------------------------------------------------
        // 8x8 character A
        // --------------------------------------------------------

        A_bitmap[0] = 8'b10011000;
        A_bitmap[1] = 8'b00100100;
        A_bitmap[2] = 8'b01000010;
        A_bitmap[3] = 8'b01000010;
        A_bitmap[4] = 8'b01111110;
        A_bitmap[5] = 8'b01000010;
        A_bitmap[6] = 8'b01000010;
        A_bitmap[7] = 8'b00000001;


        // --------------------------------------------------------
        // Give Block Memory Generator simulation models time
        // --------------------------------------------------------

        repeat (20)
            @(posedge clk_100);


        // ========================================================
        // FIRST: disable every sprite
        //
        // Attribute RAM = 512 bytes
        //               = 128 x 32-bit words
        //
        // All zeros means:
        //
        // AC = 0
        //
        // therefore every sprite is inactive.
        // ========================================================

        $display("Disabling all sprites...");


        for(n = 0; n < 128; n = n + 1) begin

            write_sprite_att_word(
                n,
                32'h00000000
            );

        end


        $display("All sprites disabled");


        // ========================================================
        // TILE 0 = A
        //
        // palette:
        //
        // 1 = black
        // 2 = white
        // ========================================================

        $display("Writing TILE 0 = A");


        for(y = 0; y < 8; y = y + 1) begin

            for(x = 0; x < 8; x = x + 1) begin

                if(A_bitmap[y][7-x]) begin

                    write_tile_byte(
                        (y * 8) + x,
                        8'd2
                    );

                end
                else begin

                    write_tile_byte(
                        (y * 8) + x,
                        8'd1
                    );

                end

            end

        end


        // ========================================================
        // TILE 1 = black
        //
        // bytes 64..127
        // ========================================================

        $display("Writing TILE 1 = black");


        for(n = 0; n < 64; n = n + 1) begin

            write_tile_byte(
                16'd64 + n,
                8'd1
            );

        end


        // ========================================================
        // TILE 2 = alternating black/white
        //
        // bytes 128..191
        // ========================================================

        $display("Writing TILE 2 = lines");


        for(n = 0; n < 64; n = n + 1) begin

            write_tile_byte(
                16'd128 + n,
                8'd1 + n[0]
            );

        end


        // ========================================================
        // Fill entire 128 x 128 tile map with TILE 1
        //
        // 16384 entries
        //
        // Two entries per CPU write:
        //
        // 8192 writes
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


        // Top-left = A
        write_map_entry(
            14'd0,
            10'd0
        );


        // Right-most visible tile on first row
        write_map_entry(
            14'd79,
            10'd0
        );


        // First tile of second map row = TILE 2
        write_map_entry(
            14'd128,
            10'd2
        );


        // Another A
        write_map_entry(
            14'd7631,
            10'd0
        );

// ============================================================
// Make 16x16 smile sprite
//
// 0 = transparent
// 2 = white
// 6 = yellow
//
// Change indices if your sprite palette differs.
// ============================================================

for (n = 0; n < 256; n = n + 1)
    smile[n] = 8'd0;


// ------------------------------------------------------------
// Yellow circular-ish face
// ------------------------------------------------------------

// row 2
for (x = 5; x <= 10; x = x + 1)
    smile[2*16 + x] = 8'd6;

// row 3
for (x = 3; x <= 12; x = x + 1)
    smile[3*16 + x] = 8'd6;

// rows 4..11
for (y = 4; y <= 11; y = y + 1)
    for (x = 2; x <= 13; x = x + 1)
        smile[y*16 + x] = 8'd6;

// row 12
for (x = 3; x <= 12; x = x + 1)
    smile[12*16 + x] = 8'd6;

// row 13
for (x = 5; x <= 10; x = x + 1)
    smile[13*16 + x] = 8'd6;


    // ------------------------------------------------------------
    // Eyes - black
    // ------------------------------------------------------------

    smile[6*16 + 5]  = 8'd1;
    smile[6*16 + 10] = 8'd1;

    smile[7*16 + 5]  = 8'd1;
    smile[7*16 + 10] = 8'd1;


    // ------------------------------------------------------------
    // Smile - black
    // ------------------------------------------------------------

    smile[9*16 + 4]  = 8'd1;
    smile[9*16 + 11] = 8'd1;

    smile[10*16 + 5]  = 8'd1;
    smile[10*16 + 10] = 8'd1;

    smile[11*16 + 6] = 8'd1;
    smile[11*16 + 7] = 8'd1;
    smile[11*16 + 8] = 8'd1;
    smile[11*16 + 9] = 8'd1;

    // ------------------------------------------------------------
    // Test pixels
    // ------------------------------------------------------------

    smile[0*16  + 0]  = 8'd3;  // top-left
    smile[0*16  + 15] = 8'd4;  // top-right
    smile[15*16 + 0]  = 8'd5;  // bottom-left
    smile[15*16 + 15] = 8'd6;  // bottom-right
    
        $display("Tile/map initialization complete");



$display("Writing sprite 0 smile...");

for (n = 0; n < 256; n = n + 1) begin
    write_sprite_data_byte(
        n,
        smile[n]
    );
end

// ============================================================
// Sprite 0
//
// x_pos   = 0
// y_pos   = 0
// offset  = 0
// palette = 0
// H flip  = 0
// V flip  = 0
// size    = 0 -> 16x16
// scale   = 0
// AC      = 1
// ============================================================


// ============================================================
// Create 32x32 smile
// ============================================================

for (n = 0; n < 1024; n = n + 1)
    smile32[n] = 8'd0;       // transparent


// ------------------------------------------------------------
// Yellow face
// ------------------------------------------------------------

for (y = 4; y <= 27; y = y + 1) begin

    for (x = 4; x <= 27; x = x + 1) begin

        smile32[y*32 + x] = 8'd6;

    end

end


// ------------------------------------------------------------
// Eyes
// ------------------------------------------------------------

for (y = 10; y <= 13; y = y + 1) begin

    smile32[y*32 + 10] = 8'd1;
    smile32[y*32 + 11] = 8'd1;

    smile32[y*32 + 20] = 8'd1;
    smile32[y*32 + 21] = 8'd1;

end


// ------------------------------------------------------------
// Smile
// ------------------------------------------------------------

smile32[19*32 + 8]  = 8'd1;
smile32[19*32 + 23] = 8'd1;

smile32[20*32 + 9]  = 8'd1;
smile32[20*32 + 22] = 8'd1;

smile32[21*32 + 10] = 8'd1;
smile32[21*32 + 21] = 8'd1;

smile32[22*32 + 11] = 8'd1;
smile32[22*32 + 20] = 8'd1;

for (x = 12; x <= 19; x = x + 1)
    smile32[23*32 + x] = 8'd1;


// ------------------------------------------------------------
// Corner test pixels
// ------------------------------------------------------------

smile32[0]          = 8'd3;  // top-left
smile32[31]         = 8'd4;  // top-right
smile32[31*32]      = 8'd5;  // bottom-left
smile32[31*32 + 31] = 8'd6;  // bottom-right

// ============================================================
// Sprite 2 graphics
//
// offset 16 = byte 16 * 16 = 256
// ============================================================

$display("Writing 32x32 sprite 2...");

for (n = 0; n < 1024; n = n + 1) begin

    write_sprite_data_byte(
        16'd256 + n,
        smile32[n]
    );

end



for (s = 0; s < 32; s = s + 1) begin

    // Start with your known-good 32x32 sprite attribute
    sprite_att = 64'h8010_0100_0007_0044;

    // Change only X position.
    // Put sprites every 20 pixels so they overlap and all 32 fit
    // approximately across 640 pixels.
    sprite_att[9:0] = s * 20;

    write_sprite_attribute(
        s,
        sprite_att
    );

end

        // --------------------------------------------------------
        // Let final BRAM writes settle
        // --------------------------------------------------------

        repeat (10)
            @(posedge clk_100);


        // --------------------------------------------------------
        // Release VDP
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


        // ASCII PPM header

        $fwrite(frame_file, "P3\n");
        $fwrite(frame_file, "640 480\n");
        $fwrite(frame_file, "255\n");

    end


    // ============================================================
    // Capture one active VGA pixel per pixel clock
    // ============================================================

    always @(posedge dut.VGA_clk) begin

        if(resetn && dut.rgb_active) begin


            // ----------------------------------------------------
            // RGB444 -> RGB888
            // ----------------------------------------------------

            $fwrite(
                frame_file,
                "%0d %0d %0d\n",
                vga_r * 17,
                vga_g * 17,
                vga_b * 17
            );


            pixel_count = pixel_count + 1;


            // ----------------------------------------------------
            // Complete 640x480 frame
            // ----------------------------------------------------

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