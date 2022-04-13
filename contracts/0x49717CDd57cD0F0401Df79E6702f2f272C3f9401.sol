contract main {


// =======================  Init code  ======================


array of uint256 stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 27
    stor0.length.field_8 = 'Lord Coin Pre-ICO test test' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 0
    stor6 = 0
    require not msg.value
    stor1 = code.data[1573 len 20]
    stor2 = code.data[1605 len 20]
    stor3 = code.data[1625 len 32]
    stor4 = code.data[1657 len 32]
    stor7 = code.data[1689 len 32]
    stor8 = code.data[1689 len 32] + (24 * 3600 * code.data[1721 len 32])
    return code.data[532 len 1029]
}



// =====================  Runtime code  =====================


array of uint256 name;
address LCAddress;
address beneficiaryAddress;
uint256 priceETH;
uint256 priceLC;
uint256 weiRaised;
uint256 investorCount;
uint256 startTime;
uint256 endTime;

function name() {
    return name[0 len name.length]
}

function priceLC() {
    return priceLC
}

function LC() {
    return LCAddress
}

function endTime() {
    return endTime
}

function beneficiary() {
    return beneficiaryAddress
}

function weiRaised() {
    return weiRaised
}

function startTime() {
    return startTime
}

function priceETH() {
    return priceETH
}

function investorCount() {
    return investorCount
}

function _fallback() payable {
    revert
}



}
