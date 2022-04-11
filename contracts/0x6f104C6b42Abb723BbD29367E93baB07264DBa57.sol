contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor1;
array of uint256 stor2;
array of uint256 stor3;
address stor5;
mapping of uint256 stor7;

function _fallback() payable {
    stor0 = 12 * 10^6
    require not msg.value
    mem[96 len -2209] = code.data[2586 len -2209]
    mem[64] = -2113
    stor5 = 0x49e91a6de33f694e2fe78a74420cb04555e946c4
    stor7[0x49e91a6de33f694e2fe78a74420cb04555e946c4] += stor0
    stor2[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor3[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor1 = mem[191 len 1]
    return code.data[377 len 2209]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
uint8 decimals;
array of uint256 name;
array of uint256 symbol;
array of uint256 description;
address owner;
mapping of uint256 balances;
mapping of uint256 allowance;

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

function description() {
    return description[0 len description.length]
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

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 > 0
    require balances[address(arg1)] - arg3 >= 0
    require arg3 + balances[address(arg2)] > 0
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 > 0
    require balances[address(msg.sender)] > 0
    require balances[address(msg.sender)] - arg2 > 0
    require arg2 + balances[address(arg1)] > 0
    balances[address(msg.sender)] -= arg2
    balances[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
