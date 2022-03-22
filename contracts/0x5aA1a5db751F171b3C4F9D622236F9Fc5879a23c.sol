contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor0 = 0xf767fca8e65d03fe16d4e38810f5e5376c3372a8
    return code.data[69 len 229]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
  stop
}

function cashOut() payable {
    call stor1 with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function playToWinTest(uint256 arg1) payable {
    require arg1 == block.hash(block.number - 1) / -36 / arg1 + 1 % arg1 + 1
    stor2 = block.hash(block.number - 1) / -36 / arg1 + 1 % arg1 + 1
}

function playToWin(uint256 arg1) payable {
    require arg1 == block.hash(block.number - 1) / -36 / arg1 + 1 % arg1 + 1
    call stor0 with:
       value msg.value wei
         gas 0 wei
    stor2 = block.hash(block.number - 1) / -36 / arg1 + 1 % arg1 + 1
}



}
