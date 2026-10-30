module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);

    // This should instantiate 4 instances of
    // byte_memory, and then demultiplex
    // data and store into the one selected by
    // addr

    // It should then multiplex the output of the
    // memory specified by addr into the memory
    // output for display on the LEDs

    // you will need 2 demultiplexers:
    // 1. Demultiplex data -> selected byte
    // 2. Demultiplex store -> selected byte

    // and one multiplexer:
    // 1. Multiplex selected byte -> memory

    wire [7:0]DtoReg0;
    wire [7:0]DtoReg1;
    wire [7:0]DtoReg2;
    wire [7:0]DtoReg3;
    wire [7:0]Reg0toMem;
    wire [7:0]Reg1toMem;
    wire [7:0]Reg2toMem;
    wire [7:0]Reg3toMem;
    wire StoReg0;
    wire StoReg1;
    wire StoReg2;
    wire StoReg3;



    byte_demultiplexer dataDMulti(
        .data(data),
        .sel(addr),
        .A(DtoReg0),
        .B(DtoReg1),
        .C(DtoReg2),
        .D(DtoReg3)
    );
    bit_demultiplexer storeDMulti(
        .store(store),
        .sel(addr),
        .A(StoReg0),
        .B(StoReg1),
        .C(StoReg2),
        .D(StoReg3)
    );
    byte_memory reg0(
        .data(DtoReg0),
        .store(StoReg0),
        .memory(Reg0toMem)
    );
    byte_memory reg1(
        .data(DtoReg1),
        .store(StoReg1),
        .memory(Reg1toMem)
    );
    byte_memory reg2(
        .data(DtoReg2),
        .store(StoReg2),
        .memory(Reg2toMem)
    );
    byte_memory reg3(
        .data(DtoReg3),
        .store(StoReg3),
        .memory(Reg3toMem)
    );
    multiplexer memMulti(
        .A(Reg0toMem),
        .B(Reg1toMem),
        .C(Reg2toMem),
        .D(Reg3toMem),
        .sel(addr),
        .mem(memory)
    );


endmodule