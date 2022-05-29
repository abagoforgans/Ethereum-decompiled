contract main {




// =====================  Runtime code  =====================


#
#  - placeBet(uint256 arg1, uint256 arg2, uint256 arg3)
#
mapping of uint256 sub_33a88623;
mapping of uint256 sub_5b26c07f;
mapping of uint256 sub_5e2bc701;
uint256 stor3;
uint256 sub_a33a981e;
address owner;
address stor7;
uint256 maxProfit;
uint128 jackpotSize;

function sub_33a88623(?) {
    return sub_33a88623[arg1]
}

function jackpotSize() {
    return jackpotSize
}

function sub_5b26c07f(?) {
    return sub_5b26c07f[arg1]
}

function sub_5e2bc701(?) {
    return sub_5e2bc701[arg1]
}

function owner() {
    return owner
}

function sub_a33a981e(?) {
    return sub_a33a981e
}

function maxProfit() {
    return maxProfit
}

function kill() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by nonowner.'
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function acceptNextOwner() {
    if stor7 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only accept preapproved new owner.'
    owner = stor7
}

function approveNextOwner(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by nonowner.'
    if owner == arg1:
        revert with 0, 'Cannot approve current owner.'
    stor7 = arg1
}

function setMaxProfit(uint256 arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by nonowner.'
    if arg1 >= 300000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'maxProfit should be a sane number.'
    maxProfit = arg1
}

function increaseJackpot(uint256 arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by nonowner.'
    if arg1 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Increase amount larger than balance.'
    if stor3 + arg1 + jackpotSize > eth.balance(this.address):
        revert with 0, 'Not enough funds.'
    jackpotSize = uint128(jackpotSize + arg1)
}

function withdraw() {
    if sub_33a88623[msg.sender] <= 0:
        revert with 0, 'Invalid player ID'
    if sub_5e2bc701[stor0[msg.sender]] <= 0:
        revert with 0, 'Invalid balance'
    if sub_5e2bc701[stor0[msg.sender]] > stor3:
        revert with 0, 'Invalid balance'
    sub_5e2bc701[stor0[msg.sender]] = 0
    stor3 -= sub_5e2bc701[stor0[msg.sender]]
    call msg.sender with:
       value sub_5e2bc701[stor0[msg.sender]] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdraw(sub_5e2bc701[stor0[msg.sender]], msg.sender);
}

function withdrawFunds(address arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by nonowner.'
    if arg2 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Increase amount larger than balance.'
    if stor3 + arg2 + jackpotSize > eth.balance(this.address):
        revert with 0, 'Not enough funds.'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit FailedPayment(arg2, arg1);
    else:
        emit Payment(arg2, arg1);
}



}
