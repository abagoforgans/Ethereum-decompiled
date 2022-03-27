contract main {


// =======================  Init code  ======================


const _fallback = code.data[23 len 160]




// =====================  Runtime code  =====================


function _fallback() {
    revert 
}

function vote(bytes32 arg1, bool arg2) {
    require msg.value <= 0
    emit LogVote(arg2, msg.sender, arg1);
}



}
