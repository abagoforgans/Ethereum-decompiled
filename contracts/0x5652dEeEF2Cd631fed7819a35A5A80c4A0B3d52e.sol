contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[61 len 273]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function forward(address arg1) payable {
    call arg1 with:
       value msg.value wei
         gas 0 wei
}

function cashOut() payable {
    call stor0 with:
       value eth.balance(this.address) wei
         gas 0 wei
}



}
