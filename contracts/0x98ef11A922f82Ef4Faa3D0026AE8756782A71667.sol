contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address stor1;
address stor2;
uint128 sub_d97e60f6; offset 160
address sub_949b61c2Address;
array of uint256 sub_d7f3f39e;

function sub_949b61c2(?) {
    return sub_949b61c2Address
}

function sub_a1a3cd2a(?) {
    return (sub_d97e60f6 << 224)
}

function sub_bb4ecc65(?) {
    return sub_d7f3f39e[0 len sub_d7f3f39e.length]
}

function sub_d7f3f39e(?) {
    return sub_d7f3f39e[0 len sub_d7f3f39e.length]
}

function sub_d97e60f6(?) {
    return (sub_d97e60f6 << 224)
}

function _fallback() payable {
    revert
}

function sub_adf8aa0f(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor1)
    staticcall stor1.0xadf8aa0f with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 640
    return ext_call.return_data[0 len 640]
}

function sub_22caf978(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor1)
    staticcall stor1.0x22caf978 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 640
    return ext_call.return_data[0 len 640]
}

function sub_e1606bdd(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor1)
    staticcall stor1.0x12694e95 with:
            gas gas_remaining wei
           args Mask(32, 224, arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_ce6f1a71(?) {
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('TokensFactory'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_9002a460(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(stor2)
    staticcall stor2.0x9002a460 with:
            gas gas_remaining wei
           args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 640
    return ext_call.return_data[0 len 640]
}

function sub_46e15bbd(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(stor1)
    staticcall stor1.0x2ea2b01a with:
            gas gas_remaining wei
           args Mask(32, 224, arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function getTokensFactoryAddress() {
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('TokensFactory'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_fe269e55(?) {
    require calldata.size - 4 >= 128
    require ext_code.size(stor2)
    staticcall stor2.0x734e05b8 with:
            gas gas_remaining wei
           args 0, 0, address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_21446e7b(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(stor1)
    if not arg3:
        staticcall stor1.0x12694e95 with:
                gas gas_remaining wei
               args Mask(32, 224, arg1), arg2
    else:
        staticcall stor1.0x2ea2b01a with:
                gas gas_remaining wei
               args Mask(32, 224, arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_06bc1996(?) {
    mem[96] = 0x6bc199600000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor1)
    staticcall stor1.0x6bc1996 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + (32 * mem[mem[96] + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_4 + 96]
    _8 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 160 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    return 32, mem[ceil32(return_data.size) + 128 len (32 * _8) + 32]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor1)
    staticcall stor1.0x41c90420 with:
            gas gas_remaining wei
           args msg.sender, stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Allowed only for the owner.'
    if not arg1:
        revert with 0, 'Invalid new owner address.'
    require ext_code.size(stor1)
    call stor1.0x7440ad2a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0x10ab7534 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0x13a372f8 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c414d3ef(?) {
    require calldata.size - 4 >= 32
    mem[96] = 0xc414d3ef00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor1)
    staticcall stor1.0xc414d3ef with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_4 + 96]
    _8 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 160 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    return 32, mem[ceil32(return_data.size) + 128 len (32 * _8) + 32]
}

function sub_2ebee30a(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor1)
    staticcall stor1.0x41c90420 with:
            gas gas_remaining wei
           args msg.sender, stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Allowed only for the owner.'
    require ext_code.size(stor1)
    staticcall stor1.0x1086c489 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if arg1 != stor0:
            revert with 0, 'aInvalid role.'
    else:
        if not ext_call.return_data[0]:
            if arg1 != stor0:
                revert with 0, 'aInvalid role.'
    require ext_code.size(stor1)
    staticcall stor1.0x95bf086e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Role is active.'
    require ext_code.size(stor1)
    call stor1.0xe71e224e with:
         gas gas_remaining wei
        args arg1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0x6e7084b8 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_af8b8e58(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor1)
    staticcall stor1.0x41c90420 with:
            gas gas_remaining wei
           args msg.sender, stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Allowed only for the owner.'
    require ext_code.size(stor1)
    staticcall stor1.0x1086c489 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if arg1 != stor0:
            revert with 0, 'aInvalid role.'
    else:
        if not ext_call.return_data[0]:
            if arg1 != stor0:
                revert with 0, 'aInvalid role.'
    require ext_code.size(stor1)
    staticcall stor1.0x95bf086e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Role is not active.'
    require ext_code.size(stor1)
    call stor1.0xe71e224e with:
         gas gas_remaining wei
        args arg1, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0xc7c4e26b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_7bef600f(?) {
    require calldata.size - 4 >= 128
    require ext_code.size(stor1)
    staticcall stor1.0x1086c489 with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg3:
        if arg3 != stor0:
            revert with 0, 'aInvalid role.'
    else:
        if not ext_call.return_data[0]:
            if arg3 != stor0:
                revert with 0, 'aInvalid role.'
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('TokensFactory'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x2caa27a0 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 32, 28, 0xfe416c6c6f776564206f6e6c7920666f7220746865206973737565722e000000
    if not arg2:
        revert with 0, 'Invalid token address.'
    require ext_code.size(stor2)
    staticcall stor2.0xb7f68185 with:
            gas gas_remaining wei
           args address(arg1), address(arg2), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'The wallet has no this role.'
    require ext_code.size(stor2)
    call stor2.0x7bef600f with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function createRole(bytes32 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor1)
    staticcall stor1.0x41c90420 with:
            gas gas_remaining wei
           args msg.sender, stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Allowed only for the owner.'
    if not arg1:
        revert with 0, 'aInvalid role.'
    if not arg2:
        revert with 0, 'Invalid parent role.'
    require ext_code.size(stor1)
    staticcall stor1.0x95bf086e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Parent role is not active.'
    require ext_code.size(stor1)
    staticcall stor1.0x1086c489 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Role already exists.'
    require ext_code.size(stor1)
    call stor1.0x9259d598 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0xe71e224e with:
         gas gas_remaining wei
        args arg1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0xf86c8fbe with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0x37fd76ac with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2a36e8da(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor1)
    staticcall stor1.0x41c90420 with:
            gas gas_remaining wei
           args msg.sender, stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Allowed only for the owner.'
    require ext_code.size(stor1)
    staticcall stor1.0x1086c489 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        if arg2 != stor0:
            revert with 0, 'aInvalid role.'
    else:
        if not ext_call.return_data[0]:
            if arg2 != stor0:
                revert with 0, 'aInvalid role.'
    if not Mask(32, 224, arg1):
        revert with 0, 'Invalid method id.'
    require ext_code.size(stor1)
    staticcall stor1.0x29ae0194 with:
            gas gas_remaining wei
           args arg2, Mask(32, 224, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Method already added to the role.'
    require ext_code.size(stor1)
    call stor1.0xd943145e with:
         gas gas_remaining wei
        args arg2, Mask(32, 224, arg1), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    staticcall stor1.0x9e70d840 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.0x61afbf35 with:
         gas gas_remaining wei
        args arg2, Mask(32, 224, arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0xbea9f46f with:
         gas gas_remaining wei
        args arg2, Mask(32, 224, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0x4e5c8e6b with:
         gas gas_remaining wei
        args Mask(32, 224, arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c6b66f61(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(stor1)
    staticcall stor1.0x1086c489 with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg3:
        if arg3 != stor0:
            revert with 0, 'aInvalid role.'
    else:
        if not ext_call.return_data[0]:
            if arg3 != stor0:
                revert with 0, 'aInvalid role.'
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('TokensFactory'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x2caa27a0 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 32, 28, 0xfe416c6c6f776564206f6e6c7920666f7220746865206973737565722e000000
    if not arg2:
        revert with 0, 'Invalid token address.'
    require ext_code.size(stor1)
    staticcall stor1.0x5ddd62a with:
            gas gas_remaining wei
           args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Role already added.'
    require ext_code.size(stor1)
    staticcall stor1.0xf4871593 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[31 len 1] > 20:
        revert with 0, 'The limit for number of roles hs been reached.'
    require ext_code.size(stor1)
    call stor1.0xf7a6536 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0x28b28f45 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3, uint8(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0xd291125 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3, uint8(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require uint8(uint8(ext_call.return_data[0]) + 1) >= uint8(ext_call.return_data[0])
    require ext_code.size(stor1)
    call stor1.0xe09342c9 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), uint8(uint8(ext_call.return_data[0]) + 1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0x39ca560b with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_953291d4(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor1)
    staticcall stor1.0x1086c489 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        if arg2 != stor0:
            revert with 0, 'aInvalid role.'
    else:
        if not ext_call.return_data[0]:
            if arg2 != stor0:
                revert with 0, 'aInvalid role.'
    require ext_code.size(stor1)
    staticcall stor1.0x1086c489 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    staticcall stor1.0x41c90420 with:
            gas gas_remaining wei
           args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Role management not allowed.'
    require ext_code.size(stor1)
    staticcall stor1.0x3f5c32e4 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Role already added.'
    require ext_code.size(stor1)
    staticcall stor1.0x8c19b97d with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[31 len 1] > 20:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The limit for number of roles hs been reached.'
    require ext_code.size(stor1)
    call stor1.0x2ef0ed43 with:
         gas gas_remaining wei
        args address(arg1), arg2, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    staticcall stor1.0x8c19b97d with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.0xb0deb047 with:
         gas gas_remaining wei
        args address(arg1), arg2, uint8(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0x8a235ba7 with:
         gas gas_remaining wei
        args address(arg1), arg2, uint8(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require uint8(uint8(ext_call.return_data[0]) + 1) >= uint8(ext_call.return_data[0])
    require ext_code.size(stor1)
    call stor1.0x9bda5837 with:
         gas gas_remaining wei
        args address(arg1), uint8(uint8(ext_call.return_data[0]) + 1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0x90d72243 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_689c1ad2(?) {
    require calldata.size - 4 >= 128
    require ext_code.size(stor1)
    staticcall stor1.0x1086c489 with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg3:
        if arg3 != stor0:
            revert with 0, 'aInvalid role.'
    else:
        if not ext_call.return_data[0]:
            if arg3 != stor0:
                revert with 0, 'aInvalid role.'
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('TokensFactory'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x2caa27a0 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 32, 28, 0xfe416c6c6f776564206f6e6c7920666f7220746865206973737565722e000000
    if not arg2:
        revert with 0, 'Invalid token address.'
    require ext_code.size(stor2)
    staticcall stor2.0xb7f68185 with:
            gas gas_remaining wei
           args address(arg1), address(arg2), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Role already added.'
    require ext_code.size(stor2)
    staticcall stor2.0xd8af8c23 with:
            gas gas_remaining wei
           args address(arg1), address(arg2), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[31 len 1] > 20:
        revert with 0, 'The limit for number of roles hs been reached.'
    require ext_code.size(stor2)
    call stor2.0x6424962 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3, 1, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.0x60a9a95e with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3, ext_call.return_data[0] << 248, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.0x3ca076e with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3, ext_call.return_data[0] << 248, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require uint8(uint8(ext_call.return_data[0]) + 1) >= uint8(ext_call.return_data[0])
    require ext_code.size(stor2)
    call stor2.0x6e8c4d80 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), uint8(ext_call.return_data[0]) + 1 << 248, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.0x108f0438 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6dd3a3c0(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor1)
    staticcall stor1.0x41c90420 with:
            gas gas_remaining wei
           args msg.sender, stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Allowed only for the owner.'
    require ext_code.size(stor1)
    staticcall stor1.0x1086c489 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        if arg2 != stor0:
            revert with 0, 'aInvalid role.'
    else:
        if not ext_call.return_data[0]:
            if arg2 != stor0:
                revert with 0, 'aInvalid role.'
    if not Mask(32, 224, arg1):
        revert with 0, 'Invalid method id.'
    require ext_code.size(stor1)
    staticcall stor1.0x29ae0194 with:
            gas gas_remaining wei
           args arg2, Mask(32, 224, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Method is not supported.'
    require ext_code.size(stor1)
    call stor1.0xd943145e with:
         gas gas_remaining wei
        args arg2, Mask(32, 224, arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    staticcall stor1.0x43f0284a with:
            gas gas_remaining wei
           args arg2, Mask(32, 224, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    staticcall stor1.0x9e70d840 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 <= ext_call.return_data[0]
    require ext_code.size(stor1)
    if ext_call.return_data[0] - 1 > 0:
        staticcall stor1.0xf1646918 with:
                gas gas_remaining wei
               args arg2, ext_call.return_data[0] - 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x61afbf35 with:
             gas gas_remaining wei
            args arg2, Mask(32, 224, ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor1)
        call stor1.0x562a9715 with:
             gas gas_remaining wei
            args arg2, Mask(32, 224, ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    call stor1.0xc88fb44a with:
         gas gas_remaining wei
        args arg2, ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0xe96ba675 with:
         gas gas_remaining wei
        args arg2, Mask(32, 224, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0x22c2a083 with:
         gas gas_remaining wei
        args arg2, ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0xa37473e3 with:
         gas gas_remaining wei
        args Mask(32, 224, arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_af137e18(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor1)
    staticcall stor1.0x1086c489 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        if arg2 != stor0:
            revert with 0, 'aInvalid role.'
    else:
        if not ext_call.return_data[0]:
            if arg2 != stor0:
                revert with 0, 'aInvalid role.'
    require ext_code.size(stor1)
    staticcall stor1.0x1086c489 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    staticcall stor1.0x41c90420 with:
            gas gas_remaining wei
           args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Role management not allowed.'
    require ext_code.size(stor1)
    staticcall stor1.0x3f5c32e4 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'The wallet has no this role.'
    require ext_code.size(stor1)
    call stor1.0x2ef0ed43 with:
         gas gas_remaining wei
        args address(arg1), arg2, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    staticcall stor1.0xa918e12c with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    staticcall stor1.0x8c19b97d with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 <= ext_call.return_data[31 len 1]
    require ext_code.size(stor1)
    if uint8(ext_call.return_data[31 len 1] - 1):
        staticcall stor1.0x59a29abf with:
                gas gas_remaining wei
               args address(arg1), uint8(uint8(ext_call.return_data[0]) - 1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x8a235ba7 with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0], uint8(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor1)
        call stor1.0xb0deb047 with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0], uint8(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    call stor1.0xe65f24e3 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0xc5db7edd with:
         gas gas_remaining wei
        args address(arg1), uint8(uint8(ext_call.return_data[0]) - 1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0x9bda5837 with:
         gas gas_remaining wei
        args address(arg1), uint8(uint8(ext_call.return_data[0]) - 1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0x7a8b069 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_fbf01c23(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(stor1)
    staticcall stor1.0x1086c489 with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg3:
        if arg3 != stor0:
            revert with 0, 'aInvalid role.'
    else:
        if not ext_call.return_data[0]:
            if arg3 != stor0:
                revert with 0, 'aInvalid role.'
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('TokensFactory'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x2caa27a0 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 32, 28, 0xfe416c6c6f776564206f6e6c7920666f7220746865206973737565722e000000
    if not arg2:
        revert with 0, 'Invalid token address.'
    require ext_code.size(stor1)
    staticcall stor1.0x5ddd62a with:
            gas gas_remaining wei
           args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'The wallet has no this role.'
    require ext_code.size(stor1)
    call stor1.0xf7a6536 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    staticcall stor1.0x5cf991ef with:
            gas gas_remaining wei
           args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    staticcall stor1.0xf4871593 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 <= ext_call.return_data[31 len 1]
    require ext_code.size(stor1)
    if uint8(ext_call.return_data[31 len 1] - 1) > 0:
        staticcall stor1.0xd5b049f6 with:
                gas gas_remaining wei
               args address(arg1), address(arg2), uint8(uint8(ext_call.return_data[0]) - 1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0xd291125 with:
             gas gas_remaining wei
            args address(arg1), address(arg2), ext_call.return_data[0], uint8(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor1)
        call stor1.0x28b28f45 with:
             gas gas_remaining wei
            args address(arg1), address(arg2), ext_call.return_data[0], uint8(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    call stor1.0x614d29ac with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0x55ddbb9e with:
         gas gas_remaining wei
        args address(arg1), address(arg2), uint8(uint8(ext_call.return_data[0]) - 1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0xe09342c9 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), uint8(uint8(ext_call.return_data[0]) - 1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0x7f0c2c12 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function acceptOwnership() {
    require ext_code.size(stor1)
    staticcall stor1.0x67cb0680 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You have no rights on the network.'
    require ext_code.size(stor1)
    staticcall stor1.0x8c19b97d with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[31 len 1] > 20:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The limit for number of roles hs been reached.'
    require ext_code.size(stor1)
    staticcall stor1.0xb419ea42 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.0x2ef0ed43 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), stor0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    staticcall stor1.0xa918e12c with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    staticcall stor1.0x8c19b97d with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 <= ext_call.return_data[31 len 1]
    require ext_code.size(stor1)
    if uint8(ext_call.return_data[31 len 1] - 1):
        staticcall stor1.0x59a29abf with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), uint8(uint8(ext_call.return_data[0]) - 1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x8a235ba7 with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0], uint8(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor1)
        call stor1.0xb0deb047 with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0], uint8(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    call stor1.0xe65f24e3 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0xc5db7edd with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), uint8(uint8(ext_call.return_data[0]) - 1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0x9bda5837 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), uint8(uint8(ext_call.return_data[0]) - 1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0x7a8b069 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0x2ef0ed43 with:
         gas gas_remaining wei
        args msg.sender, stor0, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    staticcall stor1.0x8c19b97d with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.0xb0deb047 with:
         gas gas_remaining wei
        args msg.sender, stor0, uint8(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0x8a235ba7 with:
         gas gas_remaining wei
        args msg.sender, stor0, uint8(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require uint8(uint8(ext_call.return_data[0]) + 1) >= uint8(ext_call.return_data[0])
    require ext_code.size(stor1)
    call stor1.0x9bda5837 with:
         gas gas_remaining wei
        args msg.sender, uint8(uint8(ext_call.return_data[0]) + 1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0x90d72243 with:
         gas gas_remaining wei
        args msg.sender, stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0x69ca3ff3 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0xb3d1e44b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0x4fcc25a8 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
