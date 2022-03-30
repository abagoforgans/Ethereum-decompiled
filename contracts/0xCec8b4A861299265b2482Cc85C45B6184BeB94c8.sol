contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[55 len 131]
}



// =====================  Runtime code  =====================


address stor0;

function destroy() {
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}



}
