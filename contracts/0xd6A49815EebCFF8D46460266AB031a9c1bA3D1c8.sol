contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 13150]




// =====================  Runtime code  =====================


#
#  - proxyTransferFromToICAPWithReference(address arg1, bytes32 arg2, uint256 arg3, string arg4, address arg5)
#
address stor0;
mapping of uint8 stor1;
mapping of uint8 stor2;
mapping of struct owner;
mapping of uint8 holderId;
mapping of struct allowance;
mapping of address proxies;
address registryICAPAddress;
address eventsHistoryAddress;

function owner(bytes32 arg1) {
    return owner[stor5[arg1].field_0].field_0
}

function isEnabled(bytes32 arg1) {
    return bool(stor1[arg1])
}

function getHolderId(address arg1) {
    return uint256(holderId[address(arg1)])
}

function allowance(address arg1, address arg2, bytes32 arg3) {
    return allowance[arg3][5][uint256(stor4[address(arg1)])][1][uint256(stor4[address(arg2)])].field_0
}

function holders(uint256 arg1) {
    return owner[arg1].field_0, owner[arg1].field_256
}

function isCreated(bytes32 arg1) {
    return bool(allowance[arg1].field_0)
}

function isLocked(bytes32 arg1) {
    return bool(allowance[arg1].field_1040)
}

function isTrusted(address arg1, address arg2) {
    return bool(owner[uint256(stor4[address(arg1)])][2][address(arg2)].field_0)
}

function name(bytes32 arg1) {
    return allowance[arg1][2][0 len allowance[arg1][2].length].field_0
}

function proxies(bytes32 arg1) {
    return proxies[arg1]
}

function holdersCount() {
    return stor2.length
}

function isCosignerSet(uint256 arg1) {
    return bool(owner[arg1].field_256)
}

