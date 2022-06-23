contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;
address stor2;

function sub_8154288c(?) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor1[address(arg1)])
}

function sub_f18a1568(?) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor0[address(arg1)])
}

function _fallback() payable {
    revert
}

function sub_9bb4e83b(?) {
    require msg.sender
    require stor0[address(msg.sender)]
    stor0[address(msg.sender)] = 0
    emit 0xb1faf7ee: msg.sender
}

function sub_49b37bb5(?) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 'no root PFadmin'
    require arg1
    require stor1[address(arg1)]
    stor1[address(arg1)] = 0
    emit 0xa9a45aa0: arg1
}

function sub_0a619180(?) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 'no root PFadmin'
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit 0xd5292536: arg1
}

function sub_417a579d(?) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 'no root PFadmin'
    require arg1
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    emit 0x20aba89e: arg1
}

function sub_123ed3be(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor2)
    staticcall stor2.0x1aa6b08 with:
            gas gas_remaining wei
           args 'at2wallet', arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_cfb7fa3b(?) {
    require calldata.size - 4 >= 64
    require msg.sender
    if not stor1[address(msg.sender)]:
        revert with 0, 'no SAdmin'
    require ext_code.size(stor2)
    call stor2.0x373cf819 with:
         gas gas_remaining wei
        args 'rate', address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e6556ff7(?) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'rate assetTokenIs0'
    require ext_code.size(stor2)
    staticcall stor2.0x2c320e46 with:
            gas gas_remaining wei
           args 'rate', arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_ce877549(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor2)
    staticcall stor2.0x595f240a with:
            gas gas_remaining wei
           args 0x41546163746976650000000000000000000000000000000000000000000000, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_d0320f62(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor2)
    staticcall stor2.0x595f240a with:
            gas gas_remaining wei
           args 0x6973435300000000000000000000000000000000000000000000000000000000, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_fdabd534(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor2)
    staticcall stor2.0x595f240a with:
            gas gas_remaining wei
           args 0xfe74727573746564415400000000000000000000000000000000000000000000, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_64a78811(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor2)
    staticcall stor2.0x1aa6b08 with:
            gas gas_remaining wei
           args 0x6373326174000000000000000000000000000000000000000000000000000000, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_aecf2c0b(?) {
    require calldata.size - 4 >= 64
    require msg.sender
    if not stor1[address(msg.sender)]:
        revert with 0, 'no SAdmin'
    require ext_code.size(stor2)
    call stor2.0xb46a2372 with:
         gas gas_remaining wei
        args 0x41546163746976650000000000000000000000000000000000000000000000, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d4b89a95(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor2)
    staticcall stor2.0x595f240a with:
            gas gas_remaining wei
           args 0x41546163746976650000000000000000000000000000000000000000000000, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'not trusted AT'
    return 1
}

function sub_e8275f7a(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor2)
    staticcall stor2.0x1aa6b08 with:
            gas gas_remaining wei
           args 0x6373326174000000000000000000000000000000000000000000000000000000, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    staticcall stor2.0x1aa6b08 with:
            gas gas_remaining wei
           args 'at2wallet', address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_6c9f9381(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor2)
    staticcall stor2.0x1aa6b08 with:
            gas gas_remaining wei
           args 0x6373326174000000000000000000000000000000000000000000000000000000, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'rate assetTokenIs0'
    require ext_code.size(stor2)
    staticcall stor2.0x2c320e46 with:
            gas gas_remaining wei
           args 'rate', address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_95b5c2d7(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor2)
    staticcall stor2.0x1aa6b08 with:
            gas gas_remaining wei
           args 0x6373326174000000000000000000000000000000000000000000000000000000, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    staticcall stor2.0x595f240a with:
            gas gas_remaining wei
           args 0x6973435300000000000000000000000000000000000000000000000000000000, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'not registered CS'
    require ext_code.size(stor2)
    staticcall stor2.0x595f240a with:
            gas gas_remaining wei
           args 0x41546163746976650000000000000000000000000000000000000000000000, address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'not trusted AT'
    return 1
}

function sub_60ab1ee1(?) {
    require calldata.size - 4 >= 32
    mem[96] = 0xc2b76dbb00000000000000000000000000000000000000000000000000000000
    mem[100] = 'wallet2AT'
    mem[132] = arg1
    require ext_code.size(stor2)
    staticcall stor2.0xc2b76dbb with:
            gas gas_remaining wei
           args 'wallet2AT', arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, 'wallet2AT') >> 32
    require mem[96 len 4], Mask(224, 32, 'wallet2AT') >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, 'wallet2AT') >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, 'wallet2AT') >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, 'wallet2AT') >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, 'wallet2AT') >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_4 + 96]
    _8 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 160 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    return 32, mem[ceil32(return_data.size) + 128 len (32 * _8) + 32]
}

function sub_a9785315(?) {
    require calldata.size - 4 >= 64
    require msg.sender
    if not stor1[address(msg.sender)]:
        revert with 0, 'no SAdmin'
    require ext_code.size(stor2)
    staticcall stor2.0x595f240a with:
            gas gas_remaining wei
           args 0xfe74727573746564415400000000000000000000000000000000000000000000, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'no AT'
    require ext_code.size(stor2)
    staticcall stor2.0x595f240a with:
            gas gas_remaining wei
           args 0x6973435300000000000000000000000000000000000000000000000000000000, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'is assigned'
    require ext_code.size(arg1)
    staticcall arg1.0x4954839 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'not alive'
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[31 len 1]:
        revert with 0, 'decimal not 0'
    require ext_code.size(stor2)
    call stor2.0xb46a2372 with:
         gas gas_remaining wei
        args 0x6973435300000000000000000000000000000000000000000000000000000000, address(arg2), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.0x28bf565f with:
         gas gas_remaining wei
        args 0x6373326174000000000000000000000000000000000000000000000000000000, address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4ae4cc47(?) {
    require calldata.size - 4 >= 96
    require msg.sender
    if not stor1[address(msg.sender)]:
        revert with 0, 'no SAdmin'
    require ext_code.size(stor2)
    staticcall stor2.0x595f240a with:
            gas gas_remaining wei
           args 0xfe74727573746564415400000000000000000000000000000000000000000000, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'exists'
    require ext_code.size(arg2)
    staticcall arg2.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[31 len 1]:
        revert with 0, 'decimal not 0'
    require ext_code.size(stor2)
    call stor2.0xb46a2372 with:
         gas gas_remaining wei
        args 0xfe74727573746564415400000000000000000000000000000000000000000000, address(arg2), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.0xb46a2372 with:
         gas gas_remaining wei
        args 0x41546163746976650000000000000000000000000000000000000000000000, address(arg2), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.0x89bc89fc with:
         gas gas_remaining wei
        args 'wallet2AT', address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.0x28bf565f with:
         gas gas_remaining wei
        args 'at2wallet', address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.0x373cf819 with:
         gas gas_remaining wei
        args 'rate', address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
