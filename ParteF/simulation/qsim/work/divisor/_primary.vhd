library verilog;
use verilog.vl_types.all;
entity divisor is
    port(
        A               : in     vl_logic_vector(5 downto 0);
        B               : in     vl_logic_vector(5 downto 0);
        C               : out    vl_logic_vector(15 downto 0)
    );
end divisor;
