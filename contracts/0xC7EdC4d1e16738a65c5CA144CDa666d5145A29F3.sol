contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 8703]
}



// =====================  Runtime code  =====================


address contractOwner;
address pendingContractOwner;
uint256 holdersCount;
mapping of uint8 owner;
mapping of uint256 holderId;
mapping of struct allowance;
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

function _fallback() payable {
    revert 
}

function changeContractOwnership(address arg1) {
    if contractOwner != msg.sender:
        return 0
    pendingContractOwner = arg1
    return 1
}

function setProxy(address arg1, bytes32 arg2) {
    if contractOwner != msg.sender:
        return 0
    if proxies[arg2]:
        return 0
    proxies[arg2] = arg1
    return 1
}

function claimContractOwnership() {
    if pendingContractOwner != msg.sender:
        return 0
    contractOwner = pendingContractOwner
    pendingContractOwner = 0
    return 1
}

function setupEventsHistory(address arg1) {
    if contractOwner != msg.sender:
        return 0
    if eventsHistoryAddress:
        return 0
    eventsHistoryAddress = arg1
    return 1
}

function isOwner(address arg1, bytes32 arg2) {
    if not allowance[arg2].field_0:
        return bool(allowance[arg2].field_0)
    return (allowance[arg2].field_0 == holderId[address(arg1)])
}

