contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
uint256 stor4;
address stor5;
uint8 stor6; offset 160

function _fallback() payable {
    stor6 = 2
    require not msg.value
    stor5 = msg.sender
    stor4 = 100 * 10^6
    stor1[address(msg.sender)] = 100 * 10^6
    return code.data[206 len 5434]
}



// =====================  Runtime code  =====================


const name = '3D METAMORPHOSIS'

const symbol = 'MMS'


mapping of uint256 balances;
mapping of uint256 investBalances;
mapping of uint256 allowance;
uint256 totalSupply;
address owner;
uint8 decimals; offset 160
address owner2;

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

function investBalances(address arg1) {
    return investBalances[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function addOwner2(address arg1) {
    if owner != msg.sender:
        require msg.sender == owner2
    owner2 = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function add_tokens(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require msg.sender == owner2
    balances[stor5] -= arg2
    investBalances[address(arg1)] += arg2
}

function transferToken_toBalance(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require msg.sender == owner2
    investBalances[address(arg1)] -= arg2
    balances[address(arg1)] += arg2
}

function transferToken_toInvestBalance(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require msg.sender == owner2
    balances[address(arg1)] -= arg2
    investBalances[address(arg1)] += arg2
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        require msg.sender == owner2
    require arg1 != owner
    balances[address(arg1)] = balances[stor5]
    balances[stor5] = 0
    owner = arg1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balances[address(msg.sender)] >= arg2
    balances[address(msg.sender)] -= arg2
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    if balances[address(arg1)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balances[address(arg1)] -= arg3
    balances[address(arg2)] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
