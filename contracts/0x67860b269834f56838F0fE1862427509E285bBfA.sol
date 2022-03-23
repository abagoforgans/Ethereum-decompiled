contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 415]




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function name() payable {
    return name[0 len name.length]
}

function decimals() payable {
    return decimals
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
  stop
}



}
