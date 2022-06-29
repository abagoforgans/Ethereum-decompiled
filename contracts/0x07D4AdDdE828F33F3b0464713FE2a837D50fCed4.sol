contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;
address stor7;
address stor8;
address stor9;
address sub_a26a66eeAddress;
address sub_ef7fc217Address;
uint256 sub_8feaa24e;
uint256 sub_476f771d;
uint256 sub_fcd2dac1;
uint256 sub_49ece9ae;
uint256 sub_27b51543;
uint8 sub_d9047cc0;
uint8 sub_0b970479; offset 8
uint8 sub_e14d5cea; offset 16
uint8 sub_1ee0b12e; offset 24
uint8 sub_f4748f2c; offset 32
uint8 sub_65af92fe; offset 40
uint8 sub_6f539e7c; offset 48
uint8 sub_64c5ca45; offset 56
uint8 sub_7ced874c; offset 64
uint256 stor17; offset 64
uint256 stor17; offset 56
uint256 stor17; offset 48
uint256 stor17; offset 40
uint256 stor17; offset 32
uint256 stor17; offset 24
uint256 stor17; offset 16
uint256 stor17; offset 8

function sub_0b970479(?) {
    return bool(sub_0b970479)
}

function sub_1ee0b12e(?) {
    return bool(sub_1ee0b12e)
}

function sub_27b51543(?) {
    return sub_27b51543
}

function sub_476f771d(?) {
    return sub_476f771d
}

function sub_49ece9ae(?) {
    return sub_49ece9ae
}

function sub_64c5ca45(?) {
    return bool(sub_64c5ca45)
}

function sub_65af92fe(?) {
    return bool(sub_65af92fe)
}

function sub_6f539e7c(?) {
    return bool(sub_6f539e7c)
}

function sub_7ced874c(?) {
    return bool(sub_7ced874c)
}

function owner() {
    return owner
}

function sub_8feaa24e(?) {
    return sub_8feaa24e
}

function sub_a26a66ee(?) {
    return sub_a26a66eeAddress
}

function sub_d9047cc0(?) {
    return bool(sub_d9047cc0)
}

function sub_e14d5cea(?) {
    return bool(sub_e14d5cea)
}

function sub_ef7fc217(?) {
    return sub_ef7fc217Address
}

function sub_f4748f2c(?) {
    return bool(sub_f4748f2c)
}

function sub_fcd2dac1(?) {
    return sub_fcd2dac1
}

function sub_e0071b1d(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_27b51543 = arg1
}

function changeowner(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
}

function sub_2bff6882(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_ef7fc217Address = arg1
}

function sub_fa4cc88d(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_a26a66eeAddress = arg1
}

function sub_7d1495b7(?) {
    require msg.sender == owner
    if not sub_d9047cc0:
        sub_d9047cc0 = 1
    else:
        if bool(sub_d9047cc0) == 1:
            sub_d9047cc0 = 0
}

function sub_0cdf016b(?) {
    require calldata.size - 4 >= 128
    require msg.sender == owner
    sub_8feaa24e = arg1
    sub_476f771d = arg2
    sub_fcd2dac1 = arg3
    sub_49ece9ae = arg4
}

function sub_7fce766a(?) {
    require msg.sender == owner
    if not sub_0b970479:
        Mask(248, 0, stor17.field_8) = 1
    else:
        if bool(sub_0b970479) == 1:
            Mask(248, 0, stor17.field_8) = 0
}

function sub_0ddfb0d9(?) {
    require msg.sender == owner
    if not sub_e14d5cea:
        Mask(240, 0, stor17.field_16) = 1
    else:
        if bool(sub_e14d5cea) == 1:
            Mask(240, 0, stor17.field_16) = 0
}

function sub_2a1930a5(?) {
    require msg.sender == owner
    if not sub_f4748f2c:
        Mask(224, 0, stor17.field_32) = 1
    else:
        if bool(sub_f4748f2c) == 1:
            Mask(224, 0, stor17.field_32) = 0
}

function sub_3d331e81(?) {
    require msg.sender == owner
    if not sub_7ced874c:
        Mask(192, 0, stor17.field_64) = 1
    else:
        if bool(sub_7ced874c) == 1:
            Mask(192, 0, stor17.field_64) = 0
}

function sub_588ce4f6(?) {
    require msg.sender == owner
    if not sub_64c5ca45:
        Mask(200, 0, stor17.field_56) = 1
    else:
        if bool(sub_64c5ca45) == 1:
            Mask(200, 0, stor17.field_56) = 0
}

function sub_b64d3caf(?) {
    require msg.sender == owner
    if not sub_65af92fe:
        Mask(216, 0, stor17.field_40) = 1
    else:
        if bool(sub_65af92fe) == 1:
            Mask(216, 0, stor17.field_40) = 0
}

function sub_c3053961(?) {
    require msg.sender == owner
    if not sub_1ee0b12e:
        Mask(232, 0, stor17.field_24) = 1
    else:
        if bool(sub_1ee0b12e) == 1:
            Mask(232, 0, stor17.field_24) = 0
}

function sub_e6898d42(?) {
    require msg.sender == owner
    if not sub_6f539e7c:
        Mask(208, 0, stor17.field_48) = 1
    else:
        if bool(sub_6f539e7c) == 1:
            Mask(208, 0, stor17.field_48) = 0
}

