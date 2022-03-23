contract main {


// =======================  Init code  ======================


const _fallback = code.data[16 len 135]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert 
}

function vote(bytes32 arg1, bool arg2) payable {
    require msg.value <= 0
    emit LogVote(arg2, msg.sender, arg1);
}



}
