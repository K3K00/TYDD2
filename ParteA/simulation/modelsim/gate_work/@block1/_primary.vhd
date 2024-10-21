library verilog;
use verilog.vl_types.all;
entity Block1 is
    port(
        LED             : out    vl_logic;
        SW1             : in     vl_logic;
        SW2             : in     vl_logic;
        SW3             : in     vl_logic
    );
end Block1;
