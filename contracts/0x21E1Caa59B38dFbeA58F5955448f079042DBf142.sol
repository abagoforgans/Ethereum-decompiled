contract main {


// =======================  Init code  ======================


address stor0;
address stor6;
uint256 stor7;

function _fallback() {
    stor0 = msg.sender
    stor6 = code.data[7448 len 20]
    stor7 = 100000
    return code.data[111 len 7325]
}



// =====================  Runtime code  =====================


#
#  - trade(uint256[8] arg1, address[4] arg2, uint8[2] arg3, bytes32[4] arg4)
#
address owner;
mapping of uint256 invalidOrder;
mapping of uint256 tokens;
mapping of uint8 stor3;
mapping of uint256 lastActiveTransaction;
mapping of uint256 orderFills;
address feeAccount;
uint256 inactivityReleasePeriod;
mapping of uint8 stor8;
mapping of uint8 stor9;

function lastActiveTransaction(address arg1) {
    return lastActiveTransaction[arg1]
}

function withdrawn(bytes32 arg1) {
    return bool(stor9[arg1])
}

function admins(address arg1) {
    return bool(stor3[arg1])
}

function tokens(address arg1, address arg2) {
    return tokens[arg1][arg2]
}

function feeAccount() {
    return feeAccount
}

function invalidOrder(address arg1) {
    return invalidOrder[arg1]
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function traded(bytes32 arg1) {
    return bool(stor8[arg1])
}

function inactivityReleasePeriod() {
    return inactivityReleasePeriod
}

function orderFills(bytes32 arg1) {
    return orderFills[arg1]
}

function balanceOf(address arg1, address arg2) {
    return tokens[address(arg1)][address(arg2)]
}

function _fallback() {
    revert
}

function assert(bool arg1) {
    require arg1
}

function safeSub(uint256 arg1, uint256 arg2) {
    require arg2 <= arg1
    return (arg1 - arg2)
}

function setOwner(address arg1) {
    require owner == msg.sender
    emit SetOwner(owner, arg1);
    owner = arg1
}

function setAdmin(address arg1, bool arg2) {
    require owner == msg.sender
    stor3[address(arg1)] = uint8(arg2)
}

function safeAdd(uint256 arg1, uint256 arg2) {
    require arg2 + arg1 >= arg1
    require arg2 + arg1 >= arg2
    return (arg2 + arg1)
}

function safeMul(uint256 arg1, uint256 arg2) {
    if arg1:
        require arg1
        require arg2 * arg1 / arg1 == arg2
    return (arg2 * arg1)
}

function setInactivityReleasePeriod(uint256 arg1) {
    if owner != msg.sender:
        require stor3[address(msg.sender)]
    require arg1 <= 10^6
    inactivityReleasePeriod = arg1
    return 1
}

function invalidateOrdersBefore(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require stor3[address(msg.sender)]
    require arg2 >= invalidOrder[address(arg1)]
    invalidOrder[address(arg1)] = arg2
}

function deposit() payable {
    require msg.value + tokens[0][address(msg.sender)] >= tokens[0][address(msg.sender)]
    require msg.value + tokens[0][address(msg.sender)] >= msg.value
    tokens[0][address(msg.sender)] += msg.value
    lastActiveTransaction[address(msg.sender)] = block.number
    emit Deposit(0, msg.sender, msg.value, tokens[0][address(msg.sender)]);
}

function depositToken(address arg1, uint256 arg2) {
    require arg2 + tokens[address(arg1)][address(msg.sender)] >= tokens[address(arg1)][address(msg.sender)]
    require arg2 + tokens[address(arg1)][address(msg.sender)] >= arg2
    tokens[address(arg1)][address(msg.sender)] += arg2
    lastActiveTransaction[address(msg.sender)] = block.number
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg2
    require ext_call.success
    require ext_call.return_data[0]
    emit Deposit(address(arg1), msg.sender, arg2, tokens[address(arg1)][address(msg.sender)]);
}

function withdraw(address arg1, uint256 arg2) {
    require lastActiveTransaction[address(msg.sender)] <= block.number
    require block.number - lastActiveTransaction[address(msg.sender)] >= inactivityReleasePeriod
    require tokens[address(arg1)][address(msg.sender)] >= arg2
    require arg2 <= tokens[address(arg1)][address(msg.sender)]
    tokens[address(arg1)][address(msg.sender)] -= arg2
    if not arg1:
        call msg.sender with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2
        require ext_call.success
        require ext_call.return_data[0]
    emit Withdraw(address(arg1), msg.sender, arg2, tokens[address(arg1)][address(msg.sender)]);
    return 0
}

function adminWithdraw(address arg1, uint256 arg2, address arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7, uint256 arg8) {
    if owner != msg.sender:
        require stor3[address(msg.sender)]
    require not stor9[this.address][arg1][arg2][arg3][arg4]
    stor9[this.address][arg1][arg2][arg3][arg4] = 1
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, arg1, arg2, arg3, arg4)), arg5 << 248, arg6, arg7) 
    require erecover.result
    require address(signer) == arg3
    require tokens[address(arg1)][address(arg3)] >= arg2
    require arg2 <= tokens[address(arg1)][address(arg3)]
    tokens[address(arg1)][address(arg3)] -= arg2
    if arg8 > 5 * 10^16:
        require 5 * 10^16 * arg2 / 5 * 10^16 == arg2
        require (5 * 10^16 * arg2 / 10^18) + tokens[address(arg1)][stor6] >= tokens[address(arg1)][stor6]
        require (5 * 10^16 * arg2 / 10^18) + tokens[address(arg1)][stor6] >= 5 * 10^16 * arg2 / 10^18
        tokens[address(arg1)][stor6] += 5 * 10^16 * arg2 / 10^18
        require 95 * 10^16 * arg2 / 95 * 10^16 == arg2
        if not arg1:
            call arg3 with:
               value 95 * 10^16 * arg2 / 10^18 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg3), 95 * 10^16 * arg2 / 10^18
            require ext_call.success
            require ext_call.return_data[0]
        lastActiveTransaction[address(arg3)] = block.number
        emit Withdraw(address(arg1), address(arg3), 95 * 10^16 * arg2 / 10^18, tokens[address(arg1)][address(arg3)]);
    else:
        if arg8:
            require arg8
            require arg2 * arg8 / arg8 == arg2
        require (arg2 * arg8 / 10^18) + tokens[address(arg1)][stor6] >= tokens[address(arg1)][stor6]
        require (arg2 * arg8 / 10^18) + tokens[address(arg1)][stor6] >= arg2 * arg8 / 10^18
        tokens[address(arg1)][stor6] += arg2 * arg8 / 10^18
        if -arg8 + 10^18:
            require -arg8 + 10^18
            require (10^18 * arg2) - (arg8 * arg2) / -arg8 + 10^18 == arg2
        if not arg1:
            call arg3 with:
               value (10^18 * arg2) - (arg8 * arg2) / 10^18 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg3), (10^18 * arg2) - (arg8 * arg2) / 10^18
            require ext_call.success
            require ext_call.return_data[0]
        lastActiveTransaction[address(arg3)] = block.number
        emit Withdraw(address(arg1), address(arg3), (10^18 * arg2) - (arg8 * arg2) / 10^18, tokens[address(arg1)][address(arg3)]);
    return 0
}



}
