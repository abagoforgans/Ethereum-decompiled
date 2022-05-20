contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[48 len 11019]
}



// =====================  Runtime code  =====================


#
#  - proxyTransferWithReference(address arg1, uint256 arg2, bytes32 arg3, string arg4, address arg5)
#  - massTransfer(address[] arg1, uint256[] arg2, bytes32 arg3)
#
address contractOwner;
address pendingContractOwner;
uint256 holdersCount;
mapping of uint8 owner;
mapping of uint256 holderId;
array of uint256 symbols;
array of struct allowance;
mapping of address proxies;
mapping of uint8 stor8;
address eventsHistoryAddress;

function owner(bytes32 arg1) {
    return address(owner[stor6[arg1].field_0])
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

function checkIsAssetPartOwner(bytes32 arg1, address arg2) {
    require arg2
    return bool(allowance[arg1][6][stor4[address(arg2)]].field_0)
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

function partowners(address arg1) {
    return bool(stor8[arg1])
}

function symbols(uint256 arg1) {
    require arg1 < symbols.length
    return symbols[arg1]
}

function contractOwner() {
    return contractOwner
}

function baseUnit(bytes32 arg1) {
    return allowance[arg1].field_1032
}

function symbolsCount() {
    return symbols.length
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

function emitError(uint256 arg1) {
    emit Error(arg1);
}

function emitIssue(bytes32 arg1, uint256 arg2, address arg3) {
    emit Issue(arg2, arg1, arg3);
}

function emitRevoke(bytes32 arg1, uint256 arg2, address arg3) {
    emit Revoke(arg2, arg1, arg3);
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

function addPartOwner(address arg1) {
    if contractOwner != msg.sender:
        return 0
    stor8[address(arg1)] = 1
    return 1
}

function removePartOwner(address arg1) {
    if contractOwner != msg.sender:
        return 0
    stor8[address(arg1)] = 0
    return 1
}

function setupEventsHistory(address arg1) {
    if contractOwner != msg.sender:
        return 0
    eventsHistoryAddress = arg1
    return 1
}

function distrust() {
    if not uint8(owner[stor4[address(msg.sender)]][1][stor0]):
        return 0
    uint8(owner[stor4[address(msg.sender)]][1][stor0]) = 0
    return 1
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

function isOwner(address arg1, bytes32 arg2) {
    if not allowance[arg2].field_0:
        return bool(allowance[arg2].field_0)
    return (allowance[arg2].field_0 == holderId[address(arg1)])
}

function setProxy(address arg1, bytes32 arg2) {
    if contractOwner != msg.sender:
        if not stor8[address(msg.sender)]:
            return 0
    if proxies[arg2]:
        return 80001
    proxies[arg2] = arg1
    return 1
}

function hasAssetRights(address arg1, bytes32 arg2) {
    if not allowance[arg2].field_0:
        return bool(allowance[arg2].field_0)
    if holderId[address(arg1)] == allowance[arg2].field_0:
        return True
    return bool(allowance[arg2][6][stor4[address(arg1)]].field_0)
}

function removeAssetPartOwner(bytes32 arg1, address arg2) {
    if not allowance[arg1].field_0:
        return 0
    if holderId[address(msg.sender)] != allowance[arg1].field_0:
        if not allowance[arg1][6][stor4[address(msg.sender)]].field_0:
            return 0
    allowance[arg1][6][stor4[address(arg2)]].field_0 = 0
    require ext_code.size(eventsHistoryAddress)
    call eventsHistoryAddress.0xa9612f72 with:
         gas gas_remaining - 710 wei
        args address(arg2), 0, arg1
    require ext_call.success
    return 1
}

function recover(address arg1, address arg2) {
    if not uint8(owner[stor4[address(arg1)]][1][address(msg.sender)]):
        return 0
    if contractOwner != msg.sender:
        return 0
    address(owner[stor4[address(arg1)]]) = arg2
    holderId[address(arg2)] = holderId[address(arg1)]
    require ext_code.size(eventsHistoryAddress)
    call eventsHistoryAddress.0xea14457e with:
         gas gas_remaining - 710 wei
        args address(owner[stor4[address(arg1)]]), address(arg2), msg.sender
    require ext_call.success
    return 1
}

function addAssetPartOwner(bytes32 arg1, address arg2) {
    if not allowance[arg1].field_0:
        return 0
    if holderId[address(msg.sender)] != allowance[arg1].field_0:
        if not allowance[arg1][6][stor4[address(msg.sender)]].field_0:
            return 0
    if holderId[address(arg2)]:
        allowance[arg1][6][stor4[address(arg2)]].field_0 = 1
    else:
        holdersCount++
        address(owner[stor2 + 1]) = arg2
        holderId[address(arg2)] = holdersCount + 1
        allowance[arg1][6][stor2 + 1].field_0 = 1
    require ext_code.size(eventsHistoryAddress)
    call eventsHistoryAddress.0xa9612f72 with:
         gas gas_remaining - 710 wei
        args 0, address(arg2), arg1
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
        _23 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 132] = this.address
        require ext_code.size(address(_23))
        call address(_23).0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0]:
            mem[(32 * arg1.length) + 132] = arg2
            mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
            require ext_code.size(address(_23))
            call address(_23).0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg2), ext_call.return_data[0]
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            require ext_call.success
        s = ext_call.return_data[0]
        s = _23
        idx = idx + 1
        continue 
    return 1
}

function revokeAsset(bytes32 arg1, uint256 arg2) {
    if not arg2:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xdf26ca08 with:
             gas gas_remaining - 710 wei
            args 80003
        require ext_call.success
        return 80003
    if allowance[arg1][5][stor4[address(msg.sender)]].field_0 < arg2:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xdf26ca08 with:
             gas gas_remaining - 710 wei
            args 80010
        require ext_call.success
        return 80010
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
        call proxies[arg1].0x23de6651 with:
             gas gas_remaining - 710 wei
            args address(owner[stor4[address(msg.sender)]]), address(owner[0]), arg2
        require ext_call.success
    return 1
}

function trust() {
    if holderId[address(msg.sender)]:
        if contractOwner == msg.sender:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xdf26ca08 with:
                 gas gas_remaining - 710 wei
                args 80002
            require ext_call.success
            return 80002
        if not uint8(owner[stor4[address(msg.sender)]][1][stor0]):
            uint8(owner[stor4[address(msg.sender)]][1][stor0]) = 1
            return 1
    else:
        holdersCount++
        address(owner[stor2 + 1]) = msg.sender
        holderId[address(msg.sender)] = holdersCount + 1
        if contractOwner == msg.sender:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xdf26ca08 with:
                 gas gas_remaining - 710 wei
                args 80002
            require ext_call.success
            return 80002
        if not uint8(owner[stor4[address(msg.sender)]][1][stor0]):
            uint8(owner[stor2 + 1][1][stor0]) = 1
            return 1
    ('bool', ('type', 8, ('stor', ('map', ('stor', ('name', 'stor0', 0)), ('array', 1, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4))), ('name', 'owner', 3)))))))
    require ext_code.size(eventsHistoryAddress)
    call eventsHistoryAddress.0xdf26ca08 with:
         gas gas_remaining - 710 wei
        args 80012
    require ext_call.success
    return 80012
}

