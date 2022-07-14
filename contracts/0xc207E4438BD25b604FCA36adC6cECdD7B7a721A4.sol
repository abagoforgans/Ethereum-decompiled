contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function sub_f4463db5(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    staticcall stor0.0xf4463db5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(stor1)
        staticcall stor1.0xf4463db5 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            return 0
    return 1
}

function read(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    staticcall stor0.0xf4463db5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(stor0)
        staticcall stor0.0x61da1439 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
    else:
        require ext_code.size(stor1)
        staticcall stor1.0xf4463db5 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 
                        'Price requested for inactive or unknown market',
                        Mask(112, -256, 'Price requested for inactive or ', 'unknown market') << 256
        require ext_code.size(stor1)
        staticcall stor1.0x61da1439 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Market price is zero'
    return ext_call.return_data[0]
}

function sub_77d7c529(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    staticcall stor0.0xf4463db5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        mem[96] = 0x4195521400000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        require ext_code.size(stor0)
        staticcall stor0.0x41955214 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _12 = mem[96 len 4], Mask(224, 32, arg1) >> 32
        require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require return_data.size >= mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 and mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296
        mem[ceil32(return_data.size) + 96] = 32
        mem[ceil32(return_data.size) + 128] = mem[_12 + 96]
        _28 = mem[_12 + 96]
        mem[ceil32(return_data.size) + 160 len ceil32(mem[_12 + 96])] = mem[_12 + 128 len ceil32(mem[_12 + 96])]
        if not _28 % 32:
            return 32, mem[ceil32(return_data.size) + 128 len _28 + 32]
        mem[floor32(_28) + ceil32(return_data.size) + 160] = mem[floor32(_28) + ceil32(return_data.size) + -(_28 % 32) + 192 len _28 % 32]
        return 32, mem[ceil32(return_data.size) + 128 len floor32(_28) + 64]
    require ext_code.size(stor1)
    staticcall stor1.0xf4463db5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 
                    'Price requested for inactive or unknown market',
                    Mask(112, -256, 'Price requested for inactive or ', 'unknown market') << 256
    mem[96] = 0x4195521400000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor1)
    staticcall stor1.0x41955214 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _24 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 and mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_24 + 96]
    _35 = mem[_24 + 96]
    mem[ceil32(return_data.size) + 160 len ceil32(mem[_24 + 96])] = mem[_24 + 128 len ceil32(mem[_24 + 96])]
    if not _35 % 32:
        return 32, mem[ceil32(return_data.size) + 128 len _35 + 32]
    mem[floor32(_35) + ceil32(return_data.size) + 160] = mem[floor32(_35) + ceil32(return_data.size) + -(_35 % 32) + 192 len _35 % 32]
    return 32, mem[ceil32(return_data.size) + 128 len floor32(_35) + 64]
}



}
