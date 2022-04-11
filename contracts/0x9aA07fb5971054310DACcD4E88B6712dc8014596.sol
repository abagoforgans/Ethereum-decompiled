contract main {


// =======================  Init code  ======================


array of uint256 stor0;
uint8 stor1;
uint256 stor2;
mapping of uint256 stor4;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'Token 1.0' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor4[address(msg.sender)] = code.data[2500 len 32]
    stor2 = code.data[2500 len 32]
    stor1 = code.data[2563 len 1]
    return code.data[347 len 2153]
}



// =====================  Runtime code  =====================


const name = 'ISeeVoiceCoin'

const symbol = 'ISVC'


array of uint256 standard;
uint8 decimals;
uint256 _totalSupply;
mapping of uint256 allowed;
mapping of uint256 balances;

function totalSupply() {
    return _totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function _totalSupply() {
    return _totalSupply
}

function standard() {
    return standard[0 len standard.length]
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balances[address(msg.sender)] < arg2:
        return 0
    if balances[address(arg1)] + arg2 <= balances[address(arg1)]:
        return 0
    balances[address(msg.sender)] -= arg2
    balances[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balances[address(arg1)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balances[address(arg2)] + arg3 <= balances[address(arg2)]:
        return 0
    if arg3 > allowed[address(arg1)][address(msg.sender)]:
        return 0
    balances[address(arg1)] -= arg3
    balances[arg2] += arg3
    allowed[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
