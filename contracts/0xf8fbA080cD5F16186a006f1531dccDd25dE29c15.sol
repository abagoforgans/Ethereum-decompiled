contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[34 len 141]
}



// =====================  Runtime code  =====================


address destinationAddress;

function destinationAddress() payable {
    return destinationAddress
}

function _fallback() payable {
    call destinationAddress with:
       value msg.value wei
         gas 0 wei
}

function flush() payable {
    call destinationAddress with:
       value eth.balance(this.address) wei
         gas 0 wei
}



}
