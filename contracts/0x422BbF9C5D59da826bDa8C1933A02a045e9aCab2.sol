contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor4;

function _fallback() payable {
    stor4 = 0
    stor0 = msg.sender
    return code.data[110 len 7695]
}



// =====================  Runtime code  =====================


const name = 'TOPAToken'

const decimals = 18

const symbol = 'TOT'


address owner;
uint256 totalSupply;
mapping of uint256 balances;
mapping of uint256 allowed;
uint8 stor4;
address stor4;
address destroyerAddress; offset 8
address minterAddress;

function mintingFinished() {
    return bool(uint8(stor4.field_0))
}

function minter() {
    return minterAddress
}

function destroyer() {
    return destroyerAddress
}

function totalSupply() {
    return totalSupply
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

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function setMinter(address arg1) {
    require msg.sender == owner
    minterAddress = arg1
}

function setDestroyer(address arg1) {
    require msg.sender == owner
    destroyerAddress = arg1
}

function finishMinting() {
    require msg.sender == minterAddress
    uint8(stor4.field_0) = 1
    emit MintingFinished()
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require uint8(stor4.field_0)
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowed[address(msg.sender)][address(arg1)] + arg2 >= allowed[address(msg.sender)][address(arg1)]
    allowed[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowed[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require msg.sender == destroyerAddress
    require balances[address(stor4.field_0)] >= arg1
    require arg1 > 0
    require arg1 <= balances[address(stor4.field_0)]
    balances[address(stor4.field_0)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1);
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowed[address(msg.sender)][address(arg1)]:
        allowed[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowed[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowed[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require uint8(stor4.field_0)
    require arg1
    require arg2 <= balances[address(msg.sender)]
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == minterAddress
    require not uint8(stor4.field_0)
    require balances[address(arg1)] + arg2 > balances[address(arg1)]
    require totalSupply + arg2 > totalSupply
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require uint8(stor4.field_0)
    require arg2
    require arg3 <= balances[address(arg1)]
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    allowed[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
