contract main {


// =======================  Init code  ======================


const _fallback = code.data[23 len 118]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert 
}

function convert(uint256 arg1, uint256 arg2) payable {
    return (arg2 * arg1)
}



}
