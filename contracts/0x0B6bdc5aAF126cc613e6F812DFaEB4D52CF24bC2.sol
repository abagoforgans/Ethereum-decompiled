contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() {
    stor1 = msg.sender
    return code.data[57 len 1042]
}



// =====================  Runtime code  =====================


address stor1;

function _fallback() payable {
    revert
}

function registerNewPubKeyForHash(string arg1, string arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    require stor1 == msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160] = 0
    stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][] = Array(len=arg2.length, data=arg2[all])
}

function getPubKeyByHash(string arg1) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 160] = !(256^(-(arg1.length % 32) + 32) - 1) and call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] or 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 160]
    mem[arg1.length + ceil32(arg1.length) + 160] = 0
    _32 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32])
    mem[64] = ceil32(arg1.length) + ceil32(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].length) + 192
    mem[ceil32(arg1.length) + 160] = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].length
    mem[0] = _32
    mem[ceil32(arg1.length) + 192] = stor[sha3(_32)]
    idx = ceil32(arg1.length) + 192
    s = 0
    while ceil32(arg1.length) + stor[_32].length + 160 > idx:
        mem[idx + 32] = stor[s + sha3(_32) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    _61 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[ceil32(arg1.length) + 160]
    _63 = mem[ceil32(arg1.length) + 160]
    if not mem[ceil32(arg1.length) + 160]:
        if not mem[ceil32(arg1.length) + 160] % 32:
            return 32, mem[mem[64] + 32 len mem[ceil32(arg1.length) + 160] + 32]
        mem[floor32(mem[ceil32(arg1.length) + 160]) + mem[64] + 64] = mem[floor32(mem[ceil32(arg1.length) + 160]) + mem[64] + -(mem[ceil32(arg1.length) + 160] % 32) + 96 len mem[ceil32(arg1.length) + 160] % 32]
        return 32, mem[mem[64] + 32 len floor32(_63) + 64]
    mem[mem[64] + 64] = mem[ceil32(arg1.length) + 192]
    mem[mem[64] + 96 len floor32(_63 - 1)] = mem[ceil32(arg1.length) + 224 len floor32(_63 - 1)]
    if not _63 % 32:
        return 32, mem[mem[64] + 32 len _63 + 32]
    mem[floor32(_63) + mem[64] + 64] = mem[floor32(_63) + mem[64] + -(_63 % 32) + 96 len _63 % 32]
    return memory
      from mem[64]
       len floor32(_63) + _61 + -mem[64] + 96
}



}
