contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[4000 len 20]
    stor2 = code.data[4032 len 20]
    stor5 = code.data[4052 len 32]
    stor6 = code.data[4084 len 32]
    stor4 = code.data[4128 len 20]
    stor7 = code.data[4148 len 32]
    return code.data[213 len 3775]
}



// =====================  Runtime code  =====================


address owner;
address escapeHatchCallerAddress;
address escapeHatchDestinationAddress;
array of struct authorizedPayments;
address securityGuardAddress;
uint256 absoluteMinTimeLock;
uint256 timeLock;
uint256 maxSecurityGuardDelay;
mapping of uint8 stor8;

function maxSecurityGuardDelay() {
    return maxSecurityGuardDelay
}

function escapeHatchCaller() {
    return escapeHatchCallerAddress
}

function numberOfAuthorizedPayments() {
    return authorizedPayments.length
}

function owner() {
    return owner
}

function authorizedPayments(uint256 arg1) {
    require arg1 < authorizedPayments.length
    mem[416] = uint256(authorizedPayments[arg1].field_0)
    idx = 416
    s = 0
    while authorizedPayments[arg1].length + 416 > idx + 32:
        mem[idx + 32] = uint256(authorizedPayments[(7 * arg1) + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=authorizedPayments[arg1].length, data=mem[416 len authorizedPayments[arg1].length + (floor32(authorizedPayments[arg1].length - 1) + -authorizedPayments[arg1].length + 32 % 32)]), 
           uint256(authorizedPayments[arg1].field_256),
           address(authorizedPayments[arg1].field_512),
           uint256(authorizedPayments[arg1].field_768),
           bool(uint8(authorizedPayments[arg1].field_1024)),
           bool(uint8(authorizedPayments[arg1].field_1032)),
           address(authorizedPayments[arg1].field_1024),
           uint256(authorizedPayments[arg1].field_1280),
           uint256(authorizedPayments[arg1].field_1536)
}

function securityGuard() {
    return securityGuardAddress
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

function escapeHatchDestination() {
    return escapeHatchDestinationAddress
}

function _fallback() payable {
    emit EtherReceived(msg.value, msg.sender);
}

function receiveEther() payable {
    emit EtherReceived(msg.value, msg.sender);
}

function setSecurityGuard(address arg1) {
    require owner == msg.sender
    securityGuardAddress = arg1
}

function setMaxSecurityGuardDelay(uint256 arg1) {
    require owner == msg.sender
    maxSecurityGuardDelay = arg1
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
    emit NewOwner(msg.sender, arg1);
}

function setTimelock(uint256 arg1) {
    require owner == msg.sender
    require arg1 >= absoluteMinTimeLock
    timeLock = arg1
}

function changeEscapeCaller(address arg1) {
    if escapeHatchCallerAddress != msg.sender:
        require owner == msg.sender
    escapeHatchCallerAddress = arg1
}

function authorizeSpender(address arg1, bool arg2) {
    require owner == msg.sender
    stor8[address(arg1)] = uint8(arg2)
    emit SpenderAuthorization(arg2, arg1);
}

function cancelPayment(uint256 arg1) {
    require owner == msg.sender
    require arg1 < authorizedPayments.length
    require not uint8(authorizedPayments[arg1].field_1024)
    require not uint8(authorizedPayments[arg1].field_1032)
    uint8(authorizedPayments[arg1].field_1024) = 1
    emit PaymentCanceled(arg1);
}

function escapeHatch() {
    if escapeHatchCallerAddress != msg.sender:
        require owner == msg.sender
    call escapeHatchDestinationAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit EscapeHatchCalled(eth.balance(this.address));
}

function delayPayment(uint256 arg1, uint256 arg2) {
    require securityGuardAddress == msg.sender
    require arg1 < authorizedPayments.length
    require arg2 <= 10^18
    require arg1 < authorizedPayments.length
    require uint256(authorizedPayments[arg1].field_1536) + arg2 <= maxSecurityGuardDelay
    require not uint8(authorizedPayments[arg1].field_1032)
    require not uint8(authorizedPayments[arg1].field_1024)
    uint256(authorizedPayments[arg1].field_1536) += arg2
    uint256(authorizedPayments[arg1].field_768) += arg2
}

function collectAuthorizedPayment(uint256 arg1) {
    require arg1 < authorizedPayments.length
    require address(authorizedPayments[arg1].field_1040) == msg.sender
    require stor8[address(stor3[arg1].field_512)]
    require block.timestamp >= uint256(authorizedPayments[arg1].field_768)
    require not uint8(authorizedPayments[arg1].field_1024)
    require not uint8(authorizedPayments[arg1].field_1032)
    require eth.balance(this.address) >= uint256(authorizedPayments[arg1].field_1280)
    uint8(authorizedPayments[arg1].field_1032) = 1
    call address(authorizedPayments[arg1].field_1040) or 0 or 0 with:
       value uint256(authorizedPayments[arg1].field_1280) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit PaymentExecuted(uint256(authorizedPayments[arg1].field_1280), arg1, address(authorizedPayments[arg1].field_1040));
}

function authorizePayment(string arg1, bytes32 arg2, address arg3, uint256 arg4, uint256 arg5) {
    require stor8[address(msg.sender)]
    authorizedPayments.length++
    if not authorizedPayments.length <= authorizedPayments.length + 1:
        mem[0] = 3
        idx = (7 * authorizedPayments.length) + 7
        while sha3(3) + (7 * authorizedPayments.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            address(stor[idx + sha3(mem[0]) + 2]) = 0
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            Mask(176, 0, stor[idx + sha3(mem[0]) + 4]) = 0
            uint256(stor[idx + sha3(mem[0]) + 5]) = 0
            uint256(stor[idx + sha3(mem[0]) + 6]) = 0
            idx = idx + 7
            continue 
    require authorizedPayments.length < authorizedPayments.length
    address(authorizedPayments[authorizedPayments.length].field_512) = msg.sender
    require arg5 <= 10^18
    if arg5 >= timeLock:
        uint256(authorizedPayments[authorizedPayments.length].field_768) = block.timestamp + arg5
    else:
        uint256(authorizedPayments[authorizedPayments.length].field_768) = block.timestamp + timeLock
    address(authorizedPayments[authorizedPayments.length].field_1040) = arg3
    uint256(authorizedPayments[authorizedPayments.length].field_1280) = arg4
    uint256(authorizedPayments[authorizedPayments.length][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint256(authorizedPayments[authorizedPayments.length].field_256) = arg2
    emit PaymentAuthorized(uint256(authorizedPayments[authorizedPayments.length].field_1280), authorizedPayments.length, address(authorizedPayments[authorizedPayments.length].field_1040));
    return authorizedPayments.length
}



}