function _fallback() payable {
    require msg.sender == owner
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4a100412(?) payable {
    require msg.value
    require not sub_d9047cc0
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args sub_a26a66eeAddress, msg.sender, msg.value / 10^12 * sub_27b51543
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x4bf20ea3: msg.sender, sub_a26a66eeAddress, msg.value / 10^12 * sub_27b51543
}

function sub_2a3ab700(?) payable {
    require calldata.size - 4 >= 32
    require arg1
    require not sub_e14d5cea
    require ext_code.size(stor3)
    call stor3.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, sub_ef7fc217Address, 10000 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args sub_ef7fc217Address, msg.sender, 10000 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xa6802faa: msg.sender, sub_ef7fc217Address, arg1
    emit 0x323851f1: sub_ef7fc217Address, msg.sender, arg1
}

function sub_7bed5b1a(?) payable {
    require calldata.size - 4 >= 32
    require arg1
    require not sub_f4748f2c
    require ext_code.size(stor5)
    call stor5.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, sub_ef7fc217Address, 10^16 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args sub_ef7fc217Address, msg.sender, 10000 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xcbd95682: msg.sender, sub_ef7fc217Address, arg1
    emit 0x323851f1: sub_ef7fc217Address, msg.sender, arg1
}

function sub_ae941cca(?) payable {
    require calldata.size - 4 >= 32
    require arg1
    require not sub_1ee0b12e
    require ext_code.size(stor4)
    call stor4.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, sub_ef7fc217Address, 10^16 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args sub_ef7fc217Address, msg.sender, 10000 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x36281b2f: msg.sender, sub_ef7fc217Address, arg1
    emit 0x323851f1: sub_ef7fc217Address, msg.sender, arg1
}

function sub_b89107f5(?) payable {
    require calldata.size - 4 >= 32
    require arg1
    require not sub_0b970479
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, sub_ef7fc217Address, 10^16 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args sub_ef7fc217Address, msg.sender, 10000 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xed5e0168: msg.sender, sub_ef7fc217Address, arg1
    emit 0x323851f1: sub_ef7fc217Address, msg.sender, arg1
}

function sub_96704552(?) payable {
    require calldata.size - 4 >= 32
    require arg1
    require not sub_64c5ca45
    if not arg1:
        require ext_code.size(stor8)
        call stor8.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, sub_ef7fc217Address, 10^6 * arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x23b872dd with:
             gas gas_remaining wei
            args sub_ef7fc217Address, msg.sender, 0
    else:
        require arg1
        require arg1 * sub_fcd2dac1 / arg1 == sub_fcd2dac1
        require ext_code.size(stor8)
        call stor8.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, sub_ef7fc217Address, 10^6 * arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x23b872dd with:
             gas gas_remaining wei
            args sub_ef7fc217Address, msg.sender, arg1 * sub_fcd2dac1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xa5f7f257: msg.sender, sub_ef7fc217Address, arg1
    emit 0x323851f1: sub_ef7fc217Address, msg.sender, arg1
}

function sub_12fefef5(?) payable {
    require calldata.size - 4 >= 32
    require arg1
    require not sub_65af92fe
    if not arg1:
        require ext_code.size(stor6)
        call stor6.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, sub_ef7fc217Address, 10^16 * arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x23b872dd with:
             gas gas_remaining wei
            args sub_ef7fc217Address, msg.sender, 0
    else:
        require arg1
        require arg1 * sub_8feaa24e / arg1 == sub_8feaa24e
        require ext_code.size(stor6)
        call stor6.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, sub_ef7fc217Address, 10^16 * arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x23b872dd with:
             gas gas_remaining wei
            args sub_ef7fc217Address, msg.sender, arg1 * sub_8feaa24e
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x7fdb2a7d: msg.sender, sub_ef7fc217Address, arg1
    emit 0x323851f1: sub_ef7fc217Address, msg.sender, arg1
}

function sub_1fd13fcb(?) payable {
    require calldata.size - 4 >= 32
    require arg1
    require not sub_6f539e7c
    if not arg1:
        require ext_code.size(stor7)
        call stor7.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, sub_ef7fc217Address, 10^16 * arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x23b872dd with:
             gas gas_remaining wei
            args sub_ef7fc217Address, msg.sender, 0
    else:
        require arg1
        require arg1 * sub_476f771d / arg1 == sub_476f771d
        require ext_code.size(stor7)
        call stor7.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, sub_ef7fc217Address, 10^16 * arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x23b872dd with:
             gas gas_remaining wei
            args sub_ef7fc217Address, msg.sender, arg1 * sub_476f771d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x3cd43c0c: msg.sender, sub_ef7fc217Address, arg1
    emit 0x323851f1: sub_ef7fc217Address, msg.sender, arg1
}

function sub_51a83511(?) payable {
    require calldata.size - 4 >= 32
    require arg1
    require not sub_7ced874c
    if not arg1:
        require ext_code.size(stor9)
        call stor9.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, sub_ef7fc217Address, 10^16 * arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x23b872dd with:
             gas gas_remaining wei
            args sub_ef7fc217Address, msg.sender, 0
    else:
        require arg1
        require arg1 * sub_49ece9ae / arg1 == sub_49ece9ae
        require ext_code.size(stor9)
        call stor9.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, sub_ef7fc217Address, 10^16 * arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x23b872dd with:
             gas gas_remaining wei
            args sub_ef7fc217Address, msg.sender, arg1 * sub_49ece9ae
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xa6cb6e87: msg.sender, sub_ef7fc217Address, arg1
    emit 0x323851f1: sub_ef7fc217Address, msg.sender, arg1
}



}
