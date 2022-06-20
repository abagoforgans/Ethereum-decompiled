contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
address sub_97ff1f96Address;
address platformTokenAddress;
address currencyTokenAddress;
address stor5;
address stor6;
address stor7;
uint256 stor7;

function currencyToken() {
    return currencyTokenAddress
}

function owner() {
    return owner
}

function sub_97ff1f96(?) {
    return sub_97ff1f96Address
}

function platformToken() {
    return platformTokenAddress
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
    revert
}

function sub_dfa571f7(?) {
    require msg.sender == owner
    stor5 = arg1
    stor6 = arg2
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require owner != arg1
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function sub_6f7798c9(?) {
    if this.address == address(stor7):
        return address(stor7)
    require ext_code.size(address(stor7))
    call address(stor7).0x6f7798c9 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(stor7) == ext_call.return_data[12 len 20]:
        return address(stor7)
    uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
    return ext_call.return_data[12 len 20]
}

function sub_50c42901(?) {
    if owner != msg.sender:
        if stor5 != msg.sender:
            if stor6 != msg.sender:
                require ext_code.size(sub_97ff1f96Address)
                call sub_97ff1f96Address.0x33920503 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
    address(stor7) = arg1
}

function sub_3bce6426(?) {
    if owner != msg.sender:
        if stor5 != msg.sender:
            if stor6 != msg.sender:
                require ext_code.size(sub_97ff1f96Address)
                call sub_97ff1f96Address.0x33920503 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
    emit 0x438201a6: block.timestamp, arg1
}

function sub_19a4bef4(?) {
    if owner != msg.sender:
        if stor5 != msg.sender:
            if stor6 != msg.sender:
                require ext_code.size(sub_97ff1f96Address)
                call sub_97ff1f96Address.0x33920503 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
    emit 0x24070aca: block.timestamp, arg1, arg2
}

function sub_3c6a912f(?) {
    if owner != msg.sender:
        if stor5 != msg.sender:
            if stor6 != msg.sender:
                require ext_code.size(sub_97ff1f96Address)
                call sub_97ff1f96Address.0x33920503 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
    emit 0x1ac73597: block.timestamp, arg1, arg2
}

function sub_621a0a25(?) {
    if owner != msg.sender:
        if stor5 != msg.sender:
            if stor6 != msg.sender:
                require ext_code.size(sub_97ff1f96Address)
                call sub_97ff1f96Address.0x33920503 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
    emit 0xb77589a2: address(arg1), arg5, block.timestamp, arg2, arg3, arg4
    emit 0x3a014b84: address(arg1), arg6, block.timestamp, arg2, arg3
}

function sub_a90b56f0(?) {
    if owner != msg.sender:
        if stor5 != msg.sender:
            if stor6 != msg.sender:
                require ext_code.size(sub_97ff1f96Address)
                call sub_97ff1f96Address.0x33920503 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
    emit 0x7d646745: address(arg1), arg5, block.timestamp, arg2, arg3, arg4
    emit 0x38e6fd51: address(arg1), arg6, block.timestamp, arg2, arg3
}

function sub_2d00e244(?) {
    if owner != msg.sender:
        if stor5 != msg.sender:
            if stor6 != msg.sender:
                require ext_code.size(sub_97ff1f96Address)
                call sub_97ff1f96Address.0x33920503 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
    emit 0x4464fd77: msg.sender, 0, arg2, 0, block.timestamp, arg1, msg.sender, 4
    emit 0x4a9b55c9: arg2, block.timestamp, msg.sender, msg.sender
}

function sub_83505556(?) {
    if owner != msg.sender:
        if stor5 != msg.sender:
            if stor6 != msg.sender:
                require ext_code.size(sub_97ff1f96Address)
                call sub_97ff1f96Address.0x33920503 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
    emit 0x4464fd77: currencyTokenAddress, address(arg2), arg3, 0, block.timestamp, arg1, msg.sender, 0
    emit 0x3837fb09: arg3, block.timestamp, arg1, arg2
}

function sub_49747f2f(?) {
    if owner != msg.sender:
        if stor5 != msg.sender:
            if stor6 != msg.sender:
                require ext_code.size(sub_97ff1f96Address)
                call sub_97ff1f96Address.0x33920503 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
    emit 0x72fa5a1a: block.timestamp, arg1, arg2
    emit 0x4464fd77: 0, address(arg2), 0, arg4, block.timestamp, arg1, msg.sender, 1
    emit 0x3438d9de: arg3, arg4, block.timestamp, arg1, arg2
}

function sub_c2999e1c(?) {
    if owner != msg.sender:
        if stor5 != msg.sender:
            if stor6 != msg.sender:
                require ext_code.size(sub_97ff1f96Address)
                call sub_97ff1f96Address.0x33920503 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
    if currencyTokenAddress == arg3:
        emit 0x4464fd77: address(arg2), address(arg3), arg4, arg5, block.timestamp, arg1, msg.sender, 2
    else:
        emit 0x4464fd77: address(arg2), address(arg3), arg4, arg5, block.timestamp, arg1, msg.sender, 3
        emit 0x72fa5a1a: block.timestamp, arg1, arg3
    emit 0x6e8d1614: arg4, arg5, block.timestamp, arg1, arg2, arg3
}



}
