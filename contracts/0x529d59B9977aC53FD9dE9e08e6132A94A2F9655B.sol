contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[35 len 252]
}



// =====================  Runtime code  =====================


address stor0;

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() {
    if msg.value > 0:
        emit Deposit(msg.value, msg.sender, 88);
}

function collect() {
    if stor0 != msg.sender:
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
