contract main {




// =====================  Runtime code  =====================


address sub_949b61c2Address;
address stor1;
address stor2;
uint256 stor3;
mapping of uint8 stor4;
mapping of uint256 sub_b43a9e6c;
mapping of uint256 stor6;
array of struct sub_4b7cc9fa;
uint32 sub_d97e60f6;
array of uint256 sub_d7f3f39e;
mapping of address stor10;
address storA6B0;
address storC87C;

function sub_4b7cc9fa(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_4b7cc9fa.length
    return sub_4b7cc9fa[arg1].field_0
}

function sub_676ea192(?) {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function sub_949b61c2(?) {
    return sub_949b61c2Address
}

function sub_a1a3cd2a(?) {
    return Mask(32, 224, sub_d97e60f6)
}

function sub_b43a9e6c(?) {
    require calldata.size - 4 >= 32
    return sub_b43a9e6c[arg1]
}

function sub_bb4ecc65(?) {
    return sub_d7f3f39e[0 len sub_d7f3f39e.length]
}

function sub_d7f3f39e(?) {
    return sub_d7f3f39e[0 len sub_d7f3f39e.length]
}

function sub_d97e60f6(?) {
    return Mask(32, 224, sub_d97e60f6)
}

function _fallback() payable {
    revert
}

function sub_53e082da(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor2)
    staticcall stor2.0xeb196545 with:
            gas gas_remaining wei
           args arg1
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

function sub_34153cd1(?) {
    require calldata.size - 4 >= 128
    if not storC87C:
        return 1
    require ext_code.size(storC87C)
    call storC87C.0xbcaba46b with:
         gas gas_remaining wei
        args 0, 0, address(arg1), address(arg2), msg.sender, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_0b0733f9(?) {
    require calldata.size - 4 >= 160
    if not storA6B0:
        return 1
    require ext_code.size(storA6B0)
    call storA6B0.0xaf05064f with:
         gas gas_remaining wei
        args 0, 0, address(arg1), address(arg2), msg.sender, arg4, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_c4bffe2b(?) {
    if not sub_4b7cc9fa.length:
        mem[(32 * sub_4b7cc9fa.length) + 128] = 32
        mem[(32 * sub_4b7cc9fa.length) + 160] = sub_4b7cc9fa.length
        mem[(32 * sub_4b7cc9fa.length) + 192 len floor32(sub_4b7cc9fa.length)] = mem[128 len floor32(sub_4b7cc9fa.length)]
        return memory
          from (32 * sub_4b7cc9fa.length) + 128
           len (96 * sub_4b7cc9fa.length) + 64
    mem[128] = uint256(sub_4b7cc9fa.field_0)
    idx = 128
    s = 0
    while (32 * sub_4b7cc9fa.length) + 96 > idx:
        mem[idx + 32] = sub_4b7cc9fa[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_4b7cc9fa.length) + 192 len floor32(sub_4b7cc9fa.length)] = mem[128 len floor32(sub_4b7cc9fa.length)]
    return Array(len=sub_4b7cc9fa.length, data=mem[128 len floor32(sub_4b7cc9fa.length)], mem[(32 * sub_4b7cc9fa.length) + floor32(sub_4b7cc9fa.length) + 192 len (32 * sub_4b7cc9fa.length) - floor32(sub_4b7cc9fa.length)]), 
}

function sub_2a0eabdc(?) {
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
    if not arg1:
        revert with 0, 'Invalid address of the transfer verification logic.'
    stor10[arg2] = arg1
    emit 0xef956dc4: arg2, arg1
}

function sub_f1222b83(?) {
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
    if stor4[arg1]:
        revert with 0, 'Chain already added.'
    sub_4b7cc9fa.length++
    sub_4b7cc9fa[sub_4b7cc9fa.length].field_0 = arg1
    stor6[arg1] = sub_4b7cc9fa.length
    sub_b43a9e6c[arg1] = stor3
    stor3++
    stor4[arg1] = 1
    emit 0x2e75b5e9: arg1, sub_b43a9e6c[arg1]
}

function sub_7f75cc2b(?) {
    require calldata.size - 4 >= 160
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('TokensFactory'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x4676e7b9 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor10[ext_call.return_data[0]]:
        return 1
    require ext_code.size(stor10[ext_call.return_data[0]])
    staticcall stor10[ext_call.return_data[0]].0xfc46338b with:
            gas gas_remaining wei
           args address(arg1), address(arg2), address(arg3), address(arg4), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_2ccde4b6(?) {
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
    if not stor4[arg1]:
        revert with 0, 'Chain is not supported.'
    require 1 <= sub_4b7cc9fa.length
    require sub_4b7cc9fa.length - 1 < sub_4b7cc9fa.length
    require stor6[arg1] < sub_4b7cc9fa.length
    sub_4b7cc9fa[stor6[arg1]].field_0 = sub_4b7cc9fa[sub_4b7cc9fa.length].field_0
    stor6[stor7[stor7.length].field_0] = stor6[arg1]
    stor4[arg1] = 0
    require sub_4b7cc9fa.length - 1 < sub_4b7cc9fa.length
    sub_4b7cc9fa[sub_4b7cc9fa.length].field_0 = 0
    sub_4b7cc9fa.length--
    if sub_4b7cc9fa.length > sub_4b7cc9fa.length - 1:
        idx = sub_4b7cc9fa.length - 1
        while sub_4b7cc9fa.length > idx:
            sub_4b7cc9fa[idx].field_0 = 0
            idx = idx + 1
            continue 
    emit 0x1b2c1c7b: arg1, sub_b43a9e6c[arg1]
}

function sub_b6b4f509(?) {
    require calldata.size - 4 >= 128
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('TokensFactory'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x4676e7b9 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Token is not registered in the tokens factory.'
    if not stor4[arg2]:
        revert with 0, 'Chain is not supported.'
    if not arg1:
        revert with 0, 'Invalid sender.'
    if arg4 <= 0:
        revert with 0, 'Invalid value.'
    require ext_code.size(stor1)
    staticcall stor1.0x32d414dc with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.0x76e747d3 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0x708a62d2 with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), address(arg1), ext_call.return_data[0] + 1, arg2, arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_cb43067b(?) {
    require calldata.size - 4 >= 128
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('TokensFactory'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x4676e7b9 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Token is not registered in the tokens factory.'
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('TokensFactory'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x4676e7b9 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor10[ext_call.return_data[0]]:
        return 1
    require ext_code.size(stor10[ext_call.return_data[0]])
    staticcall stor10[ext_call.return_data[0]].0xbcaba46b with:
            gas gas_remaining wei
           args address(arg1), address(arg2), address(arg3), msg.sender, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_8471432b(?) {
    require calldata.size - 4 >= 256
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
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('TokensFactory'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x4676e7b9 with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Token is not registered in the tokens factory.'
    if not arg1:
        revert with 0, 'Invalid address.'
    if not arg2:
        revert with 0, 'Invalid address.'
    if not stor4[arg5]:
        revert with 0, 'Chain is not supported.'
    if arg7 <= 0:
        revert with 0, 'Invalid value.'
    require ext_code.size(arg3)
    call arg3.0x14c0a3d7 with:
         gas gas_remaining wei
        args arg7, arg5, address(arg2), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    staticcall stor2.0xeb196545 with:
            gas gas_remaining wei
           args arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Transaction already processed.'
    require ext_code.size(stor2)
    call stor2.0x8e4ee55c with:
         gas gas_remaining wei
        args arg6, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.0xbc87872c with:
         gas gas_remaining wei
        args 0, 0, address(arg2), arg8, address(arg3), arg4, arg5, arg6, arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
