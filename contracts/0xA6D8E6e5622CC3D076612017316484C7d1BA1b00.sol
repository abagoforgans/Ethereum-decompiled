contract main {


// =======================  Init code  ======================


uint256 stor1;
uint8 stor2;
array of uint256 stor3;
array of uint256 stor4;
mapping of uint256 stor5;

function _fallback() {
    mem[96 len -3530] = code.data[3939 len -3530]
    mem[64] = -3434
    stor1 = mem[96]
    stor2 = mem[159 len 1]
    stor3[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor4[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor5[address(msg.sender)] = stor1
    return code.data[409 len 3530]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
uint8 decimals;
array of uint256 name;
array of uint256 symbol;
mapping of uint256 balances;
mapping of uint256 allowed;

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

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require balances[address(msg.sender)] >= arg2
    require arg2 > 0
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balances[address(msg.sender)] >= arg2
    require arg2 > 0
    require balances[address(arg1)] + arg2 > balances[address(arg1)]
    balances[address(msg.sender)] -= arg2
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2 == msg.sender
    require allowed[address(arg1)][address(arg2)] >= arg3
    require balances[address(arg1)] >= arg3
    require balances[address(arg2)] + arg3 > balances[address(arg2)]
    allowed[address(arg1)][address(arg2)] -= arg3
    balances[address(arg1)] -= arg3
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
