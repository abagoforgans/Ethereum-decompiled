contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 11543]
}



// =====================  Runtime code  =====================


#
#  - massTransfer(address[] arg1, uint256[] arg2, bytes32 arg3)
#
address contractOwner;
address pendingContractOwner;
uint256 holdersCount;
mapping of uint8 owner;
mapping of uint256 holderId;
array of struct allowance;
mapping of address proxies;
address eventsHistoryAddress;

function owner(bytes32 arg1) {
    return address(owner[stor5[arg1].field_0])
}

function getHolderId(address arg1) {
    return holderId[address(arg1)]
}

function allowance(address arg1, address arg2, bytes32 arg3) {
    return allowance[arg3][5][stor4[address(arg1)]][1][stor4[address(arg2)]].field_0
}

function holders(uint256 arg1) {
    return address(owner[arg1])
}

function isCreated(bytes32 arg1) {
    return bool(allowance[arg1].field_0)
}

function balanceOf(address arg1, bytes32 arg2) {
    return allowance[arg2][5][stor4[address(arg1)]].field_0
}

function pendingContractOwner() {
    return pendingContractOwner
}

function _balanceOf(uint256 arg1, bytes32 arg2) {
    return allowance[arg2][5][arg1].field_0
}

function isTrusted(address arg1, address arg2) {
    return bool(uint8(owner[stor4[address(arg1)]][1][address(arg2)]))
}

function _address(uint256 arg1) {
    return address(owner[arg1])
}

function name(bytes32 arg1) {
    return allowance[arg1][2][0 len allowance[arg1][2].length].field_0
}

function proxies(bytes32 arg1) {
    return proxies[arg1]
}

function holdersCount() {
    return holdersCount
}

