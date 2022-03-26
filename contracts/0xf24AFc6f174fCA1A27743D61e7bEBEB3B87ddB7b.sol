contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = msg.sender
    stor1 = msg.sender
    return code.data[67 len 1607]
}



// =====================  Runtime code  =====================


address stor0;
array of struct stor2;
mapping of uint256 stor99;

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert 
}

function getHistory(string arg1) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 192 len 128] = 0
    mem[ceil32(arg1.length) + 320 len arg1.length] = arg1[all]
    mem[arg1.length + ceil32(arg1.length) + 320] = 2
    mem[64] = ceil32(arg1.length) + ceil32(stor2[arg1[all]].length) + 352
    mem[ceil32(arg1.length) + 320] = stor2[arg1[all]].length
    mem[0] = sha3(arg1[all], 2)
    mem[ceil32(arg1.length) + 352] = stor2[arg1[all]].field_0
    idx = ceil32(arg1.length) + 352
    s = 0
    while ceil32(arg1.length) + stor2[arg1[all]].length + 320 > idx:
        mem[idx + 32] = stor2[arg1[all]][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    idx = 0
    while uint8(idx) < 5:
        _52 = mem[64]
        _53 = mem[96]
        mem[mem[64] len mem[96]] = mem[128 len mem[96]]
        mem[_53 + mem[64]] = 2
        _55 = sha3(mem[mem[64] len _53 + _52 + -mem[64] + 32])
        mem[0] = uint8(idx + 1)
        mem[32] = _55 + 1
        mem[(32 * uint8(idx)) + ceil32(arg1.length) + 160] = stor[_55 + 1][idx + 1 << 248]
        idx = idx + 1
        continue 
    mem[mem[64] + 32 len 160] = mem[ceil32(arg1.length) + 160 len 160]
    mem[mem[64]] = 192
    mem[mem[64] + 192] = mem[ceil32(arg1.length) + 320]
    _59 = mem[ceil32(arg1.length) + 320]
    mem[mem[64] + 224 len mem[ceil32(arg1.length) + 320]] = mem[ceil32(arg1.length) + 352 len mem[ceil32(arg1.length) + 320]]
    if not _59 % 32:
        return 192, mem[mem[64] + 32 len _59 + 192]
    mem[floor32(_59) + mem[64] + 224] = mem[floor32(_59) + mem[64] + -(_59 % 32) + 256 len _59 % 32]
    return 192, mem[mem[64] + 32 len floor32(_59) + 224]
}

function sub_515bb16b(?) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[64] = (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 224
    mem[(32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 192] = ceil32(arg1.length) + 128
    mem[(32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 224 len arg1.length] = arg1[all]
    mem[arg1.length + (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 224] = 2
    mem[0] = sha3(arg1[all], 2)
    stor2[arg1[all]][].field_0 = Array(len=arg2.length, data=arg2[all])
    idx = 0
    while uint8(idx) < arg3.length:
        require uint8(idx) < mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]
        _221 = mem[(32 * uint8(idx)) + ceil32(arg1.length) + ceil32(arg2.length) + 192]
        _222 = mem[64]
        _223 = mem[96]
        mem[mem[64] len mem[96]] = mem[128 len mem[96]]
        mem[_223 + mem[64]] = 2
        _225 = sha3(mem[mem[64] len _223 + _222 + -mem[64] + 32])
        mem[0] = uint8(idx + 1)
        mem[32] = _225 + 1
        stor[_225 + 1][idx + 1 << 248] = _221
        idx = idx + 1
        continue 
    _214 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[ceil32(arg1.length) + 128]
    _216 = mem[ceil32(arg1.length) + 128]
    mem[mem[64] + 96 len mem[ceil32(arg1.length) + 128]] = mem[ceil32(arg1.length) + 160 len mem[ceil32(arg1.length) + 128]]
    if not _216 % 32:
        mem[mem[64] + 32] = _216 + 96
        mem[_216 + _214 + 96] = mem[96]
        mem[_216 + _214 + 128 len mem[96]] = mem[128 len mem[96]]
        if not mem[96] % 32:
            emit 0xe3036c14: mem[mem[64] len mem[96] + _216 + _214 + -mem[64] + 128]
        else:
            mem[floor32(mem[96]) + _216 + _214 + 128] = mem[floor32(mem[96]) + _216 + _214 + -(mem[96] % 32) + 160 len mem[96] % 32]
            emit 0xe3036c14: mem[mem[64] len floor32(mem[96]) + _216 + _214 + -mem[64] + 160]
    else:
        mem[floor32(_216) + mem[64] + 96] = mem[floor32(_216) + mem[64] + -(_216 % 32) + 128 len _216 % 32]
        mem[mem[64] + 32] = floor32(_216) + 128
        mem[floor32(_216) + _214 + 128] = mem[96]
        mem[floor32(_216) + _214 + 160 len mem[96]] = mem[128 len mem[96]]
        if not mem[96] % 32:
            emit 0xe3036c14: mem[mem[64] len mem[96] + floor32(_216) + _214 + -mem[64] + 160]
        else:
            mem[floor32(mem[96]) + floor32(_216) + _214 + 160] = mem[floor32(mem[96]) + floor32(_216) + _214 + -(mem[96] % 32) + 192 len mem[96] % 32]
            emit 0xe3036c14: mem[mem[64] len floor32(mem[96]) + floor32(_216) + _214 + -mem[64] + 192]
}



}
