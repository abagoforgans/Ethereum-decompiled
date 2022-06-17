contract main {




// =====================  Runtime code  =====================


address sub_949b61c2Address;
address stor1;
mapping of uint8 stor2;
mapping of uint8 sub_b28589ac;
array of struct sub_073840b3;
mapping of uint8 sub_d8af8c23;

function sub_073840b3(?) {
    require calldata.size - 4 >= 128
    require arg3 < 20
    return sub_073840b3[address(arg1)][address(arg2)][arg4][arg3].field_0
}

function sub_949b61c2(?) {
    return sub_949b61c2Address
}

function sub_b28589ac(?) {
    require calldata.size - 4 >= 128
    return sub_b28589ac[address(arg1)][address(arg2)][arg4][arg3]
}

function sub_b7f68185(?) {
    require calldata.size - 4 >= 128
    return bool(stor2[address(arg1)][address(arg2)][arg4][arg3])
}

function sub_d8af8c23(?) {
    require calldata.size - 4 >= 96
    return sub_d8af8c23[address(arg1)][address(arg2)][arg3]
}

function _fallback() payable {
    revert
}

function sub_9002a460(?) {
    require calldata.size - 4 >= 96
    idx = 736
    s = 0
    while 1376 > idx + 32:
        mem[idx + 32] = sub_073840b3[address(arg1)][address(arg2)][arg3][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_073840b3[address(arg1)][address(arg2)][arg3].field_0, mem[768 len 608]
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

function sub_108f0438(?) {
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
                    0x416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0xfe6d6f64756c652e000000000000000000000000000000000000000000000000
    emit 0x2154cc11: arg3, arg4, arg1, arg2
}

function sub_b6520221(?) {
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
                    0x416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0xfe6d6f64756c652e000000000000000000000000000000000000000000000000
    emit 0x4aa7a833: arg3, arg4, arg1, arg2
}

function sub_6e8c4d80(?) {
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
                    0x416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0xfe6d6f64756c652e000000000000000000000000000000000000000000000000
    sub_d8af8c23[address(arg1)][address(arg2)][arg4] = arg3
}

function sub_991e0a1e(?) {
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
                    0x416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0xfe6d6f64756c652e000000000000000000000000000000000000000000000000
    sub_b28589ac[address(arg1)][address(arg2)][arg4][arg3] = 0
}

function sub_03ca076e(?) {
    require calldata.size - 4 >= 160
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
                    0x416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0xfe6d6f64756c652e000000000000000000000000000000000000000000000000
    sub_b28589ac[address(arg1)][address(arg2)][arg5][arg3] = arg4
}

function sub_06424962(?) {
    require calldata.size - 4 >= 160
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
                    0x416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0xfe6d6f64756c652e000000000000000000000000000000000000000000000000
    stor2[address(arg1)][address(arg2)][arg5][arg3] = uint8(arg4)
}

function sub_b3a7589d(?) {
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
                    0x416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0xfe6d6f64756c652e000000000000000000000000000000000000000000000000
    require arg3 < 20
    sub_073840b3[address(arg1)][address(arg2)][arg4][arg3].field_0 = 0
}

function sub_60a9a95e(?) {
    require calldata.size - 4 >= 160
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
                    0x416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0xfe6d6f64756c652e000000000000000000000000000000000000000000000000
    require arg4 < 20
    sub_073840b3[address(arg1)][address(arg2)][arg5][arg4].field_0 = arg3
}

function sub_734e05b8(?) {
    require calldata.size - 4 >= 128
    idx = 0
    s = 0
    while uint8(idx) < sub_d8af8c23[address(arg2)][address(arg3)][arg4]:
        mem[0] = arg4
        mem[32] = sha3(address(arg3), sha3(address(arg2), 4))
        require uint8(idx) < 20
        mem[100] = sub_073840b3[address(arg2)][address(arg3)][arg4][uint8(idx)].field_0
        mem[132] = Mask(32, 224, arg1)
        require ext_code.size(stor1)
        staticcall stor1.0x29ae0194 with:
                gas gas_remaining wei
               args sub_073840b3[address(arg2)][address(arg3)][arg4][uint8(idx)].field_0, Mask(32, 224, arg1)
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            idx = idx + 1
            s = sub_073840b3[address(arg2)][address(arg3)][arg4][uint8(idx)].field_0
            continue 
        mem[100] = sub_073840b3[address(arg2)][address(arg3)][arg4][uint8(idx)].field_0
        require ext_code.size(stor1)
        staticcall stor1.0x95bf086e with:
                gas gas_remaining wei
               args sub_073840b3[address(arg2)][address(arg3)][arg4][uint8(idx)].field_0
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            idx = idx + 1
            s = sub_073840b3[address(arg2)][address(arg3)][arg4][uint8(idx)].field_0
            continue 
        return 1
    return 0
}

function sub_7bef600f(?) {
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
                    0x416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0xfe6d6f64756c652e000000000000000000000000000000000000000000000000
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
                    0x416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0xfe6d6f64756c652e000000000000000000000000000000000000000000000000
    stor2[address(arg1)][address(arg2)][arg4][arg3] = 0
    require 1 <= sub_d8af8c23[address(arg1)][address(arg2)][arg4]
    if uint8(sub_d8af8c23[address(arg1)][address(arg2)][arg4] - 1) > 0:
        require uint8(sub_d8af8c23[address(arg1)][address(arg2)][arg4] - 1) < 20
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
                        0x416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                        0xfe6d6f64756c652e000000000000000000000000000000000000000000000000
        sub_b28589ac[address(arg1)][address(arg2)][arg4][stor4[address(arg1)][address(arg2)][arg4][uint8(stor5[address(arg1)][address(arg2)][arg4] - 1)].field_0] = sub_b28589ac[address(arg1)][address(arg2)][arg4][arg3]
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
                        0x416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                        0xfe6d6f64756c652e000000000000000000000000000000000000000000000000
        require sub_b28589ac[address(arg1)][address(arg2)][arg4][arg3] < 20
        sub_073840b3[address(arg1)][address(arg2)][arg4][stor3[address(arg1)][address(arg2)][arg4][arg3]].field_0 = sub_073840b3[address(arg1)][address(arg2)][arg4][uint8(stor5[address(arg1)][address(arg2)][arg4] - 1)].field_0
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
                    0x416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0xfe6d6f64756c652e000000000000000000000000000000000000000000000000
    sub_b28589ac[address(arg1)][address(arg2)][arg4][arg3] = 0
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
                    0x416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0xfe6d6f64756c652e000000000000000000000000000000000000000000000000
    require uint8(sub_d8af8c23[address(arg1)][address(arg2)][arg4] - 1) < 20
    sub_073840b3[address(arg1)][address(arg2)][arg4][uint8(stor5[address(arg1)][address(arg2)][arg4] - 1)].field_0 = 0
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
                    0x416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0xfe6d6f64756c652e000000000000000000000000000000000000000000000000
    sub_d8af8c23[address(arg1)][address(arg2)][arg4] = uint8(sub_d8af8c23[address(arg1)][address(arg2)][arg4] - 1)
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
                    0x416c6c6f776564206f6e6c7920666f7220746865207065726d697373696f6e,
                    0xfe6d6f64756c652e000000000000000000000000000000000000000000000000
    emit 0x4aa7a833: arg3, arg4, arg1, arg2
}



}
