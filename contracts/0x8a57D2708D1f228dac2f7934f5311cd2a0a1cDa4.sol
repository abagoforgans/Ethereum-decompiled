contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 267]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function vote(bytes32 arg1, bool arg2) {
    emit LogVote(arg2, msg.sender, arg1);
}



}
