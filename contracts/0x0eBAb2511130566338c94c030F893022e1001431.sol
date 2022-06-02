contract main {




// =====================  Runtime code  =====================


#
#  - sub_3ab255ad(?)
#  - sub_5b6f330a(?)
#  - sub_e0b678ee(?)
#
function _fallback() payable {
    revert
}

function sub_05e0970a(?) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 0
    _35 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
    mem[64] = ceil32(arg1.length) + ceil32(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][7].length) + 160
    mem[ceil32(arg1.length) + 128] = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][7].length
    mem[0] = _35 + 7
    mem[ceil32(arg1.length) + 160] = stor[sha3(_35 + 7)]
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + stor[_35 + 7].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3(_35 + 7) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    _67 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[ceil32(arg1.length) + 128]
    _69 = mem[ceil32(arg1.length) + 128]
    mem[mem[64] + 64 len ceil32(mem[ceil32(arg1.length) + 128])] = mem[ceil32(arg1.length) + 160 len ceil32(mem[ceil32(arg1.length) + 128])]
    if not _69 % 32:
        return 32, mem[mem[64] + 32 len _69 + 32]
    mem[floor32(_69) + mem[64] + 64] = mem[floor32(_69) + mem[64] + -(_69 % 32) + 96 len _69 % 32]
    return memory
      from mem[64]
       len floor32(_69) + _67 + -mem[64] + 96
}

function sub_ad7f0567(?) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 0
    _35 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
    mem[64] = ceil32(arg1.length) + ceil32(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][12].length) + 160
    mem[ceil32(arg1.length) + 128] = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][12].length
    mem[0] = _35 + 12
    mem[ceil32(arg1.length) + 160] = stor[sha3(_35 + 12)]
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + stor[_35 + 12].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3(_35 + 12) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    _67 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[ceil32(arg1.length) + 128]
    _69 = mem[ceil32(arg1.length) + 128]
    mem[mem[64] + 64 len ceil32(mem[ceil32(arg1.length) + 128])] = mem[ceil32(arg1.length) + 160 len ceil32(mem[ceil32(arg1.length) + 128])]
    if not _69 % 32:
        return 32, mem[mem[64] + 32 len _69 + 32]
    mem[floor32(_69) + mem[64] + 64] = mem[floor32(_69) + mem[64] + -(_69 % 32) + 96 len _69 % 32]
    return memory
      from mem[64]
       len floor32(_69) + _67 + -mem[64] + 96
}



}
