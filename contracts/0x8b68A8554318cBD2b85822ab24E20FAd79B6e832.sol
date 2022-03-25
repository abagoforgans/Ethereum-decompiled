contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[34 len 136]
}



// =====================  Runtime code  =====================


address destinationAddress;

function destinationAddress() {
    return destinationAddress
}

function _fallback() {
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining - 34050 wei
    require ext_call.success
}



}
