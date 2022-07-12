contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
array of uint256 version;
uint256 totalSupply;
mapping of uint256 balances;
mapping of uint256 allowed;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function decimals() {
    return decimals
}

function version() {
    return version[0 len version.length]
}

function allowed(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowed[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 != 0
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, msg.sender);
    owner = msg.sender
    newOwner = 0
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= balances[address(msg.sender)]
    require arg1 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
}

function setName(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require msg.sender == owner
    name[] = Array(len=arg1.length, data=arg1[all])
}

function setSymbol(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require msg.sender == owner
    symbol[] = Array(len=arg1.length, data=arg1[all])
}

function decreaseApproval(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 <= allowed[address(msg.sender)][address(arg1)]:
        allowed[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowed[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowed[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require allowed[address(msg.sender)][address(arg1)] + arg2 >= allowed[address(msg.sender)][address(arg1)]
    require allowed[address(msg.sender)][address(arg1)] + arg2 >= arg2
    allowed[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowed[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require balances[address(msg.sender)] >= arg2
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    require balances[address(arg1)] + arg2 >= arg2
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg2
    require balances[address(arg1)] >= arg3
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    require balances[address(arg2)] + arg3 >= arg3
    balances[address(arg2)] += arg3
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    allowed[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
