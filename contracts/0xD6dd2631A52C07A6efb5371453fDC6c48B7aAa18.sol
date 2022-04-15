contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[97 len 1045]
}



// =====================  Runtime code  =====================


address stor0;

function sub_b927e171(?) {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function receiveFunds() payable {
    require msg.sender == stor0
    emit Funds(eth.balance(this.address));
}

function sub_14dca88c(?) {
    require msg.sender == stor0
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return eth.balance(this.address)
}

function withdrawFunds(uint256 arg1) {
    require msg.sender == stor0
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Funds(eth.balance(this.address));
}



}
