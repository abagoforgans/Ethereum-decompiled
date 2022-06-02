contract main {




// =====================  Runtime code  =====================


address stor0;
array of uint256 say;

function say() {
    return say[0 len say.length]
}

function die() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}



}
