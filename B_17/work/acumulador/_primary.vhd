library verilog;
use verilog.vl_types.all;
entity acumulador is
    port(
        \in\            : in     vl_logic_vector(15 downto 0);
        \out\           : out    vl_logic_vector(15 downto 0);
        rst             : in     vl_logic;
        clk             : in     vl_logic
    );
end acumulador;
