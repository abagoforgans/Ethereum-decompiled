contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 9
    stor1.length.field_8 = 'Token 0.1' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 4
    stor2.length.field_8 = 'Caps' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = 'CPS' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 8
    require not msg.value
    stor0[address(msg.sender)] += 2 * 10^12
    stor5 += 2 * 10^12
    return code.data[588 len 2024]
}



// =====================  Runtime code  =====================


mapping of uint256 myBalance;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;

function supply() {
    return totalSupply
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function getMyBalance() {
    return myBalance[address(msg.sender)]
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return myBalance[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function mint(uint256 arg1) {
    myBalance[address(msg.sender)] += arg1
    totalSupply += arg1
}

function transfer(address arg1, uint256 arg2) {
    if myBalance[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    myBalance[address(msg.sender)] -= arg2
    myBalance[address(arg1)] += arg2
    return 1
}



}
