contract main {


// =======================  Init code  ======================


const _fallback = code.data[79 len 528]




// =====================  Runtime code  =====================


address stor0;
array of uint256 winner;

function winner() {
    return winner[0 len winner.length]
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert 
}



}
