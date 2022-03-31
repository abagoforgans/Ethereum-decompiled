contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint8 stor3; offset 16
uint64 stor3; offset 24
uint256 stor3;
address stor4;
uint256 stor4000;

function _fallback() payable {
    stor0 = 5 * 10^10
    stor1 = 15 * 10^14
    stor2 = 125 * 10^13
    stor4000 = 0
    require not msg.value
    uint8(stor3.field_16) = 1
    stor3.field_24 % 72057594037927936 = 0
    stor4 = msg.sender
    uint256(stor3.field_0) = 0xffffffffffffffffffffffffffff0000000000000000ffffffffffffffff0000 and uint256(stor3.field_0)
    return code.data[164 len 4680]
}



// =====================  Runtime code  =====================


const SGX_ADDRESS = 0x18513702ccd928f2a3eb63d900adf03c9cc81593

const DELIVERED_FEE_FLAG = 0

const FAIL_FLAG = 0x400000000000000000000000000000000000000000000000000000000000000

const CANCELLED_FEE_FLAG = 1

const SUCCESS_FLAG = 1


uint256 GAS_PRICE;
uint256 MIN_FEE;
uint256 CANCELLATION_FEE;
uint8 stor3;
uint8 stor3; offset 8
uint64 stor3;
uint64 requestCnt; offset 16
uint64 unrespondedCnt; offset 80
uint128 stor3; offset 144
array of address stor4;
array of uint256 stor5;
array of struct stor6;
array of uint256 stor7;
uint256 newVersion;

function newVersion() {
    return newVersion
}

function killswitch() {
    return bool(uint8(stor3.field_0))
}

function requestCnt() {
    return requestCnt
}

function MIN_FEE() {
    return MIN_FEE
}

function CANCELLATION_FEE() {
    return CANCELLATION_FEE
}

function GAS_PRICE() {
    return GAS_PRICE
}

function unrespondedCnt() {
    return unrespondedCnt
}

function externalCallFlag() {
    return bool(uint8(stor3.field_8))
}

function _fallback() {
  stop
}

function suspend() {
    if stor4.length == msg.sender:
        uint8(stor3.field_0) = 1
}

function restart() {
    if stor4.length == msg.sender:
        if not newVersion:
            uint8(stor3.field_0) = 0
}

function requests(uint256 arg1) {
    require arg1 < 18446744073709551616
    return stor4[arg1], stor5[arg1], stor6[arg1].field_0, stor6[arg1].field_160 << 224, stor7[arg1]
}

function upgrade(address arg1) {
    if stor4.length == msg.sender:
        if not unrespondedCnt:
            newVersion = -arg1
            uint8(stor3.field_0) = 1
            emit Upgrade(arg1);
}

function withdraw() {
    if stor4.length != msg.sender:
    if unrespondedCnt:
    call stor4.length with:
       value eth.balance(this.address) wei
         gas gas_remaining - 34050 wei
    require ext_call.success
}

function reset(uint256 arg1, uint256 arg2, uint256 arg3) {
    if stor4.length == msg.sender:
        if not unrespondedCnt:
            GAS_PRICE = arg1
            MIN_FEE = arg1 * arg2
            CANCELLATION_FEE = arg1 * arg3
            emit Reset(arg1, arg1 * arg2, arg1 * arg3);
}

function cancel(uint64 arg1) {
    require not uint8(stor3.field_8)
    if uint8(stor3.field_0):
        return 0
    require arg1 < 18446744073709551616
    require arg1 < 18446744073709551616
    if stor4[4 * uint64(arg1)] != msg.sender:
        emit Cancel(arg1 << 192, msg.sender, stor4[4 * uint64(arg1)], stor5[4 * uint64(arg1)], -1);
        return 0x400000000000000000000000000000000000000000000000000000000000000
    if stor5[4 * uint64(arg1)] < CANCELLATION_FEE:
        emit Cancel(arg1 << 192, msg.sender, stor4[4 * uint64(arg1)], stor5[4 * uint64(arg1)], -1);
        return 0x400000000000000000000000000000000000000000000000000000000000000
    stor5[4 * uint64(arg1)] = 1
    uint8(stor3.field_8) = 1
    call msg.sender with:
       value stor5[4 * uint64(arg1)] - CANCELLATION_FEE wei
         gas gas_remaining - 34050 wei
    require ext_call.success
    uint8(stor3.field_8) = 0
    require arg1 < 18446744073709551616
    emit Cancel(arg1 << 192, msg.sender, stor4[4 * uint64(arg1)], stor5[4 * uint64(arg1)], 1);
    return 1
}

