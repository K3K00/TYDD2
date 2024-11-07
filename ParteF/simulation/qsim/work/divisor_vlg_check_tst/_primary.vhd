library verilog;
use verilog.vl_types.all;
entity divisor_vlg_check_tst is
    port(
        C               : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end divisor_vlg_check_tst;