function changeOwnership(bytes32 arg1, address arg2) {
    if not allowance[arg1].field_0:
        return 0
    if allowance[arg1].field_0 != holderId[address(msg.sender)]:
        return 0
    if not arg2:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xdf26ca08 with:
             gas gas_remaining - 710 wei
            args 80011
        require ext_call.success
        return 80011
    if holderId[address(arg2)]:
        if holderId[address(arg2)] == allowance[arg1].field_0:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xdf26ca08 with:
                 gas gas_remaining - 710 wei
                args 80002
            require ext_call.success
            return 80002
        allowance[arg1].field_0 = holderId[address(arg2)]
    else:
        holdersCount++
        address(owner[stor2 + 1]) = arg2
        holderId[address(arg2)] = holdersCount + 1
        if holdersCount + 1 == allowance[arg1].field_0:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xdf26ca08 with:
                 gas gas_remaining - 710 wei
                args 80002
            require ext_call.success
            return 80002
        allowance[arg1].field_0 = holdersCount + 1
    require ext_code.size(eventsHistoryAddress)
    call eventsHistoryAddress.0xa9612f72 with:
         gas gas_remaining - 710 wei
        args address(owner[stor6[arg1].field_0]), address(arg2), arg1
    require ext_call.success
    return 1
}

function reissueAsset(bytes32 arg1, uint256 arg2) {
    if not allowance[arg1].field_0:
        return 0
    if holderId[address(msg.sender)] != allowance[arg1].field_0:
        if not allowance[arg1][6][stor4[address(msg.sender)]].field_0:
            return 0
    if not arg2:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xdf26ca08 with:
             gas gas_remaining - 710 wei
            args 80003
        require ext_call.success
        return 80003
    if not allowance[arg1].field_1024:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xdf26ca08 with:
             gas gas_remaining - 710 wei
            args 80008
        require ext_call.success
        return 80008
    if allowance[arg1].field_256 + arg2 < allowance[arg1].field_256:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xdf26ca08 with:
             gas gas_remaining - 710 wei
            args 80009
        require ext_call.success
        return 80009
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
        call proxies[arg1].0x23de6651 with:
             gas gas_remaining - 710 wei
            args address(owner[0]), address(owner[stor4[address(msg.sender)]]), arg2
        require ext_call.success
    return 1
}

