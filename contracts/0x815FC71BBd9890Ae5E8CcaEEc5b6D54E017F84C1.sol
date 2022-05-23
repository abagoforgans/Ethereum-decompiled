contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint8 stor6;
mapping of uint256 frozenTimestamp;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor6[arg1])
}

function getFrozenAccount(address arg1) {
    require arg1
    return bool(stor6[address(arg1)])
}

function frozenTimestamp(address arg1) {
    return frozenTimestamp[arg1]
}

function getFrozenTimestamp(address arg1) {
    require arg1
    return frozenTimestamp[address(arg1)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function freezeWithTimestamp(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    frozenTimestamp[address(arg1)] = arg2
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor6[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function transferOwnershipWithBalance(address arg1) {
    require msg.sender == owner
    require arg1
    require balanceOf[msg.sender] + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[msg.sender] + balanceOf[arg1]
    balanceOf[msg.sender] = 0
    owner = arg1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require not stor6[address(msg.sender)]
    require not stor6[address(arg1)]
    require block.timestamp > frozenTimestamp[address(msg.sender)]
    require block.timestamp > frozenTimestamp[address(arg1)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
