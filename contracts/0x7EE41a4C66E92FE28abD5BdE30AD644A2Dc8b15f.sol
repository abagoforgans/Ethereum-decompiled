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
    stor1 = code.data[3735 len 20]
    stor2 = code.data[3767 len 20]
    stor5 = code.data[3787 len 32]
    stor6 = code.data[3819 len 32]
    stor4 = code.data[3863 len 20]
    stor7 = code.data[3883 len 32]
    return code.data[210 len 3513]
}



// =====================  Runtime code  =====================


address owner;
address escapeCallerAddress;
address escapeDestinationAddress;
array of struct authorizedPayments;
address securityGuardAddress;
uint256 absoluteMinTimeLock;
uint256 timeLock;
uint256 maxSecurityGuardDelay;
mapping of uint8 stor8;

function maxSecurityGuardDelay() {
    return maxSecurityGuardDelay
}

function numberOfAuthorizedPayments() {
    return authorizedPayments.length
}

function owner() {
    return owner
}

function authorizedPayments(uint256 arg1) {
    require arg1 < authorizedPayments.length
    mem[384] = uint256(authorizedPayments[arg1].field_0)
    idx = 384
    s = 0
    while authorizedPayments[arg1].length + 384 > idx + 32:
        mem[idx + 32] = uint256(authorizedPayments[(6 * arg1) + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=authorizedPayments[arg1].length, data=mem[384 len authorizedPayments[arg1].length + (floor32(authorizedPayments[arg1].length - 1) + -authorizedPayments[arg1].length + 32 % 32)]), 
           address(authorizedPayments[arg1].field_256),
           uint256(authorizedPayments[arg1].field_512),
           bool(uint8(authorizedPayments[arg1].field_768)),
           bool(uint8(authorizedPayments[arg1].field_776)),
           address(authorizedPayments[arg1].field_768),
           uint256(authorizedPayments[arg1].field_1024),
           uint256(authorizedPayments[arg1].field_1280)
}

function securityGuard() {
    return securityGuardAddress
}

function escapeDestination() {
    return escapeDestinationAddress
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

function escapeCaller() {
    return escapeCallerAddress
}

function _fallback() payable {
    emit EtherReceived(msg.value, msg.sender);
}

function receiveEther() payable {
    emit EtherReceived(msg.value, msg.sender);
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function setSecurityGuard(address arg1) {
    require owner == msg.sender
    securityGuardAddress = arg1
}

function setMaxSecurityGuardDelay(uint256 arg1) {
    require owner == msg.sender
    maxSecurityGuardDelay = arg1
}

function setTimelock(uint256 arg1) {
    require owner == msg.sender
    require arg1 >= absoluteMinTimeLock
    timeLock = arg1
}

function changeEscapeCaller(address arg1) {
    if escapeCallerAddress != msg.sender:
        require owner == msg.sender
    escapeCallerAddress = arg1
}

function authorizeSpender(address arg1, bool arg2) {
    require owner == msg.sender
    stor8[address(arg1)] = uint8(arg2)
    emit SpenderAuthorization(arg2, arg1);
}

function escapeHatch() {
    if escapeCallerAddress != msg.sender:
        require owner == msg.sender
    call escapeDestinationAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit EscapeCalled(eth.balance(this.address));
}

function cancelPayment(uint256 arg1) {
    require owner == msg.sender
    require arg1 < authorizedPayments.length
    require not uint8(authorizedPayments[arg1].field_768)
    require not uint8(authorizedPayments[arg1].field_776)
    uint8(authorizedPayments[arg1].field_768) = 1
    emit PaymentCanceled(arg1);
}

function delayPayment(uint256 arg1, uint256 arg2) {
    require securityGuardAddress == msg.sender
    require arg1 < authorizedPayments.length
    require uint256(authorizedPayments[arg1].field_1280) + arg2 <= maxSecurityGuardDelay
    require not uint8(authorizedPayments[arg1].field_776)
    require not uint8(authorizedPayments[arg1].field_768)
    uint256(authorizedPayments[arg1].field_1280) += arg2
    uint256(authorizedPayments[arg1].field_512) += arg2
}

function collectAuthorizedPayment(uint256 arg1) {
    require arg1 < authorizedPayments.length
    require address(authorizedPayments[arg1].field_784) == msg.sender
    require stor8[address(stor3[arg1].field_256)]
    require block.timestamp >= uint256(authorizedPayments[arg1].field_512)
    require not uint8(authorizedPayments[arg1].field_768)
    require not uint8(authorizedPayments[arg1].field_776)
    require eth.balance(this.address) >= uint256(authorizedPayments[arg1].field_1024)
    uint8(authorizedPayments[arg1].field_776) = 1
    call address(authorizedPayments[arg1].field_784) or 0 or 0 with:
       value uint256(authorizedPayments[arg1].field_1024) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit PaymentExecuted(uint256(authorizedPayments[arg1].field_1024), arg1, address(authorizedPayments[arg1].field_784));
}

function authorizePayment(string arg1, address arg2, uint256 arg3, uint256 arg4) {
    mem[128 len arg1.length] = arg1[all]
    require stor8[address(msg.sender)]
    authorizedPayments.length++
    if not authorizedPayments.length <= authorizedPayments.length + 1:
        mem[0] = 3
        idx = (6 * authorizedPayments.length) + 6
        while sha3(3) + (6 * authorizedPayments.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            address(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            Mask(176, 0, stor[idx + sha3(mem[0]) + 3]) = 0
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            uint256(stor[idx + sha3(mem[0]) + 5]) = 0
            idx = idx + 6
            continue 
    require authorizedPayments.length < authorizedPayments.length
    address(authorizedPayments[authorizedPayments.length].field_256) = msg.sender
    if arg4 >= timeLock:
        uint256(authorizedPayments[authorizedPayments.length].field_512) = block.timestamp + arg4
    else:
        uint256(authorizedPayments[authorizedPayments.length].field_512) = block.timestamp + timeLock
    address(authorizedPayments[authorizedPayments.length].field_784) = arg2
    uint256(authorizedPayments[authorizedPayments.length].field_1024) = arg3
    uint256(authorizedPayments[authorizedPayments.length].field_0) = (2 * arg1.length) + 1
    s = 0
    idx = 128
    while arg1.length + 128 > idx:
        uint256(authorizedPayments[(6 * authorizedPayments.length) + s].field_0) = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if authorizedPayments[authorizedPayments.length].length + 31 / 32 > Mask(251, 0, arg1.length + 31) >> 5:
        uint256(stor[('array', ('mul', 6, ('stor', ('length', ('name', 'authorizedPayments', 3)))), ('name', 'authorizedPayments', 3)) + (Mask(251, 0, arg1.length + 31) >> 5)].field_0) = 0
        idx = (Mask(251, 0, arg1.length + 31) >> 5) + 1
        while authorizedPayments[authorizedPayments.length].length + 31 / 32 > idx:
            uint256(authorizedPayments[(6 * authorizedPayments.length) + idx].field_0) = 0
            idx = idx + 1
            continue 
    emit PaymentAuthorized(uint256(authorizedPayments[authorizedPayments.length].field_1024), authorizedPayments.length, address(authorizedPayments[authorizedPayments.length].field_784));
    return authorizedPayments.length
}



}
