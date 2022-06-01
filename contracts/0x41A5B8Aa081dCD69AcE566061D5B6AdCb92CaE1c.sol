contract main {




// =====================  Runtime code  =====================


#
#  - trade(uint256[11] arg1, address[4] arg2, uint8[2] arg3, bytes32[4] arg4)
#
address owner;
address feeAccount;
uint256 makerFee;
uint256 takerFee;
uint256 inactivityReleasePeriod;
mapping of uint8 stor5;
mapping of uint256 invalidOrder;
mapping of uint256 tokens;
mapping of uint8 stor8;
mapping of uint256 lastActiveTransaction;
mapping of uint256 orderFills;
mapping of uint8 stor11;

function lastActiveTransaction(address arg1) {
    return lastActiveTransaction[arg1]
}

function withdrawn(bytes32 arg1) {
    return bool(stor11[arg1])
}

function admins(address arg1) {
    return bool(stor8[arg1])
}

function takerFee() {
    return takerFee
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

function owner() {
    return owner
}

function approvedCurrencyTokens(address arg1) {
    return bool(stor5[arg1])
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

function makerFee() {
    return makerFee
}

function _fallback() payable {
    revert
}

function setAdmin(address arg1, bool arg2) {
    require msg.sender == owner
    stor8[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approveCurrencyTokenAddress(address arg1, bool arg2) {
    if owner != msg.sender:
        require stor8[msg.sender]
    stor5[address(arg1)] = uint8(arg2)
}

function setInactivityReleasePeriod(uint256 arg1) {
    if owner != msg.sender:
        require stor8[msg.sender]
    require arg1 <= 50000
    inactivityReleasePeriod = arg1
    return 1
}

function invalidateOrdersBefore(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require stor8[msg.sender]
    require arg2 >= invalidOrder[address(arg1)]
    invalidOrder[address(arg1)] = arg2
}

function deposit() payable {
    require msg.value + tokens[0][msg.sender] >= tokens[0][msg.sender]
    tokens[0][msg.sender] += msg.value
    lastActiveTransaction[msg.sender] = block.number
    emit Deposit(0, msg.sender, msg.value, tokens[0][msg.sender]);
}

function setMakerFee(uint256 arg1) {
    if owner != msg.sender:
        require stor8[msg.sender]
    if arg1 <= 10^16:
        require arg1 != makerFee
        makerFee = arg1
        emit MakerFeeUpdated(makerFee, arg1);
    else:
        require makerFee != 10^16
        makerFee = 10^16
        emit MakerFeeUpdated(makerFee, 10^16);
}

function setTakerFee(uint256 arg1) {
    if owner != msg.sender:
        require stor8[msg.sender]
    if arg1 <= 2 * 10^16:
        require arg1 != takerFee
        takerFee = arg1
        emit TakerFeeUpdated(takerFee, arg1);
    else:
        require takerFee != 2 * 10^16
        takerFee = 2 * 10^16
        emit TakerFeeUpdated(takerFee, 2 * 10^16);
}

function receiveTokenDeposit(address arg1, address arg2, uint256 arg3) {
    require arg3 + tokens[address(arg1)][address(arg2)] >= tokens[address(arg1)][address(arg2)]
    tokens[address(arg1)][address(arg2)] += arg3
    lastActiveTransaction[address(arg2)] = block.number
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(arg2), this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Deposit(address(arg1), address(arg2), arg3, tokens[address(arg1)][address(arg2)]);
}

function depositToken(address arg1, uint256 arg2) {
    require arg2 + tokens[address(arg1)][address(msg.sender)] >= tokens[address(arg1)][address(msg.sender)]
    tokens[address(arg1)][address(msg.sender)] += arg2
    lastActiveTransaction[address(msg.sender)] = block.number
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Deposit(address(arg1), msg.sender, arg2, tokens[address(arg1)][address(msg.sender)]);
}

function withdraw(address arg1, uint256 arg2) {
    require lastActiveTransaction[msg.sender] <= block.number
    require block.number - lastActiveTransaction[msg.sender] >= inactivityReleasePeriod
    require arg2 <= tokens[address(arg1)][msg.sender]
    require arg2 <= tokens[address(arg1)][msg.sender]
    tokens[address(arg1)][msg.sender] -= arg2
    if not arg1:
        call msg.sender with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    emit Withdraw(address(arg1), msg.sender, arg2, tokens[address(arg1)][msg.sender]);
    return 1
}

function adminWithdraw(address arg1, uint256 arg2, address arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7, uint256 arg8) {
    if owner != msg.sender:
        require stor8[msg.sender]
    if arg8 <= 3 * 10^16:
        if arg1:
            require arg8 <= tokens[0][arg3]
            require arg2 <= tokens[address(arg1)][address(arg3)]
        else:
            require arg2 + arg8 >= arg8
            require tokens[0][arg3] >= arg2 + arg8
        require not stor11[this.address][arg1][arg2][arg3][arg4]
        stor11[this.address][arg1][arg2][arg3][arg4] = 1
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, arg1, arg2, arg3, arg4)), arg5 << 248, arg6, arg7) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        require address(signer) == arg3
        if not arg1:
            require arg2 + arg8 >= arg8
            require arg2 + arg8 <= tokens[0][arg3]
            tokens[0][arg3] = tokens[0][arg3] - arg2 - arg8
            require arg8 + tokens[0][stor1] >= tokens[0][stor1]
            tokens[0][stor1] += arg8
            call arg3 with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require arg2 <= tokens[address(arg1)][address(arg3)]
            tokens[address(arg1)][address(arg3)] -= arg2
            require arg8 <= tokens[0][arg3]
            tokens[0][arg3] -= arg8
            require arg8 + tokens[0][stor1] >= tokens[0][stor1]
            tokens[0][stor1] += arg8
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg3), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    else:
        if arg1:
            require 3 * 10^16 <= tokens[0][arg3]
            require arg2 <= tokens[address(arg1)][address(arg3)]
        else:
            require arg2 + 3 * 10^16 >= 3 * 10^16
            require tokens[0][arg3] >= arg2 + 3 * 10^16
        require not stor11[this.address][arg1][arg2][arg3][arg4]
        stor11[this.address][arg1][arg2][arg3][arg4] = 1
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, arg1, arg2, arg3, arg4)), arg5 << 248, arg6, arg7) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        require address(signer) == arg3
        if not arg1:
            require arg2 + 3 * 10^16 >= 3 * 10^16
            require arg2 + 3 * 10^16 <= tokens[0][arg3]
            tokens[0][arg3] = tokens[0][arg3] + -arg2 - 3 * 10^16
            require tokens[0][stor1] + 3 * 10^16 >= tokens[0][stor1]
            tokens[0][stor1] += 3 * 10^16
            call arg3 with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require arg2 <= tokens[address(arg1)][address(arg3)]
            tokens[address(arg1)][address(arg3)] -= arg2
            require 3 * 10^16 <= tokens[0][arg3]
            tokens[0][arg3] -= 3 * 10^16
            require tokens[0][stor1] + 3 * 10^16 >= tokens[0][stor1]
            tokens[0][stor1] += 3 * 10^16
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg3), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    lastActiveTransaction[address(arg3)] = block.number
    emit Withdraw(address(arg1), address(arg3), arg2, tokens[address(arg1)][address(arg3)]);
    return 1
}



}
