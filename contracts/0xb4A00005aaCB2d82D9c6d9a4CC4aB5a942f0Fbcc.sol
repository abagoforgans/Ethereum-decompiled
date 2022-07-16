contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 168
uint128 stor0; offset 160
address owner;
address sub_302990efAddress;
address sub_fa0b49adAddress;
address sub_7c2b359bAddress;

function sub_302990ef(?) {
    return sub_302990efAddress
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function sub_7c2b359b(?) {
    return sub_7c2b359bAddress
}

function owner() {
    return owner
}

function sub_e9bd32f8(?) {
    return bool(uint8(stor0.field_168))
}

function sub_fa0b49ad(?) {
    return sub_fa0b49adAddress
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpaused()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Paused()
}

function sub_44527824(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    Mask(88, 0, stor0.field_168) = Mask(88, 0, arg1)
}

function sub_ddd11d1c(?) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    sub_302990efAddress = arg1
    sub_fa0b49adAddress = arg2
    sub_7c2b359bAddress = arg3
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_1f7852b1(?) {
    require ext_code.size(sub_fa0b49adAddress)
    call sub_fa0b49adAddress.0x1f7852b1 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function release() {
    require not uint8(stor0.field_160)
    require ext_code.size(sub_fa0b49adAddress)
    call sub_fa0b49adAddress.0x19165587 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6f7c5c6a(?) {
    require not uint8(stor0.field_160)
    require ext_code.size(sub_fa0b49adAddress)
    call sub_fa0b49adAddress.0x12996120 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2cd66ae3(?) {
    require calldata.size - 4 >= 64
    require not uint8(stor0.field_160)
    require ext_code.size(sub_302990efAddress)
    call sub_302990efAddress.0x63a36732 with:
         gas gas_remaining wei
        args msg.sender, arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b3af94db(?) {
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0xa232d082 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_eacd4892(?) {
    require ext_code.size(sub_fa0b49adAddress)
    staticcall sub_fa0b49adAddress.0xee0b5d8b with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    return ext_call.return_data[12 len 20], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           bool(ext_call.return_data[160])
}

function sub_9d54d2f5(?) {
    require calldata.size - 4 >= 128
    require not uint8(stor0.field_160)
    require uint8(stor0.field_168)
    if not arg3 / 95:
        require ext_code.size(sub_7c2b359bAddress)
        if arg1 != 1:
            call sub_7c2b359bAddress.0x7d8c2975 with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), 0, address(arg2), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_fa0b49adAddress)
            call sub_fa0b49adAddress.0x7966b059 with:
                 gas gas_remaining wei
                args msg.sender, arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x3c581f57: address(msg.sender), 0, address(arg2), 0, arg4
        else:
            call sub_7c2b359bAddress.0x7d8c2975 with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), 1, address(arg2), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_fa0b49adAddress)
            call sub_fa0b49adAddress.0x7966b059 with:
                 gas gas_remaining wei
                args msg.sender, arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x3c581f57: address(msg.sender), 1, address(arg2), 0, arg4
    else:
        require arg3 / 95
        if 100 * arg3 / 95 / arg3 / 95 != 100:
            revert with 0, 'SafeMath mul failed'
        require ext_code.size(sub_7c2b359bAddress)
        if arg1 != 1:
            call sub_7c2b359bAddress.0x7d8c2975 with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), 0, address(arg2), 100 * arg3 / 95
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_fa0b49adAddress)
            call sub_fa0b49adAddress.0x7966b059 with:
                 gas gas_remaining wei
                args msg.sender, arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x3c581f57: address(msg.sender), 0, address(arg2), 100 * arg3 / 95, arg4
        else:
            call sub_7c2b359bAddress.0x7d8c2975 with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), 1, address(arg2), 100 * arg3 / 95
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_fa0b49adAddress)
            call sub_fa0b49adAddress.0x7966b059 with:
                 gas gas_remaining wei
                args msg.sender, arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x3c581f57: address(msg.sender), 1, address(arg2), 100 * arg3 / 95, arg4
}



}
