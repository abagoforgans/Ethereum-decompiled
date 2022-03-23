contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor1 = this.address or Mask(96, 160, stor1)
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[52 len 192]
}



// =====================  Runtime code  =====================


address stor0;

function kill() payable {
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function SendEmail(string arg1, string arg2) payable {
  stop
}



}