function deliver(uint64 arg1, bytes32 arg2, uint64 arg3, bytes32 arg4) {
    if 0x18513702ccd928f2a3eb63d900adf03c9cc81593 == msg.sender:
        if arg1 > 0:
            require arg1 < 18446744073709551616
            if stor4[4 * uint64(arg1)]:
                require arg1 < 18446744073709551616
                if stor5[4 * uint64(arg1)]:
                    require arg1 < 18446744073709551616
                    if stor7[4 * uint64(arg1)] == arg2:
                        if stor5[4 * uint64(arg1)] == 1:
                            call 0x18513702ccd928f2a3eb63d900adf03c9cc81593 with:
                               value CANCELLATION_FEE wei
                                 gas 2300 * is_zero(value) wei
                            require arg1 < 18446744073709551616
                            stor5[4 * uint64(arg1)] = 0
                            unrespondedCnt = uint64(unrespondedCnt - 1)
                        else:
                            require arg1 < 18446744073709551616
                            stor5[4 * uint64(arg1)] = 0
                            unrespondedCnt = uint64(unrespondedCnt - 1)
                            if arg3 < 2:
                                call 0x18513702ccd928f2a3eb63d900adf03c9cc81593 with:
                                   value stor5[4 * uint64(arg1)] wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                uint8(stor3.field_8) = 1
                                require arg1 < 18446744073709551616
                                call stor4[4 * uint64(arg1)] with:
                                   value stor5[4 * uint64(arg1)] wei
                                     gas 2300 wei
                                uint8(stor3.field_8) = 0
                            require block.gasprice
                            emit DeliverInfo(arg1 << 192, stor5[4 * uint64(arg1)], block.gasprice, gas_remaining, stor5[4 * uint64(arg1)] - MIN_FEE / block.gasprice, arg2, arg3 << 192, arg4);
                            uint8(stor3.field_8) = 1
                            require arg1 < 18446744073709551616
                            if stor5[4 * uint64(arg1)] - MIN_FEE / block.gasprice <= gas_remaining - 5000:
                                call stor6[4 * uint64(arg1)].field_0 with:
                                   funct stor6[4 * uint64(arg1)].field_160
                                     gas stor5[4 * uint64(arg1)] - MIN_FEE / block.gasprice wei
                                    args arg1 << 192, arg3 << 192, arg4
                            else:
                                call stor6[4 * uint64(arg1)].field_0 with:
                                   funct stor6[4 * uint64(arg1)].field_160
                                     gas gas_remaining - 5000 wei
                                    args arg1 << 192, arg3 << 192, arg4
                            uint8(stor3.field_8) = 0
}

function request(uint8 arg1, address arg2, bytes4 arg3, uint256 arg4, bytes32[] arg5) payable {
    mem[128 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require not uint8(stor3.field_8)
    if uint8(stor3.field_0):
        uint8(stor3.field_8) = 1
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
        uint8(stor3.field_8) = 0
        return newVersion
    if msg.value < MIN_FEE:
        uint8(stor3.field_8) = 1
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
        uint8(stor3.field_8) = 0
        return 0x400000000000000000000000000000000000000000000000000000000000000
    requestCnt = uint64(requestCnt + 1)
    unrespondedCnt = uint64(unrespondedCnt + 1)
    Mask(112, 0, stor3.field_144) = 0
    mem[(32 * arg5.length) + 128] = arg1 << 248
    if Mask(251, 0, arg5.length):
        mem[(32 * arg5.length) + 129] = mem[128]
        mem[(32 * arg5.length) + 161 len floor32((32 * arg5.length) - 1)] = mem[160 len floor32((32 * arg5.length) - 1)]
        _35 = sha3(mem[(32 * arg5.length) + 128 len (96 * arg5.length) + 1])
        require requestCnt < 18446744073709551616
        stor4[uint64(stor3.field_16)] = msg.sender
        stor5[uint64(stor3.field_16)] = msg.value
        stor6[uint64(stor3.field_16)].field_0 = arg2
        stor6[uint64(stor3.field_16)].field_160 = arg3
        stor7[uint64(stor3.field_16)] = sha3(mem[(32 * arg5.length) + 128 len (96 * arg5.length) + 1])
        mem[(32 * arg5.length) + 128] = requestCnt
        mem[(32 * arg5.length) + 160] = arg1
        if Mask(251, 0, arg5.length):
            mem[(32 * arg5.length) + 416] = mem[128]
            mem[(32 * arg5.length) + 448 len floor32((32 * arg5.length) - 1)] = mem[160 len (32 * arg5.length) + 32], msg.sender, msg.value, address(arg2), _35, arg4, Array(len=mem[128], data=mem[(32 * arg5.length) + 448 len floor32((32 * arg5.length) - 1) + -(32 * arg5.length) - 288]), arg5.length
        emit RequestInfo(uint64(stor3.field_0), arg1 << 248, msg.sender, msg.value, address(arg2), _35, arg4, Array(len=arg5.length, data=mem[(32 * arg5.length) + 416 len 32 * arg5.length]));
    else:
        _7 = sha3(mem[(32 * arg5.length) + 128 len (32 * arg5.length) + 1])
        require requestCnt < 18446744073709551616
        stor4[uint64(stor3.field_16)] = msg.sender
        stor5[uint64(stor3.field_16)] = msg.value
        stor6[uint64(stor3.field_16)].field_0 = arg2
        stor6[uint64(stor3.field_16)].field_160 = arg3
        stor7[uint64(stor3.field_16)] = sha3(mem[(32 * arg5.length) + 128 len (32 * arg5.length) + 1])
        mem[(32 * arg5.length) + 128] = requestCnt
        mem[(32 * arg5.length) + 160] = arg1
        mem[(32 * arg5.length) + 192] = msg.sender
        mem[(32 * arg5.length) + 224] = msg.value
        mem[(32 * arg5.length) + 256] = arg2
        mem[(32 * arg5.length) + 288] = _7
        mem[(32 * arg5.length) + 320] = arg4
        mem[(32 * arg5.length) + 352] = 256
        mem[(32 * arg5.length) + 384] = arg5.length
        if Mask(251, 0, arg5.length):
            mem[(32 * arg5.length) + 416] = mem[128]
            mem[(32 * arg5.length) + 448 len floor32((32 * arg5.length) - 1)] = mem[160 len floor32((32 * arg5.length) - 1)]
        emit RequestInfo(uint64(stor3.field_0), arg1 << 248, msg.sender, msg.value, address(arg2), _7, arg4, Array(len=arg5.length, data=mem[(32 * arg5.length) + 416 len 32 * arg5.length]));
    return requestCnt
}



}
