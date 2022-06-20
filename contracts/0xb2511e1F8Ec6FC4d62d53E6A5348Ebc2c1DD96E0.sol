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
address stor8;
uint256 transactionFee;

function currencyToken() {
    return currencyTokenAddress
}

function owner() {
    return owner
}

function sub_97ff1f96(?) {
    return sub_97ff1f96Address
}

function transactionFee() {
    return transactionFee
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

function setTransactionFee(uint256 arg1) {
    require msg.sender == owner
    transactionFee = arg1
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

function sub_77338701(?) {
    require msg.sender == owner
    stor8 = arg1
    require ext_code.size(arg1)
    call arg1.0x79ba5097 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d75d382e(?) {
    require msg.sender == owner
    require ext_code.size(stor8)
    call stor8.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3fb95fb1(?) {
    require ext_code.size(stor8)
    call stor8.0x3fb95fb1 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_5173e831(?) {
    require ext_code.size(stor8)
    call stor8.0x5173e831 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_7281f97c(?) {
    require ext_code.size(stor8)
    call stor8.0x7281f97c with:
         gas gas_remaining wei
        args arg1 << 224, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_08a4cd06(?) {
    require ext_code.size(stor8)
    call stor8.0x8a4cd06 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_3c254038(?) {
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
    require ext_code.size(stor8)
    call stor8.0x5173e831 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg2
    require ext_code.size(stor8)
    call stor8.0x5173e831 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg2
    require ext_code.size(stor8)
    call stor8.0xa62a5a00 with:
         gas gas_remaining wei
        args arg1 << 224, ext_call.return_data[0] - arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xa5b70701: arg2, block.timestamp, arg1
}

function sub_4868eb7c(?) {
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
    require ext_code.size(currencyTokenAddress)
    call currencyTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor8, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor8)
    call stor8.0x3fb95fb1 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 + ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(stor8)
    call stor8.'5P'^' with:
         gas gas_remaining wei
        args arg1 << 224, arg2 + ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x9a541d3c: arg2, block.timestamp, arg1
}

function sub_7aa54eec(?) {
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
    require ext_code.size(currencyTokenAddress)
    call currencyTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor8, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor8)
    call stor8.0x7281f97c with:
         gas gas_remaining wei
        args arg1 << 224, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 + ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(stor8)
    call stor8.0xd2c023ee with:
         gas gas_remaining wei
        args arg1 << 224, arg2 + ext_call.return_data[0], arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x8b652c18: arg2, arg3 << 224, block.timestamp, arg1
}

function sub_65d24f5b(?) {
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
    require ext_code.size(stor8)
    call stor8.0x8a4cd06 with:
         gas gas_remaining wei
        args address(arg3), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg2
    require ext_code.size(stor8)
    call stor8.0xa64b6e5f with:
         gas gas_remaining wei
        args address(arg3), stor7, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor8)
    call stor8.0x8a4cd06 with:
         gas gas_remaining wei
        args address(arg3), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg2
    require ext_code.size(stor8)
    call stor8.0x784af991 with:
         gas gas_remaining wei
        args address(arg3), arg1 << 224, ext_call.return_data[0] - arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xb6fce440: arg2, block.timestamp, arg1, arg3
}

function sub_157e98e7(?) {
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
    require transactionFee + arg2 >= arg2
    require ext_code.size(stor8)
    call stor8.0x3fb95fb1 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= transactionFee + arg2
    require ext_code.size(stor8)
    call stor8.0x3fb95fb1 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= transactionFee + arg2
    require ext_code.size(stor8)
    call stor8.'5P'^' with:
         gas gas_remaining wei
        args arg1 << 224, ext_call.return_data[0] - transactionFee - arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor8)
    call stor8.0xc4e7c4c with:
         gas gas_remaining wei
        args stor7, transactionFee + arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x1dfc114b: transactionFee, block.timestamp, arg1
    emit 0x677cfcd8: arg2, block.timestamp, arg1
}

function sub_0668ec26(?) {
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
    require transactionFee + arg2 >= arg2
    require ext_code.size(stor8)
    call stor8.0x7281f97c with:
         gas gas_remaining wei
        args arg1 << 224, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= transactionFee + arg2
    require ext_code.size(stor8)
    call stor8.0x7281f97c with:
         gas gas_remaining wei
        args arg1 << 224, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= transactionFee + arg2
    require ext_code.size(stor8)
    call stor8.0xd2c023ee with:
         gas gas_remaining wei
        args arg1 << 224, ext_call.return_data[0] - transactionFee - arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor8)
    call stor8.0xc4e7c4c with:
         gas gas_remaining wei
        args stor7, transactionFee + arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x1dfc114b: transactionFee, block.timestamp, arg1
    emit 0x554ef036: arg2, arg3 << 224, block.timestamp, arg1
}

function sub_ddcf4e4f(?) {
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
    require currencyTokenAddress != arg3
    require ext_code.size(arg3)
    call arg3.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor8, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor8)
    call stor8.0x8a4cd06 with:
         gas gas_remaining wei
        args address(arg3), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 + ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(stor8)
    call stor8.0x784af991 with:
         gas gas_remaining wei
        args address(arg3), arg1 << 224, arg2 + ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor8)
    call stor8.0x77ac56b1 with:
         gas gas_remaining wei
        args address(arg3), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(stor8)
        call stor8.0x2f2d80e7 with:
             gas gas_remaining wei
            args address(arg3), arg1 << 224, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xe9237cb1: block.timestamp, arg1, arg3
    emit 0x8828ce81: arg2, block.timestamp, arg1, arg3
}

function sub_e08b0748(?) {
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
    require transactionFee + arg2 >= arg2
    require ext_code.size(currencyTokenAddress)
    call currencyTokenAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= transactionFee + arg2
    require ext_code.size(currencyTokenAddress)
    call currencyTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor7, transactionFee
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x1dfc114b: transactionFee, block.timestamp, arg1
    require ext_code.size(currencyTokenAddress)
    call currencyTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor8, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xad45225b: arg2, block.timestamp, arg1
    require ext_code.size(stor8)
    call stor8.0x5173e831 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 + ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(stor8)
    call stor8.0xa62a5a00 with:
         gas gas_remaining wei
        args arg1 << 224, arg2 + ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a5efbd58(?) {
    require ext_code.size(arg2)
    call arg2.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == owner
    require ext_code.size(arg2)
    call arg2.0xc9fddcd1 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(stor8)
    call stor8.0x947db38f with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        return 0
    require ext_code.size(arg2)
    call arg2.0x84d504bc with:
         gas gas_remaining wei
        args stor8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        return 1
    require ext_code.size(stor8)
    call stor8.0xbebe8101 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor8)
    call stor8.0x19b1e340 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0] / 10^10:
        if ext_call.return_data[0] / 10^10:
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^10 / ext_call.return_data[0] / 10^10 > 0)
    else:
        if ext_call.return_data[0] / 10^10:
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^10 / ext_call.return_data[0] / 10^10 == ext_call.return_data[0]:
                if ext_call.return_data[0] / 10^10:
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^10 / ext_call.return_data[0] / 10^10 > 0)
    revert
}

