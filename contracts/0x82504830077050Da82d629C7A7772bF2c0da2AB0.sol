contract main {




// =====================  Runtime code  =====================


uint256 total;

function totalSupply() {
    return total
}

function getTotal() {
    return total
}

function _fallback() payable {
    revert
}



}
