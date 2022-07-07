contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 sub_b544fb0a;
array of uint256 stor2;

function sub_b544fb0a(?) payable {
    return sub_b544fb0a
}

function _fallback() payable {
    revert
}

function sub_59687818(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + ('cd', 4).length + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + ('cd', 36).length + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, 'Permission Denied'
    if not ('cd', 4).length:
        revert with 0, 'Block pointer is empty'
    if not ('cd', 36).length:
        revert with 0, 'Block hash is empty'
    mem[96 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
    mem[('cd', 4).length + 96] = 2
    stor2[call.data[cd[4] + 36 len ('cd', 4).length]] = (2 * ('cd', 36).length) + 1
    s = 0
    idx = cd[36] + 36
    while cd[36] + ('cd', 36).length + 36 > idx:
        stor2[call.data[cd[4] + 36 len ('cd', 4).length]][s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
    while stor2[call.data[cd[4] + 36 len ('cd', 4).length]].length + 31 / 32 > idx:
        stor2[call.data[cd[4] + 36 len ('cd', 4).length]][idx] = 0
        idx = idx + 1
        continue 
    sub_b544fb0a++
    mem[ceil32(('cd', 36).length) + 192] = ('cd', 4).length
    mem[ceil32(('cd', 36).length) + 224 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
    mem[ceil32(('cd', 36).length) + ('cd', 4).length + 224] = 0
    emit 0x8b543a76: 64, ceil32(('cd', 36).length) + 96, ('cd', 36).length, call.data[cd[36] + 36 len ('cd', 36).length], 0, mem[('cd', 36).length + 224 len ceil32(('cd', 36).length) + ceil32(('cd', 4).length) - ('cd', 36).length]
}

function sub_0b714415(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 2
    _35 = sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length)])
    mem[64] = ceil32(arg1.length) + ceil32(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)].length) + 160
    mem[ceil32(arg1.length) + 128] = stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)].length
    mem[0] = _35
    mem[ceil32(arg1.length) + 160] = stor[sha3(_35)]
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + stor[_35].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3(_35) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    _69 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[mem[64] + 64 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if not _69 % 32:
        return 32, mem[mem[64] + 32 len _69 + 32]
    mem[floor32(_69) + mem[64] + 64] = mem[floor32(_69) + mem[64] + -(_69 % 32) + 96 len _69 % 32]
    return 32, mem[mem[64] + 32 len floor32(_69) + 64]
}



}
