contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[34 len 142]
}



// =====================  Runtime code  =====================


address destinationAddress;

function destinationAddress() {
    return destinationAddress
}

function _fallback() {
    call destinationAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
