contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[59 len 246]
}



// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function kill() {
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}



}
