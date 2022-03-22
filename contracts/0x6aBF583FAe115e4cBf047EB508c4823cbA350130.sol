contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor1 = 1
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[38 len 127]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor1;

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function multiply(uint256 arg1) payable {
    stor1 += arg1
    return ((7 * arg1) + (7 * stor1))
}



}
