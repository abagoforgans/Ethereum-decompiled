contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = 10^17
    return code.data[66 len 465]
}



// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address stor0;
uint256 sendAmount;

function getSendAmount() {
    return sendAmount
}

function killMe() {
    if stor0 != msg.sender:
        return 0
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function getWei() {
    call msg.sender with:
       value sendAmount wei
         gas 2300 * is_zero(value) wei
    return bool(ext_call.success)
}

function sendWei(address arg1) {
    call arg1 with:
       value sendAmount wei
         gas 2300 * is_zero(value) wei
    return bool(ext_call.success)
}



}
