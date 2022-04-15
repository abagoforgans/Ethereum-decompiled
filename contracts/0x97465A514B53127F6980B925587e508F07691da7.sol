contract main {


// =======================  Init code  ======================


address stor0;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() {
    stor0 = msg.sender
    stor4 = code.data[3881 len 32]
    stor5 = code.data[3913 len 32]
    stor3 = msg.sender
    stor6 = code.data[3945 len 32]
    return code.data[143 len 3738]
}



// =====================  Runtime code  =====================


address contractOwner;
address pendingContractOwner;
array of struct authorizedPayments;
address securityGuardAddress;
uint256 absoluteMinTimeLock;
uint256 timeLock;
uint256 maxSecurityGuardDelay;
address eventsHistoryAddress;
mapping of uint8 stor8;

function maxSecurityGuardDelay() {
    return maxSecurityGuardDelay
}

function pendingContractOwner() {
    return pendingContractOwner
}

function numberOfAuthorizedPayments() {
    return authorizedPayments.length
}

function authorizedPayments(uint256 arg1) {
    require arg1 < authorizedPayments.length
    return authorizedPayments[arg1].field_0, 
           authorizedPayments[arg1].field_256,
           bool(authorizedPayments[arg1].field_512),
           bool(authorizedPayments[arg1].field_520),
           authorizedPayments[arg1].field_528,
           authorizedPayments[arg1].field_768,
           authorizedPayments[arg1].field_1024
}

function securityGuard() {
    return securityGuardAddress
}

function contractOwner() {
    return contractOwner
}

function timeLock() {
    return timeLock
}

function allowedSpenders(address arg1) {
    return bool(stor8[arg1])
}

function absoluteMinTimeLock() {
    return absoluteMinTimeLock
}

function eventsHistory() {
    return eventsHistoryAddress
}

function destroy() {
    if contractOwner != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
    emit EtherReceived(msg.value, msg.sender);
}

function receiveEther() payable {
    emit EtherReceived(msg.value, msg.sender);
}

function setSecurityGuard(address arg1) {
    if contractOwner == msg.sender:
        securityGuardAddress = arg1
}

function setMaxSecurityGuardDelay(uint256 arg1) {
    if contractOwner == msg.sender:
        maxSecurityGuardDelay = arg1
}

function setTimelock(uint256 arg1) {
    if contractOwner == msg.sender:
        require arg1 >= absoluteMinTimeLock
        timeLock = arg1
}

function claimContractOwnership() {
    if pendingContractOwner != msg.sender:
        return 0
    contractOwner = pendingContractOwner
    pendingContractOwner = 0
    return 1
}

function authorizeSpender(address arg1, bool arg2) {
    if contractOwner == msg.sender:
        stor8[address(arg1)] = uint8(arg2)
        emit SpenderAuthorization(arg2, arg1);
}

function changeContractOwnership(address arg1) {
    if contractOwner != msg.sender:
        return 0
    if not arg1:
        return 0
    pendingContractOwner = arg1
    return 1
}

function setupEventsHistory(address arg1) {
    if contractOwner != msg.sender:
        return 8
    if eventsHistoryAddress:
        if eventsHistoryAddress != arg1:
            return 52017
    eventsHistoryAddress = arg1
    return 1
}

function cancelPayment(uint256 arg1) {
    if contractOwner == msg.sender:
        require arg1 < authorizedPayments.length
        require not authorizedPayments[arg1].field_512
        require not authorizedPayments[arg1].field_520
        authorizedPayments[arg1].field_512 = 1
        emit PaymentCanceled(arg1);
}

function delayPayment(uint256 arg1, uint256 arg2) {
    require securityGuardAddress == msg.sender
    require arg1 < authorizedPayments.length
    require arg2 <= 10^18
    require arg1 < authorizedPayments.length
    require authorizedPayments[arg1].field_1024 + arg2 <= maxSecurityGuardDelay
    require not authorizedPayments[arg1].field_520
    require not authorizedPayments[arg1].field_512
    authorizedPayments[arg1].field_1024 += arg2
    authorizedPayments[arg1].field_256 += arg2
}

function collectAuthorizedPayment(uint256 arg1) {
    if arg1 < authorizedPayments.length:
        if authorizedPayments[arg1].field_528 == msg.sender:
            if block.timestamp >= authorizedPayments[arg1].field_256:
                if not authorizedPayments[arg1].field_512:
                    if not authorizedPayments[arg1].field_520:
                        if eth.balance(this.address) >= authorizedPayments[arg1].field_768:
                            authorizedPayments[arg1].field_520 = 1
                            call authorizedPayments[arg1].field_528 or 0 or 0 with:
                               value authorizedPayments[arg1].field_768 wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
                                emit PaymentExecuted(authorizedPayments[arg1].field_768, arg1, authorizedPayments[arg1].field_528);
}

function authorizePayment(address arg1, uint256 arg2, uint256 arg3) {
    require stor8[address(msg.sender)]
    authorizedPayments.length++
    if not authorizedPayments.length <= authorizedPayments.length + 1:
        idx = (5 * authorizedPayments.length) + 5
        while 5 * authorizedPayments.length > idx:
            authorizedPayments[idx].field_0 = 0
            authorizedPayments[idx].field_256 = 0
            authorizedPayments[idx].field_512 = 0
            authorizedPayments[idx].field_768 = 0
            authorizedPayments[idx].field_1024 = 0
            idx = idx + 5
            continue 
    require authorizedPayments.length < authorizedPayments.length
    authorizedPayments[authorizedPayments.length].field_0 = msg.sender
    require arg3 <= 10^18
    if arg3 >= timeLock:
        authorizedPayments[authorizedPayments.length].field_256 = block.timestamp + arg3
    else:
        authorizedPayments[authorizedPayments.length].field_256 = block.timestamp + timeLock
    authorizedPayments[authorizedPayments.length].field_528 = arg1
    authorizedPayments[authorizedPayments.length].field_768 = arg2
    emit PaymentAuthorized(arg2, authorizedPayments.length, arg1);
    return authorizedPayments.length
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
