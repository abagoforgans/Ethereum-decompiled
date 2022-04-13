contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor3;

function _fallback() {
    mem[96 len -1137] = code.data[1482 len -1137]
    mem[64] = -1041
    if mem[96]:
        stor3[address(msg.sender)] = mem[96]
    else:
        stor3[address(msg.sender)] = 10^6
    stor0[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor1[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor2 = mem[223 len 1]
    return code.data[345 len 1137]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balances;

function name() {
    return name[0 len name.length]
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getBalance(address arg1) {
    return balances[address(arg1)]
}

function _fallback() payable {
    revert
}

function sendCoin(address arg1, uint256 arg2) {
    if balances[address(msg.sender)] >= arg2:
        balances[address(msg.sender)] -= arg2
        balances[arg1] += arg2
        emit Transfer(arg2, msg.sender, arg1);
}



}
