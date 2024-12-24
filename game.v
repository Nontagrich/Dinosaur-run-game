module dino_game (
    input CLK100MHZ,
    input btnC,
    input btnR,
    output hsync,
    output vsync,
    output [3:0] red,
    output [3:0] green,
    output [3:0] blue,
    output [6:0] seg,
    output [3:0] an
);
    // Clock divider for 25 MHz VGA clock
    wire clk_25MHz;
    wire locked;
    wire reset = btnR;

    clk_wiz_0 clk_wiz_inst (
        .clk_in1(CLK100MHZ),
        .clk_out1(clk_25MHz),
        .reset(reset),
        .locked(locked)
    );

    // VGA controller
    wire [9:0] pixel_x;
    wire [9:0] pixel_y;
    wire display_on;

    vga_controller vga (
        .clk(clk_25MHz),
        .hsync(hsync),
        .vsync(vsync),
        .pixel_x(pixel_x),
        .pixel_y(pixel_y),
        .display_on(display_on)
    );

    // Dino and game logic
    wire [15:0] score;
    wire is_collision;

    game_logic game (
        .clk(CLK100MHZ),
        .reset(btnR),
        .jump(btnC),
        .pixel_x(pixel_x),
        .pixel_y(pixel_y),
        .display_on(display_on),
        .red(red),
        .green(green),
        .blue(blue),
        .score(score),
        .is_collision(is_collision)
    );

    // 7-segment display for score
    seg7_display seg7 (
        .clk(CLK100MHZ),
        .reset(btnR),
        .score(score),
        .seg(seg),
        .an(an)
    );

endmodule