function sub_caa22e81(?) {
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
    require transactionFee + arg2 >= arg2
    require ext_code.size(stor8)
    call stor8.0x3fb95fb1 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= transactionFee + arg2
    require ext_code.size(stor8)
    call stor8.0xc4e7c4c with:
         gas gas_remaining wei
        args stor7, transactionFee
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x1dfc114b: transactionFee, block.timestamp, arg1
    require ext_code.size(stor8)
    call stor8.0x3fb95fb1 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= transactionFee + arg2
    require ext_code.size(stor8)
    call stor8.'5P'^' with:
         gas gas_remaining wei
        args arg1 << 224, ext_call.return_data[0] - transactionFee - arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor8)
    call stor8.0x5173e831 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 + ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(stor8)
    call stor8.0xa62a5a00 with:
         gas gas_remaining wei
        args arg1 << 224, arg2 + ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x2828433a: arg2, block.timestamp, arg1
}

function sub_a20153b1(?) {
    require ext_code.size(stor8)
    call stor8.0x947db38f with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        return 0
    require ext_code.size(arg2)
    call arg2.missingFundsToEndAuction() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    if ext_call.return_data[0]:
        call arg2.price() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg2)
        call arg2.tokenMultiplier() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0]:
                return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
        else:
            if ext_call.return_data[0]:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]:
                    if ext_call.return_data[0]:
                        return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
    else:
        call arg2.0xce9b53f4 with:
             gas gas_remaining wei
            args stor8
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            require ext_code.size(stor8)
            call stor8.0xbebe8101 with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor8)
            call stor8.0x19b1e340 with:
                 gas gas_remaining wei
                args arg2
        else:
            require ext_code.size(arg2)
            call arg2.'ovLS' with:
                 gas gas_remaining wei
                args stor8
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor8)
            call stor8.0xbebe8101 with:
                 gas gas_remaining wei
                args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0] / 10^10:
            if ext_call.return_data[0] / 10^10:
                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^10 / ext_call.return_data[0] / 10^10)
        else:
            if ext_call.return_data[0] / 10^10:
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^10 / ext_call.return_data[0] / 10^10 == ext_call.return_data[0]:
                    if ext_call.return_data[0] / 10^10:
                        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^10 / ext_call.return_data[0] / 10^10)
    revert
}

