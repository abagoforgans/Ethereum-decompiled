contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[94 len 329]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == stor0
    stor0 = arg1
}



}
