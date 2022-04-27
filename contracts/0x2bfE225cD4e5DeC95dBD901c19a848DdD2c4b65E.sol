contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[60 len 393]
}



// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function selfDestruct() {
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function addToPrizePool() payable {
    emit LogEtherReceived(msg.sender, msg.value, block.timestamp);
}



}
