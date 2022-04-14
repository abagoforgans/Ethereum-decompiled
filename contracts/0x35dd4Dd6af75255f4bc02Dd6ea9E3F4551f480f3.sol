contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0xee0d51c22eabb48fa1177f154f44d61dd04349b
    require not msg.value
    return code.data[115 len 350]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function sendFunds(address arg1) {
    require msg.sender == stor0
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
