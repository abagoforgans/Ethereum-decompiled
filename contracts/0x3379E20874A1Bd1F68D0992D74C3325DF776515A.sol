contract main {




// =====================  Runtime code  =====================


address sub_949b61c2Address;
address sub_b419ea42Address;
address sub_67cb0680Address;
array of struct sub_2d3da9ab;
mapping of uint256 sub_1086c489;
mapping of uint8 stor6;
mapping of uint256 sub_43f0284a;
mapping of struct sub_9e70d840;
mapping of uint8 stor9;
mapping of uint8 stor10;
mapping of uint8 sub_a918e12c;
array of struct sub_59a29abf;
mapping of uint8 sub_8c19b97d;
mapping of uint8 stor14;
mapping of uint8 sub_5cf991ef;
array of struct sub_d5b049f6;
mapping of uint8 sub_f4871593;

function sub_05ddd62a(?) {
    require calldata.size - 4 >= 96
    return bool(stor14[address(arg1)][address(arg2)][arg3])
}

function sub_1086c489(?) {
    require calldata.size - 4 >= 32
    return sub_1086c489[arg1]
}

function sub_29ae0194(?) {
    require calldata.size - 4 >= 64
    return bool(stor9[arg1][Mask(32, 224, arg2)])
}

function sub_2d3da9ab(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_2d3da9ab.length
    return sub_2d3da9ab[arg1].field_0
}

function sub_3f5c32e4(?) {
    require calldata.size - 4 >= 64
    return bool(stor10[address(arg1)][arg2])
}

function sub_41c90420(?) {
    require calldata.size - 4 >= 64
    return bool(stor10[address(arg1)][arg2])
}

function sub_43f0284a(?) {
    require calldata.size - 4 >= 64
    return sub_43f0284a[arg1][Mask(32, 224, arg2)]
}

function sub_59a29abf(?) {
    require calldata.size - 4 >= 64
    require arg2 < 20
    return sub_59a29abf[address(arg1)][arg2].field_0
}

function sub_5cf991ef(?) {
    require calldata.size - 4 >= 96
    return sub_5cf991ef[address(arg1)][address(arg2)][arg3]
}

function sub_67cb0680(?) {
    return sub_67cb0680Address
}

function sub_70616969(?) {
    return sub_2d3da9ab.length
}

function sub_8c19b97d(?) {
    require calldata.size - 4 >= 32
    return sub_8c19b97d[address(arg1)]
}

function sub_949b61c2(?) {
    return sub_949b61c2Address
}

function sub_95bf086e(?) {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function sub_9e70d840(?) {
    require calldata.size - 4 >= 32
    return sub_9e70d840[arg1].field_0
}

function sub_a918e12c(?) {
    require calldata.size - 4 >= 64
    return sub_a918e12c[address(arg1)][arg2]
}

function sub_b419ea42(?) {
    return sub_b419ea42Address
}

function sub_d5b049f6(?) {
    require calldata.size - 4 >= 96
    require arg3 < 20
    return sub_d5b049f6[address(arg1)][address(arg2)][arg3].field_0
}

function sub_f4871593(?) {
    require calldata.size - 4 >= 64
    return sub_f4871593[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_f1646918(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_9e70d840[arg1].field_0
    return (sub_9e70d840[arg1][0.125 / arg2].field_0 / 256^(4 * arg2 % 8) << 224)
}

function sub_adf8aa0f(?) {
    require calldata.size - 4 >= 32
    idx = 736
    s = 0
    while 1376 > idx + 32:
        mem[idx + 32] = sub_59a29abf[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_59a29abf[address(arg1)].field_0, mem[768 len 608]
}

function sub_22caf978(?) {
    require calldata.size - 4 >= 64
    idx = 736
    s = 0
    while 1376 > idx + 32:
        mem[idx + 32] = sub_d5b049f6[address(arg1)][address(arg2)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_d5b049f6[address(arg1)][address(arg2)].field_0, mem[768 len 608]
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

function sub_69ca3ff3(?) {
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    sub_67cb0680Address = 0
}

function sub_b3d1e44b(?) {
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    sub_b419ea42Address = 0
}

function sub_13a372f8(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    emit 0x1399338f: arg1
}

function sub_6e7084b8(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    emit 0x52a6ea63: arg1
}

function sub_c7c4e26b(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    emit 0x9e03b9a2: arg1
}

function sub_9259d598(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    sub_1086c489[arg1] = arg2
}

function sub_e71e224e(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    stor6[arg1] = uint8(arg2)
}

function sub_10ab7534(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    sub_b419ea42Address = arg1
}

function sub_7440ad2a(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    sub_67cb0680Address = arg1
}

function sub_07a8b069(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    emit 0xdc00a8a7: arg2, arg1
}

function sub_37fd76ac(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    emit 0xcc90c1ae: arg1, arg2
}

function sub_90d72243(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    emit RoleAdded(arg2, arg1);
}

function sub_39ca560b(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    emit 0x989388bc: arg3, arg1, arg2
}

function sub_7f0c2c12(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    emit 0xe5d12a23: arg3, arg1, arg2
}

function sub_15d9e181(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    sub_8c19b97d[address(arg1)] = arg2
}

function sub_9bda5837(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    sub_8c19b97d[address(arg1)] = arg2
}

function sub_4fcc25a8(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    emit 0x93091b3f: address(arg1), arg2
}

function sub_e65f24e3(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    sub_a918e12c[address(arg1)][arg2] = 0
}

function sub_8a235ba7(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    sub_a918e12c[address(arg1)][arg2] = arg3
}

function sub_2ef0ed43(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    stor10[address(arg1)][arg2] = uint8(arg3)
}

function sub_3aa3b7a9(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    stor10[address(arg1)][arg2] = uint8(arg3)
}

function sub_4e5c8e6b(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    emit 0xf25c0d07: Mask(32, 224, arg1), arg2
}

function sub_a37473e3(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    emit 0x38039eab: Mask(32, 224, arg1), arg2
}

function sub_e96ba675(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    sub_43f0284a[arg1][Mask(32, 224, arg2)] = 0
}

function sub_61afbf35(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    sub_43f0284a[arg1][Mask(32, 224, arg2)] = arg3
}

function sub_d943145e(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    stor9[arg1][Mask(32, 224, arg2)] = uint8(arg3)
}

function sub_e09342c9(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    sub_f4871593[address(arg1)][address(arg2)] = arg3
}

function sub_614d29ac(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    sub_5cf991ef[address(arg1)][address(arg2)][arg3] = 0
}

function sub_0d291125(?) {
    require calldata.size - 4 >= 128
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    sub_5cf991ef[address(arg1)][address(arg2)][arg3] = arg4
}

function sub_0f7a6536(?) {
    require calldata.size - 4 >= 128
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    stor14[address(arg1)][address(arg2)][arg3] = uint8(arg4)
}

function sub_c5db7edd(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    require arg2 < 20
    sub_59a29abf[address(arg1)][arg2].field_0 = 0
}

function sub_806f23ad(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    require arg1 < sub_2d3da9ab.length
    sub_2d3da9ab[arg1].field_0 = 0
}

function sub_acf47f32(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    require arg3 < 20
    sub_59a29abf[address(arg1)][arg3].field_0 = arg2
}

function sub_b0deb047(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    require arg3 < 20
    sub_59a29abf[address(arg1)][arg3].field_0 = arg2
}

function sub_31be5a6e(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    require arg1 < sub_2d3da9ab.length
    sub_2d3da9ab[arg1].field_0 = arg2
}

function sub_f86c8fbe(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    sub_2d3da9ab.length++
    sub_2d3da9ab[sub_2d3da9ab.length].field_0 = arg1
}

function sub_55ddbb9e(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    require arg3 < 20
    sub_d5b049f6[address(arg1)][address(arg2)][arg3].field_0 = 0
}

function sub_12694e95(?) {
    require calldata.size - 4 >= 64
    idx = 0
    s = 0
    while uint8(idx) < sub_8c19b97d[address(arg2)]:
        require uint8(idx) < 20
        mem[0] = Mask(32, 224, arg1)
        mem[32] = sha3(sub_59a29abf[address(arg2)][uint8(idx)].field_0, 9)
        if not stor9[stor12[address(arg2)][uint8(idx)].field_0][Mask(32, 224, arg1)]:
            idx = idx + 1
            s = sub_59a29abf[address(arg2)][uint8(idx)].field_0
            continue 
        mem[0] = sub_59a29abf[address(arg2)][uint8(idx)].field_0
        mem[32] = 6
        if not stor6[stor12[address(arg2)][uint8(idx)].field_0]:
            idx = idx + 1
            s = sub_59a29abf[address(arg2)][uint8(idx)].field_0
            continue 
        return 1
    return 0
}

function sub_28b28f45(?) {
    require calldata.size - 4 >= 128
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    require arg4 < 20
    sub_d5b049f6[address(arg1)][address(arg2)][arg4].field_0 = arg3
}

function sub_c88fb44a(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    require arg2 < sub_9e70d840[arg1].field_0
    sub_9e70d840[arg1][0.125 / arg2].field_0 = !(test266151307() * 256^(4 * arg2 % 8)) and sub_9e70d840[arg1][0.125 / arg2].field_0
}

function sub_2ea2b01a(?) {
    require calldata.size - 4 >= 96
    idx = 0
    s = 0
    while uint8(idx) < sub_f4871593[address(arg2)][address(arg3)]:
        require uint8(idx) < 20
        mem[0] = Mask(32, 224, arg1)
        mem[32] = sha3(sub_d5b049f6[address(arg2)][address(arg3)][uint8(idx)].field_0, 9)
        if not stor9[stor16[address(arg2)][address(arg3)][uint8(idx)].field_0][Mask(32, 224, arg1)]:
            idx = idx + 1
            s = sub_d5b049f6[address(arg2)][address(arg3)][uint8(idx)].field_0
            continue 
        mem[0] = sub_d5b049f6[address(arg2)][address(arg3)][uint8(idx)].field_0
        mem[32] = 6
        if not stor6[stor16[address(arg2)][address(arg3)][uint8(idx)].field_0]:
            idx = idx + 1
            s = sub_d5b049f6[address(arg2)][address(arg3)][uint8(idx)].field_0
            continue 
        return 1
    return 0
}

function sub_562a9715(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    require arg3 < sub_9e70d840[arg1].field_0
    sub_9e70d840[arg1][0.125 / arg3].field_0 = arg2 * 256^(4 * arg3 % 8) or !(test266151307() * 256^(4 * arg3 % 8)) and sub_9e70d840[arg1][0.125 / arg3].field_0
}

function sub_bea9f46f(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    sub_9e70d840[arg1].field_0++
    sub_9e70d840[arg1][sub_9e70d840[arg1].field_3].field_0 = arg2 * 256^(4 * sub_9e70d840[arg1].field_0) or !(test266151307() * 256^(4 * sub_9e70d840[arg1].field_0)) and sub_9e70d840[arg1][sub_9e70d840[arg1].field_3].field_0
}

function sub_22c2a083(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    39,
                    0xfe416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0x6d6f64756c652e00000000000000000000000000000000000000000000000000
    sub_9e70d840[arg1].field_0 = arg2
    if sub_9e70d840[arg1].field_0 > arg2:
        idx = arg2 + 7 / 8
        while sub_9e70d840[arg1].field_0 + 7 / 8 > idx:
            sub_9e70d840[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_06bc1996(?) {
    if not sub_2d3da9ab.length:
        mem[(32 * sub_2d3da9ab.length) + 128] = 32
        mem[(32 * sub_2d3da9ab.length) + 160] = sub_2d3da9ab.length
        mem[(32 * sub_2d3da9ab.length) + 192 len floor32(sub_2d3da9ab.length)] = mem[128 len floor32(sub_2d3da9ab.length)]
        return memory
          from (32 * sub_2d3da9ab.length) + 128
           len (96 * sub_2d3da9ab.length) + 64
    mem[128] = uint256(sub_2d3da9ab.field_0)
    idx = 128
    s = 0
    while (32 * sub_2d3da9ab.length) + 96 > idx:
        mem[idx + 32] = sub_2d3da9ab[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_2d3da9ab.length) + 192 len floor32(sub_2d3da9ab.length)] = mem[128 len floor32(sub_2d3da9ab.length)]
    return Array(len=sub_2d3da9ab.length, data=mem[128 len floor32(sub_2d3da9ab.length)], mem[(32 * sub_2d3da9ab.length) + floor32(sub_2d3da9ab.length) + 192 len (32 * sub_2d3da9ab.length) - floor32(sub_2d3da9ab.length)]), 
}

function sub_c414d3ef(?) {
    require calldata.size - 4 >= 32
    if not sub_9e70d840[arg1].field_0:
        mem[(32 * sub_9e70d840[arg1].field_0) + 128] = 32
        mem[(32 * sub_9e70d840[arg1].field_0) + 160] = sub_9e70d840[arg1].field_0
        mem[(32 * sub_9e70d840[arg1].field_0) + 192 len floor32(sub_9e70d840[arg1].field_0)] = mem[128 len floor32(sub_9e70d840[arg1].field_0)]
        return memory
          from (32 * sub_9e70d840[arg1].field_0) + 128
           len (96 * sub_9e70d840[arg1].field_0) + 64
    mem[128] = sub_9e70d840[arg1].field_0 / 256^0 << 224
    idx = 128
    s = 0
    while (32 * sub_9e70d840[arg1].field_0) + 96 > idx:
        mem[idx + 32] = sub_9e70d840[arg1].field_0 / 256^((4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)) << 224
        idx = idx + 32
        s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
        continue 
    mem[(32 * sub_9e70d840[arg1].field_0) + 192 len floor32(sub_9e70d840[arg1].field_0)] = mem[128 len floor32(sub_9e70d840[arg1].field_0)]
    return Array(len=sub_9e70d840[arg1].field_0, data=mem[128 len floor32(sub_9e70d840[arg1].field_0)], mem[(32 * sub_9e70d840[arg1].field_0) + floor32(sub_9e70d840[arg1].field_0) + 192 len (32 * sub_9e70d840[arg1].field_0) - floor32(sub_9e70d840[arg1].field_0)]), 
}



}
