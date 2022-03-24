contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
address stor2;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor0 = 0x1db3439a222c519ab44bb1144fc28167b4fa6ee6
    stor2 = 0xd8da6bf26964af9d7eed9e03e53415d37aa96045
    return code.data[189 len 684]
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
