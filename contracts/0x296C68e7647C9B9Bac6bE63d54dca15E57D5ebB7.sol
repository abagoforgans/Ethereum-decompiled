contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor1;
array of uint256 stor2;
array of uint256 stor3;
address stor4;
mapping of uint256 stor5;

function _fallback() {
    mem[96 len -1942] = code.data[2315 len -1942]
    mem[64] = -1846
    stor2[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor3[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor1 = mem[159 len 1]
    stor0 = mem[96]
    stor5[stor4] += mem[96]
    stor4 = mem[236 len 20]
    return code.data[373 len 1942]
}



// =====================  Runtime code  =====================


const totalSupply = 0


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
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 > 0
    require balances[address(arg1)] - arg3 > 0
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
