contract main {


// =======================  Init code  ======================


const _fallback = code.data[32 len 180]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function logHash(uint256 arg1) {
    emit LogHash(arg1);
}



}
