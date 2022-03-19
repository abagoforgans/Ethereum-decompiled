contract main {


// =======================  Init code  ======================


const _fallback = code.data[16 len 105]




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function credit(address arg1, uint256 arg2) payable {
    emit Credit(arg2, arg1);
}



}
