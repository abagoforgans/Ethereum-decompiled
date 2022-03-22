contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor1 = code.data[858 len 32]
    stor2 = code.data[890 len 32]
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[188 len 670]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
  stop
}

function refund() payable {
    if msg.sender == stor1:
        call stor0 with:
           value eth.balance(this.address) wei
             gas 0 wei
    else:
        if msg.sender == stor2:
            call stor0 with:
               value eth.balance(this.address) wei
                 gas 0 wei
}

function finalize() payable {
    if msg.sender == stor0:
        call stor1 with:
           value eth.balance(this.address) wei
             gas 0 wei
    else:
        if msg.sender == stor2:
            call stor1 with:
               value eth.balance(this.address) wei
                 gas 0 wei
}



}
