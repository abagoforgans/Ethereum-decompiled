contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor7;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 4
    stor0.length.field_8 = 'ETIX' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 20
    stor1.length.field_8 = 'EtherFlipRaffleToken' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 4
    stor2.length.field_8 = 'ETIX' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 0
    stor4 = 15 * 10^6
    stor5 = 0
    stor7 = 1
    require not msg.value
    return code.data[433 len 906]
}



// =====================  Runtime code  =====================


array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 numberInRaffle;
uint256 winningNumber;
uint256 raffleRewardAmount;

function name() {
    return name[0 len name.length]
}

function raffleRewardAmount() {
    return raffleRewardAmount
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function winningNumber() {
    return winningNumber
}

function standard() {
    return standard[0 len standard.length]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function numberInRaffle() {
    return numberInRaffle
}

function _fallback() payable {
    revert
}



}
