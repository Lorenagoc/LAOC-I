library verilog;
use verilog.vl_types.all;
entity flip_flop_D is
    port(
        D               : in     vl_logic;
        Q               : out    vl_logic;
        clk             : in     vl_logic
    );
end flip_flop_D;
