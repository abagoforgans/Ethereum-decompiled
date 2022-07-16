contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getDiscount(uint256 arg1) {
    return ((-100 * arg1) + 10000)
}



}
