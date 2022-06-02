contract main {




// =====================  Runtime code  =====================


address stor0;

function kill() {
    require msg.sender == stor0
    selfdestruct(msg.sender)
}

function sub_22d2b78d(?) {
  stop
}

function _fallback() payable {
    revert
}



}
