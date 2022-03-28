contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[53 len 169]
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
