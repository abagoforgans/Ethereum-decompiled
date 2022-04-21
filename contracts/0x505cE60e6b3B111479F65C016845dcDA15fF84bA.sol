contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[59 len 244]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require stor0 == msg.sender
    stor0 = arg1
}



}
