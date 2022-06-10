contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    require not msg.value
    return code.data[55 len 124]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    if stor0 == msg.sender:
    if msg.value <= 0:
    selfdestruct(stor0)
}



}