function sub_0ca7817b(?) {
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
    require ext_code.size(stor8)
    call stor8.0x8a4cd06 with:
         gas gas_remaining wei
        args address(arg4), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg2
    require arg2 > 0
    require ext_code.size(arg4)
    call arg4.0x70a08231 with:
         gas gas_remaining wei
        args stor8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(currencyTokenAddress)
    call currencyTokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args stor8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor8)
    call stor8.0xa64b6e5f with:
         gas gas_remaining wei
        args address(arg4), address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg4)
    call arg4.0xdd62ed3e with:
         gas gas_remaining wei
        args this.address, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg4)
    if ext_call.return_data[0] < arg2:
        call arg4.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg5), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    call arg4.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg5), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(stor8)
    call stor8.0x8a4cd06 with:
         gas gas_remaining wei
        args address(arg4), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg2
    require ext_code.size(stor8)
    call stor8.0x784af991 with:
         gas gas_remaining wei
        args address(arg4), arg1 << 224, ext_call.return_data[0] - arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg5)
    call arg5.sellCards(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] >= arg3
    require ext_call.return_data[0] >= transactionFee
    require ext_code.size(currencyTokenAddress)
    call currencyTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stor8, ext_call.return_data[0] - transactionFee
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
    emit 0x370d88b0: ext_call.return_data[0] - transactionFee, arg2, ext_call.return_data[64] + ext_call.return_data[32], transactionFee, block.timestamp, arg1, arg4, arg5
    require ext_code.size(currencyTokenAddress)
    call currencyTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stor7, transactionFee
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x1dfc114b: transactionFee, block.timestamp, arg1
    require ext_code.size(currencyTokenAddress)
    call currencyTokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args stor8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= ext_call.return_data[32]
    require ext_call.return_data[0] - ext_call.return_data[32] >= ext_call.return_data[0]
    require -ext_call.return_data[32] == ext_call.return_data[0] - transactionFee
    require ext_code.size(arg4)
    call arg4.0x70a08231 with:
         gas gas_remaining wei
        args stor8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= ext_call.return_data[0]
    require 0 == arg2
    require ext_code.size(stor8)
    call stor8.0x3fb95fb1 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require (2 * ext_call.return_data[0]) - transactionFee >= ext_call.return_data[0]
    require ext_code.size(stor8)
    call stor8.'5P'^' with:
         gas gas_remaining wei
        args arg1 << 224, (2 * ext_call.return_data[0]) - transactionFee
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_42372e3f(?) {
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
    require ext_code.size(arg2)
    call arg2.0xc9fddcd1 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(arg2)
    call arg2.targetToken() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.0x84d504bc with:
         gas gas_remaining wei
        args stor8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(arg2)
        call arg2.'ovLS' with:
             gas gas_remaining wei
            args stor8
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] > 0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x70a08231 with:
             gas gas_remaining wei
            args stor8
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg2)
        call arg2.proxyClaimTokens(address arg1) with:
             gas gas_remaining wei
            args stor8
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x70a08231 with:
             gas gas_remaining wei
            args stor8
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= ext_call.return_data[0]
        require 0 == ext_call.return_data[0]
        require ext_code.size(stor8)
        call stor8.0x19b1e340 with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
        require ext_code.size(stor8)
        call stor8.0x93e94df6 with:
             gas gas_remaining wei
            args address(arg2), 2 * ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor8)
    call stor8.0x947db38f with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(stor8)
        call stor8.0xbebe8101 with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor8)
        call stor8.0x19b1e340 with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] / 10^10
        if ext_call.return_data[0] / 10^10:
            require ext_call.return_data[0] * ext_call.return_data[0] / 10^10 / ext_call.return_data[0] / 10^10 == ext_call.return_data[0]
        require ext_code.size(stor8)
        call stor8.0x8a4cd06 with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require (ext_call.return_data[0] * ext_call.return_data[0] / 10^10 / ext_call.return_data[0] / 10^10) + ext_call.return_data[0] >= ext_call.return_data[0]
        require ext_code.size(stor8)
        call stor8.0x784af991 with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), arg1 << 224, (ext_call.return_data[0] * ext_call.return_data[0] / 10^10 / ext_call.return_data[0] / 10^10) + ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor8)
        call stor8.0x56963e00 with:
             gas gas_remaining wei
            args address(arg2), arg1 << 224, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xae3d149c: ext_call.return_data[0] * ext_call.return_data[0] / 10^10 / ext_call.return_data[0] / 10^10, block.timestamp, arg1, address(ext_call.return_data[0]), arg2
        require ext_code.size(stor8)
        call stor8.0x77ac56b1 with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(stor8)
            call stor8.0x2f2d80e7 with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), arg1 << 224, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0xe9237cb1: block.timestamp, arg1, address(ext_call.return_data[0])
}

