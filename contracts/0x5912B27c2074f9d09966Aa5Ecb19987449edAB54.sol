contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor2;
array of uint256 stor3;
array of uint256 stor4;
address stor6;

function _fallback() {
    mem[96 len -2494] = code.data[2831 len -2494]
    mem[64] = -2398
    stor3[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor4[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor2 = mem[159 len 1]
    stor0 = mem[96]
    stor6 = mem[236 len 20]
    return code.data[337 len 2494]
}



// =====================  Runtime code  =====================


const totalSupply = 0

const description = ''


uint256 remaining;
uint8 decimals;
array of uint256 name;
array of uint256 symbol;
address owner;
mapping of uint256 balances;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function remaining() {
    return remaining
}

function balanceOf() {
    return balances[address(msg.sender)]
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
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
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
    require balances[address(msg.sender)] - arg2 >= 0
    require arg2 + balances[address(arg1)] > 0
    balances[address(msg.sender)] -= arg2
    balances[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function buyIn() payable {
    require remaining > 0
    require msg.value > 0
    require (11500 * msg.value / 10^18) + balances[address(msg.sender)] > 0
    require balances[stor6] - (11500 * msg.value / 10^18) >= 0
    balances[address(msg.sender)] += 11500 * msg.value / 10^18
    balances[stor6] += -11500 * msg.value / 10^18
    remaining += -11500 * msg.value / 10^18
    emit Transfer((11500 * msg.value / 10^18), owner, msg.sender);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}



}
