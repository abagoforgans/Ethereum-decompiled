contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor2;
array of uint256 stor3;
uint256 stor4;
uint8 stor5;
mapping of uint256 stor6;

function _fallback() payable {
    stor4 = 419304 * 24 * 3600
    stor5 = 0
    require not msg.value
    mem[96 len -4255] = code.data[4741 len -4255]
    mem[64] = -4159
    stor0 = msg.sender
    stor2[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor3[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor6[address(msg.sender)] = 50000 * 10^18 * 3600
    return code.data[486 len 4255]
}



// =====================  Runtime code  =====================


const totalSupply = (50000 * 10^18 * 3600)

const totalTokenSupply = (50000 * 10^18 * 3600)

const decimals = 18


address owner;
mapping of uint8 stor1;
array of uint256 name;
array of uint256 symbol;
uint8 stor5;
mapping of uint256 balances;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function balances(address arg1) {
    return balances[arg1]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function accessHolder(address arg1) {
    return bool(stor1[arg1])
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function allowPublicTransfer() {
    require msg.sender == owner
    stor5 = 1
}

function addToAccesslist(address arg1) {
    require msg.sender == owner
    stor1[address(arg1)] = 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    if balances[address(msg.sender)] < arg2:
        return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balances[address(msg.sender)] >= arg2
    require balances[address(arg1)] + arg2 > balances[address(arg1)]
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    require balances[address(arg1)] + arg2 >= arg2
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balances[address(arg1)] >= arg3
    require balances[address(arg2)] + arg3 > balances[address(arg2)]
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    require balances[address(arg2)] + arg3 >= arg3
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