function assets(bytes32 arg1) {
    mem[352] = allowance[arg1][2].field_0
    idx = 352
    s = 0
    while allowance[arg1][2].length + 352 > idx + 32:
        mem[idx + 32] = allowance[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[allowance[arg1][2].length + (floor32(allowance[arg1][2].length - 1) + -allowance[arg1][2].length + 32 % 32) + 352] = allowance[arg1][3].length
    mem[allowance[arg1][2].length + (floor32(allowance[arg1][2].length - 1) + -allowance[arg1][2].length + 32 % 32) + 384] = allowance[arg1][3].field_0
    idx = allowance[arg1][2].length + (floor32(allowance[arg1][2].length - 1) + -allowance[arg1][2].length + 32 % 32) + 384
    s = 0
    while allowance[arg1][2].length + (floor32(allowance[arg1][2].length - 1) + -allowance[arg1][2].length + 32 % 32) + allowance[arg1][3].length + 384 > idx + 32:
        mem[idx + 32] = allowance[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return allowance[arg1].field_0, 
           allowance[arg1].field_256,
           Array(len=allowance[arg1][2].length, data=mem[352 len allowance[arg1][2].length + (floor32(allowance[arg1][2].length - 1) + -allowance[arg1][2].length + 32 % 32) + allowance[arg1][3].length + (floor32(allowance[arg1][3].length - 1) + -allowance[arg1][3].length + 32 % 32) + 32]),
           allowance[arg1][2].length + (floor32(allowance[arg1][2].length - 1) + -allowance[arg1][2].length + 32 % 32) + 256,
           bool(allowance[arg1].field_1024),
           allowance[arg1].field_1024,
           bool(allowance[arg1].field_1040)
}

function registryICAP() {
    return registryICAPAddress
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

function baseUnit(bytes32 arg1) {
    return allowance[arg1].field_1032
}

function eventsHistory() {
    return eventsHistoryAddress
}

function _fallback() payable {
    revert 
}

function isOwner(address arg1, bytes32 arg2) {
    if not allowance[arg2].field_0:
        return bool(allowance[arg2].field_0)
    return (allowance[arg2].field_0 == uint256(holderId[address(arg1)]))
}

function balanceOf(address arg1, bytes32 arg2) {
    if owner[uint256(stor4[address(arg1)])].field_0 == arg1:
        return allowance[arg2][5][uint256(stor4[address(arg1)])].field_0
    else:
        return 0
}

function enableSwitch(bytes32 arg1) {
    if not stor0:
        return 0
    require ext_code.size(stor0)
    call stor0.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 50 wei
        args address(this.address), 'issuance', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    stor1[arg1] = 1
    return 1
}

function distrust(address arg1) {
    if owner[uint256(stor4[address(msg.sender)])][2][address(arg1)].field_0:
        owner[uint256(stor4[address(msg.sender)])][2][address(arg1)].field_0 = 0
        return 1
    require ext_code.size(eventsHistoryAddress)
    call eventsHistoryAddress.0xe90459f8 with:
         gas gas_remaining - 50 wei
        args 'Only trusted: access denied'
    require ext_call.success
    return 0
}

function setProxy(address arg1, bytes32 arg2) {
    if not stor0:
        return 0
    require ext_code.size(stor0)
    call stor0.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 50 wei
        args address(this.address), 'admin', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if proxies[arg2]:
        if allowance[arg2].field_1040:
            return 0
    proxies[arg2] = arg1
    return 1
}

function setupRegistryICAP(address arg1) {
    if not stor0:
        return 0
    require ext_code.size(stor0)
    call stor0.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 50 wei
        args address(this.address), 0x7365747570000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if registryICAPAddress:
        return 0
    registryICAPAddress = arg1
    return 1
}

function setupEventsHistory(address arg1) {
    if not stor0:
        return 0
    require ext_code.size(stor0)
    call stor0.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 50 wei
        args address(this.address), 0x7365747570000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if eventsHistoryAddress:
        return 0
    eventsHistoryAddress = arg1
    return 1
}

function setupAmbi2(address arg1) {
    if stor0:
        return 0
    require ext_code.size(arg1)
    call arg1.claimFor(address rg1, address rg2) with:
         gas gas_remaining - 50 wei
        args address(this.address), msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.isOwner(address rg1, address rg2) with:
             gas gas_remaining - 50 wei
            args address(this.address), msg.sender
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    stor0 = arg1
    return 1
}

function trust(address arg1) {
    if uint256(holderId[address(msg.sender)]):
        if uint256(holderId[address(msg.sender)]) == uint256(holderId[address(arg1)]):
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xe90459f8 with:
                 gas gas_remaining - 50 wei
                args 'Cannot trust to oneself'
        else:
            if not owner[uint256(stor4[address(msg.sender)])][2][address(arg1)].field_0:
                owner[uint256(stor4[address(msg.sender)])][2][address(arg1)].field_0 = 1
                return 1
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xe90459f8 with:
                 gas gas_remaining - 50 wei
                args 'Already trusted'
    else:
        stor2.length++
        owner[stor2.length + 1].field_0 = msg.sender
        uint256(holderId[address(msg.sender)]) = stor2.length + 1
        if stor2.length + 1 == uint256(holderId[address(arg1)]):
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xe90459f8 with:
                 gas gas_remaining - 50 wei
                args 'Cannot trust to oneself'
        else:
            if not owner[uint256(stor4[address(msg.sender)])][2][address(arg1)].field_0:
                owner[stor2.length + 1][2][address(arg1)].field_0 = 1
                return 1
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xe90459f8 with:
                 gas gas_remaining - 50 wei
                args 'Already trusted'
    require ext_call.success
    return 0
}

function grantAccess(address arg1, address arg2) {
    if not owner[uint256(stor4[address(arg1)])].field_256:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 50 wei
            args 'Cosigner not set'
        require ext_call.success
        return 0
    if owner[uint256(stor4[address(arg1)])].field_256:
        require ext_code.size(owner[uint256(stor4[address(arg1)])].field_256)
        call owner[uint256(stor4[address(arg1)])].field_256.consumeOperation(bytes32 rg1, uint256 rg2) with:
             gas gas_remaining - 50 wei
            args sha3(call.data[0 len calldata.size], uint256(holderId[address(arg1)])), 2
        require ext_call.success
        if not ext_call.return_data[0]:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xe90459f8 with:
                 gas gas_remaining - 50 wei
                args 0x436f7369676e65723a206163636573732064656e6965640000000000000000
            require ext_call.success
            return 0
    if uint256(holderId[address(arg2)]):
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 50 wei
            args 'Should recover to new address'
        require ext_call.success
        return 0
    owner[uint256(stor4[address(arg1)])].field_0 = arg2
    uint256(holderId[address(arg2)]) = uint256(holderId[address(arg1)])
    require ext_code.size(eventsHistoryAddress)
    call eventsHistoryAddress.0xea14457e with:
         gas gas_remaining - 50 wei
        args owner[uint256(stor4[address(arg1)])].field_0, address(arg2), msg.sender
    require ext_call.success
    return 1
}

function recover(address arg1, address arg2) {
    if not owner[uint256(stor4[address(arg1)])][2][address(msg.sender)].field_0:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 50 wei
            args 'Only trusted: access denied'
        require ext_call.success
        return 0
    if owner[uint256(stor4[address(arg1)])].field_256:
        require ext_code.size(owner[uint256(stor4[address(arg1)])].field_256)
        call owner[uint256(stor4[address(arg1)])].field_256.consumeOperation(bytes32 rg1, uint256 rg2) with:
             gas gas_remaining - 50 wei
            args sha3(call.data[0 len calldata.size], uint256(holderId[address(arg1)])), 2
        require ext_call.success
        if not ext_call.return_data[0]:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xe90459f8 with:
                 gas gas_remaining - 50 wei
                args 0x436f7369676e65723a206163636573732064656e6965640000000000000000
            require ext_call.success
            return 0
    if uint256(holderId[address(arg2)]):
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 50 wei
            args 'Should recover to new address'
        require ext_call.success
        return 0
    owner[uint256(stor4[address(arg1)])].field_0 = arg2
    uint256(holderId[address(arg2)]) = uint256(holderId[address(arg1)])
    require ext_code.size(eventsHistoryAddress)
    call eventsHistoryAddress.0xea14457e with:
         gas gas_remaining - 50 wei
        args owner[uint256(stor4[address(arg1)])].field_0, address(arg2), msg.sender
    require ext_call.success
    return 1
}

function revokeAsset(bytes32 arg1, uint256 arg2) {
    if not stor1[('map', ('param', 'arg1'), ('name', 'stor2', 2))]:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 50 wei
            args 0x466561747572652069732064697361626c6564000000000000000000000000
        require ext_call.success
        return 0
    if owner[uint256(stor4[address(msg.sender)])].field_256:
        require ext_code.size(owner[uint256(stor4[address(msg.sender)])].field_256)
        call owner[uint256(stor4[address(msg.sender)])].field_256.consumeOperation(bytes32 rg1, uint256 rg2) with:
             gas gas_remaining - 50 wei
            args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)])), 1
        require ext_call.success
        if not ext_call.return_data[0]:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xe90459f8 with:
                 gas gas_remaining - 50 wei
                args 0x436f7369676e65723a206163636573732064656e6965640000000000000000
            require ext_call.success
            return 0
    if not arg2:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 50 wei
            args 'Cannot revoke 0 value'
        require ext_call.success
        return 0
    if allowance[arg1][5][uint256(stor4[address(msg.sender)])].field_0 < arg2:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 50 wei
            args 'Not enough tokens to revoke'
        require ext_call.success
        return 0
    allowance[arg1][5][uint256(stor4[address(msg.sender)])].field_0 -= arg2
    allowance[arg1].field_256 -= arg2
    require ext_code.size(eventsHistoryAddress)
    call eventsHistoryAddress.0xc70bbc13 with:
         gas gas_remaining - 50 wei
        args arg1, arg2, owner[uint256(stor4[address(msg.sender)])].field_0
    require ext_call.success
    if proxies[arg1]:
        require ext_code.size(proxies[arg1])
        call proxies[arg1].emitTransfer(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 50 wei
            args owner[uint256(stor4[address(msg.sender)])].field_0, owner[0].field_0, arg2
        require ext_call.success
    return 1
}

function lockAsset(bytes32 arg1) {
    if not owner[uint256(stor4[address(msg.sender)])].field_256:
        if not allowance[arg1].field_0:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xe90459f8 with:
                 gas gas_remaining - 50 wei
                args 0x4f6e6c79206f776e65723a206163636573732064656e696564000000000000
        else:
            if allowance[arg1].field_0 != uint256(holderId[address(msg.sender)]):
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 50 wei
                    args 0x4f6e6c79206f776e65723a206163636573732064656e696564000000000000
            else:
                if not allowance[arg1].field_1040:
                    allowance[arg1].field_1040 = 1
                    return 1
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 50 wei
                    args 'Asset is locked'
    else:
        require ext_code.size(owner[uint256(stor4[address(msg.sender)])].field_256)
        call owner[uint256(stor4[address(msg.sender)])].field_256.consumeOperation(bytes32 rg1, uint256 rg2) with:
             gas gas_remaining - 50 wei
            args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)])), 1
        require ext_call.success
        if not ext_call.return_data[0]:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xe90459f8 with:
                 gas gas_remaining - 50 wei
                args 0x436f7369676e65723a206163636573732064656e6965640000000000000000
            require ext_call.success
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xe90459f8 with:
                 gas gas_remaining - 50 wei
                args 0x4f6e6c79206f776e65723a206163636573732064656e696564000000000000
        else:
            if not allowance[arg1].field_0:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 50 wei
                    args 0x4f6e6c79206f776e65723a206163636573732064656e696564000000000000
            else:
                if allowance[arg1].field_0 != uint256(holderId[address(msg.sender)]):
                    require ext_code.size(eventsHistoryAddress)
                    call eventsHistoryAddress.0xe90459f8 with:
                         gas gas_remaining - 50 wei
                        args 0x4f6e6c79206f776e65723a206163636573732064656e696564000000000000
                else:
                    if not allowance[arg1].field_1040:
                        allowance[arg1].field_1040 = 1
                        return 1
                    require ext_code.size(eventsHistoryAddress)
                    call eventsHistoryAddress.0xe90459f8 with:
                         gas gas_remaining - 50 wei
                        args 'Asset is locked'
    require ext_call.success
    return 0
}

