library verilog;
use verilog.vl_types.all;
entity Block1 is
    port(
        Q0              : out    vl_logic;
        A0              : in     vl_logic;
        clock           : in     vl_logic;
        B0              : in     vl_logic;
        Q1              : out    vl_logic;
        A1              : in     vl_logic;
        B1              : in     vl_logic;
        Q3              : out    vl_logic;
        A3              : in     vl_logic;
        B3              : in     vl_logic;
        A2              : in     vl_logic;
        B2              : in     vl_logic;
        B               : out    vl_logic;
        Q2              : out    vl_logic
    );
end Block1;
