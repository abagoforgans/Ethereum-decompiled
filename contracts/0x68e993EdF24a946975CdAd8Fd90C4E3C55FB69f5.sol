contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 10
    stor1.length.field_8 = 'Multiplier' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor0 = code.data[771 len 32]
    return code.data[289 len 482]
}



// =====================  Runtime code  =====================


uint256 multiplier;
array of uint256 contractName;

function getMultiplier() payable {
    return multiplier
}

function contractName() payable {
    return contractName[0 len contractName.length]
}

function _fallback() payable {
  stop
}

function multiply(uint256 arg1) payable {
    return (arg1 * multiplier)
}



}
