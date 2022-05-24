contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 rID_;

function rID_() {
    return rID_
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_f3e55a73(?) {
    require msg.sender == owner
    stor1 = arg1
}

function potSwap() payable {
    if stor1 <= 0:
        revert with 0, 'on must be 1.'
    emit onPotSwapDeposit(rID_ + 1, msg.value);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        emit OwnershipTransferred(owner, arg1);
        owner = arg1
}

function withdraw() {
    require msg.sender == owner
    if eth.balance(this.address) <= 0:
        revert with 0, 'No balance in contract.'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit onWithdraw(msg.sender, eth.balance(this.address));
}



}
