contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor0 = code.data[872 len 32]
    stor2 = code.data[904 len 32]
    return code.data[188 len 684]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
  stop
}

function refund() payable {
    if stor0 != msg.sender:
        require msg.sender == stor2
    call stor1 with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function finalize() payable {
    if stor1 != msg.sender:
        require msg.sender == stor2
    call stor0 with:
       value eth.balance(this.address) wei
         gas 0 wei
}



}
