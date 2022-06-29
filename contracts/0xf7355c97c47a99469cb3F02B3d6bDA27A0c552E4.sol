contract main {




// =====================  Runtime code  =====================


#
#  - sub_215f6cbe(?)
#
function _fallback() payable {
    revert
}

function getContract(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 0
    _42 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 0
    _77 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
    mem[64] = ceil32(arg1.length) + ceil32(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][1].length) + 160
    mem[ceil32(arg1.length) + 128] = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][1].length
    mem[0] = _77 + 1
    mem[ceil32(arg1.length) + 160] = uint256(stor[sha3(_77 + 1)])
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + stor[_77 + 1].length + 128 > idx:
        mem[idx + 32] = uint256(stor[s + sha3(_77 + 1) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    mem[mem[64]] = address(stor[_42])
    mem[mem[64] + 32] = 64
    mem[mem[64] + 64] = mem[ceil32(arg1.length) + 128]
    _111 = mem[ceil32(arg1.length) + 128]
    mem[mem[64] + 96 len ceil32(mem[ceil32(arg1.length) + 128])] = mem[ceil32(arg1.length) + 160 len ceil32(mem[ceil32(arg1.length) + 128])]
    if not _111 % 32:
        return address(stor[_42]), 64, mem[mem[64] + 64 len _111 + 32]
    mem[floor32(_111) + mem[64] + 96] = mem[floor32(_111) + mem[64] + -(_111 % 32) + 128 len _111 % 32]
    return address(stor[_42]), 64, mem[mem[64] + 64 len floor32(_111) + 64]
}



}
