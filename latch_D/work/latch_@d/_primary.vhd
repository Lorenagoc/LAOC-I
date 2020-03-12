library verilog;
use verilog.vl_types.all;
entity latch_D is
    port(
        HAB             : in     vl_logic;
        D               : in     vl_logic;
        Q               : out    vl_logic
    );
end latch_D;