function reissueAsset(bytes32 arg1, uint256 arg2) {
    if owner[uint256(stor4[address(msg.sender)])].field_256:
        require ext_code.size(owner[uint256(stor4[address(msg.sender)])].field_256)
        call owner[uint256(stor4[address(msg.sender)])].field_256.consumeOperation(bytes32 rg1, uint256 rg2) with:
             gas gas_remaining - 50 wei
            args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)])), 1
        require ext_call.success
        if not ext_call.return_data[0]:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xe90459f8 with:
                 gas gas_remaining - 50 wei
                args 0x436f7369676e65723a206163636573732064656e6965640000000000000000
            require ext_call.success
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xe90459f8 with:
                 gas gas_remaining - 50 wei
                args 0x4f6e6c79206f776e65723a206163636573732064656e696564000000000000
            require ext_call.success
            return 0
    if not allowance[arg1].field_0:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 50 wei
            args 0x4f6e6c79206f776e65723a206163636573732064656e696564000000000000
        require ext_call.success
        return 0
    if allowance[arg1].field_0 != uint256(holderId[address(msg.sender)]):
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 50 wei
            args 0x4f6e6c79206f776e65723a206163636573732064656e696564000000000000
        require ext_call.success
        return 0
    if not arg2:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 50 wei
            args 'Cannot reissue 0 value'
        require ext_call.success
        return 0
    if not allowance[arg1].field_1024:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 50 wei
            args 'Cannot reissue fixed asset'
        require ext_call.success
        return 0
    if allowance[arg1].field_256 + arg2 < allowance[arg1].field_256:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 50 wei
            args 'Total supply overflow'
        require ext_call.success
        return 0
    allowance[arg1][5][uint256(stor4[address(msg.sender)])].field_0 += arg2
    allowance[arg1].field_256 += arg2
    require ext_code.size(eventsHistoryAddress)
    call eventsHistoryAddress.0xabafaa16 with:
         gas gas_remaining - 50 wei
        args arg1, arg2, owner[uint256(stor4[address(msg.sender)])].field_0
    require ext_call.success
    if proxies[arg1]:
        require ext_code.size(proxies[arg1])
        call proxies[arg1].emitTransfer(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 50 wei
            args owner[0].field_0, owner[uint256(stor4[address(msg.sender)])].field_0, arg2
        require ext_call.success
    return 1
}

function changeOwnership(bytes32 arg1, address arg2) {
    if not stor1[('map', ('param', 'arg1'), ('name', 'owner', 3))].field_0:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 50 wei
            args 0x466561747572652069732064697361626c6564000000000000000000000000
        require ext_call.success
        return 0
    if owner[uint256(stor4[address(msg.sender)])].field_256:
        require ext_code.size(owner[uint256(stor4[address(msg.sender)])].field_256)
        call owner[uint256(stor4[address(msg.sender)])].field_256.consumeOperation(bytes32 rg1, uint256 rg2) with:
             gas gas_remaining - 50 wei
            args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)])), 1
        require ext_call.success
        if not ext_call.return_data[0]:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xe90459f8 with:
                 gas gas_remaining - 50 wei
                args 0x436f7369676e65723a206163636573732064656e6965640000000000000000
            require ext_call.success
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xe90459f8 with:
                 gas gas_remaining - 50 wei
                args 0x4f6e6c79206f776e65723a206163636573732064656e696564000000000000
            require ext_call.success
            return 0
    if not allowance[arg1].field_0:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 50 wei
            args 0x4f6e6c79206f776e65723a206163636573732064656e696564000000000000
        require ext_call.success
        return 0
    if allowance[arg1].field_0 != uint256(holderId[address(msg.sender)]):
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 50 wei
            args 0x4f6e6c79206f776e65723a206163636573732064656e696564000000000000
        require ext_call.success
        return 0
    if uint256(holderId[address(arg2)]):
        if uint256(holderId[address(arg2)]) == allowance[arg1].field_0:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xe90459f8 with:
                 gas gas_remaining - 50 wei
                args 'Cannot pass ownership to oneself'
            require ext_call.success
            return 0
        allowance[arg1].field_0 = uint256(holderId[address(arg2)])
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xa9612f72 with:
             gas gas_remaining - 50 wei
            args owner[stor5[arg1].field_0].field_0, owner[uint256(stor4[address(arg2)])].field_0, arg1
    else:
        stor2.length++
        owner[stor2.length + 1].field_0 = arg2
        uint256(holderId[address(arg2)]) = stor2.length + 1
        if stor2.length + 1 == allowance[arg1].field_0:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xe90459f8 with:
                 gas gas_remaining - 50 wei
                args 'Cannot pass ownership to oneself'
            require ext_call.success
            return 0
        allowance[arg1].field_0 = stor2.length + 1
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xa9612f72 with:
             gas gas_remaining - 50 wei
            args owner[stor5[arg1].field_0].field_0, owner[stor2.length + 1].field_0, arg1
    require ext_call.success
    return 1
}

