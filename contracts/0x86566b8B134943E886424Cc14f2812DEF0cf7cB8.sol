contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[57 len 274]
}



// =====================  Runtime code  =====================


address creatorAddress;

function getCreator() {
    return creatorAddress
}

function kill() {
    if creatorAddress != msg.sender:
    selfdestruct(creatorAddress)
}

function _fallback() payable {
    revert
}



}