function sub_854cff2e(?) {
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
    require arg2 > 0
    require transactionFee + arg2 >= arg2
    require ext_code.size(stor8)
    call stor8.0x5173e831 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= transactionFee + arg2
    require ext_code.size(stor8)
    call stor8.0x5173e831 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= transactionFee + arg2
    require ext_code.size(stor8)
    call stor8.0xa62a5a00 with:
         gas gas_remaining wei
        args arg1 << 224, ext_call.return_data[0] - transactionFee - arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg4)
    call arg4.0x70a08231 with:
         gas gas_remaining wei
        args stor8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(currencyTokenAddress)
    call currencyTokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args stor8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor8)
    call stor8.0xc4e7c4c with:
         gas gas_remaining wei
        args this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor8)
    call stor8.0xc4e7c4c with:
         gas gas_remaining wei
        args stor7, transactionFee
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x1dfc114b: transactionFee, block.timestamp, arg1
    require ext_code.size(currencyTokenAddress)
    call currencyTokenAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args this.address, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(currencyTokenAddress)
    if ext_call.return_data[0] < arg2:
        call currencyTokenAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg5), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    call currencyTokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg5), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(arg5)
    call arg5.0xae5fe1f2 with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] >= arg3
    require ext_code.size(arg4)
    call arg4.0xa9059cbb with:
         gas gas_remaining wei
        args stor8, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg4)
    call arg4.0x70a08231 with:
         gas gas_remaining wei
        args stor8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= ext_call.return_data[0]
    require 0 == ext_call.return_data[0]
    require ext_call.return_data[32] + ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(currencyTokenAddress)
    call currencyTokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args stor8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[32] + ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_call.return_data[32] == transactionFee + arg2
    require ext_code.size(stor8)
    call stor8.0x8a4cd06 with:
         gas gas_remaining wei
        args address(arg4), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(stor8)
    call stor8.0x784af991 with:
         gas gas_remaining wei
        args address(arg4), arg1 << 224, 2 * ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
    require arg2 >= ext_call.return_data[64] + ext_call.return_data[32]
    require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
    emit 0x8dd95c86: arg2 - ext_call.return_data[64] - ext_call.return_data[32], ext_call.return_data[0], ext_call.return_data[64] + ext_call.return_data[32], transactionFee, block.timestamp, arg1, arg4, arg5
    require ext_code.size(stor8)
    call stor8.0x77ac56b1 with:
         gas gas_remaining wei
        args address(arg4), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(stor8)
        call stor8.0x2f2d80e7 with:
             gas gas_remaining wei
            args address(arg4), arg1 << 224, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xe9237cb1: block.timestamp, arg1, arg4
}