function changeAsset(bytes32 arg1, string arg2, string arg3, uint8 arg4) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if owner[uint256(stor4[address(msg.sender)])].field_256:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len calldata.size] = call.data[0 len calldata.size]
        require ext_code.size(owner[uint256(stor4[address(msg.sender)])].field_256)
        call owner[uint256(stor4[address(msg.sender)])].field_256.consumeOperation(bytes32 rg1, uint256 rg2) with:
             gas gas_remaining - 50 wei
            args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)])), 1
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = ext_call.return_data[0]
        require ext_call.success
        if not ext_call.return_data[0]:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xe90459f8 with:
                 gas gas_remaining - 50 wei
                args 0x436f7369676e65723a206163636573732064656e6965640000000000000000
            require ext_call.success
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xe90459f8 with:
                 gas gas_remaining - 50 wei
                args 0x4f6e6c79206f776e65723a206163636573732064656e696564000000000000
            require ext_call.success
            return 0
    if not allowance[arg1].field_0:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 50 wei
            args 0x4f6e6c79206f776e65723a206163636573732064656e696564000000000000
        require ext_call.success
        return 0
    if allowance[arg1].field_0 != uint256(holderId[address(msg.sender)]):
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 50 wei
            args 0x4f6e6c79206f776e65723a206163636573732064656e696564000000000000
        require ext_call.success
        return 0
    if allowance[arg1].field_1040:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 50 wei
            args 'Asset is locked'
        require ext_call.success
        return 0
    allowance[arg1].field_512 = (2 * arg2.length) + 1
    s = 0
    idx = 128
    while arg2.length + 128 > idx:
        allowance[arg1][s + 2].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if allowance[arg1][2].length + 31 / 32 > Mask(251, 0, arg2.length + 31) >> 5:
        stor[('array', 2, ('map', ('param', 'arg1'), ('name', 'allowance', 5))) + (Mask(251, 0, arg2.length + 31) >> 5)].field_0 = 0
        idx = (Mask(251, 0, arg2.length + 31) >> 5) + 1
        while allowance[arg1][2].length + 31 / 32 > idx:
            allowance[arg1][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    allowance[arg1].field_768 = (2 * arg3.length) + 1
    s = 0
    idx = ceil32(arg2.length) + 160
    while ceil32(arg2.length) + arg3.length + 160 > idx:
        allowance[arg1][s + 3].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if allowance[arg1][3].length + 31 / 32 > Mask(251, 0, arg3.length + 31) >> 5:
        stor[('array', 3, ('map', ('param', 'arg1'), ('name', 'allowance', 5))) + (Mask(251, 0, arg3.length + 31) >> 5)].field_0 = 0
        idx = (Mask(251, 0, arg3.length + 31) >> 5) + 1
        while allowance[arg1][3].length + 31 / 32 > idx:
            allowance[arg1][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    allowance[arg1].field_1032 = arg4
    require ext_code.size(eventsHistoryAddress)
    call eventsHistoryAddress.0xa4a83317 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    return 1
}

function setCosignerAddress(address arg1) {
    if uint256(holderId[address(msg.sender)]):
        if not owner[uint256(stor4[address(msg.sender)])].field_256:
            require ext_code.size(arg1)
            call arg1.consumeOperation(bytes32 rg1, uint256 rg2) with:
                 gas gas_remaining - 50 wei
                args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)])), 1
        else:
            mem[132] = 1
            require ext_code.size(owner[uint256(stor4[address(msg.sender)])].field_256)
            call owner[uint256(stor4[address(msg.sender)])].field_256.consumeOperation(bytes32 rg1, uint256 rg2) with:
                 gas gas_remaining - 50 wei
                args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)])), 1
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            if not ext_call.return_data[0]:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 50 wei
                    args 0x436f7369676e65723a206163636573732064656e6965640000000000000000
                require ext_call.success
                return 0
            mem[96 len calldata.size] = call.data[0 len calldata.size]
            mem[calldata.size + 96] = uint256(holderId[address(msg.sender)])
            require ext_code.size(arg1)
            call arg1.consumeOperation(bytes32 rg1, uint256 rg2) with:
                 gas gas_remaining - 50 wei
                args sha3(mem[96], uint32(sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)]))), mem[132 len calldata.size - 4]), 1
    else:
        stor2.length++
        owner[stor2.length + 1].field_0 = msg.sender
        uint256(holderId[address(msg.sender)]) = stor2.length + 1
        if not owner[stor2.length + 1].field_256:
            require ext_code.size(arg1)
            call arg1.consumeOperation(bytes32 rg1, uint256 rg2) with:
                 gas gas_remaining - 50 wei
                args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)])), 1
        else:
            mem[132] = 1
            require ext_code.size(owner[stor2.length + 1].field_256)
            call owner[stor2.length + 1].field_256.consumeOperation(bytes32 rg1, uint256 rg2) with:
                 gas gas_remaining - 50 wei
                args sha3(call.data[0 len calldata.size], stor2.length + 1), 1
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            if not ext_call.return_data[0]:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 50 wei
                    args 0x436f7369676e65723a206163636573732064656e6965640000000000000000
                require ext_call.success
                return 0
            mem[96 len calldata.size] = call.data[0 len calldata.size]
            mem[calldata.size + 96] = uint256(holderId[address(msg.sender)])
            require ext_code.size(arg1)
            call arg1.consumeOperation(bytes32 rg1, uint256 rg2) with:
                 gas gas_remaining - 50 wei
                args sha3(mem[96], uint32(sha3(call.data[0 len calldata.size], stor2.length + 1)), mem[132 len calldata.size - 4]), 1
    require ext_call.success
    if not ext_call.return_data[0]:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 50 wei
            args 'Invalid cosigner'
        require ext_call.success
        return 0
    if uint256(holderId[address(msg.sender)]):
        owner[uint256(stor4[address(msg.sender)])].field_256 = arg1
    else:
        stor2.length++
        owner[stor2.length + 1].field_0 = msg.sender
        uint256(holderId[address(msg.sender)]) = stor2.length + 1
        owner[stor2.length + 1].field_256 = arg1
    return 1
}

function issueAsset(bytes32 arg1, uint256 arg2, string arg3, string arg4, uint8 arg5, bool arg6) {
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    if not stor1[arg1][uint8(arg6)][0]:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 50 wei
            args 0x466561747572652069732064697361626c6564000000000000000000000000
        require ext_call.success
        return 0
    if not arg2:
        if not arg6:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xe90459f8 with:
                 gas gas_remaining - 50 wei
                args 'Cannot issue 0 value fixed asset'
            require ext_call.success
            return 0
    if allowance[arg1].field_0:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 50 wei
            args 'Asset already issued'
        require ext_call.success
        return 0
    if uint256(holderId[address(msg.sender)]):
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = uint256(holderId[address(msg.sender)])
        allowance[arg1].field_0 = uint256(holderId[address(msg.sender)])
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
        allowance[arg1].field_1040 = 0
        allowance[arg1].field_1048 = Mask(232, 24, arg6) >> 24
        allowance[arg1][5][uint256(stor4[address(msg.sender)])].field_0 = arg2
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xabafaa16 with:
             gas gas_remaining - 50 wei
            args arg1, arg2, owner[uint256(stor4[address(msg.sender)])].field_0
    else:
        stor2.length++
        owner[stor2.length + 1].field_0 = msg.sender
        uint256(holderId[address(msg.sender)]) = stor2.length + 1
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = stor2.length + 1
        allowance[arg1].field_0 = stor2.length + 1
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
        allowance[arg1].field_1040 = 0
        allowance[arg1].field_1048 = Mask(232, 24, arg6) >> 24
        allowance[arg1][5][stor2.length + 1].field_0 = arg2
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xabafaa16 with:
             gas gas_remaining - 50 wei
            args arg1, arg2, owner[stor2.length + 1].field_0
    require ext_call.success
    return 1
}

