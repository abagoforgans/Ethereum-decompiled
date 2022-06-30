contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint256 decimals;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}



}
