contract main {




// =====================  Runtime code  =====================


address hubAddress;
address sub_f42cb038Address;
uint256 sub_9ec41a2d;
uint256 withdrawalTime;

function hub() {
    return hubAddress
}

function withdrawalTime() {
    return withdrawalTime
}

function sub_9ec41a2d(?) {
    return sub_9ec41a2d
}

function sub_f42cb038(?) {
    return sub_f42cb038Address
}

function _fallback() payable {
    revert
}

function sub_3d6ec65e(?) {
    require ext_code.size(hubAddress)
    call hubAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function can only be called by hub owner!'
    if arg1 != sub_9ec41a2d:
        sub_9ec41a2d = arg1
}

function setWithdrawalTime(uint256 arg1) {
    require ext_code.size(hubAddress)
    call hubAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function can only be called by hub owner!'
    if arg1 != withdrawalTime:
        withdrawalTime = arg1
}

function releaseTokens(address arg1, uint256 arg2) {
    require ext_code.size(hubAddress)
    call hubAddress.0xd6d42fb5 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function can only be called by Holding contract!'
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x5ffe0282 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot release more tokens than there are reserved'
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x5ffe0282 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 <= ext_call.return_data[0]
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x50c3ff57 with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0] - arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TokensReleased(address(arg1), arg2);
}

function depositTokens(address arg1, uint256 arg2) {
    require ext_code.size(arg1)
    call arg1.keyHasPurpose(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sha3(address(msg.sender, 0)), 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(hubAddress)
    call hubAddress.0x9d76ea58 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xdd62ed3e with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'Sender allowance must be equal to or higher than chosen amount'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'Sender balance must be equal to or higher than chosen amount!'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, sub_f42cb038Address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x7a766460 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 + ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0xbd3cd525 with:
         gas gas_remaining wei
        args address(arg1), arg2 + ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x7a766460 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 + ext_call.return_data[0] >= ext_call.return_data[0]
    emit TokensDeposited(address(arg1), arg2, arg2 + ext_call.return_data[0]);
}

function transferTokens(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(hubAddress)
    call hubAddress.0xd6d42fb5 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function can only be called by Holding contract!'
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x7a766460 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sender does not have enough tokens to transfer!'
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x5ffe0282 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Sender does not have enough tokens reserved to transfer!'
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x5ffe0282 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg3 <= ext_call.return_data[0]
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x50c3ff57 with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0] - arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x7a766460 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg3 <= ext_call.return_data[0]
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0xbd3cd525 with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0] - arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x7a766460 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg3 + ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0xbd3cd525 with:
         gas gas_remaining wei
        args address(arg2), arg3 + ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TokensTransferred(address(arg1), address(arg2), arg3);
}

function withdrawTokens(address arg1) {
    require ext_code.size(arg1)
    call arg1.keyHasPurpose(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sha3(address(msg.sender, 0)), 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Sender does not have action permission for identity!'
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x2ba97595 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'Cannot withdraw tokens before starting token withdrawal!'
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x9344ea6e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= block.timestamp:
        revert with 0, 'Cannot withdraw tokens before withdrawal timestamp!'
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x56582bf9 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0xbec3fa17 with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x56582bf9 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x7a766460 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= ext_call.return_data[0]
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0xbd3cd525 with:
         gas gas_remaining wei
        args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x9385067f with:
         gas gas_remaining wei
        args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x56582bf9 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x56582bf9 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x7a766460 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= ext_call.return_data[0]
    emit TokensWithdrawn(address(arg1), ext_call.return_data[0], 0);
}

function sub_258b72f7(?) {
    require ext_code.size(hubAddress)
    call hubAddress.0x9d76ea58 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xdd62ed3e with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Sender allowance must be equal to or higher than initial balance'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Sender balance must be equal to or higher than initial balance!'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, sub_f42cb038Address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg3:
        create contract with 0 wei
                        code: code.data[15665 len 4961], address(msg.sender)
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x45afe31e: msg.sender, address(create.new_address)
        require ext_code.size(sub_f42cb038Address)
        call sub_f42cb038Address.0xbd3cd525 with:
             gas gas_remaining wei
            args address(create.new_address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_f42cb038Address)
        call sub_f42cb038Address.0x7fdc3676 with:
             gas gas_remaining wei
            args address(create.new_address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xcb939889: address(create.new_address), arg2
    else:
        require ext_code.size(arg4)
        call arg4.keyHasPurpose(bytes32 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sha3(address(msg.sender, 0)), 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(sub_f42cb038Address)
        call sub_f42cb038Address.0xbd3cd525 with:
             gas gas_remaining wei
            args address(arg4), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_f42cb038Address)
        call sub_f42cb038Address.0x7fdc3676 with:
             gas gas_remaining wei
            args address(arg4), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xcb939889: address(arg4), arg2
    if arg2 > sub_9ec41a2d:
        require ext_code.size(sub_f42cb038Address)
        call sub_f42cb038Address.0x7f19651 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_f42cb038Address)
        call sub_f42cb038Address.0x48fd564b with:
             gas gas_remaining wei
            args (ext_call.return_data[0] + 1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_07ab5e84(?) {
    require ext_code.size(arg1)
    call arg1.keyHasPurpose(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sha3(address(msg.sender, 0)), 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x2ba97595 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f42cb038Address)
    if ext_call.return_data[0]:
        call sub_f42cb038Address.0x9344ea6e with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp >= ext_call.return_data[0]:
            revert with 0, 'Withrdrawal process already pending!'
        require ext_code.size(sub_f42cb038Address)
        call sub_f42cb038Address.0x56582bf9 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_f42cb038Address)
        call sub_f42cb038Address.0xbec3fa17 with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_f42cb038Address)
        call sub_f42cb038Address.0x7a766460 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_f42cb038Address)
        call sub_f42cb038Address.0x56582bf9 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= ext_call.return_data[0]
        require ext_code.size(sub_f42cb038Address)
        call sub_f42cb038Address.0xbd3cd525 with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_f42cb038Address)
        call sub_f42cb038Address.0x56582bf9 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokensWithdrawn(address(arg1), ext_call.return_data[0], 0);
    call sub_f42cb038Address.0x5ffe0282 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x7a766460 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= ext_call.return_data[0]
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x9385067f with:
         gas gas_remaining wei
        args address(arg1), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x67b6d271 with:
         gas gas_remaining wei
        args address(arg1), withdrawalTime + block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_f42cb038Address)
    if 0 < arg2:
        call sub_f42cb038Address.0x82aa2928 with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit WithdrawalInitiated(address(arg1), 0, withdrawalTime);
    else:
        call sub_f42cb038Address.0x82aa2928 with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit WithdrawalInitiated(address(arg1), arg2, withdrawalTime);
}

