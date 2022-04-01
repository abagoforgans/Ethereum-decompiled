contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    require not msg.value
    return code.data[93 len 577]
}



// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    if msg.sender == owner:
        emit NewOwner(owner, arg1);
        owner = arg1
}



}