function proxyApprove(address arg1, uint256 arg2, bytes32 arg3, address arg4) {
    if proxies[arg3] != msg.sender:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 50 wei
            args 'Only proxy: access denied'
        require ext_call.success
        return 0
    if uint256(holderId[address(arg1)]):
        if uint256(holderId[address(arg4)]):
            if not uint8(stor1[('map', ('param', 'arg3'), ('name', 'holderId', 4))]):
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 50 wei
                    args 0x466561747572652069732064697361626c6564000000000000000000000000
                require ext_call.success
                return 0
            if owner[uint256(stor4[address(arg4)])].field_256:
                require ext_code.size(owner[uint256(stor4[address(arg4)])].field_256)
                call owner[uint256(stor4[address(arg4)])].field_256.consumeOperation(bytes32 rg1, uint256 rg2) with:
                     gas gas_remaining - 50 wei
                    args sha3(call.data[0 len calldata.size], uint256(holderId[address(arg4)])), 1
                require ext_call.success
                if not ext_call.return_data[0]:
                    require ext_code.size(eventsHistoryAddress)
                    call eventsHistoryAddress.0xe90459f8 with:
                         gas gas_remaining - 50 wei
                        args 0x436f7369676e65723a206163636573732064656e6965640000000000000000
                    require ext_call.success
                    return 0
            if not allowance[arg3].field_0:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 50 wei
                    args 'Asset is not issued'
                require ext_call.success
                return 0
            if uint256(holderId[address(arg4)]) == uint256(holderId[address(arg1)]):
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 50 wei
                    args 'Cannot approve to oneself'
                require ext_call.success
                return 0
            allowance[arg3][5][uint256(stor4[address(arg4)])][1][uint256(stor4[address(arg1)])].field_0 = arg2
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xd54c8c87 with:
                 gas gas_remaining - 50 wei
                args 0, owner[uint256(stor4[address(arg4)])].field_0, owner[uint256(stor4[address(arg1)])].field_0, arg3, arg2
            require ext_call.success
            if proxies[arg3]:
                require ext_code.size(proxies[arg3])
                call proxies[arg3].emitApprove(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining - 50 wei
                    args owner[uint256(stor4[address(arg4)])].field_0, owner[uint256(stor4[address(arg1)])].field_0, arg2
                require ext_call.success
        else:
            stor2.length++
            owner[stor2.length + 1].field_0 = arg4
            uint256(holderId[address(arg4)]) = stor2.length + 1
            if not uint8(stor1[('map', ('param', 'arg3'), ('name', 'holderId', 4))]):
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 50 wei
                    args 0x466561747572652069732064697361626c6564000000000000000000000000
                require ext_call.success
                return 0
            if owner[stor2.length + 1].field_256:
                require ext_code.size(owner[stor2.length + 1].field_256)
                call owner[stor2.length + 1].field_256.consumeOperation(bytes32 rg1, uint256 rg2) with:
                     gas gas_remaining - 50 wei
                    args sha3(call.data[0 len calldata.size], stor2.length + 1), 1
                require ext_call.success
                if not ext_call.return_data[0]:
                    require ext_code.size(eventsHistoryAddress)
                    call eventsHistoryAddress.0xe90459f8 with:
                         gas gas_remaining - 50 wei
                        args 0x436f7369676e65723a206163636573732064656e6965640000000000000000
                    require ext_call.success
                    return 0
            if not allowance[arg3].field_0:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 50 wei
                    args 'Asset is not issued'
                require ext_call.success
                return 0
            if stor2.length + 1 == uint256(holderId[address(arg1)]):
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 50 wei
                    args 'Cannot approve to oneself'
                require ext_call.success
                return 0
            allowance[arg3][5][stor2.length + 1][1][uint256(stor4[address(arg1)])].field_0 = arg2
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xd54c8c87 with:
                 gas gas_remaining - 50 wei
                args 0, owner[stor2.length + 1].field_0, owner[uint256(stor4[address(arg1)])].field_0, arg3, arg2
            require ext_call.success
            if proxies[arg3]:
                require ext_code.size(proxies[arg3])
                call proxies[arg3].emitApprove(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining - 50 wei
                    args owner[stor2.length + 1].field_0, owner[uint256(stor4[address(arg1)])].field_0, arg2
                require ext_call.success
    else:
        stor2.length++
        owner[stor2.length + 1].field_0 = arg1
        uint256(holderId[address(arg1)]) = stor2.length + 1
        if uint256(holderId[address(arg4)]):
            if not uint8(stor1[('map', ('param', 'arg3'), ('name', 'holderId', 4))]):
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 50 wei
                    args 0x466561747572652069732064697361626c6564000000000000000000000000
                require ext_call.success
                return 0
            if owner[uint256(stor4[address(arg4)])].field_256:
                require ext_code.size(owner[uint256(stor4[address(arg4)])].field_256)
                call owner[uint256(stor4[address(arg4)])].field_256.consumeOperation(bytes32 rg1, uint256 rg2) with:
                     gas gas_remaining - 50 wei
                    args sha3(call.data[0 len calldata.size], uint256(holderId[address(arg4)])), 1
                require ext_call.success
                if not ext_call.return_data[0]:
                    require ext_code.size(eventsHistoryAddress)
                    call eventsHistoryAddress.0xe90459f8 with:
                         gas gas_remaining - 50 wei
                        args 0x436f7369676e65723a206163636573732064656e6965640000000000000000
                    require ext_call.success
                    return 0
            if not allowance[arg3].field_0:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 50 wei
                    args 'Asset is not issued'
                require ext_call.success
                return 0
            if uint256(holderId[address(arg4)]) == stor2.length + 1:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 50 wei
                    args 'Cannot approve to oneself'
                require ext_call.success
                return 0
            allowance[arg3][5][uint256(stor4[address(arg4)])][1][stor2.length + 1].field_0 = arg2
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xd54c8c87 with:
                 gas gas_remaining - 50 wei
                args 0, owner[uint256(stor4[address(arg4)])].field_0, owner[stor2.length + 1].field_0, arg3, arg2
            require ext_call.success
            if proxies[arg3]:
                require ext_code.size(proxies[arg3])
                call proxies[arg3].emitApprove(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining - 50 wei
                    args owner[uint256(stor4[address(arg4)])].field_0, owner[stor2.length + 1].field_0, arg2
                require ext_call.success
        else:
            stor2.length++
            owner[stor2.length + 1].field_0 = arg4
            uint256(holderId[address(arg4)]) = stor2.length + 1
            if not uint8(stor1[('map', ('param', 'arg3'), ('name', 'holderId', 4))]):
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 50 wei
                    args 0x466561747572652069732064697361626c6564000000000000000000000000
                require ext_call.success
                return 0
            if owner[stor2.length + 1].field_256:
                require ext_code.size(owner[stor2.length + 1].field_256)
                call owner[stor2.length + 1].field_256.consumeOperation(bytes32 rg1, uint256 rg2) with:
                     gas gas_remaining - 50 wei
                    args sha3(call.data[0 len calldata.size], stor2.length + 1), 1
                require ext_call.success
                if not ext_call.return_data[0]:
                    require ext_code.size(eventsHistoryAddress)
                    call eventsHistoryAddress.0xe90459f8 with:
                         gas gas_remaining - 50 wei
                        args 0x436f7369676e65723a206163636573732064656e6965640000000000000000
                    require ext_call.success
                    return 0
            if not allowance[arg3].field_0:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 50 wei
                    args 'Asset is not issued'
                require ext_call.success
                return 0
            if stor2.length + 1 == stor2.length + 1:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 50 wei
                    args 'Cannot approve to oneself'
                require ext_call.success
                return 0
            allowance[arg3][5][stor2.length + 1][1][stor2.length + 1].field_0 = arg2
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xd54c8c87 with:
                 gas gas_remaining - 50 wei
                args 0, owner[stor2.length + 1].field_0, owner[stor2.length + 1].field_0, arg3, arg2
            require ext_call.success
            if proxies[arg3]:
                require ext_code.size(proxies[arg3])
                call proxies[arg3].emitApprove(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining - 50 wei
                    args owner[stor2.length + 1].field_0, owner[stor2.length + 1].field_0, arg2
                require ext_call.success
    return 1
}

function proxyTransferFromWithReference(address arg1, address arg2, uint256 arg3, bytes32 arg4, string arg5, address arg6) {
    mem[128 len arg5.length] = arg5[all]
    if proxies[arg4] != msg.sender:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xe90459f8 with:
             gas gas_remaining - 50 wei
            args 'Only proxy: access denied'
        require ext_call.success
        return 0
    if uint256(holderId[address(arg2)]):
        if not owner[uint256(stor4[address(arg6)])].field_256:
            if uint256(holderId[address(arg1)]) == uint256(holderId[address(arg2)]):
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 50 wei
                    args 'Cannot send to oneself'
                require ext_call.success
                return 0
            if not arg3:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 50 wei
                    args 'Cannot send 0 value'
                require ext_call.success
                return 0
            if allowance[arg4][5][uint256(stor4[address(arg1)])].field_0 < arg3:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 50 wei
                    args 'Insufficient balance'
                require ext_call.success
                return 0
            if arg5.length > 0:
                if not stor1[('map', ('param', 'arg4'), ('name', 'stor1', 1))]:
                    require ext_code.size(eventsHistoryAddress)
                    call eventsHistoryAddress.0xe90459f8 with:
                         gas gas_remaining - 50 wei
                        args 'References feature is disabled'
                    require ext_call.success
                    return 0
            if uint256(holderId[address(arg1)]) != uint256(holderId[address(arg6)]):
                if allowance[arg4][5][uint256(stor4[address(arg1)])][1][uint256(stor4[address(arg6)])].field_0 < arg3:
                    require ext_code.size(eventsHistoryAddress)
                    call eventsHistoryAddress.0xe90459f8 with:
                         gas gas_remaining - 50 wei
                        args 'Not enough allowance'
                    require ext_call.success
                    return 0
            if uint256(holderId[address(arg6)]) != uint256(holderId[address(arg1)]):
                allowance[arg4][5][uint256(stor4[address(arg1)])][1][uint256(stor4[address(arg6)])].field_0 -= arg3
            allowance[arg4][5][uint256(stor4[address(arg1)])].field_0 -= arg3
            allowance[arg4][5][uint256(stor4[address(arg2)])].field_0 += arg3
            mem[ceil32(arg5.length) + 128] = 0x515c145700000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg5.length) + 132] = owner[uint256(stor4[address(arg1)])].field_0
            mem[ceil32(arg5.length) + 164] = owner[uint256(stor4[address(arg2)])].field_0
            mem[ceil32(arg5.length) + 196] = arg4
            mem[ceil32(arg5.length) + 228] = arg3
            mem[ceil32(arg5.length) + 260] = 160
            mem[ceil32(arg5.length) + 292] = arg5.length
            if not arg5.length:
                if not arg5.length % 32:
                    require ext_code.size(eventsHistoryAddress)
                    call eventsHistoryAddress.0x515c1457 with:
                         gas gas_remaining - 50 wei
                        args 0, owner[uint256(stor4[address(arg1)])].field_0, owner[uint256(stor4[address(arg2)])].field_0, arg4, arg3, 160, arg5.length, mem[ceil32(arg5.length) + 324 len arg5.length]
                else:
                    mem[floor32(arg5.length) + ceil32(arg5.length) + 324] = mem[floor32(arg5.length) + ceil32(arg5.length) + -(arg5.length % 32) + 356 len arg5.length % 32]
                    require ext_code.size(eventsHistoryAddress)
                    call eventsHistoryAddress.0x515c1457 with:
                         gas gas_remaining - 50 wei
                        args owner[uint256(stor4[address(arg1)])].field_0, owner[uint256(stor4[address(arg2)])].field_0, arg4, arg3, Array(len=arg5.length, data=mem[ceil32(arg5.length) + 324 len floor32(arg5.length) + 32])
            else:
                mem[ceil32(arg5.length) + 324] = mem[128]
                mem[ceil32(arg5.length) + 356 len floor32(arg5.length - 1)] = mem[160 len floor32(arg5.length - 1)]
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0x515c1457 with:
                     gas gas_remaining - 50 wei
                    args owner[uint256(stor4[address(arg1)])].field_0, owner[uint256(stor4[address(arg2)])].field_0, arg4, arg3, Array(len=arg5.length, data=mem[ceil32(arg5.length) + 324 len arg5.length])
        else:
            mem[ceil32(arg5.length) + 128 len calldata.size] = call.data[0 len calldata.size]
            mem[ceil32(arg5.length) + calldata.size + 128] = uint256(holderId[address(arg6)])
            require ext_code.size(owner[uint256(stor4[address(arg6)])].field_256)
            call owner[uint256(stor4[address(arg6)])].field_256.consumeOperation(bytes32 rg1, uint256 rg2) with:
                 gas gas_remaining - 50 wei
                args sha3(call.data[0 len calldata.size], uint256(holderId[address(arg6)])), 1
            require ext_call.success
            if not ext_call.return_data[0]:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 50 wei
                    args 0x436f7369676e65723a206163636573732064656e6965640000000000000000
                require ext_call.success
                return 0
            if uint256(holderId[address(arg1)]) == uint256(holderId[address(arg2)]):
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 50 wei
                    args 'Cannot send to oneself'
                require ext_call.success
                return 0
            if not arg3:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 50 wei
                    args 'Cannot send 0 value'
                require ext_call.success
                return 0
            if allowance[arg4][5][uint256(stor4[address(arg1)])].field_0 < arg3:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 50 wei
                    args 'Insufficient balance'
                require ext_call.success
                return 0
            if arg5.length > 0:
                if not stor1[('map', ('param', 'arg4'), ('name', 'stor1', 1))]:
                    require ext_code.size(eventsHistoryAddress)
                    call eventsHistoryAddress.0xe90459f8 with:
                         gas gas_remaining - 50 wei
                        args 'References feature is disabled'
                    require ext_call.success
                    return 0
            if uint256(holderId[address(arg1)]) != uint256(holderId[address(arg6)]):
                if allowance[arg4][5][uint256(stor4[address(arg1)])][1][uint256(stor4[address(arg6)])].field_0 < arg3:
                    require ext_code.size(eventsHistoryAddress)
                    call eventsHistoryAddress.0xe90459f8 with:
                         gas gas_remaining - 50 wei
                        args 'Not enough allowance'
                    require ext_call.success
                    return 0
            if uint256(holderId[address(arg6)]) != uint256(holderId[address(arg1)]):
                allowance[arg4][5][uint256(stor4[address(arg1)])][1][uint256(stor4[address(arg6)])].field_0 -= arg3
            allowance[arg4][5][uint256(stor4[address(arg1)])].field_0 -= arg3
            allowance[arg4][5][uint256(stor4[address(arg2)])].field_0 += arg3
            mem[ceil32(arg5.length) + 128] = 0x515c145700000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg5.length) + 132] = owner[uint256(stor4[address(arg1)])].field_0
            mem[ceil32(arg5.length) + 164] = owner[uint256(stor4[address(arg2)])].field_0
            mem[ceil32(arg5.length) + 196] = arg4
            mem[ceil32(arg5.length) + 228] = arg3
            mem[ceil32(arg5.length) + 260] = 160
            mem[ceil32(arg5.length) + 292] = arg5.length
            if not arg5.length:
                if not arg5.length % 32:
                    require ext_code.size(eventsHistoryAddress)
                    call eventsHistoryAddress.0x515c1457 with:
                         gas gas_remaining - 50 wei
                        args 0, 0, owner[uint256(stor4[address(arg2)])].field_0, arg4, arg3, 160, arg5.length, mem[ceil32(arg5.length) + 324 len arg5.length]
                else:
                    mem[floor32(arg5.length) + ceil32(arg5.length) + 324] = mem[floor32(arg5.length) + ceil32(arg5.length) + -(arg5.length % 32) + 356 len arg5.length % 32]
                    require ext_code.size(eventsHistoryAddress)
                    call eventsHistoryAddress.0x515c1457 with:
                         gas gas_remaining - 50 wei
                        args owner[uint256(stor4[address(arg1)])].field_0, owner[uint256(stor4[address(arg2)])].field_0, arg4, arg3, Array(len=arg5.length, data=mem[ceil32(arg5.length) + 324 len floor32(arg5.length) + 32])
            else:
                mem[ceil32(arg5.length) + 324] = mem[128]
                mem[ceil32(arg5.length) + 356 len floor32(arg5.length - 1)] = mem[160 len floor32(arg5.length - 1)]
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0x515c1457 with:
                     gas gas_remaining - 50 wei
                    args owner[uint256(stor4[address(arg1)])].field_0, owner[uint256(stor4[address(arg2)])].field_0, arg4, arg3, Array(len=arg5.length, data=mem[ceil32(arg5.length) + 324 len arg5.length])
        require ext_call.success
        if proxies[arg4]:
            require ext_code.size(proxies[arg4])
            call proxies[arg4].emitTransfer(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 50 wei
                args owner[uint256(stor4[address(arg1)])].field_0, owner[uint256(stor4[address(arg2)])].field_0, arg3
            require ext_call.success
    else:
        stor2.length++
        owner[stor2.length + 1].field_0 = arg2
        uint256(holderId[address(arg2)]) = stor2.length + 1
        if not owner[uint256(stor4[address(arg6)])].field_256:
            if uint256(holderId[address(arg1)]) == stor2.length + 1:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 50 wei
                    args 'Cannot send to oneself'
                require ext_call.success
                return 0
            if not arg3:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 50 wei
                    args 'Cannot send 0 value'
                require ext_call.success
                return 0
            if allowance[arg4][5][uint256(stor4[address(arg1)])].field_0 < arg3:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 50 wei
                    args 'Insufficient balance'
                require ext_call.success
                return 0
            if arg5.length > 0:
                if not stor1[('map', ('param', 'arg4'), ('name', 'stor1', 1))]:
                    require ext_code.size(eventsHistoryAddress)
                    call eventsHistoryAddress.0xe90459f8 with:
                         gas gas_remaining - 50 wei
                        args 'References feature is disabled'
                    require ext_call.success
                    return 0
            if uint256(holderId[address(arg1)]) != uint256(holderId[address(arg6)]):
                if allowance[arg4][5][uint256(stor4[address(arg1)])][1][uint256(stor4[address(arg6)])].field_0 < arg3:
                    require ext_code.size(eventsHistoryAddress)
                    call eventsHistoryAddress.0xe90459f8 with:
                         gas gas_remaining - 50 wei
                        args 'Not enough allowance'
                    require ext_call.success
                    return 0
            if uint256(holderId[address(arg6)]) != uint256(holderId[address(arg1)]):
                allowance[arg4][5][uint256(stor4[address(arg1)])][1][uint256(stor4[address(arg6)])].field_0 -= arg3
            allowance[arg4][5][uint256(stor4[address(arg1)])].field_0 -= arg3
            allowance[arg4][5][stor2.length + 1].field_0 += arg3
            mem[ceil32(arg5.length) + 128] = 0x515c145700000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg5.length) + 132] = owner[uint256(stor4[address(arg1)])].field_0
            mem[ceil32(arg5.length) + 164] = owner[stor2.length + 1].field_0
            mem[ceil32(arg5.length) + 196] = arg4
            mem[ceil32(arg5.length) + 228] = arg3
            mem[ceil32(arg5.length) + 260] = 160
            mem[ceil32(arg5.length) + 292] = arg5.length
            if not arg5.length:
                if not arg5.length % 32:
                    require ext_code.size(eventsHistoryAddress)
                    call eventsHistoryAddress.0x515c1457 with:
                         gas gas_remaining - 50 wei
                        args 0, owner[uint256(stor4[address(arg1)])].field_0, owner[stor2.length + 1].field_0, arg4, arg3, 160, arg5.length, mem[ceil32(arg5.length) + 324 len arg5.length]
                else:
                    mem[floor32(arg5.length) + ceil32(arg5.length) + 324] = mem[floor32(arg5.length) + ceil32(arg5.length) + -(arg5.length % 32) + 356 len arg5.length % 32]
                    require ext_code.size(eventsHistoryAddress)
                    call eventsHistoryAddress.0x515c1457 with:
                         gas gas_remaining - 50 wei
                        args owner[uint256(stor4[address(arg1)])].field_0, owner[stor2.length + 1].field_0, arg4, arg3, Array(len=arg5.length, data=mem[ceil32(arg5.length) + 324 len floor32(arg5.length) + 32])
            else:
                mem[ceil32(arg5.length) + 324] = mem[128]
                mem[ceil32(arg5.length) + 356 len floor32(arg5.length - 1)] = mem[160 len floor32(arg5.length - 1)]
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0x515c1457 with:
                     gas gas_remaining - 50 wei
                    args owner[uint256(stor4[address(arg1)])].field_0, owner[stor2.length + 1].field_0, arg4, arg3, Array(len=arg5.length, data=mem[ceil32(arg5.length) + 324 len arg5.length])
        else:
            mem[ceil32(arg5.length) + 128 len calldata.size] = call.data[0 len calldata.size]
            mem[ceil32(arg5.length) + calldata.size + 128] = uint256(holderId[address(arg6)])
            require ext_code.size(owner[uint256(stor4[address(arg6)])].field_256)
            call owner[uint256(stor4[address(arg6)])].field_256.consumeOperation(bytes32 rg1, uint256 rg2) with:
                 gas gas_remaining - 50 wei
                args sha3(call.data[0 len calldata.size], uint256(holderId[address(arg6)])), 1
            require ext_call.success
            if not ext_call.return_data[0]:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 50 wei
                    args 0x436f7369676e65723a206163636573732064656e6965640000000000000000
                require ext_call.success
                return 0
            if uint256(holderId[address(arg1)]) == stor2.length + 1:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 50 wei
                    args 'Cannot send to oneself'
                require ext_call.success
                return 0
            if not arg3:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 50 wei
                    args 'Cannot send 0 value'
                require ext_call.success
                return 0
            if allowance[arg4][5][uint256(stor4[address(arg1)])].field_0 < arg3:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xe90459f8 with:
                     gas gas_remaining - 50 wei
                    args 'Insufficient balance'
                require ext_call.success
                return 0
            if arg5.length > 0:
                if not stor1[('map', ('param', 'arg4'), ('name', 'stor1', 1))]:
                    require ext_code.size(eventsHistoryAddress)
                    call eventsHistoryAddress.0xe90459f8 with:
                         gas gas_remaining - 50 wei
                        args 'References feature is disabled'
                    require ext_call.success
                    return 0
            if uint256(holderId[address(arg1)]) != uint256(holderId[address(arg6)]):
                if allowance[arg4][5][uint256(stor4[address(arg1)])][1][uint256(stor4[address(arg6)])].field_0 < arg3:
                    require ext_code.size(eventsHistoryAddress)
                    call eventsHistoryAddress.0xe90459f8 with:
                         gas gas_remaining - 50 wei
                        args 'Not enough allowance'
                    require ext_call.success
                    return 0
            if uint256(holderId[address(arg6)]) != uint256(holderId[address(arg1)]):
                allowance[arg4][5][uint256(stor4[address(arg1)])][1][uint256(stor4[address(arg6)])].field_0 -= arg3
            allowance[arg4][5][uint256(stor4[address(arg1)])].field_0 -= arg3
            allowance[arg4][5][stor2.length + 1].field_0 += arg3
            mem[ceil32(arg5.length) + 128] = 0x515c145700000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg5.length) + 132] = owner[uint256(stor4[address(arg1)])].field_0
            mem[ceil32(arg5.length) + 164] = owner[stor2.length + 1].field_0
            mem[ceil32(arg5.length) + 196] = arg4
            mem[ceil32(arg5.length) + 228] = arg3
            mem[ceil32(arg5.length) + 260] = 160
            mem[ceil32(arg5.length) + 292] = arg5.length
            if not arg5.length:
                if not arg5.length % 32:
                    require ext_code.size(eventsHistoryAddress)
                    call eventsHistoryAddress.0x515c1457 with:
                         gas gas_remaining - 50 wei
                        args 0, 0, owner[stor2.length + 1].field_0, arg4, arg3, 160, arg5.length, mem[ceil32(arg5.length) + 324 len arg5.length]
                else:
                    mem[floor32(arg5.length) + ceil32(arg5.length) + 324] = mem[floor32(arg5.length) + ceil32(arg5.length) + -(arg5.length % 32) + 356 len arg5.length % 32]
                    require ext_code.size(eventsHistoryAddress)
                    call eventsHistoryAddress.0x515c1457 with:
                         gas gas_remaining - 50 wei
                        args owner[uint256(stor4[address(arg1)])].field_0, owner[stor2.length + 1].field_0, arg4, arg3, Array(len=arg5.length, data=mem[ceil32(arg5.length) + 324 len floor32(arg5.length) + 32])
            else:
                mem[ceil32(arg5.length) + 324] = mem[128]
                mem[ceil32(arg5.length) + 356 len floor32(arg5.length - 1)] = mem[160 len floor32(arg5.length - 1)]
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0x515c1457 with:
                     gas gas_remaining - 50 wei
                    args owner[uint256(stor4[address(arg1)])].field_0, owner[stor2.length + 1].field_0, arg4, arg3, Array(len=arg5.length, data=mem[ceil32(arg5.length) + 324 len arg5.length])
        require ext_call.success
        if proxies[arg4]:
            require ext_code.size(proxies[arg4])
            call proxies[arg4].emitTransfer(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 50 wei
                args owner[uint256(stor4[address(arg1)])].field_0, owner[stor2.length + 1].field_0, arg3
            require ext_call.success
    return 1
}



}
