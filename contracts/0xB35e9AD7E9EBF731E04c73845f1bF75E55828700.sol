contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 balances;
mapping of uint256 allowed;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
uint256 totalSupply;
uint256 tokenDecimal;

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

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function tokenDecimal() {
    return tokenDecimal
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function _fallback() payable {
    balances[msg.sender] += msg.value
}

function approve(address arg1, uint256 arg2) {
    allowed[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balances[msg.sender]
    balances[msg.sender] -= arg2
    balances[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require arg3 <= balances[address(arg1)]
    balances[address(arg2)] += arg3
    balances[arg1] -= arg3
    allowed[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