function assets(bytes32 arg1) {
    mem[320] = allowance[arg1][2].field_0
    idx = 320
    s = 0
    while allowance[arg1][2].length + 320 > idx + 32:
        mem[idx + 32] = allowance[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[allowance[arg1][2].length + (floor32(allowance[arg1][2].length - 1) + -allowance[arg1][2].length + 32 % 32) + 320] = allowance[arg1][3].length
    mem[allowance[arg1][2].length + (floor32(allowance[arg1][2].length - 1) + -allowance[arg1][2].length + 32 % 32) + 352] = allowance[arg1][3].field_0
    idx = allowance[arg1][2].length + (floor32(allowance[arg1][2].length - 1) + -allowance[arg1][2].length + 32 % 32) + 352
    s = 0
    while allowance[arg1][2].length + (floor32(allowance[arg1][2].length - 1) + -allowance[arg1][2].length + 32 % 32) + allowance[arg1][3].length + 352 > idx + 32:
        mem[idx + 32] = allowance[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return allowance[arg1].field_0, 
           allowance[arg1].field_256,
           Array(len=allowance[arg1][2].length, data=mem[320 len allowance[arg1][2].length + (floor32(allowance[arg1][2].length - 1) + -allowance[arg1][2].length + 32 % 32) + allowance[arg1][3].length + (floor32(allowance[arg1][3].length - 1) + -allowance[arg1][3].length + 32 % 32) + 32]),
           allowance[arg1][2].length + (floor32(allowance[arg1][2].length - 1) + -allowance[arg1][2].length + 32 % 32) + 224,
           bool(allowance[arg1].field_1024),
           allowance[arg1].field_1024
}

function totalSupply(bytes32 arg1) {
    return allowance[arg1].field_256
}

function description(bytes32 arg1) {
    return allowance[arg1][3][0 len allowance[arg1][3].length].field_0
}

function isReissuable(bytes32 arg1) {
    return bool(allowance[arg1].field_1024)
}

function contractOwner() {
    return contractOwner
}

function baseUnit(bytes32 arg1) {
    return allowance[arg1].field_1032
}

function eventsHistory() {
    return eventsHistoryAddress
}

function destroy() {
    if contractOwner != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function emitError(bytes32 arg1) {
    emit Error(arg1);
}

function emitIssue(bytes32 arg1, uint256 arg2, address arg3) {
    emit Issue(arg2, arg3, arg1);
}

function emitRevoke(bytes32 arg1, uint256 arg2, address arg3) {
    emit Revoke(arg2, arg3, arg1);
}

function emitRecovery(address arg1, address arg2, address arg3) {
    emit Recovery(arg3, arg1, arg2);
}

function emitOwnershipChange(address arg1, address arg2, bytes32 arg3) {
    emit OwnershipChange(arg1, arg2, arg3);
}

function emitApprove(address arg1, address arg2, bytes32 arg3, uint256 arg4) {
    emit Approve(arg4, arg1, arg2, arg3);
}

function emitTransfer(address arg1, address arg2, bytes32 arg3, uint256 arg4, string arg5) {
    emit Transfer(arg4, Array(len=arg5.length, data=arg5[all]), arg1, arg2, arg3);
}

function claimContractOwnership() {
    if pendingContractOwner != msg.sender:
        return 0
    contractOwner = pendingContractOwner
    pendingContractOwner = 0
    return 1
}

function changeContractOwnership(address arg1) {
    if contractOwner != msg.sender:
        return 0
    if not arg1:
        return 0
    pendingContractOwner = arg1
    return 1
}

function setProxy(address arg1, bytes32 arg2) {
    if contractOwner != msg.sender:
        return 8
    if proxies[arg2]:
        return 15000
    proxies[arg2] = arg1
    return 1
}

function isOwner(address arg1, bytes32 arg2) {
    if not allowance[arg2].field_0:
        return bool(allowance[arg2].field_0)
    return (allowance[arg2].field_0 == holderId[address(arg1)])
}

function setupEventsHistory(address arg1) {
    if contractOwner != msg.sender:
        return 8
    if eventsHistoryAddress:
        if eventsHistoryAddress != arg1:
            return 15017
    eventsHistoryAddress = arg1
    return 1
}

function distrust(address arg1) {
    if uint8(owner[stor4[address(msg.sender)]][1][address(arg1)]):
        uint8(owner[stor4[address(msg.sender)]][1][address(arg1)]) = 0
        return 1
    require ext_code.size(eventsHistoryAddress)
    call eventsHistoryAddress.0xe90459f8 with:
         gas gas_remaining - 710 wei
        args 'Only trusted: access denied'
    require ext_call.success
    return 15016
}

function recover(address arg1, address arg2) {
    if not uint8(owner[stor4[address(arg1)]][1][address(msg.sender)]):
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 710 wei
            args 'Only trusted: access denied'
        require ext_call.success
        return 15016
    if holderId[address(arg2)]:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 710 wei
            args 'Should recover to new address'
        require ext_call.success
        return 15012
    address(owner[stor4[address(arg1)]]) = arg2
    holderId[address(arg2)] = holderId[address(arg1)]
    require ext_code.size(eventsHistoryAddress)
    call eventsHistoryAddress.0xea14457e with:
         gas gas_remaining - 710 wei
        args address(owner[stor4[address(arg1)]]), address(arg2), msg.sender
    require ext_call.success
    return 1
}

function withdrawnTokens(address[] arg1, address arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if contractOwner != msg.sender:
        return 0
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _21 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 132] = this.address
        require ext_code.size(address(_21))
        call address(_21).balanceOf(address rg1) with:
             gas gas_remaining - 710 wei
            args this.address
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0]:
            mem[(32 * arg1.length) + 132] = arg2
            mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
            require ext_code.size(address(_21))
            call address(_21).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args address(arg2), ext_call.return_data[0]
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            require ext_call.success
        s = ext_call.return_data[0]
        s = _21
        idx = idx + 1
        continue 
    return 1
}

function revokeAsset(bytes32 arg1, uint256 arg2) {
    if not arg2:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 710 wei
            args 'Cannot revoke 0 value'
        require ext_call.success
        return 15002
    if allowance[arg1][5][stor4[address(msg.sender)]].field_0 < arg2:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 710 wei
            args 'Not enough tokens to revoke'
        require ext_call.success
        return 15009
    require arg2 <= allowance[arg1][5][stor4[address(msg.sender)]].field_0
    allowance[arg1][5][stor4[address(msg.sender)]].field_0 -= arg2
    require arg2 <= allowance[arg1].field_256
    allowance[arg1].field_256 -= arg2
    require ext_code.size(eventsHistoryAddress)
    call eventsHistoryAddress.0xc70bbc13 with:
         gas gas_remaining - 710 wei
        args arg1, arg2, address(owner[stor4[address(msg.sender)]])
    require ext_call.success
    if proxies[arg1]:
        require ext_code.size(proxies[arg1])
        call proxies[arg1].emitTransfer(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 710 wei
            args address(owner[stor4[address(msg.sender)]]), address(owner[0]), arg2
        require ext_call.success
    return 1
}

function trust(address arg1) {
    if holderId[address(msg.sender)]:
        if holderId[address(msg.sender)] == holderId[address(arg1)]:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xe90459f8 with:
                 gas gas_remaining - 710 wei
                args 'Cannot trust to oneself'
            require ext_call.success
            return 15001
        if not uint8(owner[stor4[address(msg.sender)]][1][address(arg1)]):
            uint8(owner[stor4[address(msg.sender)]][1][address(arg1)]) = 1
            return 1
    else:
        holdersCount++
        address(owner[stor2 + 1]) = msg.sender
        holderId[address(msg.sender)] = holdersCount + 1
        if holdersCount + 1 == holderId[address(arg1)]:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xe90459f8 with:
                 gas gas_remaining - 710 wei
                args 'Cannot trust to oneself'
            require ext_call.success
            return 15001
        if not uint8(owner[stor4[address(msg.sender)]][1][address(arg1)]):
            uint8(owner[stor2 + 1][1][address(arg1)]) = 1
            return 1
    ('bool', ('type', 8, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 1, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4))), ('name', 'owner', 3)))))))
    require ext_code.size(eventsHistoryAddress)
    call eventsHistoryAddress.0xe90459f8 with:
         gas gas_remaining - 710 wei
        args 'Already trusted'
    require ext_call.success
    return 15011
}

