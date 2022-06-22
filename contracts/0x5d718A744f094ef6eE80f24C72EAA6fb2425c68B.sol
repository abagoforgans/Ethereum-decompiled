contract main {




// =====================  Runtime code  =====================


mapping of uint256 balances;
array of uint256 name;

function name() {
    return name[0 len name.length]
}

function balances(address arg1) {
    return balances[arg1]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function _fallback() payable {
    revert
}

function returnUint8(uint8 arg1) {
    return arg1
}

function returnBoolean(bool arg1) {
    return arg1
}

function returnInt256(int256 arg1) {
    return arg1
}

function returnUint16(uint16 arg1) {
    return arg1
}

function returnUint64(uint64 arg1) {
    return arg1
}

function returnUint32(uint32 arg1) {
    return arg1
}

function returnUint128(uint128 arg1) {
    return arg1
}

function returnAddress(address arg1) {
    return arg1
}

function returnUint256(uint256 arg1) {
    return arg1
}

function returnBooleanInverted(bool arg1) {
    return not arg1
}

function returnBytes1(bytes arg1) {
    return Array(len=arg1.length, data=arg1[all])
}

function returnString(string arg1) {
    return Array(len=arg1.length, data=arg1[all])
}

function returnInt8(int8 arg1) {
    return ('signextend', 0, ('signextend', 0, ('signextend', 0, ('param', 'arg1'))))
}

function returnInt64(int64 arg1) {
    return ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1'))))
}

function returnInt16(int16 arg1) {
    return ('signextend', 1, ('signextend', 1, ('signextend', 1, ('param', 'arg1'))))
}

function returnInt32(int32 arg1) {
    return ('signextend', 3, ('signextend', 3, ('signextend', 3, ('param', 'arg1'))))
}

function returnInt128(int128 arg1) {
    return ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    balances[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function returnArrayBytes1(uint8 arg1) {
    mem[96] = arg1
    if arg1:
        mem[128 len 32 * uint8(arg1)] = code.data[2056 len 32 * uint8(arg1)]
    idx = 0
    while uint8(idx) < arg1:
        require uint8(idx) < mem[96]
        mem[uint8(idx) + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'\r'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'\r'"), 0) - 256
        idx = idx + 1
        continue 
    mem[ceil32(arg1) + 128] = 32
    mem[ceil32(arg1) + 160] = mem[96]
    mem[ceil32(arg1) + 192 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if not mem[96] % 32:
        return 32, mem[ceil32(arg1) + 160 len mem[96] + 32]
    mem[floor32(mem[96]) + ceil32(arg1) + 192] = mem[floor32(mem[96]) + ceil32(arg1) + -(mem[96] % 32) + 224 len mem[96] % 32]
    return Array(len=mem[96], data=mem[ceil32(arg1) + 192 len floor32(mem[96]) + 32])
}



}