function sub_b7fdbd8b(?) {
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
    require arg2 > 0
    require ext_code.size(stor8)
    call stor8.0x947db38f with:
         gas gas_remaining wei
        args address(arg3), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require transactionFee + arg2 >= arg2
        require ext_code.size(stor8)
        call stor8.0x5173e831 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= transactionFee + arg2
        require ext_code.size(stor8)
        call stor8.0xc4e7c4c with:
             gas gas_remaining wei
            args stor7, transactionFee
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x1dfc114b: transactionFee, block.timestamp, arg1
        require ext_code.size(stor8)
        call stor8.0x5173e831 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= transactionFee
        require ext_code.size(stor8)
        call stor8.0xa62a5a00 with:
             gas gas_remaining wei
            args arg1 << 224, ext_call.return_data[0] - transactionFee
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(currencyTokenAddress)
        call currencyTokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args stor8
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor8)
        call stor8.0xc4e7c4c with:
             gas gas_remaining wei
            args address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(currencyTokenAddress)
        call currencyTokenAddress.0xdd62ed3e with:
             gas gas_remaining wei
            args address(this.address), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(currencyTokenAddress)
        if ext_call.return_data[0] < arg2:
            call currencyTokenAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg3), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        call currencyTokenAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg3), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg3)
        call arg3.0xb5397b11 with:
             gas gas_remaining wei
            args stor8, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require arg2 >= ext_call.return_data[0]
        require ext_code.size(currencyTokenAddress)
        if arg2 - ext_call.return_data[0] > 0:
            call currencyTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args stor8, arg2 - ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        call currencyTokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args stor8
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= ext_call.return_data[0]
        require 0 == ext_call.return_data[64]
        require ext_code.size(stor8)
        call stor8.0xbebe8101 with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
        require ext_code.size(stor8)
        call stor8.0x23c64e49 with:
             gas gas_remaining wei
            args address(arg3), 2 * ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor8)
        call stor8.0x947db38f with:
             gas gas_remaining wei
            args address(arg3), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
        require ext_code.size(stor8)
        call stor8.0x56963e00 with:
             gas gas_remaining wei
            args address(arg3), arg1 << 224, 2 * ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor8)
        call stor8.0x5173e831 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= ext_call.return_data[0]
        require ext_code.size(stor8)
        call stor8.0xa62a5a00 with:
             gas gas_remaining wei
            args arg1 << 224, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg3)
        call arg3.targetToken() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x79c788d4: ext_call.return_data[32], ext_call.return_data[64], transactionFee, block.timestamp, arg1, address(ext_call.return_data[0]), arg3
    else:
        require (2 * transactionFee) + arg2 >= arg2
        require ext_code.size(stor8)
        call stor8.0x5173e831 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= (2 * transactionFee) + arg2
        require ext_code.size(stor8)
        call stor8.0xc4e7c4c with:
             gas gas_remaining wei
            args stor7, 2 * transactionFee
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x1dfc114b: 2 * transactionFee, block.timestamp, arg1
        require ext_code.size(stor8)
        call stor8.0x5173e831 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= 2 * transactionFee
        require ext_code.size(stor8)
        call stor8.0xa62a5a00 with:
             gas gas_remaining wei
            args arg1 << 224, ext_call.return_data[0] - (2 * transactionFee)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(currencyTokenAddress)
        call currencyTokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args stor8
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor8)
        call stor8.0xc4e7c4c with:
             gas gas_remaining wei
            args address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(currencyTokenAddress)
        call currencyTokenAddress.0xdd62ed3e with:
             gas gas_remaining wei
            args address(this.address), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(currencyTokenAddress)
        if ext_call.return_data[0] < arg2:
            call currencyTokenAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg3), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        call currencyTokenAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg3), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg3)
        call arg3.0xb5397b11 with:
             gas gas_remaining wei
            args stor8, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require arg2 >= ext_call.return_data[0]
        require ext_code.size(currencyTokenAddress)
        if arg2 - ext_call.return_data[0] > 0:
            call currencyTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args stor8, arg2 - ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        call currencyTokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args stor8
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= ext_call.return_data[0]
        require 0 == ext_call.return_data[64]
        require ext_code.size(stor8)
        call stor8.0xbebe8101 with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
        require ext_code.size(stor8)
        call stor8.0x23c64e49 with:
             gas gas_remaining wei
            args address(arg3), 2 * ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor8)
        call stor8.0x947db38f with:
             gas gas_remaining wei
            args address(arg3), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
        require ext_code.size(stor8)
        call stor8.0x56963e00 with:
             gas gas_remaining wei
            args address(arg3), arg1 << 224, 2 * ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor8)
        call stor8.0x5173e831 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= ext_call.return_data[0]
        require ext_code.size(stor8)
        call stor8.0xa62a5a00 with:
             gas gas_remaining wei
            args arg1 << 224, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg3)
        call arg3.targetToken() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x79c788d4: ext_call.return_data[32], ext_call.return_data[64], 2 * transactionFee, block.timestamp, arg1, address(ext_call.return_data[0]), arg3
}



}
