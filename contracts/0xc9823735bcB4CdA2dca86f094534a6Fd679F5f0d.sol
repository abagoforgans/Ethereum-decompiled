contract main {




// =====================  Runtime code  =====================


#
#  - sub_ad8c572e(?)
#
uint128 sub_d97e60f6; offset 160
address sub_949b61c2Address;
array of uint256 sub_d7f3f39e;
address stor2;

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

function sub_14131caf(?) {
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_eaece923(?) {
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
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

function sub_553fd57e(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(stor2)
    staticcall stor2 with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0, ext_call.return_data[4 len 28]
}

function sub_ea2cde6e(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(stor2)
    staticcall stor2 with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 32 <= return_data.size
    require bool(return_data.size >= 32)
    return ''
}

function sub_0cd0d6e2(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).'!Dn{' with:
            gas gas_remaining wei
           args call.func_hash, msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Declined by Permission Module.'
    if not arg1:
        revert with 0, 'Invalid expiration interval.'
    require ext_code.size(stor2)
    call stor2.0xcd0d6e2 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.0x59dae3da with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d82e26e7(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128] = 0x8d80669700000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 132] = 32
    mem[ceil32(arg1.length) + 164] = arg1.length
    if 0 >= arg1.length:
        require ext_code.size(stor2)
        staticcall stor2.0x8d806697 with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=mem[ceil32(arg1.length) + 196 len arg1.length])
    else:
        mem[ceil32(arg1.length) + 196] = mem[128]
        mem[ceil32(arg1.length) + 228 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
        require ext_code.size(stor2)
        staticcall stor2 with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=mem[ceil32(arg1.length) + 196 len arg1.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg1.length) + 128] = ext_call.return_data[12 len 20]
    return 0, mem[ceil32(arg1.length) + 132 len 28]
}

function sub_64b7ee20(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) < 'a':
            mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        else:
            if Mask(8, 248, mem[idx + 128]) > 'z':
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            else:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
        idx = idx + 1
        continue 
    mem[mem[64]] = 0x9685ce7f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = arg1.length
    mem[mem[64] + 68 len ceil32(arg1.length)] = mem[128 len ceil32(arg1.length)]
    require ext_code.size(stor2)
    staticcall stor2.0x9685ce7f with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=mem[mem[64] + 68 len arg1.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (arg2 == address(ext_call.return_data[0]))
}

function sub_02a4330b(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg1.length <= 0:
        revert with 0, 'Symbol length should always between 1 & 5'
    if arg1.length >= 6:
        revert with 0, 'Symbol length should always between 1 & 5'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) < 'a':
            mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        else:
            if Mask(8, 248, mem[idx + 128]) > 'z':
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            else:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
        idx = idx + 1
        continue 
    mem[mem[64]] = 0x8d80669700000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = arg1.length
    mem[mem[64] + 68 len ceil32(arg1.length)] = mem[128 len ceil32(arg1.length)]
    require ext_code.size(stor2)
    staticcall stor2.0x8d806697 with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=mem[mem[64] + 68 len arg1.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[mem[64]] = 0x6d3d391700000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[96]
    mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if not mem[96] % 32:
        require ext_code.size(stor2)
        staticcall stor2.0x6d3d3917 with:
                gas gas_remaining wei
               args 32, mem[mem[64] + 36 len mem[96] + 32]
    else:
        mem[floor32(mem[96]) + mem[64] + 68] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 100 len mem[96] % 32]
        require ext_code.size(stor2)
        staticcall stor2.0x6d3d3917 with:
                gas gas_remaining wei
               args Array(len=mem[96], data=mem[mem[64] + 68 len floor32(mem[96]) + 32])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]):
        return not bool(address(ext_call.return_data[0]))
    return (ext_call.return_data[0] < block.timestamp)
}

