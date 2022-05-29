contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function getDiaryLength() {
    require ext_code.size(stor0)
    call stor0.0x399fd8d9 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getRecentDiary() {
    mem[96] = 0xd768729d00000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor0)
    call stor0.0xd768729d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 96
    _5 = mem[128]
    require mem[128] <= 4294967296
    require mem[128] + 32 <= return_data.size
    require return_data.size >= mem[mem[128] + 96] + mem[128] + 32 and mem[mem[128] + 96] <= 4294967296
    _7 = mem[160]
    mem[ceil32(return_data.size) + 96] = mem[108 len 20]
    mem[ceil32(return_data.size) + 160] = _7
    mem[ceil32(return_data.size) + 128] = 96
    mem[ceil32(return_data.size) + 192] = mem[_5 + 96]
    _10 = mem[_5 + 96]
    mem[ceil32(return_data.size) + 224 len ceil32(mem[_5 + 96])] = mem[_5 + 128 len ceil32(mem[_5 + 96])]
    if not _10 % 32:
        return mem[ceil32(return_data.size) + 96], 96, _7, mem[ceil32(return_data.size) + 192 len _10 + 32]
    mem[floor32(_10) + ceil32(return_data.size) + 224] = mem[floor32(_10) + ceil32(return_data.size) + -(_10 % 32) + 256 len _10 % 32]
    return mem[ceil32(return_data.size) + 96], 96, _7, mem[ceil32(return_data.size) + 192 len floor32(_10) + 64]
}

function getDiary(uint256 arg1) {
    mem[96] = 0x3c6806b800000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor0)
    call stor0.0x3c6806b8 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 96
    _5 = uint32(arg1), mem[132 len 28]
    require uint32(arg1), mem[132 len 28] <= 4294967296
    require uint32(arg1), mem[132 len 28] + 32 <= return_data.size
    require return_data.size >= mem[uint32(arg1), mem[132 len 28] + 96] + uint32(arg1), mem[132 len 28] + 32 and mem[uint32(arg1), mem[132 len 28] + 96] <= 4294967296
    _7 = mem[160]
    mem[ceil32(return_data.size) + 96] = Mask(160, 32, arg1) >> 32
    mem[ceil32(return_data.size) + 160] = _7
    mem[ceil32(return_data.size) + 128] = 96
    mem[ceil32(return_data.size) + 192] = mem[_5 + 96]
    _10 = mem[_5 + 96]
    mem[ceil32(return_data.size) + 224 len ceil32(mem[_5 + 96])] = mem[_5 + 128 len ceil32(mem[_5 + 96])]
    if not _10 % 32:
        return Mask(160, 32, arg1) << 64, 96, _7, mem[ceil32(return_data.size) + 192 len _10 + 32]
    mem[floor32(_10) + ceil32(return_data.size) + 224] = mem[floor32(_10) + ceil32(return_data.size) + -(_10 % 32) + 256 len _10 % 32]
    return Mask(160, 32, arg1) << 64, 96, _7, mem[ceil32(return_data.size) + 192 len floor32(_10) + 64]
}



}
