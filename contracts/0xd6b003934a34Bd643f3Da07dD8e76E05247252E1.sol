contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
uint256 stor2;
mapping of uint256 stor3;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 7
    stor1.length.field_8 = 'S9token' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor0 = msg.sender
    stor2 = 200
    stor3[address(msg.sender)] = 200
    return code.data[419 len 1620]
}



// =====================  Runtime code  =====================


const decimals = 0

const version = '1'


address stor0;
array of uint256 name;
uint256 totalSupply;
mapping of uint256 balances;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    require msg.sender == stor0
    if balances[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balances[address(arg1)] + arg2 <= balances[address(arg1)]:
        return 0
    balances[address(msg.sender)] -= arg2
    balances[address(arg1)] += arg2
    return 1
}



}
