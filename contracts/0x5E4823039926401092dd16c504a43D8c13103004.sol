contract main {


// =======================  Init code  ======================


address stor0;

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}



// =====================  Runtime code  =====================




}
