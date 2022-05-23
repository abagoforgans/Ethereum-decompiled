contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
uint256 stor2;
array of uint256 stor3;
uint256 stor4;
uint256 stor5;
uint8 stor6;
mapping of uint256 stor7;

function _fallback() payable {
    stor5 = 10^18
    stor6 = 0
    require not msg.value
    mem[96 len -4403] = code.data[4931 len -4403]
    mem[64] = -4307
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor2 = mem[128]
    stor3[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor0 = mem[236 len 20]
    stor4 = mem[192] * stor5
    stor7[address(mem[224])] = stor4
    return code.data[528 len 4403]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
uint256 decimals;
array of uint256 symbol;
uint256 totalSupply;
uint8 stor6;
mapping of uint256 balances;
mapping of uint256 approvals;

function name() {
    return name[0 len name.length]
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

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function approvals(address arg1, address arg2) {
    return approvals[arg1][arg2]
}

function allowance(address arg1, address arg2) {
    return approvals[address(arg1)][address(arg2)]
}

function tokenLock() {
    return bool(stor6)
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1 != owner
    require arg1
    owner = arg1
    emit OwnerTransferPropose(owner, arg1);
}

function approve(address arg1, uint256 arg2) {
    require balances[address(msg.sender)] >= arg2
    approvals[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balances[address(msg.sender)] >= arg2
    require not stor6
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balances[address(arg1)] >= arg3
    require approvals[address(arg1)][address(msg.sender)] >= arg3
    require not stor6
    require arg3 <= approvals[address(arg1)][address(msg.sender)]
    approvals[address(arg1)][address(msg.sender)] -= arg3
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