function issueAsset(bytes32 arg1, uint256 arg2, string arg3, string arg4, uint8 arg5, bool arg6) {
    if contractOwner != msg.sender:
        return 8
    if not arg2:
        if not arg6:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xe90459f8 with:
                 gas gas_remaining - 710 wei
                args 'Cannot issue 0 value fixed asset'
            require ext_call.success
            return 15006
    if allowance[arg1].field_0:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 710 wei
            args 'Asset already issued'
        require ext_call.success
        return 15005
    if holderId[address(msg.sender)]:
        allowance[arg1].field_0 = holderId[address(msg.sender)]
        allowance[arg1].field_256 = arg2
        allowance[arg1][2][].field_0 = Array(len=arg3.length, data=arg3[all])
        allowance[arg1][3][].field_0 = Array(len=arg4.length, data=arg4[all])
        allowance[arg1].field_1024 = uint8(arg6)
        allowance[arg1].field_1032 = arg5
        allowance[arg1][5][stor4[address(msg.sender)]].field_0 = arg2
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xabafaa16 with:
             gas gas_remaining - 710 wei
            args arg1, arg2, address(owner[stor4[address(msg.sender)]])
    else:
        holdersCount++
        address(owner[stor2 + 1]) = msg.sender
        holderId[address(msg.sender)] = holdersCount + 1
        allowance[arg1].field_0 = holdersCount + 1
        allowance[arg1].field_256 = arg2
        allowance[arg1][2][].field_0 = Array(len=arg3.length, data=arg3[all])
        allowance[arg1][3][].field_0 = Array(len=arg4.length, data=arg4[all])
        allowance[arg1].field_1024 = uint8(arg6)
        allowance[arg1].field_1032 = arg5
        allowance[arg1][5][stor2 + 1].field_0 = arg2
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xabafaa16 with:
             gas gas_remaining - 710 wei
            args arg1, arg2, address(owner[stor2 + 1])
    require ext_call.success
    return 1
}

