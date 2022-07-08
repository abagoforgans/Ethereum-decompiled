contract main {




// =====================  Runtime code  =====================


array of uint256 _name;
array of uint256 _symbol;
uint8 _decimals;
uint256 _totalSupply;
mapping of uint256 balanceOf;
mapping of uint8 stor5;
mapping of uint256 frozenFunds;
address owner;

function name() {
    return _name[0 len _name.length]
}

function totalSupply() {
    return _totalSupply
}

function decimals() {
    return _decimals
}

function _decimals() {
    return _decimals
}

function _totalSupply() {
    return _totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return _symbol[0 len _symbol.length]
}

function _symbol() {
    return _symbol[0 len _symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor5[arg1])
}

function _name() {
    return _name[0 len _name.length]
}

function frozenFunds(address arg1) {
    return frozenFunds[arg1]
}

function _fallback() payable {
    balanceOf[address(msg.sender)] += msg.value
}

function transferOwnership(address arg1) {
    if msg.sender == owner:
        owner = arg1
}

function sub_75b1726c(?) {
    return (balanceOf[address(arg1)] - frozenFunds[address(arg1)])
}

function sub_81cf1cc3(?) {
    if owner != msg.sender:
    require arg1 > 0
    balanceOf[stor7] += arg1
    _totalSupply += arg1
    require _totalSupply == balanceOf[stor7]
}

function freezeAccount(address arg1, bool arg2) {
    if owner != msg.sender:
        return 0
    stor5[address(arg1)] = uint8(arg2)
    emit FrozenFunds(arg2, arg1);
    return 1
}

function burn(uint256 arg1) {
    if owner != msg.sender:
        return 0
    require arg1 > 0
    require balanceOf[stor7] >= arg1
    balanceOf[stor7] -= arg1
    _totalSupply -= arg1
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require arg2 > 0
    require balanceOf[address(arg1)] > arg2
    require balanceOf[address(arg1)] - frozenFunds[address(arg1)] > arg2
    balanceOf[address(arg1)] -= arg2
    _totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function freezeAmount(address arg1, uint256 arg2) {
    if owner != msg.sender:
        return 0
    require arg2 > 0
    require balanceOf[address(arg1)] > arg2
    require balanceOf[address(arg1)] - frozenFunds[address(arg1)] > arg2
    frozenFunds[address(arg1)] = arg2
    return (balanceOf[address(arg1)] - frozenFunds[address(arg1)])
}

function transfer(address arg1, uint256 arg2) {
    require not stor5[address(msg.sender)]
    require arg2 > 0
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(msg.sender)] - frozenFunds[address(msg.sender)] >= arg2
    require arg1 != msg.sender
    require arg1
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 > 0
    require balanceOf[address(arg1)] - frozenFunds[address(arg1)] > 0
    require not stor5[address(arg1)]
    require arg3 > 0
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg1)] - frozenFunds[address(arg1)] >= arg3
    require arg2 != msg.sender
    require arg2
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    require balanceOf[address(arg1)] + balanceOf[address(arg2)] == balanceOf[address(arg1)] + balanceOf[address(arg2)]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_2d2cf4e9(?) {
    if msg.sender == owner:
        require arg2 > 0
        balanceOf[address(arg1)] += arg2
        _totalSupply += arg2
        require not stor5[0]
        require arg2 > 0
        require balanceOf[0] >= arg2
        require balanceOf[0] - frozenFunds[0] >= arg2
        require owner != msg.sender
        require owner
        balanceOf[0] -= arg2
        balanceOf[stor7] += arg2
        require balanceOf[0] + balanceOf[stor7] == balanceOf[0] + balanceOf[stor7]
        emit Transfer(arg2, 0, owner);
        require not stor5[stor7]
        require arg2 > 0
        require balanceOf[stor7] >= arg2
        require balanceOf[stor7] - frozenFunds[stor7] >= arg2
        require arg1 != msg.sender
        require arg1
        balanceOf[stor7] -= arg2
        balanceOf[address(arg1)] += arg2
        require balanceOf[stor7] + balanceOf[address(arg1)] == balanceOf[stor7] + balanceOf[address(arg1)]
        emit Transfer(arg2, owner, arg1);
}



}
