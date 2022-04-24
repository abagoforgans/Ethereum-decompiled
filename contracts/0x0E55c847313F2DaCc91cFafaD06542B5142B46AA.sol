contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor1;
mapping of uint256 stor2;

function _fallback() {
    stor2[code.data[2251 len 20]] = code.data[2271 len 32]
    stor2[code.data[2315 len 20]] = code.data[2335 len 32]
    stor2[code.data[2379 len 20]] = code.data[2399 len 32]
    require code.data[2399 len 32] + code.data[2335 len 32] >= code.data[2335 len 32]
    require code.data[2399 len 32] + code.data[2335 len 32] >= code.data[2399 len 32]
    require code.data[2399 len 32] + code.data[2335 len 32] + code.data[2271 len 32] >= code.data[2271 len 32]
    require code.data[2271 len 32] >= 0
    stor0 = code.data[2399 len 32] + code.data[2335 len 32] + code.data[2271 len 32]
    stor1 = code.data[2462 len 1]
    emit 0x2aa96691: code.data[2251 len 20], code.data[2271 len 32], address(code.data[2303 len 32]), code.data[2335 len 32], address(code.data[2367 len 32]), code.data[2399 len 32]
    return code.data[361 len 1878]
}



// =====================  Runtime code  =====================


const name = 'Earnable Token'

const version = 'ERN.ALPHA.2.0'

const symbol = 'ERN'


uint256 totalSupply;
uint8 decimals;
mapping of uint256 balances;
mapping of uint256 allowed;

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
    require balances[address(msg.sender)] >= arg2
    require balances[address(msg.sender)] >= arg2
    balances[address(msg.sender)] -= arg2
    require arg2 + balances[arg1] >= balances[arg1]
    require arg2 + balances[arg1] >= arg2
    balances[address(arg1)] = arg2 + balances[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balances[address(arg1)] >= arg3
    require allowed[address(arg1)][address(msg.sender)] >= arg3
    require balances[address(arg1)] >= arg3
    balances[address(arg1)] -= arg3
    require arg3 + balances[arg2] >= balances[arg2]
    require arg3 + balances[arg2] >= arg3
    balances[address(arg2)] = arg3 + balances[arg2]
    if allowed[address(arg1)][address(msg.sender)] < -1:
        require allowed[address(arg1)][address(msg.sender)] >= arg3
        allowed[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    emit TransferFrom(arg3, msg.sender, arg1, arg2);
    return 1
}



}
