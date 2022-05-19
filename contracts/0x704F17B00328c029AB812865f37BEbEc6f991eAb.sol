contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
mapping of uint256 stor2;

function _fallback() {
    stor0 = 73 * 10^16
    stor2[address(msg.sender)] = 73 * 10^16
    stor1 = msg.sender
    return code.data[90 len 2394]
}



// =====================  Runtime code  =====================


const name = 'keep health crypto coin'

const decimals = 8

const symbol = 'KPH'


uint256 totalSupply;
address owner;
mapping of uint256 balances;
mapping of uint256 allowed;
mapping of uint8 stor4;

function totalSupply() {
    return totalSupply
}

function isAccountFreezed(address arg1) {
    return bool(stor4[address(arg1)])
}

function balances(address arg1) {
    return balances[arg1]
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function frozenAccount(address arg1) {
    return bool(stor4[arg1])
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function freezeAccount(address arg1) {
    require owner == msg.sender
    stor4[address(arg1)] = 1
    emit FrozenFunds(address(arg1), 1);
}

function unfreezeAccount(address arg1) {
    require owner == msg.sender
    stor4[address(arg1)] = 0
    emit FrozenFunds(address(arg1), 0);
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowed[address(msg.sender)][address(arg1)]
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor4[address(msg.sender)]
    require not stor4[address(arg1)]
    require arg1
    require balances[address(msg.sender)] >= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require arg2 + balances[arg1] >= balances[arg1]
    require arg2 + balances[arg1] >= arg2
    balances[address(arg1)] = arg2 + balances[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    allowed[address(arg1)][address(msg.sender)] -= arg3
    require not stor4[address(arg1)]
    require not stor4[address(arg2)]
    require arg2
    require balances[address(arg1)] >= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require arg3 + balances[arg2] >= balances[arg2]
    require arg3 + balances[arg2] >= arg3
    balances[address(arg2)] = arg3 + balances[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
