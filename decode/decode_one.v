`default_nettype none

module decode_one(
    input  wire [15:0]  parcel0,
    input  wire         parcel0_valid,
    output wire [191:0] instruction,
    output wire         instruction_valid
);

assign instruction_valid = &{
    parcel0_valid,
    !parcel0[15]
};

wire [4:0] opcode      = parcel0[14:10];

wire [9:0] subcode10   = parcel0[9:0];
wire [1:0] subcode2    = parcel0[1:0];

wire [9:0] source10    = parcel0[9:0];
wire [7:0] source8     = parcel0[9:2];
wire [4:0] source5     = parcel0[9:5];

wire [4:0] destination = parcel0[4:0];

endmodule
