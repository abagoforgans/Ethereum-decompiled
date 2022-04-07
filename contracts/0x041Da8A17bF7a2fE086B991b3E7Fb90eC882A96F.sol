contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[94 len 194]
}



// =====================  Runtime code  =====================


address stor0;

function kill() {
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}



}
