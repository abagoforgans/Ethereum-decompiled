contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[54 len 204]
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

function hello() payable {
    stor1++
    emit 0x9aebaa3e: Array(len=12, data='How are you?'), stor1 + 1
}



}
