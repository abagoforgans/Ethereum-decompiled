contract main {


// =======================  Init code  ======================


address stor0;
address stor3;

function _fallback() {
    stor0 = msg.sender
    stor3 = code.data[2516 len 20]
    return code.data[112 len 2392]
}



// =====================  Runtime code  =====================


address contractOwner;
address pendingContractOwner;
address eventsHistoryAddress;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 lockedFundsLastSpending;

function pendingContractOwner() {
    return pendingContractOwner
}

function contractOwner() {
    return contractOwner
}

function getLockedFundsLastSpending() {
    return lockedFundsLastSpending
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

function getLockedFunds() {
    require ext_code.size(stor3)
    call stor3.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function setupEventsHistory(address arg1) {
    if contractOwner != msg.sender:
        return 8
    if eventsHistoryAddress:
        if eventsHistoryAddress != arg1:
            return 51017
    eventsHistoryAddress = arg1
    return 1
}

function payIn() {
    if contractOwner != msg.sender:
        return 0
    require ext_code.size(stor3)
    call stor3.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if stor4:
        if ext_call.return_data[0] == stor4:
            return 51017
    else:
        if not ext_call.return_data[0]:
            return 51012
        stor4 = ext_call.return_data[0]
        stor5 = block.timestamp
        lockedFundsLastSpending = 0
    return 1
}

function getVesting() {
    s = 0
    idx = 24
    while idx >= 6:
        if block.timestamp <= (720 * 24 * 3600 * idx) + stor5:
            s = 720 * 24 * 3600 * idx
            idx = idx - 3
            continue 
        if idx == lockedFundsLastSpending:
            return 0
        lockedFundsLastSpending = idx
        if lockedFundsLastSpending:
            return ((125 * stor4 * idx / 3 / 1000) - (125 * stor4 * lockedFundsLastSpending / 3 / 1000))
        return (125 * stor4 * idx / 3 / 1000)
    return 0
}

function payOut(address arg1) {
    if contractOwner != msg.sender:
        return 0
    s = 0
    idx = 24
    while idx >= 6:
        if block.timestamp <= (720 * 24 * 3600 * idx) + stor5:
            s = 720 * 24 * 3600 * idx
            idx = idx - 3
            continue 
        if idx == lockedFundsLastSpending:
            return 51017
        lockedFundsLastSpending = idx
        if lockedFundsLastSpending:
            if not (125 * stor4 * idx / 3 / 1000) - (125 * stor4 * lockedFundsLastSpending / 3 / 1000):
                return 51017
            require ext_code.size(stor3)
            call stor3.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg1), (125 * stor4 * idx / 3 / 1000) - (125 * stor4 * lockedFundsLastSpending / 3 / 1000)
        else:
            if not 125 * stor4 * idx / 3 / 1000:
                return 51017
            require ext_code.size(stor3)
            call stor3.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg1), 125 * stor4 * idx / 3 / 1000
        require ext_call.success
        if ext_call.return_data[0]:
            return 1
        return 51010
    return 51017
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
        call address(_21).0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0]:
            mem[(32 * arg1.length) + 132] = arg2
            mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
            require ext_code.size(address(_21))
            call address(_21).0xa9059cbb with:
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



}