function reissueAsset(bytes32 arg1, uint256 arg2) {
    if not allowance[arg1].field_0:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 710 wei
            args 'Only owner: access denied'
        require ext_call.success
        return 15014
    if allowance[arg1].field_0 != holderId[address(msg.sender)]:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 710 wei
            args 'Only owner: access denied'
        require ext_call.success
        return 15014
    if not arg2:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 710 wei
            args 'Cannot reissue 0 value'
        require ext_call.success
        return 15002
    if not allowance[arg1].field_1024:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 710 wei
            args 'Cannot reissue fixed asset'
        require ext_call.success
        return 15007
    if allowance[arg1].field_256 + arg2 < allowance[arg1].field_256:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 710 wei
            args 'Total supply overflow'
        require ext_call.success
        return 15008
    require arg2 + allowance[arg1][5][stor4[address(msg.sender)]].field_0 >= allowance[arg1][5][stor4[address(msg.sender)]].field_0
    allowance[arg1][5][stor4[address(msg.sender)]].field_0 += arg2
    require arg2 + allowance[arg1].field_256 >= allowance[arg1].field_256
    allowance[arg1].field_256 += arg2
    require ext_code.size(eventsHistoryAddress)
    call eventsHistoryAddress.0xabafaa16 with:
         gas gas_remaining - 710 wei
        args arg1, arg2, address(owner[stor4[address(msg.sender)]])
    require ext_call.success
    if proxies[arg1]:
        require ext_code.size(proxies[arg1])
        call proxies[arg1].emitTransfer(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 710 wei
            args address(owner[0]), address(owner[stor4[address(msg.sender)]]), arg2
        require ext_call.success
    return 1
}

function changeOwnership(bytes32 arg1, address arg2) {
    if not allowance[arg1].field_0:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 710 wei
            args 'Only owner: access denied'
        require ext_call.success
        return 15014
    if allowance[arg1].field_0 != holderId[address(msg.sender)]:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 710 wei
            args 'Only owner: access denied'
        require ext_call.success
        return 15014
    if not arg2:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 710 wei
            args 'Can't change ownership to 0x0'
        require ext_call.success
        return 15010
    if holderId[address(arg2)]:
        if holderId[address(arg2)] == allowance[arg1].field_0:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xe90459f8 with:
                 gas gas_remaining - 710 wei
                args 'Cannot pass ownership to oneself'
            require ext_call.success
            return 15001
        allowance[arg1].field_0 = holderId[address(arg2)]
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xa9612f72 with:
             gas gas_remaining - 710 wei
            args address(owner[stor5[arg1].field_0]), address(owner[stor4[address(arg2)]]), arg1
    else:
        holdersCount++
        address(owner[stor2 + 1]) = arg2
        holderId[address(arg2)] = holdersCount + 1
        if holdersCount + 1 == allowance[arg1].field_0:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xe90459f8 with:
                 gas gas_remaining - 710 wei
                args 'Cannot pass ownership to oneself'
            require ext_call.success
            return 15001
        allowance[arg1].field_0 = holdersCount + 1
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xa9612f72 with:
             gas gas_remaining - 710 wei
            args address(owner[stor5[arg1].field_0]), address(owner[stor2 + 1]), arg1
    require ext_call.success
    return 1
}

function proxyTransferWithReference(address arg1, uint256 arg2, bytes32 arg3, string arg4, address arg5) {
    if proxies[arg3] != msg.sender:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 710 wei
            args 'Only proxy: access denied'
        require ext_call.success
        return 15015
    if holderId[address(arg1)]:
        if holderId[address(arg5)] == holderId[address(arg1)]:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xe90459f8 with:
                 gas gas_remaining - 710 wei
                args 'Cannot send to oneself'
            require ext_call.success
            return 15001
        if not arg2:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xe90459f8 with:
                 gas gas_remaining - 710 wei
                args 'Cannot send 0 value'
            require ext_call.success
            return 15002
        if allowance[arg3][5][stor4[address(arg5)]].field_0 < arg2:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xe90459f8 with:
                 gas gas_remaining - 710 wei
                args 'Insufficient balance'
            require ext_call.success
            return 15003
        if holderId[address(arg5)] != holderId[address(arg5)]:
            if allowance[arg3][5][stor4[address(arg5)]][1][stor4[address(arg5)]].field_0 < arg2:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 710 wei
                    args 'Not enough allowance'
                require ext_call.success
                return 15004
        require arg2 <= allowance[arg3][5][stor4[address(arg5)]].field_0
        allowance[arg3][5][stor4[address(arg5)]].field_0 -= arg2
        require arg2 + allowance[arg3][5][stor4[address(arg1)]].field_0 >= allowance[arg3][5][stor4[address(arg1)]].field_0
        allowance[arg3][5][stor4[address(arg1)]].field_0 += arg2
        if holderId[address(arg5)] != holderId[address(arg5)]:
            require arg2 <= allowance[arg3][5][stor4[address(arg5)]][1][stor4[address(arg5)]].field_0
            allowance[arg3][5][stor4[address(arg5)]][1][stor4[address(arg5)]].field_0 -= arg2
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0x515c1457 with:
             gas gas_remaining - 710 wei
            args address(owner[stor4[address(arg5)]]), address(owner[stor4[address(arg1)]]), arg3, arg2, Array(len=arg4.length, data=arg4[all])
        require ext_call.success
        if proxies[arg3]:
            require ext_code.size(proxies[arg3])
            call proxies[arg3].emitTransfer(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 710 wei
                args address(owner[stor4[address(arg5)]]), address(owner[stor4[address(arg1)]]), arg2
            require ext_call.success
    else:
        holdersCount++
        address(owner[stor2 + 1]) = arg1
        holderId[address(arg1)] = holdersCount + 1
        if holderId[address(arg5)] == holdersCount + 1:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xe90459f8 with:
                 gas gas_remaining - 710 wei
                args 'Cannot send to oneself'
            require ext_call.success
            return 15001
        if not arg2:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xe90459f8 with:
                 gas gas_remaining - 710 wei
                args 'Cannot send 0 value'
            require ext_call.success
            return 15002
        if allowance[arg3][5][stor4[address(arg5)]].field_0 < arg2:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xe90459f8 with:
                 gas gas_remaining - 710 wei
                args 'Insufficient balance'
            require ext_call.success
            return 15003
        if holderId[address(arg5)] != holderId[address(arg5)]:
            if allowance[arg3][5][stor4[address(arg5)]][1][stor4[address(arg5)]].field_0 < arg2:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 710 wei
                    args 'Not enough allowance'
                require ext_call.success
                return 15004
        require arg2 <= allowance[arg3][5][stor4[address(arg5)]].field_0
        allowance[arg3][5][stor4[address(arg5)]].field_0 -= arg2
        require arg2 + allowance[arg3][5][stor2 + 1].field_0 >= allowance[arg3][5][stor2 + 1].field_0
        allowance[arg3][5][stor2 + 1].field_0 += arg2
        if holderId[address(arg5)] != holderId[address(arg5)]:
            require arg2 <= allowance[arg3][5][stor4[address(arg5)]][1][stor4[address(arg5)]].field_0
            allowance[arg3][5][stor4[address(arg5)]][1][stor4[address(arg5)]].field_0 -= arg2
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0x515c1457 with:
             gas gas_remaining - 710 wei
            args address(owner[stor4[address(arg5)]]), address(owner[stor2 + 1]), arg3, arg2, Array(len=arg4.length, data=arg4[all])
        require ext_call.success
        if proxies[arg3]:
            require ext_code.size(proxies[arg3])
            call proxies[arg3].emitTransfer(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 710 wei
                args address(owner[stor4[address(arg5)]]), address(owner[stor2 + 1]), arg2
            require ext_call.success
    return 1
}

function proxyTransferFromWithReference(address arg1, address arg2, uint256 arg3, bytes32 arg4, string arg5, address arg6) {
    if proxies[arg4] != msg.sender:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 710 wei
            args 'Only proxy: access denied'
        require ext_call.success
        return 15015
    if holderId[address(arg2)]:
        if holderId[address(arg1)] == holderId[address(arg2)]:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xe90459f8 with:
                 gas gas_remaining - 710 wei
                args 'Cannot send to oneself'
            require ext_call.success
            return 15001
        if not arg3:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xe90459f8 with:
                 gas gas_remaining - 710 wei
                args 'Cannot send 0 value'
            require ext_call.success
            return 15002
        if allowance[arg4][5][stor4[address(arg1)]].field_0 < arg3:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xe90459f8 with:
                 gas gas_remaining - 710 wei
                args 'Insufficient balance'
            require ext_call.success
            return 15003
        if holderId[address(arg1)] != holderId[address(arg6)]:
            if allowance[arg4][5][stor4[address(arg1)]][1][stor4[address(arg6)]].field_0 < arg3:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 710 wei
                    args 'Not enough allowance'
                require ext_call.success
                return 15004
        require arg3 <= allowance[arg4][5][stor4[address(arg1)]].field_0
        allowance[arg4][5][stor4[address(arg1)]].field_0 -= arg3
        require arg3 + allowance[arg4][5][stor4[address(arg2)]].field_0 >= allowance[arg4][5][stor4[address(arg2)]].field_0
        allowance[arg4][5][stor4[address(arg2)]].field_0 += arg3
        if holderId[address(arg6)] != holderId[address(arg1)]:
            require arg3 <= allowance[arg4][5][stor4[address(arg1)]][1][stor4[address(arg6)]].field_0
            allowance[arg4][5][stor4[address(arg1)]][1][stor4[address(arg6)]].field_0 -= arg3
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0x515c1457 with:
             gas gas_remaining - 710 wei
            args address(owner[stor4[address(arg1)]]), address(owner[stor4[address(arg2)]]), arg4, arg3, Array(len=arg5.length, data=arg5[all])
        require ext_call.success
        if proxies[arg4]:
            require ext_code.size(proxies[arg4])
            call proxies[arg4].emitTransfer(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 710 wei
                args address(owner[stor4[address(arg1)]]), address(owner[stor4[address(arg2)]]), arg3
            require ext_call.success
    else:
        holdersCount++
        address(owner[stor2 + 1]) = arg2
        holderId[address(arg2)] = holdersCount + 1
        if holderId[address(arg1)] == holdersCount + 1:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xe90459f8 with:
                 gas gas_remaining - 710 wei
                args 'Cannot send to oneself'
            require ext_call.success
            return 15001
        if not arg3:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xe90459f8 with:
                 gas gas_remaining - 710 wei
                args 'Cannot send 0 value'
            require ext_call.success
            return 15002
        if allowance[arg4][5][stor4[address(arg1)]].field_0 < arg3:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xe90459f8 with:
                 gas gas_remaining - 710 wei
                args 'Insufficient balance'
            require ext_call.success
            return 15003
        if holderId[address(arg1)] != holderId[address(arg6)]:
            if allowance[arg4][5][stor4[address(arg1)]][1][stor4[address(arg6)]].field_0 < arg3:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 710 wei
                    args 'Not enough allowance'
                require ext_call.success
                return 15004
        require arg3 <= allowance[arg4][5][stor4[address(arg1)]].field_0
        allowance[arg4][5][stor4[address(arg1)]].field_0 -= arg3
        require arg3 + allowance[arg4][5][stor2 + 1].field_0 >= allowance[arg4][5][stor2 + 1].field_0
        allowance[arg4][5][stor2 + 1].field_0 += arg3
        if holderId[address(arg6)] != holderId[address(arg1)]:
            require arg3 <= allowance[arg4][5][stor4[address(arg1)]][1][stor4[address(arg6)]].field_0
            allowance[arg4][5][stor4[address(arg1)]][1][stor4[address(arg6)]].field_0 -= arg3
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0x515c1457 with:
             gas gas_remaining - 710 wei
            args address(owner[stor4[address(arg1)]]), address(owner[stor2 + 1]), arg4, arg3, Array(len=arg5.length, data=arg5[all])
        require ext_call.success
        if proxies[arg4]:
            require ext_code.size(proxies[arg4])
            call proxies[arg4].emitTransfer(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 710 wei
                args address(owner[stor4[address(arg1)]]), address(owner[stor2 + 1]), arg3
            require ext_call.success
    return 1
}

function proxyApprove(address arg1, uint256 arg2, bytes32 arg3, address arg4) {
    if proxies[arg3] != msg.sender:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 710 wei
            args 'Only proxy: access denied'
        require ext_call.success
        return 15015
    if holderId[address(arg1)]:
        if holderId[address(arg4)]:
            if not allowance[arg3].field_0:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 710 wei
                    args 'Asset is not issued'
                require ext_call.success
                return 15013
            if holderId[address(arg4)] == holderId[address(arg1)]:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 710 wei
                    args 'Cannot approve to oneself'
                require ext_call.success
                return 15001
            allowance[arg3][5][stor4[address(arg4)]][1][stor4[address(arg1)]].field_0 = arg2
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xd54c8c87 with:
                 gas gas_remaining - 710 wei
                args 0, uint32(owner[stor4[address(arg4)]]), address(owner[stor4[address(arg1)]]), arg3, arg2
            require ext_call.success
            if proxies[arg3]:
                require ext_code.size(proxies[arg3])
                call proxies[arg3].emitApprove(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining - 710 wei
                    args address(owner[stor4[address(arg4)]]), address(owner[stor4[address(arg1)]]), arg2
                require ext_call.success
        else:
            holdersCount++
            address(owner[stor2 + 1]) = arg4
            holderId[address(arg4)] = holdersCount + 1
            if not allowance[arg3].field_0:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 710 wei
                    args 'Asset is not issued'
                require ext_call.success
                return 15013
            if holdersCount + 1 == holderId[address(arg1)]:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 710 wei
                    args 'Cannot approve to oneself'
                require ext_call.success
                return 15001
            allowance[arg3][5][stor2 + 1][1][stor4[address(arg1)]].field_0 = arg2
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xd54c8c87 with:
                 gas gas_remaining - 710 wei
                args 0, uint32(owner[stor2 + 1]), address(owner[stor4[address(arg1)]]), arg3, arg2
            require ext_call.success
            if proxies[arg3]:
                require ext_code.size(proxies[arg3])
                call proxies[arg3].emitApprove(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining - 710 wei
                    args address(owner[stor2 + 1]), address(owner[stor4[address(arg1)]]), arg2
                require ext_call.success
    else:
        holdersCount++
        address(owner[stor2 + 1]) = arg1
        holderId[address(arg1)] = holdersCount + 1
        if holderId[address(arg4)]:
            if not allowance[arg3].field_0:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 710 wei
                    args 'Asset is not issued'
                require ext_call.success
                return 15013
            if holderId[address(arg4)] == holdersCount + 1:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 710 wei
                    args 'Cannot approve to oneself'
                require ext_call.success
                return 15001
            allowance[arg3][5][stor4[address(arg4)]][1][stor2 + 1].field_0 = arg2
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xd54c8c87 with:
                 gas gas_remaining - 710 wei
                args 0, uint32(owner[stor4[address(arg4)]]), address(owner[stor2 + 1]), arg3, arg2
            require ext_call.success
            if proxies[arg3]:
                require ext_code.size(proxies[arg3])
                call proxies[arg3].emitApprove(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining - 710 wei
                    args address(owner[stor4[address(arg4)]]), address(owner[stor2 + 1]), arg2
                require ext_call.success
        else:
            holdersCount++
            address(owner[stor2 + 1]) = arg4
            holderId[address(arg4)] = holdersCount + 1
            if not allowance[arg3].field_0:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 710 wei
                    args 'Asset is not issued'
                require ext_call.success
                return 15013
            if holdersCount + 1 == holdersCount + 1:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 710 wei
                    args 'Cannot approve to oneself'
                require ext_call.success
                return 15001
            allowance[arg3][5][stor2 + 1][1][stor2 + 1].field_0 = arg2
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xd54c8c87 with:
                 gas gas_remaining - 710 wei
                args 0, uint32(owner[stor2 + 1]), address(owner[stor2 + 1]), arg3, arg2
            require ext_call.success
            if proxies[arg3]:
                require ext_code.size(proxies[arg3])
                call proxies[arg3].emitApprove(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining - 710 wei
                    args address(owner[stor2 + 1]), address(owner[stor2 + 1]), arg2
                require ext_call.success
    return 1
}



}
