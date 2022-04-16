contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 181]




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function _fallback() payable {
    revert
}



}