function distrust(address arg1) {
    if uint8(owner[stor4[address(msg.sender)]][1][address(arg1)]):
        uint8(owner[stor4[address(msg.sender)]][1][address(arg1)]) = 0
        return 1
    require ext_code.size(eventsHistoryAddress)
    call eventsHistoryAddress.emitError(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args 'Only trusted: access denied'
    require ext_call.success
    return 0
}

function recover(address arg1, address arg2) {
    if not uint8(owner[stor4[address(arg1)]][1][address(msg.sender)]):
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.emitError(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 'Only trusted: access denied'
        require ext_call.success
        return 0
    if holderId[address(arg2)]:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.emitError(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 'Should recover to new address'
        require ext_call.success
        return 0
    address(owner[stor4[address(arg1)]]) = arg2
    holderId[address(arg2)] = holderId[address(arg1)]
    require ext_code.size(eventsHistoryAddress)
    call eventsHistoryAddress.emitRecovery(address rg1, address rg2, address rg3) with:
         gas gas_remaining - 50 wei
        args address(owner[stor4[address(arg1)]]), address(arg2), msg.sender
    require ext_call.success
    return 1
}

function revokeAsset(bytes32 arg1, uint256 arg2) {
    if not arg2:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.emitError(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 'Cannot revoke 0 value'
        require ext_call.success
        return 0
    if allowance[arg1][5][stor4[address(msg.sender)]].field_0 < arg2:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.emitError(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 'Not enough tokens to revoke'
        require ext_call.success
        return 0
    allowance[arg1][5][stor4[address(msg.sender)]].field_0 -= arg2
    allowance[arg1].field_256 -= arg2
    require ext_code.size(eventsHistoryAddress)
    call eventsHistoryAddress.emitRevoke(bytes32 rg1, uint256 rg2, address rg3) with:
         gas gas_remaining - 50 wei
        args arg1, arg2, address(owner[stor4[address(msg.sender)]])
    require ext_call.success
    if proxies[arg1]:
        require ext_code.size(proxies[arg1])
        call proxies[arg1].0x23de6651 with:
             gas gas_remaining - 50 wei
            args address(owner[stor4[address(msg.sender)]]), address(owner[0]), arg2
        require ext_call.success
    return 1
}

function trust(address arg1) {
    if holderId[address(msg.sender)]:
        if holderId[address(msg.sender)] == holderId[address(arg1)]:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.emitError(bytes32 rg1) with:
                 gas gas_remaining - 50 wei
                args 'Cannot trust to oneself'
        else:
            if not uint8(owner[stor4[address(msg.sender)]][1][address(arg1)]):
                uint8(owner[stor4[address(msg.sender)]][1][address(arg1)]) = 1
                return 1
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.emitError(bytes32 rg1) with:
                 gas gas_remaining - 50 wei
                args 'Already trusted'
    else:
        holdersCount++
        address(owner[stor2 + 1]) = msg.sender
        holderId[address(msg.sender)] = holdersCount + 1
        if holdersCount + 1 == holderId[address(arg1)]:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.emitError(bytes32 rg1) with:
                 gas gas_remaining - 50 wei
                args 'Cannot trust to oneself'
        else:
            if not uint8(owner[stor4[address(msg.sender)]][1][address(arg1)]):
                uint8(owner[stor2 + 1][1][address(arg1)]) = 1
                return 1
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.emitError(bytes32 rg1) with:
                 gas gas_remaining - 50 wei
                args 'Already trusted'
    require ext_call.success
    return 0
}

function reissueAsset(bytes32 arg1, uint256 arg2) {
    if not allowance[arg1].field_0:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.emitError(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 'Only owner: access denied'
        require ext_call.success
        return 0
    if allowance[arg1].field_0 != holderId[address(msg.sender)]:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.emitError(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 'Only owner: access denied'
        require ext_call.success
        return 0
    if not arg2:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.emitError(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 'Cannot reissue 0 value'
        require ext_call.success
        return 0
    if not allowance[arg1].field_1024:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.emitError(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 'Cannot reissue fixed asset'
        require ext_call.success
        return 0
    if allowance[arg1].field_256 + arg2 < allowance[arg1].field_256:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.emitError(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 'Total supply overflow'
        require ext_call.success
        return 0
    allowance[arg1][5][stor4[address(msg.sender)]].field_0 += arg2
    allowance[arg1].field_256 += arg2
    require ext_code.size(eventsHistoryAddress)
    call eventsHistoryAddress.emitIssue(bytes32 rg1, uint256 rg2, address rg3) with:
         gas gas_remaining - 50 wei
        args arg1, arg2, address(owner[stor4[address(msg.sender)]])
    require ext_call.success
    if proxies[arg1]:
        require ext_code.size(proxies[arg1])
        call proxies[arg1].0x23de6651 with:
             gas gas_remaining - 50 wei
            args address(owner[0]), address(owner[stor4[address(msg.sender)]]), arg2
        require ext_call.success
    return 1
}

function changeOwnership(bytes32 arg1, address arg2) {
    if not allowance[arg1].field_0:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.emitError(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 'Only owner: access denied'
        require ext_call.success
        return 0
    if allowance[arg1].field_0 != holderId[address(msg.sender)]:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.emitError(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 'Only owner: access denied'
        require ext_call.success
        return 0
    if holderId[address(arg2)]:
        if holderId[address(arg2)] == allowance[arg1].field_0:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.emitError(bytes32 rg1) with:
                 gas gas_remaining - 50 wei
                args 'Cannot pass ownership to oneself'
            require ext_call.success
            return 0
        allowance[arg1].field_0 = holderId[address(arg2)]
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.emitOwnershipChange(address rg1, address rg2, bytes32 rg3) with:
             gas gas_remaining - 50 wei
            args address(owner[stor5[arg1].field_0]), address(owner[stor4[address(arg2)]]), arg1
    else:
        holdersCount++
        address(owner[stor2 + 1]) = arg2
        holderId[address(arg2)] = holdersCount + 1
        if holdersCount + 1 == allowance[arg1].field_0:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.emitError(bytes32 rg1) with:
                 gas gas_remaining - 50 wei
                args 'Cannot pass ownership to oneself'
            require ext_call.success
            return 0
        allowance[arg1].field_0 = holdersCount + 1
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.emitOwnershipChange(address rg1, address rg2, bytes32 rg3) with:
             gas gas_remaining - 50 wei
            args address(owner[stor5[arg1].field_0]), address(owner[stor2 + 1]), arg1
    require ext_call.success
    return 1
}

function issueAsset(bytes32 arg1, uint256 arg2, string arg3, string arg4, uint8 arg5, bool arg6) {
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    if contractOwner != msg.sender:
        return 0
    if not arg2:
        if not arg6:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.emitError(bytes32 rg1) with:
                 gas gas_remaining - 50 wei
                args 'Cannot issue 0 value fixed asset'
            require ext_call.success
            return 0
    if allowance[arg1].field_0:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.emitError(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 'Asset already issued'
        require ext_call.success
        return 0
    if holderId[address(msg.sender)]:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = holderId[address(msg.sender)]
        allowance[arg1].field_0 = holderId[address(msg.sender)]
        allowance[arg1].field_256 = arg2
        allowance[arg1][2][].field_0 = Array(len=arg3.length, data=arg3[all])
        allowance[arg1].field_768 = (2 * arg4.length) + 1
        s = 0
        idx = ceil32(arg3.length) + 160
        while ceil32(arg3.length) + arg4.length + 160 > idx:
            allowance[arg1][s + 3].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        if allowance[arg1][3].length + 31 / 32 > Mask(251, 0, arg4.length + 31) >> 5:
            stor[('array', 3, ('map', ('param', 'arg1'), ('name', 'allowance', 5))) + (Mask(251, 0, arg4.length + 31) >> 5)].field_0 = 0
            idx = (Mask(251, 0, arg4.length + 31) >> 5) + 1
            while allowance[arg1][3].length + 31 / 32 > idx:
                allowance[arg1][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
        allowance[arg1].field_1024 = uint8(arg6)
        allowance[arg1].field_1032 = arg5
        allowance[arg1].field_1040 = Mask(240, 16, arg6) >> 16
        allowance[arg1][5][stor4[address(msg.sender)]].field_0 = arg2
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.emitIssue(bytes32 rg1, uint256 rg2, address rg3) with:
             gas gas_remaining - 50 wei
            args arg1, arg2, address(owner[stor4[address(msg.sender)]])
    else:
        holdersCount++
        address(owner[stor2 + 1]) = msg.sender
        holderId[address(msg.sender)] = holdersCount + 1
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = holdersCount + 1
        allowance[arg1].field_0 = holdersCount + 1
        allowance[arg1].field_256 = arg2
        allowance[arg1][2][].field_0 = Array(len=arg3.length, data=arg3[all])
        allowance[arg1].field_768 = (2 * arg4.length) + 1
        s = 0
        idx = ceil32(arg3.length) + 160
        while ceil32(arg3.length) + arg4.length + 160 > idx:
            allowance[arg1][s + 3].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        if allowance[arg1][3].length + 31 / 32 > Mask(251, 0, arg4.length + 31) >> 5:
            stor[('array', 3, ('map', ('param', 'arg1'), ('name', 'allowance', 5))) + (Mask(251, 0, arg4.length + 31) >> 5)].field_0 = 0
            idx = (Mask(251, 0, arg4.length + 31) >> 5) + 1
            while allowance[arg1][3].length + 31 / 32 > idx:
                allowance[arg1][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
        allowance[arg1].field_1024 = uint8(arg6)
        allowance[arg1].field_1032 = arg5
        allowance[arg1].field_1040 = Mask(240, 16, arg6) >> 16
        allowance[arg1][5][stor2 + 1].field_0 = arg2
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.emitIssue(bytes32 rg1, uint256 rg2, address rg3) with:
             gas gas_remaining - 50 wei
            args arg1, arg2, address(owner[stor2 + 1])
    require ext_call.success
    return 1
}

function proxyApprove(address arg1, uint256 arg2, bytes32 arg3, address arg4) {
    if proxies[arg3] != msg.sender:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.emitError(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 'Only proxy: access denied'
        require ext_call.success
        return 0
    if holderId[address(arg1)]:
        if holderId[address(arg4)]:
            if not allowance[arg3].field_0:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.emitError(bytes32 rg1) with:
                     gas gas_remaining - 50 wei
                    args 'Asset is not issued'
                require ext_call.success
                return 0
            if holderId[address(arg4)] == holderId[address(arg1)]:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.emitError(bytes32 rg1) with:
                     gas gas_remaining - 50 wei
                    args 'Cannot approve to oneself'
                require ext_call.success
                return 0
            allowance[arg3][5][stor4[address(arg4)]][1][stor4[address(arg1)]].field_0 = arg2
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.emitApprove(address rg1, address rg2, bytes32 rg3, uint256 rg4) with:
                 gas gas_remaining - 50 wei
                args 0, uint32(owner[stor4[address(arg4)]]), address(owner[stor4[address(arg1)]]), arg3, arg2
            require ext_call.success
            if proxies[arg3]:
                require ext_code.size(proxies[arg3])
                call proxies[arg3].0x23385089 with:
                     gas gas_remaining - 50 wei
                    args address(owner[stor4[address(arg4)]]), address(owner[stor4[address(arg1)]]), arg2
                require ext_call.success
        else:
            holdersCount++
            address(owner[stor2 + 1]) = arg4
            holderId[address(arg4)] = holdersCount + 1
            if not allowance[arg3].field_0:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.emitError(bytes32 rg1) with:
                     gas gas_remaining - 50 wei
                    args 'Asset is not issued'
                require ext_call.success
                return 0
            if holdersCount + 1 == holderId[address(arg1)]:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.emitError(bytes32 rg1) with:
                     gas gas_remaining - 50 wei
                    args 'Cannot approve to oneself'
                require ext_call.success
                return 0
            allowance[arg3][5][stor2 + 1][1][stor4[address(arg1)]].field_0 = arg2
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.emitApprove(address rg1, address rg2, bytes32 rg3, uint256 rg4) with:
                 gas gas_remaining - 50 wei
                args 0, uint32(owner[stor2 + 1]), address(owner[stor4[address(arg1)]]), arg3, arg2
            require ext_call.success
            if proxies[arg3]:
                require ext_code.size(proxies[arg3])
                call proxies[arg3].0x23385089 with:
                     gas gas_remaining - 50 wei
                    args address(owner[stor2 + 1]), address(owner[stor4[address(arg1)]]), arg2
                require ext_call.success
    else:
        holdersCount++
        address(owner[stor2 + 1]) = arg1
        holderId[address(arg1)] = holdersCount + 1
        if holderId[address(arg4)]:
            if not allowance[arg3].field_0:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.emitError(bytes32 rg1) with:
                     gas gas_remaining - 50 wei
                    args 'Asset is not issued'
                require ext_call.success
                return 0
            if holderId[address(arg4)] == holdersCount + 1:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.emitError(bytes32 rg1) with:
                     gas gas_remaining - 50 wei
                    args 'Cannot approve to oneself'
                require ext_call.success
                return 0
            allowance[arg3][5][stor4[address(arg4)]][1][stor2 + 1].field_0 = arg2
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.emitApprove(address rg1, address rg2, bytes32 rg3, uint256 rg4) with:
                 gas gas_remaining - 50 wei
                args 0, uint32(owner[stor4[address(arg4)]]), address(owner[stor2 + 1]), arg3, arg2
            require ext_call.success
            if proxies[arg3]:
                require ext_code.size(proxies[arg3])
                call proxies[arg3].0x23385089 with:
                     gas gas_remaining - 50 wei
                    args address(owner[stor4[address(arg4)]]), address(owner[stor2 + 1]), arg2
                require ext_call.success
        else:
            holdersCount++
            address(owner[stor2 + 1]) = arg4
            holderId[address(arg4)] = holdersCount + 1
            if not allowance[arg3].field_0:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.emitError(bytes32 rg1) with:
                     gas gas_remaining - 50 wei
                    args 'Asset is not issued'
                require ext_call.success
                return 0
            if holdersCount + 1 == holdersCount + 1:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.emitError(bytes32 rg1) with:
                     gas gas_remaining - 50 wei
                    args 'Cannot approve to oneself'
                require ext_call.success
                return 0
            allowance[arg3][5][stor2 + 1][1][stor2 + 1].field_0 = arg2
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.emitApprove(address rg1, address rg2, bytes32 rg3, uint256 rg4) with:
                 gas gas_remaining - 50 wei
                args 0, uint32(owner[stor2 + 1]), address(owner[stor2 + 1]), arg3, arg2
            require ext_call.success
            if proxies[arg3]:
                require ext_code.size(proxies[arg3])
                call proxies[arg3].0x23385089 with:
                     gas gas_remaining - 50 wei
                    args address(owner[stor2 + 1]), address(owner[stor2 + 1]), arg2
                require ext_call.success
    return 1
}

function proxyTransferWithReference(address arg1, uint256 arg2, bytes32 arg3, string arg4, address arg5) {
    mem[128 len arg4.length] = arg4[all]
    if proxies[arg3] != msg.sender:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.emitError(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 'Only proxy: access denied'
        require ext_call.success
        return 0
    if holderId[address(arg1)]:
        if holderId[address(arg5)] == holderId[address(arg1)]:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.emitError(bytes32 rg1) with:
                 gas gas_remaining - 50 wei
                args 'Cannot send to oneself'
            require ext_call.success
            return 0
        if not arg2:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.emitError(bytes32 rg1) with:
                 gas gas_remaining - 50 wei
                args 'Cannot send 0 value'
            require ext_call.success
            return 0
        if allowance[arg3][5][stor4[address(arg5)]].field_0 < arg2:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.emitError(bytes32 rg1) with:
                 gas gas_remaining - 50 wei
                args 'Insufficient balance'
            require ext_call.success
            return 0
        if holderId[address(arg5)] != holderId[address(arg5)]:
            if allowance[arg3][5][stor4[address(arg5)]][1][stor4[address(arg5)]].field_0 < arg2:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.emitError(bytes32 rg1) with:
                     gas gas_remaining - 50 wei
                    args 'Not enough allowance'
                require ext_call.success
                return 0
        allowance[arg3][5][stor4[address(arg5)]].field_0 -= arg2
        allowance[arg3][5][stor4[address(arg1)]].field_0 += arg2
        if holderId[address(arg5)] != holderId[address(arg5)]:
            allowance[arg3][5][stor4[address(arg5)]][1][stor4[address(arg5)]].field_0 -= arg2
        mem[ceil32(arg4.length) + 128] = 0x515c145700000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg4.length) + 132] = address(owner[stor4[address(arg5)]])
        mem[ceil32(arg4.length) + 164] = address(owner[stor4[address(arg1)]])
        mem[ceil32(arg4.length) + 196] = arg3
        mem[ceil32(arg4.length) + 228] = arg2
        mem[ceil32(arg4.length) + 260] = 160
        mem[ceil32(arg4.length) + 292] = arg4.length
        if not arg4.length:
            if not arg4.length % 32:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.emitTransfer(address rg1, address rg2, bytes32 rg3, uint256 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args 0, uint32(owner[stor4[address(arg5)]]), address(owner[stor4[address(arg1)]]), arg3, arg2, 160, arg4.length, mem[ceil32(arg4.length) + 324 len arg4.length]
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.emitTransfer(address rg1, address rg2, bytes32 rg3, uint256 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args address(owner[stor4[address(arg5)]]), address(owner[stor4[address(arg1)]]), arg3, arg2, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len floor32(arg4.length) + 32])
        else:
            mem[ceil32(arg4.length) + 324] = mem[128]
            mem[ceil32(arg4.length) + 356 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.emitTransfer(address rg1, address rg2, bytes32 rg3, uint256 rg4, string rg5) with:
                 gas gas_remaining - 50 wei
                args address(owner[stor4[address(arg5)]]), address(owner[stor4[address(arg1)]]), arg3, arg2, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len arg4.length])
        require ext_call.success
        if proxies[arg3]:
            require ext_code.size(proxies[arg3])
            call proxies[arg3].0x23de6651 with:
                 gas gas_remaining - 50 wei
                args address(owner[stor4[address(arg5)]]), address(owner[stor4[address(arg1)]]), arg2
            require ext_call.success
    else:
        holdersCount++
        address(owner[stor2 + 1]) = arg1
        holderId[address(arg1)] = holdersCount + 1
        if holderId[address(arg5)] == holdersCount + 1:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.emitError(bytes32 rg1) with:
                 gas gas_remaining - 50 wei
                args 'Cannot send to oneself'
            require ext_call.success
            return 0
        if not arg2:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.emitError(bytes32 rg1) with:
                 gas gas_remaining - 50 wei
                args 'Cannot send 0 value'
            require ext_call.success
            return 0
        if allowance[arg3][5][stor4[address(arg5)]].field_0 < arg2:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.emitError(bytes32 rg1) with:
                 gas gas_remaining - 50 wei
                args 'Insufficient balance'
            require ext_call.success
            return 0
        if holderId[address(arg5)] != holderId[address(arg5)]:
            if allowance[arg3][5][stor4[address(arg5)]][1][stor4[address(arg5)]].field_0 < arg2:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.emitError(bytes32 rg1) with:
                     gas gas_remaining - 50 wei
                    args 'Not enough allowance'
                require ext_call.success
                return 0
        allowance[arg3][5][stor4[address(arg5)]].field_0 -= arg2
        allowance[arg3][5][stor2 + 1].field_0 += arg2
        if holderId[address(arg5)] != holderId[address(arg5)]:
            allowance[arg3][5][stor4[address(arg5)]][1][stor4[address(arg5)]].field_0 -= arg2
        mem[ceil32(arg4.length) + 128] = 0x515c145700000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg4.length) + 132] = address(owner[stor4[address(arg5)]])
        mem[ceil32(arg4.length) + 164] = address(owner[stor2 + 1])
        mem[ceil32(arg4.length) + 196] = arg3
        mem[ceil32(arg4.length) + 228] = arg2
        mem[ceil32(arg4.length) + 260] = 160
        mem[ceil32(arg4.length) + 292] = arg4.length
        if not arg4.length:
            if not arg4.length % 32:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.emitTransfer(address rg1, address rg2, bytes32 rg3, uint256 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args 0, uint32(owner[stor4[address(arg5)]]), address(owner[stor2 + 1]), arg3, arg2, 160, arg4.length, mem[ceil32(arg4.length) + 324 len arg4.length]
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.emitTransfer(address rg1, address rg2, bytes32 rg3, uint256 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args address(owner[stor4[address(arg5)]]), address(owner[stor2 + 1]), arg3, arg2, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len floor32(arg4.length) + 32])
        else:
            mem[ceil32(arg4.length) + 324] = mem[128]
            mem[ceil32(arg4.length) + 356 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.emitTransfer(address rg1, address rg2, bytes32 rg3, uint256 rg4, string rg5) with:
                 gas gas_remaining - 50 wei
                args address(owner[stor4[address(arg5)]]), address(owner[stor2 + 1]), arg3, arg2, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len arg4.length])
        require ext_call.success
        if proxies[arg3]:
            require ext_code.size(proxies[arg3])
            call proxies[arg3].0x23de6651 with:
                 gas gas_remaining - 50 wei
                args address(owner[stor4[address(arg5)]]), address(owner[stor2 + 1]), arg2
            require ext_call.success
    return 1
}

function proxyTransferFromWithReference(address arg1, address arg2, uint256 arg3, bytes32 arg4, string arg5, address arg6) {
    mem[128 len arg5.length] = arg5[all]
    if proxies[arg4] != msg.sender:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.emitError(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 'Only proxy: access denied'
        require ext_call.success
        return 0
    if holderId[address(arg2)]:
        if holderId[address(arg1)] == holderId[address(arg2)]:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.emitError(bytes32 rg1) with:
                 gas gas_remaining - 50 wei
                args 'Cannot send to oneself'
            require ext_call.success
            return 0
        if not arg3:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.emitError(bytes32 rg1) with:
                 gas gas_remaining - 50 wei
                args 'Cannot send 0 value'
            require ext_call.success
            return 0
        if allowance[arg4][5][stor4[address(arg1)]].field_0 < arg3:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.emitError(bytes32 rg1) with:
                 gas gas_remaining - 50 wei
                args 'Insufficient balance'
            require ext_call.success
            return 0
        if holderId[address(arg1)] != holderId[address(arg6)]:
            if allowance[arg4][5][stor4[address(arg1)]][1][stor4[address(arg6)]].field_0 < arg3:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.emitError(bytes32 rg1) with:
                     gas gas_remaining - 50 wei
                    args 'Not enough allowance'
                require ext_call.success
                return 0
        allowance[arg4][5][stor4[address(arg1)]].field_0 -= arg3
        allowance[arg4][5][stor4[address(arg2)]].field_0 += arg3
        if holderId[address(arg6)] != holderId[address(arg1)]:
            allowance[arg4][5][stor4[address(arg1)]][1][stor4[address(arg6)]].field_0 -= arg3
        mem[ceil32(arg5.length) + 128] = 0x515c145700000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg5.length) + 132] = address(owner[stor4[address(arg1)]])
        mem[ceil32(arg5.length) + 164] = address(owner[stor4[address(arg2)]])
        mem[ceil32(arg5.length) + 196] = arg4
        mem[ceil32(arg5.length) + 228] = arg3
        mem[ceil32(arg5.length) + 260] = 160
        mem[ceil32(arg5.length) + 292] = arg5.length
        if not arg5.length:
            if not arg5.length % 32:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.emitTransfer(address rg1, address rg2, bytes32 rg3, uint256 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args 0, uint32(owner[stor4[address(arg1)]]), address(owner[stor4[address(arg2)]]), arg4, arg3, 160, arg5.length, mem[ceil32(arg5.length) + 324 len arg5.length]
            else:
                mem[floor32(arg5.length) + ceil32(arg5.length) + 324] = mem[floor32(arg5.length) + ceil32(arg5.length) + -(arg5.length % 32) + 356 len arg5.length % 32]
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.emitTransfer(address rg1, address rg2, bytes32 rg3, uint256 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args address(owner[stor4[address(arg1)]]), address(owner[stor4[address(arg2)]]), arg4, arg3, Array(len=arg5.length, data=mem[ceil32(arg5.length) + 324 len floor32(arg5.length) + 32])
        else:
            mem[ceil32(arg5.length) + 324] = mem[128]
            mem[ceil32(arg5.length) + 356 len floor32(arg5.length - 1)] = mem[160 len floor32(arg5.length - 1)]
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.emitTransfer(address rg1, address rg2, bytes32 rg3, uint256 rg4, string rg5) with:
                 gas gas_remaining - 50 wei
                args address(owner[stor4[address(arg1)]]), address(owner[stor4[address(arg2)]]), arg4, arg3, Array(len=arg5.length, data=mem[ceil32(arg5.length) + 324 len arg5.length])
        require ext_call.success
        if proxies[arg4]:
            require ext_code.size(proxies[arg4])
            call proxies[arg4].0x23de6651 with:
                 gas gas_remaining - 50 wei
                args address(owner[stor4[address(arg1)]]), address(owner[stor4[address(arg2)]]), arg3
            require ext_call.success
    else:
        holdersCount++
        address(owner[stor2 + 1]) = arg2
        holderId[address(arg2)] = holdersCount + 1
        if holderId[address(arg1)] == holdersCount + 1:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.emitError(bytes32 rg1) with:
                 gas gas_remaining - 50 wei
                args 'Cannot send to oneself'
            require ext_call.success
            return 0
        if not arg3:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.emitError(bytes32 rg1) with:
                 gas gas_remaining - 50 wei
                args 'Cannot send 0 value'
            require ext_call.success
            return 0
        if allowance[arg4][5][stor4[address(arg1)]].field_0 < arg3:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.emitError(bytes32 rg1) with:
                 gas gas_remaining - 50 wei
                args 'Insufficient balance'
            require ext_call.success
            return 0
        if holderId[address(arg1)] != holderId[address(arg6)]:
            if allowance[arg4][5][stor4[address(arg1)]][1][stor4[address(arg6)]].field_0 < arg3:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.emitError(bytes32 rg1) with:
                     gas gas_remaining - 50 wei
                    args 'Not enough allowance'
                require ext_call.success
                return 0
        allowance[arg4][5][stor4[address(arg1)]].field_0 -= arg3
        allowance[arg4][5][stor2 + 1].field_0 += arg3
        if holderId[address(arg6)] != holderId[address(arg1)]:
            allowance[arg4][5][stor4[address(arg1)]][1][stor4[address(arg6)]].field_0 -= arg3
        mem[ceil32(arg5.length) + 128] = 0x515c145700000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg5.length) + 132] = address(owner[stor4[address(arg1)]])
        mem[ceil32(arg5.length) + 164] = address(owner[stor2 + 1])
        mem[ceil32(arg5.length) + 196] = arg4
        mem[ceil32(arg5.length) + 228] = arg3
        mem[ceil32(arg5.length) + 260] = 160
        mem[ceil32(arg5.length) + 292] = arg5.length
        if not arg5.length:
            if not arg5.length % 32:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.emitTransfer(address rg1, address rg2, bytes32 rg3, uint256 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args 0, uint32(owner[stor4[address(arg1)]]), address(owner[stor2 + 1]), arg4, arg3, 160, arg5.length, mem[ceil32(arg5.length) + 324 len arg5.length]
            else:
                mem[floor32(arg5.length) + ceil32(arg5.length) + 324] = mem[floor32(arg5.length) + ceil32(arg5.length) + -(arg5.length % 32) + 356 len arg5.length % 32]
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.emitTransfer(address rg1, address rg2, bytes32 rg3, uint256 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args address(owner[stor4[address(arg1)]]), address(owner[stor2 + 1]), arg4, arg3, Array(len=arg5.length, data=mem[ceil32(arg5.length) + 324 len floor32(arg5.length) + 32])
        else:
            mem[ceil32(arg5.length) + 324] = mem[128]
            mem[ceil32(arg5.length) + 356 len floor32(arg5.length - 1)] = mem[160 len floor32(arg5.length - 1)]
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.emitTransfer(address rg1, address rg2, bytes32 rg3, uint256 rg4, string rg5) with:
                 gas gas_remaining - 50 wei
                args address(owner[stor4[address(arg1)]]), address(owner[stor2 + 1]), arg4, arg3, Array(len=arg5.length, data=mem[ceil32(arg5.length) + 324 len arg5.length])
        require ext_call.success
        if proxies[arg4]:
            require ext_code.size(proxies[arg4])
            call proxies[arg4].0x23de6651 with:
                 gas gas_remaining - 50 wei
                args address(owner[stor4[address(arg1)]]), address(owner[stor2 + 1]), arg3
            require ext_call.success
    return 1
}



}
