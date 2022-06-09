contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 sub_0a4049a5;
uint256 sub_e6f890fd;
uint256 stor3;
uint8 stor4;
mapping of uint256 investors;

function sub_0a4049a5(?) {
    return sub_0a4049a5
}

function investors(uint256 arg1) {
    return investors[arg1]
}

function sub_e6f890fd(?) {
    return sub_e6f890fd
}

function _fallback() payable {
    revert
}

function auditor() {
    return stor3, bool(stor4)
}

function sub_592e2299(?) {
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x53c3b36c6f20656c2070726f706965746172696f207075656465206c6c616d,
                    0x72206573746f00000000000000000000000000000000000000000000000000
    stor3 = block.timestamp
    stor4 = uint8(arg1)
    emit 0x89cda31c: arg1
}

function sub_65495ce9(?) {
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x53c3b36c6f20656c2070726f706965746172696f207075656465206c6c616d,
                    0x72206573746f00000000000000000000000000000000000000000000000000
    if arg1 < sub_0a4049a5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    79,
                    0x6e6f2073652070756564652065737461626c6563657220656c206cc3ad6d6974,
                    'e de miliunidades por debajo de ',
                    'las ya emitidas'
    sub_e6f890fd = arg1
    emit 0x5143e63d: arg1
}

function sub_36905cd8(?) {
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x53c3b36c6f20656c2070726f706965746172696f207075656465206c6c616d,
                    0x72206573746f00000000000000000000000000000000000000000000000000
    if arg3 > investors[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    71,
                    0x6e6f2073652070756564656e207472616e736665726972206dc3a17320756e69,
                    'dades de las que tiene el invers',
                    'ionista'
    investors[arg1] -= arg3
    investors[arg2] += arg3
    emit 0x2c03b34d: arg1, arg2, arg3
}

function sub_35691130(?) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    if stor0 != msg.sender:
        revert with 0, 
                    32,
                    38,
                    0x53c3b36c6f20656c2070726f706965746172696f207075656465206c6c616d,
                    0x72206573746f00000000000000000000000000000000000000000000000000
    if sub_0a4049a5 + arg2 > sub_e6f890fd:
        revert with 0, 
                    32,
                    59,
                    0x657374c3a120696e74656e74616e646f20656d69746972206dc3a17320756e69,
                    0x64616465732064656c206cc3ad6d697465207065726d697469646f0000000000
    investors[arg1] += arg2
    sub_0a4049a5 += arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg1
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 320 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 320] = arg4.length
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 352 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        emit 0xdc19f718: arg1, arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 320 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]), arg3.length + 160
    else:
        mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 352] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 384 len arg4.length % 32]
        emit 0xdc19f718: arg1, arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 320 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64]), arg3.length + 160
}

function sub_4e475c8a(?) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    if stor0 != msg.sender:
        revert with 0, 
                    32,
                    38,
                    0x53c3b36c6f20656c2070726f706965746172696f207075656465206c6c616d,
                    0x72206573746f00000000000000000000000000000000000000000000000000
    if arg2 > investors[arg1]:
        revert with 0, 
                    32,
                    68,
                    0x6e6f2073652070756564656e20726564696d6972206dc3a17320756e69646164,
                    'es de las que tiene el inversion',
                    'ista'
    investors[arg1] -= arg2
    sub_0a4049a5 -= arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg1
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 224] = 128
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 288] = arg3.length
    if 0 >= arg3.length:
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 320] = arg4.length
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 352 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            emit 0x2b47eb92: arg1, arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + ceil32(arg4.length) + 320 len arg3.length + 32], Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256), arg3.length + 160
        else:
            mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 352] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 384 len arg4.length % 32]
            emit 0x2b47eb92: arg1, arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + ceil32(arg4.length) + 320 len arg3.length + 32], Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + arg3.length + 352 len floor32(arg4.length) + -ceil32(arg4.length) + 32]), arg3.length + 160
    else:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 320] = mem[128]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 352 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 320] = arg4.length
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 352 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            emit 0x2b47eb92: arg1, arg2, Array(len=arg3.length, data=mem[128], mem[ceil32(arg3.length) + ceil32(arg4.length) + 352 len arg4.length + arg3.length]), arg3.length + 160
        else:
            mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 352] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 384 len arg4.length % 32]
            emit 0x2b47eb92: arg1, arg2, Array(len=arg3.length, data=mem[128], mem[ceil32(arg3.length) + ceil32(arg4.length) + 352 len floor32(arg4.length) + arg3.length + 32]), arg3.length + 160
}



}