function sub_62379d79(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) < 'a':
            mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        else:
            if Mask(8, 248, mem[idx + 128]) > 'z':
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            else:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
        idx = idx + 1
        continue 
    mem[mem[64]] = 0x9685ce7f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = arg1.length
    mem[mem[64] + 68 len ceil32(arg1.length)] = mem[128 len ceil32(arg1.length)]
    require ext_code.size(stor2)
    staticcall stor2.0x9685ce7f with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=mem[mem[64] + 68 len arg1.length])
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != msg.sender:
        revert with 0, 'Allowed only for an owner.'
    if not arg2:
        revert with 0, 'Invalid new owner address.'
    idx = 0
    while idx < mem[96]:
        require idx < mem[96]
        require idx < mem[96]
        if Mask(8, 248, mem[idx + 128]) < 'a':
            mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        else:
            if Mask(8, 248, mem[idx + 128]) > 'z':
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            else:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
        idx = idx + 1
        continue 
    mem[mem[64]] = 0x766edd9200000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 36] = arg2
    mem[mem[64] + 4] = 64
    mem[mem[64] + 68] = mem[96]
    mem[mem[64] + 100 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    require ext_code.size(stor2)
    call stor2.0x766edd92 with:
         gas gas_remaining wei
        args 64, address(arg2), mem[mem[64] + 68 len mem[96] + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64]] = 0x390b78a800000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 36] = arg2
    mem[mem[64] + 4] = 64
    mem[mem[64] + 68] = mem[96]
    mem[mem[64] + 100 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if not mem[96] % 32:
        require ext_code.size(stor2)
        call stor2.0x390b78a8 with:
             gas gas_remaining wei
            args 64, address(arg2), mem[mem[64] + 68 len mem[96] + 32]
    else:
        mem[floor32(mem[96]) + mem[64] + 100] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 132 len mem[96] % 32]
        require ext_code.size(stor2)
        call stor2.0x390b78a8 with:
             gas gas_remaining wei
            args Array(len=mem[96], data=mem[mem[64] + 100 len floor32(mem[96]) + 32]), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0441026f(?) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[64] = ceil32(arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        require idx < arg2.length
        if Mask(8, 248, mem[idx + 128]) < 'a':
            mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        else:
            if Mask(8, 248, mem[idx + 128]) > 'z':
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            else:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
        idx = idx + 1
        continue 
    _106 = mem[64]
    mem[mem[64]] = 0x9685ce7f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = arg2.length
    mem[mem[64] + 68 len ceil32(arg2.length)] = mem[128 len ceil32(arg2.length)]
    require ext_code.size(stor2)
    staticcall stor2.0x9685ce7f with:
            gas gas_remaining wei
           args Array(len=arg2.length, data=mem[mem[64] + 68 len arg2.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 != address(ext_call.return_data[0]):
        revert with 0, 'Allowed only for an owner.'
    _214 = mem[64]
    mem[64] = mem[64] + 64
    mem[_214] = 13
    mem[_214 + 32] = 'TokensFactory'
    mem[mem[64] + 4] = Mask(32, 224, sha3('TokensFactory'))
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('TokensFactory'))
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg3:
        revert with 0, 'Invalid token address'
    if address(ext_call.return_data[0]) != msg.sender:
        revert with 0, 'Allowed only for the tokens factory.'
    idx = 0
    while idx < mem[96]:
        require idx < mem[96]
        require idx < mem[96]
        if Mask(8, 248, mem[idx + 128]) < 'a':
            mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        else:
            if Mask(8, 248, mem[idx + 128]) > 'z':
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            else:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
        idx = idx + 1
        continue 
    mem[mem[64]] = 0x85492caf00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 36] = arg3
    mem[mem[64] + 4] = 64
    mem[mem[64] + 68] = mem[96]
    mem[mem[64] + 100 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    require ext_code.size(stor2)
    call stor2.0x85492caf with:
         gas gas_remaining wei
        args 64, address(arg3), mem[mem[64] + 68 len mem[96] + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64]] = 0xc2c991dd00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg3
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = mem[96]
    mem[mem[64] + 100 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if not mem[96] % 32:
        require ext_code.size(stor2)
        call stor2.0xc2c991dd with:
             gas gas_remaining wei
            args address(arg3), 64, mem[mem[64] + 68 len mem[96] + 32]
    else:
        mem[floor32(mem[96]) + mem[64] + 100] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 132 len mem[96] % 32]
        require ext_code.size(stor2)
        call stor2.0xc2c991dd with:
             gas gas_remaining wei
            args address(arg3), Array(len=mem[96], data=mem[mem[64] + 100 len floor32(mem[96]) + 32])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_93ea3e65(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) < 'a':
            mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        else:
            if Mask(8, 248, mem[idx + 128]) > 'z':
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            else:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
        idx = idx + 1
        continue 
    mem[mem[64]] = 0x9685ce7f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = arg1.length
    mem[mem[64] + 68 len ceil32(arg1.length)] = mem[128 len ceil32(arg1.length)]
    require ext_code.size(stor2)
    staticcall stor2.0x9685ce7f with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=mem[mem[64] + 68 len arg1.length])
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != msg.sender:
        revert with 0, 'Allowed only for an owner.'
    idx = 0
    while idx < mem[96]:
        require idx < mem[96]
        require idx < mem[96]
        if Mask(8, 248, mem[idx + 128]) < 'a':
            mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        else:
            if Mask(8, 248, mem[idx + 128]) > 'z':
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            else:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
        idx = idx + 1
        continue 
    mem[mem[64]] = 0x6d3d391700000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[96]
    mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    require ext_code.size(stor2)
    staticcall stor2.0x6d3d3917 with:
            gas gas_remaining wei
           args 32, mem[mem[64] + 36 len mem[96] + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    staticcall stor2.0xc7f8692a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    mem[mem[64]] = 0xc177ff1d00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 36] = 2 * ext_call.return_data[0]
    mem[mem[64] + 4] = 64
    mem[mem[64] + 68] = mem[96]
    mem[mem[64] + 100 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    require ext_code.size(stor2)
    call stor2.0xc177ff1d with:
         gas gas_remaining wei
        args 64, 2 * ext_call.return_data[0], mem[mem[64] + 68 len mem[96] + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64]] = 0xa73c135800000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[96]
    mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if not mem[96] % 32:
        require ext_code.size(stor2)
        call stor2.0xa73c1358 with:
             gas gas_remaining wei
            args 32, mem[mem[64] + 36 len mem[96] + 32]
    else:
        mem[floor32(mem[96]) + mem[64] + 68] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 100 len mem[96] % 32]
        require ext_code.size(stor2)
        call stor2.0xa73c1358 with:
             gas gas_remaining wei
            args Array(len=mem[96], data=mem[mem[64] + 68 len floor32(mem[96]) + 32])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_936e46ce(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    if arg1.length <= 0:
        revert with 0, 'Symbol length should always between 1 & 5'
    if arg1.length >= 6:
        revert with 0, 'Symbol length should always between 1 & 5'
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 224
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 16
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 'PermissionModule'
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 228] = call.func_hash
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 260] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 292] = 0
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).'!Dn{' with:
            gas gas_remaining wei
           args call.func_hash, msg.sender, 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Declined by Permission Module.'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) < 'a':
            mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        else:
            if Mask(8, 248, mem[idx + 128]) > 'z':
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            else:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
        idx = idx + 1
        continue 
    mem[mem[64]] = 0x8d80669700000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = arg1.length
    mem[mem[64] + 68 len ceil32(arg1.length)] = mem[128 len ceil32(arg1.length)]
    require ext_code.size(stor2)
    staticcall stor2.0x8d806697 with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=mem[mem[64] + 68 len arg1.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[mem[64]] = 0x6d3d391700000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[96]
    mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    require ext_code.size(stor2)
    staticcall stor2.0x6d3d3917 with:
            gas gas_remaining wei
           args 32, mem[mem[64] + 36 len mem[96] + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]):
        revert with 0, 'The symbol is busy.'
    if ext_call.return_data[0] >= block.timestamp:
        revert with 0, 'The symbol is busy. Please wait when it will be available.'
    require ext_code.size(stor2)
    staticcall stor2.0xc7f8692a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + block.timestamp >= block.timestamp
    mem[mem[64]] = 0x8420319b00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = 0
    mem[mem[64] + 132] = block.timestamp
    mem[mem[64] + 164] = ext_call.return_data[0] + block.timestamp
    mem[mem[64] + 4] = 192
    mem[mem[64] + 196] = mem[96]
    mem[mem[64] + 228 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    mem[mem[64] + 100] = mem[96] + 224
    mem[mem[96] + mem[64] + 228] = mem[ceil32(arg1.length) + 128]
    _1641 = mem[ceil32(arg1.length) + 128]
    mem[mem[96] + mem[64] + 260 len ceil32(mem[ceil32(arg1.length) + 128])] = mem[ceil32(arg1.length) + 160 len ceil32(mem[ceil32(arg1.length) + 128])]
    if not _1641 % 32:
        require ext_code.size(stor2)
        call stor2.0x8420319b with:
             gas gas_remaining wei
            args 192, msg.sender, 0, mem[96] + 224, block.timestamp, ext_call.return_data[0] + block.timestamp, mem[96], mem[mem[64] + 228 len _1641 + mem[96] + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x74740d8b00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = 96
        mem[mem[64] + 100] = mem[96]
        mem[mem[64] + 132 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[mem[64] + 68] = mem[96] + 128
        mem[mem[96] + mem[64] + 132] = mem[ceil32(arg1.length) + 128]
        _2285 = mem[ceil32(arg1.length) + 128]
        mem[mem[96] + mem[64] + 164 len ceil32(mem[ceil32(arg1.length) + 128])] = mem[ceil32(arg1.length) + 160 len ceil32(mem[ceil32(arg1.length) + 128])]
        if not _2285 % 32:
            require ext_code.size(stor2)
            call stor2.0x74740d8b with:
                 gas gas_remaining wei
                args msg.sender, Array(len=mem[96], data=mem[mem[64] + 132 len _2285 + mem[96] + 32]), mem[96] + 128
        else:
            mem[floor32(_2285) + mem[96] + mem[64] + 164] = mem[floor32(_2285) + mem[96] + mem[64] + -(_2285 % 32) + 196 len _2285 % 32]
            require ext_code.size(stor2)
            call stor2.0x74740d8b with:
                 gas gas_remaining wei
                args msg.sender, Array(len=ext_call.return_data[0] + block.timestamp, data=mem[mem[64] + 196 len floor32(_2285) + mem[96]]), mem[mem[64] + 68 len 96]
    else:
        mem[floor32(_1641) + mem[96] + mem[64] + 260] = mem[floor32(_1641) + mem[96] + mem[64] + -(_1641 % 32) + 292 len _1641 % 32]
        require ext_code.size(stor2)
        call stor2.0x8420319b with:
             gas gas_remaining wei
            args 192, msg.sender, 0, mem[96] + 224, block.timestamp, ext_call.return_data[0] + block.timestamp, mem[96], mem[mem[64] + 228 len floor32(_1641) + mem[96] + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x74740d8b00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = 96
        mem[mem[64] + 100] = mem[96]
        mem[mem[64] + 132 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[mem[64] + 68] = mem[96] + 128
        mem[mem[96] + mem[64] + 132] = mem[ceil32(arg1.length) + 128]
        _2288 = mem[ceil32(arg1.length) + 128]
        mem[mem[96] + mem[64] + 164 len ceil32(mem[ceil32(arg1.length) + 128])] = mem[ceil32(arg1.length) + 160 len ceil32(mem[ceil32(arg1.length) + 128])]
        if not _2288 % 32:
            require ext_code.size(stor2)
            call stor2.0x74740d8b with:
                 gas gas_remaining wei
                args msg.sender, Array(len=mem[96], data=mem[mem[64] + 132 len _2288 + mem[96] + 32]), mem[96] + 128
        else:
            mem[floor32(_2288) + mem[96] + mem[64] + 164] = mem[floor32(_2288) + mem[96] + mem[64] + -(_2288 % 32) + 196 len _2288 % 32]
            require ext_code.size(stor2)
            call stor2.0x74740d8b with:
                 gas gas_remaining wei
                args msg.sender, Array(len=ext_call.return_data[0] + block.timestamp, data=mem[mem[64] + 196 len floor32(_2288) + mem[96]]), mem[mem[64] + 68 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
