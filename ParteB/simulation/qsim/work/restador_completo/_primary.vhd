library verilog;
use verilog.vl_types.all;
entity restador_completo is
    port(
        in_a            : in     vl_logic;
        in_b            : in     vl_logic;
        in_bin          : in     vl_logic;
        clk             : in     vl_logic;
        o_rout          : out    vl_logic;
        o_bout          : out    vl_logic
    );
end restador_completo;
