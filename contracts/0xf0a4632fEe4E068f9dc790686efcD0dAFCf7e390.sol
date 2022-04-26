contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[59 len 358]
}



// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}



}
