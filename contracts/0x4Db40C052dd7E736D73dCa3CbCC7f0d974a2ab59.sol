contract main {


// =======================  Init code  ======================


uint8 stor0;
uint64 stor0; offset 8
address stor1;

function _fallback() {
    uint8(stor0.field_0) = 1
    stor0.field_8 % 72057594037927936 = 0
    stor1 = msg.sender
    return code.data[92 len 2946]
}



// =====================  Runtime code  =====================


const MIN_FEE = 15 * 10^14

const CANCELLATION_FEE = 125 * 10^13

const GAS_PRICE = 5 * 10^10


uint64 stor0;
array of address stor1;
array of uint256 stor2;
array of struct stor3;
array of uint256 stor4;

function _fallback() {
  stop
}

function cancel(uint64 arg1) {
    require arg1 < 18446744073709551616
    require arg1 < 18446744073709551616
    if stor1[4 * uint64(arg1)] != msg.sender:
        emit Cancel(arg1 << 192, msg.sender, stor1[4 * uint64(arg1)], stor2[4 * uint64(arg1)], -1);
        return 0
    if stor2[4 * uint64(arg1)] < 125 * 10^13:
        emit Cancel(arg1 << 192, msg.sender, stor1[4 * uint64(arg1)], stor2[4 * uint64(arg1)], -1);
        return 0
    stor2[4 * uint64(arg1)] = 1
    call msg.sender with:
       value stor2[4 * uint64(arg1)] - 125 * 10^13 wei
         gas 2300 * is_zero(value) wei
    require arg1 < 18446744073709551616
    if ext_call.success:
        emit Cancel(arg1 << 192, msg.sender, stor1[4 * uint64(arg1)], stor2[4 * uint64(arg1)], 1);
        return 1
    emit Cancel(arg1 << 192, msg.sender, stor1[4 * uint64(arg1)], stor2[4 * uint64(arg1)] - 125 * 10^13, -2);
    revert 
}

function deliver(uint64 arg1, bytes32 arg2, uint64 arg3, bytes32 arg4) {
    if 0x18513702ccd928f2a3eb63d900adf03c9cc81593 == msg.sender:
        if arg1 > 0:
            require arg1 < 18446744073709551616
            if stor1[4 * uint64(arg1)]:
                require arg1 < 18446744073709551616
                if stor2[4 * uint64(arg1)]:
                    require arg1 < 18446744073709551616
                    if stor4[4 * uint64(arg1)] == arg2:
                        if stor2[4 * uint64(arg1)] == 1:
                            call 0x18513702ccd928f2a3eb63d900adf03c9cc81593 with:
                               value 125 * 10^13 wei
                                 gas 0 wei
                            require arg1 < 18446744073709551616
                            stor2[4 * uint64(arg1)] = 0
                        else:
                            require arg1 < 18446744073709551616
                            stor2[4 * uint64(arg1)] = 0
                            if arg3 < 2:
                                call 0x18513702ccd928f2a3eb63d900adf03c9cc81593 with:
                                   value stor2[4 * uint64(arg1)] wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require arg1 < 18446744073709551616
                                call stor1[4 * uint64(arg1)] with:
                                   value stor2[4 * uint64(arg1)] wei
                                     gas 2300 * is_zero(value) wei
                            require block.gasprice
                            emit DeliverInfo(arg1 << 192, stor2[4 * uint64(arg1)], block.gasprice, gas_remaining, stor2[4 * uint64(arg1)] - 15 * 10^14 / block.gasprice, arg2, arg3 << 192, arg4);
                            require arg1 < 18446744073709551616
                            if stor2[4 * uint64(arg1)] - 15 * 10^14 / block.gasprice <= gas_remaining - 5000:
                                call stor3[4 * uint64(arg1)].field_0 with:
                                   funct stor3[4 * uint64(arg1)].field_160
                                     gas stor2[4 * uint64(arg1)] - 15 * 10^14 / block.gasprice wei
                                    args arg1 << 192, arg3 << 192, arg4
                            else:
                                call stor3[4 * uint64(arg1)].field_0 with:
                                   funct stor3[4 * uint64(arg1)].field_160
                                     gas gas_remaining - 5000 wei
                                    args arg1 << 192, arg3 << 192, arg4
}

function request(uint8 arg1, address arg2, bytes4 arg3, uint256 arg4, bytes32[] arg5) payable {
    mem[128 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    if msg.value < 15 * 10^14:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        return 0
    stor0 = uint64(stor0 + 1)
    mem[(32 * arg5.length) + 128] = arg1 << 248
    if Mask(251, 0, arg5.length):
        mem[(32 * arg5.length) + 129] = mem[128]
        mem[(32 * arg5.length) + 161 len floor32((32 * arg5.length) - 1)] = mem[160 len floor32((32 * arg5.length) - 1)]
        _32 = sha3(mem[(32 * arg5.length) + 128 len (96 * arg5.length) + 1])
        require stor0 < 18446744073709551616
        stor1[stor0] = msg.sender
        stor2[stor0] = msg.value
        stor3[stor0].field_0 = arg2
        stor3[stor0].field_160 = arg3
        stor4[stor0] = sha3(mem[(32 * arg5.length) + 128 len (96 * arg5.length) + 1])
        mem[(32 * arg5.length) + 128] = stor0
        mem[(32 * arg5.length) + 160] = arg1
        if Mask(251, 0, arg5.length):
            mem[(32 * arg5.length) + 416] = mem[128]
            mem[(32 * arg5.length) + 448 len floor32((32 * arg5.length) - 1)] = mem[160 len (32 * arg5.length) + 32], msg.sender, msg.value, address(arg2), _32, arg4, Array(len=mem[128], data=mem[(32 * arg5.length) + 448 len floor32((32 * arg5.length) - 1) + -(32 * arg5.length) - 288]), arg5.length
        emit RequestInfo(stor0, arg1 << 248, msg.sender, msg.value, address(arg2), _32, arg4, Array(len=arg5.length, data=mem[(32 * arg5.length) + 416 len 32 * arg5.length]));
    else:
        _6 = sha3(mem[(32 * arg5.length) + 128 len (32 * arg5.length) + 1])
        require stor0 < 18446744073709551616
        stor1[stor0] = msg.sender
        stor2[stor0] = msg.value
        stor3[stor0].field_0 = arg2
        stor3[stor0].field_160 = arg3
        stor4[stor0] = sha3(mem[(32 * arg5.length) + 128 len (32 * arg5.length) + 1])
        mem[(32 * arg5.length) + 128] = stor0
        mem[(32 * arg5.length) + 160] = arg1
        mem[(32 * arg5.length) + 192] = msg.sender
        mem[(32 * arg5.length) + 224] = msg.value
        mem[(32 * arg5.length) + 256] = arg2
        mem[(32 * arg5.length) + 288] = _6
        mem[(32 * arg5.length) + 320] = arg4
        mem[(32 * arg5.length) + 352] = 256
        mem[(32 * arg5.length) + 384] = arg5.length
        if Mask(251, 0, arg5.length):
            mem[(32 * arg5.length) + 416] = mem[128]
            mem[(32 * arg5.length) + 448 len floor32((32 * arg5.length) - 1)] = mem[160 len floor32((32 * arg5.length) - 1)]
        emit RequestInfo(stor0, arg1 << 248, msg.sender, msg.value, address(arg2), _6, arg4, Array(len=arg5.length, data=mem[(32 * arg5.length) + 416 len 32 * arg5.length]));
    return stor0
}



}
