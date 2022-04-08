contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
mapping of uint256 stor2;
uint8 stor58D5; offset 254
uint256 stor58D5;
uint8 stor5D1B; offset 254
uint256 stor5D1B;

function _fallback() {
    stor0 = code.data[1438 len 32]
    stor1 = code.data[1470 len 32]
    require code.data[1438 len 32] >= code.data[1470 len 32]
    stor2[code.data[1418 len 20]] = stor0
    Mask(254, 0, stor58D5.field_0) = stor0 - stor1 / 4
    stor58D5.field_254 % 4 = 0
    Mask(254, 0, stor5D1B.field_0) = stor0 - stor1 / 4
    stor5D1B.field_254 % 4 = 0
    stor2[code.data[1418 len 20]] -= Mask(254, 2, stor0 - stor1) >> 1
    return code.data[250 len 1156]
}



// =====================  Runtime code  =====================


const name = 'Artcoin'

const decimals = 18

const symbol = 'ART'


uint256 authorizedSupply;
uint256 treasurySupply;
mapping of uint256 balances;

function totalSupply() {
    return authorizedSupply
}

function authorizedSupply() {
    return authorizedSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function treasurySupply() {
    return treasurySupply
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    if arg2 <= 0:
        return 0
    if balances[address(msg.sender)] < arg2:
        return 0
    if balances[address(arg1)] + arg2 < balances[address(arg1)]:
        return 0
    balances[address(msg.sender)] -= arg2
    balances[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
