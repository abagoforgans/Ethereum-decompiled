contract main {




// =====================  Runtime code  =====================


#
#  - sub_0ec821f6(?)
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

function sub_cc2d4da3(?) {
    require ext_code.size(stor2)
    staticcall stor2.0x872a698c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_2caa27a0(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor2)
    staticcall stor2.0xb6053aa5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function getTokenStandard(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor2)
    staticcall stor2.0x4676e7b9 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_676ea192(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor2)
    staticcall stor2.0x60fd453d with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return not not ext_call.return_data[12 len 20]
}

function sub_9430563e(?) {
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('SymbolRegistry'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_b5126ea7(?) {
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('SymbolRegistry'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
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

function sub_8918d994(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x21446e7b with:
            gas gas_remaining wei
           args call.func_hash, msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 30, 0xfe4465636c696e6564206279205065726d697373696f6e204d6f64756c652e00
    require ext_code.size(stor2)
    staticcall stor2.0x60fd453d with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        revert with 0, 'Invalid address of the new token strategy.'
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Strategy not found.'
    require ext_code.size(stor2)
    call stor2.0x16b1939d with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.'SB_}' with:
         gas gas_remaining wei
        args arg1, address(ext_call.return_data[0]), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5a237274(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x21446e7b with:
            gas gas_remaining wei
           args call.func_hash, msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 30, 0xfe4465636c696e6564206279205065726d697373696f6e204d6f64756c652e00
    require ext_code.size(arg1)
    staticcall arg1.0xa116af8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Invalid tokens strategy.'
    require ext_code.size(stor2)
    staticcall stor2.0x60fd453d with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20]:
        revert with 0, 'Strategy already present.'
    require ext_code.size(stor2)
    staticcall stor2.0x872a698c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    call stor2.0x4f9cef1f with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.0x4ada4516 with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.0x24748278 with:
         gas gas_remaining wei
        args ext_call.return_data[0], arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8f9340ea(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x21446e7b with:
            gas gas_remaining wei
           args call.func_hash, msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 30, 0xfe4465636c696e6564206279205065726d697373696f6e204d6f64756c652e00
    require ext_code.size(stor2)
    staticcall stor2.0x60fd453d with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Strategy not found.'
    require ext_code.size(stor2)
    staticcall stor2.0x3b6cee7c with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    staticcall stor2.0x872a698c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 <= ext_call.return_data[0]
    require ext_code.size(stor2)
    if ext_call.return_data[0] - 1 > 0:
        staticcall stor2.0xdbcf8dbc with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor2)
        call stor2.0x5d8eadc4 with:
             gas gas_remaining wei
            args ext_call.return_data[0], ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor2)
        call stor2.0xc0ef549e with:
             gas gas_remaining wei
            args ext_call.return_data[0], ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    call stor2.0xe51313ef with:
         gas gas_remaining wei
        args (ext_call.return_data[0] - 1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.0xa2865ef8 with:
         gas gas_remaining wei
        args (ext_call.return_data[0] - 1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.0x6f31ca89 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.0xd33a212f with:
         gas gas_remaining wei
        args arg1, address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
