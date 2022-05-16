contract main {




// =====================  Runtime code  =====================


address stor0;

function destroyAndSend(address arg1) {
    require msg.sender == stor0
    selfdestruct(arg1)
}

function _fallback() payable {
    emit receipt(msg.value, msg.sender);
}



}
