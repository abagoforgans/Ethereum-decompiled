contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = code.data[1874 len 32]
    stor2 = code.data[1906 len 32]
    return code.data[155 len 1719]
}



// =====================  Runtime code  =====================


address owner;
address recoveryAddress;
uint256 withdrawDelay;
uint256 withdrawTime;
uint256 withdrawAmount;

function withdrawDelay() {
    return withdrawDelay
}

function withdrawTime() {
    return withdrawTime
}

function withdrawAmount() {
    return withdrawAmount
}

function owner() {
    return owner
}

function recovery() {
    return recoveryAddress
}

function recover(address arg1) {
    require msg.sender == recoveryAddress
    emit Recover(address(arg1), eth.balance(this.address));
    selfdestruct(arg1)
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.sender, msg.value);
}

function lock(uint256 arg1) {
    require msg.sender == owner
    if withdrawTime <= block.timestamp + arg1:
        withdrawTime = block.timestamp + arg1
}

function withdraw() {
    require msg.sender == owner
    require block.timestamp >= withdrawTime
    require withdrawAmount
    withdrawAmount = 0
    call owner with:
       value withdrawAmount wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Withdraw(owner, withdrawAmount);
}

function unvault(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= eth.balance(this.address)
    if arg1 > withdrawAmount:
        if withdrawTime <= block.timestamp + withdrawDelay:
            withdrawTime = block.timestamp + withdrawDelay
    withdrawAmount = arg1
    emit Unvault(arg1, withdrawTime);
}



}
