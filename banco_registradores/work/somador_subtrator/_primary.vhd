library verilog;
use verilog.vl_types.all;
entity somador_subtrator is
    port(
        entrada0        : in     vl_logic_vector(15 downto 0);
        entrada1        : in     vl_logic_vector(15 downto 0);
        controle        : in     vl_logic;
        saida           : out    vl_logic_vector(15 downto 0)
    );
end somador_subtrator;
