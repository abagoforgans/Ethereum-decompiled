contract main {


// =======================  Init code  ======================


array of address stor0;
uint256 stor2;
uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
uint8 stor6;
mapping of uint256 stor7;

function _fallback() {
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = stor0.length + 1
        while stor0.length > idx:
            uint256(stor0[idx]) = 0
            idx = idx + 1
            continue 
    address(stor0[stor0.length]) = msg.sender
    stor7[address(msg.sender)] = 30 * 10^6
    stor2 = 2 * 10^16
    stor3 = 3 * 10^16
    bool(stor4.length) = 0
    stor4.length.field_1 = 7
    stor4.length.field_8 = 'Beether' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 5
    stor5.length.field_8 = 'beeth' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 2
    return code.data[645 len 4156]
}



// =====================  Runtime code  =====================


#
#  - setBuyPrice(uint256 arg1)
#  - addCaller(address arg1)
#  - setDecimals(uint8 arg1)
#  - setSymbol(string arg1)
#  - setName(string arg1)
#  - setBalance(address arg1, uint256 arg2)
#  - deleteCaller(uint256 arg1)
#  - transferCallership(address arg1, uint256 arg2)
#  - setSellPrice(uint256 arg1)
#
array of address callers;
uint256 sellPrice;
uint256 buyPrice;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balance;

function getBuyPrice() {
    return buyPrice
}

function getSymbol() {
    return symbol[0 len symbol.length]
}

function getName() {
    return name[0 len name.length]
}

function getSellPrice() {
    return sellPrice
}

function callers(uint256 arg1) {
    require arg1 < callers.length
    return callers[arg1]
}

function getDecimals() {
    return decimals
}

function getBalance(address arg1) {
    return balance[address(arg1)]
}

function _fallback() payable {
    revert
}



}
