library verilog;
use verilog.vl_types.all;
entity mux_1_4 is
    port(
        a               : in     vl_logic_vector(31 downto 0);
        b               : in     vl_logic_vector(31 downto 0);
        c               : in     vl_logic_vector(31 downto 0);
        d               : in     vl_logic_vector(31 downto 0);
        Control         : in     vl_logic_vector(1 downto 0);
        S               : out    vl_logic_vector(31 downto 0)
    );
end mux_1_4;
