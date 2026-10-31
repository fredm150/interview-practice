module simple_router (
    input  logic       din,
    input  logic [1:0] addr,
    input  logic       din_en,
    output logic       dout0,
    output logic       dout1,
    output logic       dout2,
    output logic       dout3
);

    always_comb begin

        //set all initial outputs to zero
        dout0 = 1'b0;
        dout1 = 1'b0;
        dout2 = 1'b0;
        dout3 = 1'b0;

        // if enable button is enabled i think?
        if (din_en) begin
            case (addr)
                2'b00: dout0 = din;     // if case matches the address, store the input into the correspoding output
                2'b01: dout1 = din;
                2'b10: dout2 = din;
                2'b11: dout3 = din;
                default: ;              // can ignore default case since all outputs are set to zero intitially
            endcase
        end
    end

endmodule