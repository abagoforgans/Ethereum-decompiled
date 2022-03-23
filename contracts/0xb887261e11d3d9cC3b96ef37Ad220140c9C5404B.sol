contract main {


// =======================  Init code  ======================


const _fallback = code.data[16 len 183]




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function vote(bytes32 arg1, bool arg2) payable {
    emit LogVote(arg2, msg.sender, arg1);
}



}
