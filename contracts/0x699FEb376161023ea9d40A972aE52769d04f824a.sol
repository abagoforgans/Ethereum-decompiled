contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender
    stor1 = 10^18
    return code.data[61 len 495]
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

function sendWei(address arg1) payable {
    call arg1 with:
       value sendAmount wei
         gas 2300 * is_zero(value) wei
    return bool(ext_call.success)
}



}
