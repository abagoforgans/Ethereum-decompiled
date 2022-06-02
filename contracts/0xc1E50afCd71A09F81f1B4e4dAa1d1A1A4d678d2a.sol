contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint8 stor4;
uint256 stor5;
mapping of uint256 stor6;

function _fallback() {
    stor0 = 0x63d509f7152769ddf162ed048b83719fe1e31080
    stor1 = 0x63d509f7152769ddf162ed048b83719fe1e31080
    stor3 = 1195528304
    stor5 = 1195528304
    stor4 = 6
    require stor6[0x63d509f7152769ddf162ed048b83719fe1e31080] + 10^16 >= stor6[0x63d509f7152769ddf162ed048b83719fe1e31080]
    require stor6[0x63d509f7152769ddf162ed048b83719fe1e31080] + 10^16 >= 10^16
    stor6[stor0] = stor6[0x63d509f7152769ddf162ed048b83719fe1e31080] + 10^16
    require stor2 + 10^16 >= stor2
    require stor2 + 10^16 >= 10^16
    stor2 += 10^16
    return code.data[268 len 2174]
}



// =====================  Runtime code  =====================


address serverAddress;
address sub_94a3760fAddress;
uint256 totalSupply;
uint256 name;
uint8 decimals;
uint256 symbol;
mapping of uint256 balances;
mapping of uint256 allowed;

function name() {
    return name
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function sub_94a3760f(?) {
    return sub_94a3760fAddress
}

function symbol() {
    return symbol
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function server() {
    return serverAddress
}

function _fallback() payable {
    revert
}

function isServer(address arg1) {
    return (arg1 == serverAddress)
}

function isPopulous(address arg1) {
    return (sub_94a3760fAddress == arg1)
}

function changeServer(address arg1) {
    require 1 == msg.sender == serverAddress
    serverAddress = arg1
}

function changePopulous(address arg1) {
    require 1 == msg.sender == serverAddress
    sub_94a3760fAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balances[address(msg.sender)] >= arg2
    balances[address(msg.sender)] -= arg2
    balances[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function destroyTokens(uint256 arg1) {
    require 1 == sub_94a3760fAddress == msg.sender
    if balances[stor1] < arg1:
        return 0
    require arg1 <= balances[stor1]
    balances[stor1] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    return 1
}

function destroyTokensFrom(uint256 arg1, address arg2) {
    require 1 == sub_94a3760fAddress == msg.sender
    if balances[address(arg2)] < arg1:
        return 0
    require arg1 <= balances[address(arg2)]
    balances[address(arg2)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balances[address(arg1)] >= arg3
    require allowed[address(arg1)][address(msg.sender)] >= arg3
    balances[address(arg2)] += arg3
    balances[arg1] -= arg3
    if allowed[address(arg1)][address(msg.sender)] < -1:
        allowed[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