function issueAssetToAddress(bytes32 arg1, uint256 arg2, string arg3, string arg4, uint8 arg5, bool arg6, address arg7) {
    if contractOwner != msg.sender:
        if not stor8[address(msg.sender)]:
            return 0
    if not arg2:
        if not arg6:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xdf26ca08 with:
                 gas gas_remaining - 710 wei
                args 80007
            require ext_call.success
            return 80007
    if allowance[arg1].field_0:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xdf26ca08 with:
             gas gas_remaining - 710 wei
            args 80006
        require ext_call.success
        return 80006
    if holderId[address(arg7)]:
        if arg7 == msg.sender:
            symbols.length++
            if not symbols.length <= symbols.length + 1:
                idx = symbols.length + 1
                while symbols.length > idx:
                    symbols[idx] = 0
                    idx = idx + 1
                    continue 
            symbols[symbols.length] = arg1
            allowance[arg1].field_0 = holderId[address(arg7)]
        else:
            if holderId[address(msg.sender)]:
                symbols.length++
                if not symbols.length <= symbols.length + 1:
                    idx = symbols.length + 1
                    while symbols.length > idx:
                        symbols[idx] = 0
                        idx = idx + 1
                        continue 
                symbols[symbols.length] = arg1
                allowance[arg1].field_0 = holderId[address(msg.sender)]
            else:
                holdersCount++
                address(owner[stor2 + 1]) = msg.sender
                holderId[address(msg.sender)] = holdersCount + 1
                symbols.length++
                if not symbols.length <= symbols.length + 1:
                    idx = symbols.length + 1
                    while symbols.length > idx:
                        symbols[idx] = 0
                        idx = idx + 1
                        continue 
                symbols[symbols.length] = arg1
                allowance[arg1].field_0 = holdersCount + 1
        allowance[arg1].field_256 = arg2
        allowance[arg1][2][].field_0 = Array(len=arg3.length, data=arg3[all])
        allowance[arg1][3][].field_0 = Array(len=arg4.length, data=arg4[all])
        allowance[arg1].field_1024 = uint8(arg6)
        allowance[arg1].field_1032 = arg5
        allowance[arg1][5][stor4[address(arg7)]].field_0 = arg2
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xabafaa16 with:
             gas gas_remaining - 710 wei
            args arg1, arg2, address(owner[stor4[address(arg7)]])
    else:
        holdersCount++
        address(owner[stor2 + 1]) = arg7
        holderId[address(arg7)] = holdersCount + 1
        if arg7 == msg.sender:
            symbols.length++
            if not symbols.length <= symbols.length + 1:
                idx = symbols.length + 1
                while symbols.length > idx:
                    symbols[idx] = 0
                    idx = idx + 1
                    continue 
            symbols[symbols.length] = arg1
            allowance[arg1].field_0 = holdersCount + 1
        else:
            if holderId[address(msg.sender)]:
                symbols.length++
                if not symbols.length <= symbols.length + 1:
                    idx = symbols.length + 1
                    while symbols.length > idx:
                        symbols[idx] = 0
                        idx = idx + 1
                        continue 
                symbols[symbols.length] = arg1
                allowance[arg1].field_0 = holderId[address(msg.sender)]
            else:
                holdersCount++
                address(owner[stor2 + 1]) = msg.sender
                holderId[address(msg.sender)] = holdersCount + 1
                symbols.length++
                if not symbols.length <= symbols.length + 1:
                    idx = symbols.length + 1
                    while symbols.length > idx:
                        symbols[idx] = 0
                        idx = idx + 1
                        continue 
                symbols[symbols.length] = arg1
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

function issueAsset(bytes32 arg1, uint256 arg2, string arg3, string arg4, uint8 arg5, bool arg6) {
    if contractOwner != msg.sender:
        if not stor8[address(msg.sender)]:
            return 0
    if not arg2:
        if not arg6:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xdf26ca08 with:
                 gas gas_remaining - 710 wei
                args 80007
            require ext_call.success
            return 80007
    if allowance[arg1].field_0:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xdf26ca08 with:
             gas gas_remaining - 710 wei
            args 80006
        require ext_call.success
        return 80006
    if holderId[address(msg.sender)]:
        if msg.sender == msg.sender:
            symbols.length++
            if not symbols.length <= symbols.length + 1:
                idx = symbols.length + 1
                while symbols.length > idx:
                    symbols[idx] = 0
                    idx = idx + 1
                    continue 
            symbols[symbols.length] = arg1
            allowance[arg1].field_0 = holderId[address(msg.sender)]
        else:
            if holderId[address(msg.sender)]:
                symbols.length++
                if not symbols.length <= symbols.length + 1:
                    idx = symbols.length + 1
                    while symbols.length > idx:
                        symbols[idx] = 0
                        idx = idx + 1
                        continue 
                symbols[symbols.length] = arg1
                allowance[arg1].field_0 = holderId[address(msg.sender)]
            else:
                holdersCount++
                address(owner[stor2 + 1]) = msg.sender
                holderId[address(msg.sender)] = holdersCount + 1
                symbols.length++
                if not symbols.length <= symbols.length + 1:
                    idx = symbols.length + 1
                    while symbols.length > idx:
                        symbols[idx] = 0
                        idx = idx + 1
                        continue 
                symbols[symbols.length] = arg1
                allowance[arg1].field_0 = holdersCount + 1
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
        if msg.sender == msg.sender:
            symbols.length++
            if not symbols.length <= symbols.length + 1:
                idx = symbols.length + 1
                while symbols.length > idx:
                    symbols[idx] = 0
                    idx = idx + 1
                    continue 
            symbols[symbols.length] = arg1
            allowance[arg1].field_0 = holdersCount + 1
        else:
            if holderId[address(msg.sender)]:
                symbols.length++
                if not symbols.length <= symbols.length + 1:
                    idx = symbols.length + 1
                    while symbols.length > idx:
                        symbols[idx] = 0
                        idx = idx + 1
                        continue 
                symbols[symbols.length] = arg1
                allowance[arg1].field_0 = holderId[address(msg.sender)]
            else:
                holdersCount++
                address(owner[stor2 + 1]) = msg.sender
                holderId[address(msg.sender)] = holdersCount + 1
                symbols.length++
                if not symbols.length <= symbols.length + 1:
                    idx = symbols.length + 1
                    while symbols.length > idx:
                        symbols[idx] = 0
                        idx = idx + 1
                        continue 
                symbols[symbols.length] = arg1
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

function proxyTransferFromWithReference(address arg1, address arg2, uint256 arg3, bytes32 arg4, string arg5, address arg6) {
    if proxies[arg4] != msg.sender:
        return 0
    if holderId[address(arg2)]:
        if holderId[address(arg1)] == holderId[address(arg2)]:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xdf26ca08 with:
                 gas gas_remaining - 710 wei
                args 80002
            require ext_call.success
            return 80002
        if not arg3:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xdf26ca08 with:
                 gas gas_remaining - 710 wei
                args 80003
            require ext_call.success
            return 80003
        if allowance[arg4][5][stor4[address(arg1)]].field_0 < arg3:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xdf26ca08 with:
                 gas gas_remaining - 710 wei
                args 80004
            require ext_call.success
            return 80004
        if holderId[address(arg1)] != holderId[address(arg6)]:
            if allowance[arg4][5][stor4[address(arg1)]][1][stor4[address(arg6)]].field_0 < arg3:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xdf26ca08 with:
                     gas gas_remaining - 710 wei
                    args 80005
                require ext_call.success
                return 80005
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
            call proxies[arg4].0x23de6651 with:
                 gas gas_remaining - 710 wei
                args address(owner[stor4[address(arg1)]]), address(owner[stor4[address(arg2)]]), arg3
            require ext_call.success
    else:
        holdersCount++
        address(owner[stor2 + 1]) = arg2
        holderId[address(arg2)] = holdersCount + 1
        if holderId[address(arg1)] == holdersCount + 1:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xdf26ca08 with:
                 gas gas_remaining - 710 wei
                args 80002
            require ext_call.success
            return 80002
        if not arg3:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xdf26ca08 with:
                 gas gas_remaining - 710 wei
                args 80003
            require ext_call.success
            return 80003
        if allowance[arg4][5][stor4[address(arg1)]].field_0 < arg3:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xdf26ca08 with:
                 gas gas_remaining - 710 wei
                args 80004
            require ext_call.success
            return 80004
        if holderId[address(arg1)] != holderId[address(arg6)]:
            if allowance[arg4][5][stor4[address(arg1)]][1][stor4[address(arg6)]].field_0 < arg3:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xdf26ca08 with:
                     gas gas_remaining - 710 wei
                    args 80005
                require ext_call.success
                return 80005
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
            call proxies[arg4].0x23de6651 with:
                 gas gas_remaining - 710 wei
                args address(owner[stor4[address(arg1)]]), address(owner[stor2 + 1]), arg3
            require ext_call.success
    return 1
}

function proxyApprove(address arg1, uint256 arg2, bytes32 arg3, address arg4) {
    if proxies[arg3] != msg.sender:
        return 0
    if holderId[address(arg1)]:
        if holderId[address(arg4)]:
            if not allowance[arg3].field_0:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xdf26ca08 with:
                     gas gas_remaining - 710 wei
                    args 80014
                require ext_call.success
                return 80014
            if holderId[address(arg4)] == holderId[address(arg1)]:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xdf26ca08 with:
                     gas gas_remaining - 710 wei
                    args 80002
                require ext_call.success
                return 80002
            if allowance[arg3][5][stor4[address(arg4)]][1][stor4[address(arg1)]].field_0:
                if arg2:
                    require ext_code.size(eventsHistoryAddress)
                    call eventsHistoryAddress.0xdf26ca08 with:
                         gas gas_remaining - 710 wei
                        args 80015
                    require ext_call.success
                    return 80015
            allowance[arg3][5][stor4[address(arg4)]][1][stor4[address(arg1)]].field_0 = arg2
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xd54c8c87 with:
                 gas gas_remaining - 710 wei
                args 0, uint32(owner[stor4[address(arg4)]]), address(owner[stor4[address(arg1)]]), arg3, arg2
            require ext_call.success
            if proxies[arg3]:
                require ext_code.size(proxies[arg3])
                call proxies[arg3].emitApprove(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining - 710 wei
                    args address(owner[stor4[address(arg4)]]), address(owner[stor4[address(arg1)]]), arg2
                require ext_call.success
        else:
            holdersCount++
            address(owner[stor2 + 1]) = arg4
            holderId[address(arg4)] = holdersCount + 1
            if not allowance[arg3].field_0:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xdf26ca08 with:
                     gas gas_remaining - 710 wei
                    args 80014
                require ext_call.success
                return 80014
            if holdersCount + 1 == holderId[address(arg1)]:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xdf26ca08 with:
                     gas gas_remaining - 710 wei
                    args 80002
                require ext_call.success
                return 80002
            if allowance[arg3][5][stor2 + 1][1][stor4[address(arg1)]].field_0:
                if arg2:
                    require ext_code.size(eventsHistoryAddress)
                    call eventsHistoryAddress.0xdf26ca08 with:
                         gas gas_remaining - 710 wei
                        args 80015
                    require ext_call.success
                    return 80015
            allowance[arg3][5][stor2 + 1][1][stor4[address(arg1)]].field_0 = arg2
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xd54c8c87 with:
                 gas gas_remaining - 710 wei
                args 0, uint32(owner[stor2 + 1]), address(owner[stor4[address(arg1)]]), arg3, arg2
            require ext_call.success
            if proxies[arg3]:
                require ext_code.size(proxies[arg3])
                call proxies[arg3].emitApprove(address arg1, address arg2, uint256 arg3) with:
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
                call eventsHistoryAddress.0xdf26ca08 with:
                     gas gas_remaining - 710 wei
                    args 80014
                require ext_call.success
                return 80014
            if holderId[address(arg4)] == holdersCount + 1:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xdf26ca08 with:
                     gas gas_remaining - 710 wei
                    args 80002
                require ext_call.success
                return 80002
            if allowance[arg3][5][stor4[address(arg4)]][1][stor2 + 1].field_0:
                if arg2:
                    require ext_code.size(eventsHistoryAddress)
                    call eventsHistoryAddress.0xdf26ca08 with:
                         gas gas_remaining - 710 wei
                        args 80015
                    require ext_call.success
                    return 80015
            allowance[arg3][5][stor4[address(arg4)]][1][stor2 + 1].field_0 = arg2
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xd54c8c87 with:
                 gas gas_remaining - 710 wei
                args 0, uint32(owner[stor4[address(arg4)]]), address(owner[stor2 + 1]), arg3, arg2
            require ext_call.success
            if proxies[arg3]:
                require ext_code.size(proxies[arg3])
                call proxies[arg3].emitApprove(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining - 710 wei
                    args address(owner[stor4[address(arg4)]]), address(owner[stor2 + 1]), arg2
                require ext_call.success
        else:
            holdersCount++
            address(owner[stor2 + 1]) = arg4
            holderId[address(arg4)] = holdersCount + 1
            if not allowance[arg3].field_0:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xdf26ca08 with:
                     gas gas_remaining - 710 wei
                    args 80014
                require ext_call.success
                return 80014
            if holdersCount + 1 == holdersCount + 1:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xdf26ca08 with:
                     gas gas_remaining - 710 wei
                    args 80002
                require ext_call.success
                return 80002
            if allowance[arg3][5][stor2 + 1][1][stor2 + 1].field_0:
                if arg2:
                    require ext_code.size(eventsHistoryAddress)
                    call eventsHistoryAddress.0xdf26ca08 with:
                         gas gas_remaining - 710 wei
                        args 80015
                    require ext_call.success
                    return 80015
            allowance[arg3][5][stor2 + 1][1][stor2 + 1].field_0 = arg2
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xd54c8c87 with:
                 gas gas_remaining - 710 wei
                args 0, uint32(owner[stor2 + 1]), address(owner[stor2 + 1]), arg3, arg2
            require ext_call.success
            if proxies[arg3]:
                require ext_code.size(proxies[arg3])
                call proxies[arg3].emitApprove(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining - 710 wei
                    args address(owner[stor2 + 1]), address(owner[stor2 + 1]), arg2
                require ext_call.success
    return 1
}



}
