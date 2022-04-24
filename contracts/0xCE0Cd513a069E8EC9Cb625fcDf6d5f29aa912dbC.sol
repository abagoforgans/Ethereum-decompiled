contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
uint256 stor4;
address stor5;
address stor6;
uint256 stor8;

function _fallback() payable {
    stor8 = 18
    require not msg.value
    stor4 = 10000000 * 10^18
    stor5 = 0x1fc11ac635e89c228765f3e6aee0970d9aff2bf5
    stor6 = 0x4ab9aa258369438bc146b26af02f6e3568009d92
    stor1[0x1fc11ac635e89c228765f3e6aee0970d9aff2bf5] = 10000000 * 10^18
    return code.data[149 len 2481]
}



// =====================  Runtime code  =====================


const name = 'MMS'

const symbol = 'MMS'


mapping of uint256 balances;
mapping of uint256 investBalances;
mapping of uint256 allowance;
uint256 totalSupply;
address owner;
address owner2;
address owner3;
uint256 decimals;

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function owner2() {
    return owner2
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function owner3() {
    return owner3
}

function investBalances(address arg1) {
    return investBalances[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function changeOwner3(address arg1) {
    if owner != msg.sender:
        if owner2 != msg.sender:
            require owner3 == msg.sender
    owner3 = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function add_tokens(address arg1, uint256 arg2) {
    if owner != msg.sender:
        if owner2 != msg.sender:
            require owner3 == msg.sender
    balances[stor5] -= arg2
    investBalances[address(arg1)] += arg2
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balances[address(msg.sender)] >= arg2
    balances[address(msg.sender)] -= arg2
    balances[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferToken_toBalance(address arg1, uint256 arg2) {
    if owner != msg.sender:
        if owner2 != msg.sender:
            require owner3 == msg.sender
    investBalances[address(arg1)] -= arg2
    balances[address(arg1)] += arg2
}

function transferToken_toInvestBalance(address arg1, uint256 arg2) {
    if owner != msg.sender:
        if owner2 != msg.sender:
            require owner3 == msg.sender
    balances[address(arg1)] -= arg2
    investBalances[address(arg1)] += arg2
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        if owner2 != msg.sender:
            require owner3 == msg.sender
    require owner != arg1
    balances[arg1] = balances[stor5]
    balances[stor5] = 0
    owner = arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    if balances[address(arg1)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balances[address(arg1)] -= arg3
    balances[arg2] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
