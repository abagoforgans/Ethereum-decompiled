contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[61 len 274]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function cashOut() payable {
    call stor0 with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function forward(address arg1) payable {
    call arg1 with:
       value msg.value wei
         gas gas_remaining - 34050 wei
}



}
