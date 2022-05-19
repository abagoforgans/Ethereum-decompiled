contract main {




// =====================  Runtime code  =====================


address a1Address;
address a2Address;

function a1() {
    return a1Address
}

function a2() {
    return a2Address
}

function destroy() {
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}



}