function sub_c213e1aa(?) {
    require ext_code.size(hubAddress)
    call hubAddress.0xd6d42fb5 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function can only be called by Holding contract!'
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x2ba97595 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f42cb038Address)
    if ext_call.return_data[0]:
        call sub_f42cb038Address.0x9385067f with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit code.data[20754 len 32]: arg1
    call sub_f42cb038Address.0x2ba97595 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f42cb038Address)
    if ext_call.return_data[0]:
        call sub_f42cb038Address.0x9385067f with:
             gas gas_remaining wei
            args address(arg2), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit code.data[20754 len 32]: arg2
    call sub_f42cb038Address.0x2ba97595 with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f42cb038Address)
    if ext_call.return_data[0]:
        call sub_f42cb038Address.0x9385067f with:
             gas gas_remaining wei
            args address(arg3), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit code.data[20754 len 32]: arg3
    call sub_f42cb038Address.0x2ba97595 with:
         gas gas_remaining wei
        args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f42cb038Address)
    if ext_call.return_data[0]:
        call sub_f42cb038Address.0x9385067f with:
             gas gas_remaining wei
            args address(arg4), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit code.data[20754 len 32]: arg4
    call sub_f42cb038Address.0x5ffe0282 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x7a766460 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= ext_call.return_data[0]
    if sub_9ec41a2d > 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    code.data[20690 len 32],
                    code.data[20658 len 32]
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x5ffe0282 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x7a766460 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= ext_call.return_data[0]
    if sub_9ec41a2d > 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    code.data[20690 len 32],
                    code.data[20658 len 32]
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x5ffe0282 with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x7a766460 with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= ext_call.return_data[0]
    if sub_9ec41a2d > 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    code.data[20690 len 32],
                    code.data[20658 len 32]
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x5ffe0282 with:
         gas gas_remaining wei
        args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x7a766460 with:
         gas gas_remaining wei
        args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= ext_call.return_data[0]
    if sub_9ec41a2d > 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    code.data[20690 len 32],
                    code.data[20658 len 32]
    if arg5:
        require arg5
        require 3 * arg5 / arg5 == 3
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x5ffe0282 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x7a766460 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= ext_call.return_data[0]
    if 0 < 3 * arg5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    code.data[20690 len 32],
                    code.data[20722 len 32]
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x5ffe0282 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x7a766460 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= ext_call.return_data[0]
    if 0 < arg5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    code.data[20690 len 32],
                    code.data[20722 len 32]
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x5ffe0282 with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x7a766460 with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= ext_call.return_data[0]
    if 0 < arg5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    code.data[20690 len 32],
                    code.data[20722 len 32]
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x5ffe0282 with:
         gas gas_remaining wei
        args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0x7a766460 with:
         gas gas_remaining wei
        args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= ext_call.return_data[0]
    if 0 < arg5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    code.data[20690 len 32],
                    code.data[20722 len 32]
    require ext_code.size(sub_f42cb038Address)
    call sub_f42cb038Address.0xa6748ef5 with:
         gas gas_remaining wei
        args 0, 0, address(arg2), address(arg3), arg4, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg5:
        require arg5
        require 3 * arg5 / arg5 == 3
    emit code.data[20626 len 32]: address(arg1), 3 * arg5
    emit code.data[20626 len 32]: address(arg2), arg5
    emit code.data[20626 len 32]: address(arg3), arg5
    emit code.data[20626 len 32]: address(arg4), arg5
}



}
