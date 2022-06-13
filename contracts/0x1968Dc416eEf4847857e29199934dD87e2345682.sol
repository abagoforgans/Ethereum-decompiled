contract main {




// =====================  Runtime code  =====================


array of uint256 _name;
array of uint256 _symbol;
uint8 _decimals;
uint256 _totalSupply;
mapping of uint256 stor4;
mapping of uint8 stor5;
mapping of uint256 frozenFunds;
array of uint256 sub_910b3b1b;
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

function owner() {
    return owner
}

function sub_910b3b1b(?) {
    return sub_910b3b1b[address(arg1)][0 len sub_910b3b1b[address(arg1)].length]
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

function sub_bcac8636(?) {
    return sub_910b3b1b[arg1][0 len sub_910b3b1b[arg1].length]
}

function _name() {
    return _name[0 len _name.length]
}

function frozenFunds(address arg1) {
    return frozenFunds[arg1]
}

function _fallback() payable {
    stor4[address(msg.sender)] += msg.value
}

function sub_75b1726c(?) {
    return (stor4[address(arg1)] - frozenFunds[address(arg1)])
}

function transferOwnership(address arg1) {
    if msg.sender == owner:
        owner = arg1
}

function safeSub(uint256 arg1, uint256 arg2) {
    require arg2 <= arg1
    return (arg1 - arg2)
}

function balanceOf(address arg1) {
    return (stor4[address(arg1)] - frozenFunds[address(arg1)])
}

function safeAdd(uint256 arg1, uint256 arg2) {
    require arg1 + arg2 >= arg1
    require arg1 + arg2 >= arg2
    return (arg1 + arg2)
}

function sub_e984c6f1(?) {
    sub_910b3b1b[address(arg1)][] = Array(len=arg2.length, data=arg2[all])
    emit 0xa7896d20: Array(len=arg2.length, data=arg2[all]), arg1
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
    require stor4[stor8] >= arg1
    stor4[stor8] -= arg1
    _totalSupply -= arg1
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require arg2 > 0
    require stor4[address(arg1)] > arg2
    require stor4[address(arg1)] - frozenFunds[address(arg1)] > arg2
    stor4[address(arg1)] -= arg2
    _totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function freezeAmount(address arg1, uint256 arg2) {
    if owner != msg.sender:
        return 0
    require arg2 > 0
    require stor4[address(arg1)] > arg2
    require stor4[address(arg1)] - frozenFunds[address(arg1)] > arg2
    frozenFunds[address(arg1)] = arg2
    return (stor4[address(arg1)] - frozenFunds[address(arg1)])
}

function sub_81cf1cc3(?) {
    if msg.sender == owner:
        require arg1 > 0
        require stor4[stor8] + arg1 >= stor4[stor8]
        require stor4[stor8] + arg1 >= arg1
        stor4[stor8] += arg1
        require _totalSupply + arg1 >= _totalSupply
        require _totalSupply + arg1 >= arg1
        _totalSupply += arg1
}

function transfer(address arg1, uint256 arg2) {
    if owner != msg.sender:
        return 0
    require not stor5[stor8]
    require arg2 > 0
    require stor4[stor8] >= arg2
    require stor4[stor8] - frozenFunds[stor8] >= arg2
    require arg1
    stor4[stor8] -= arg2
    stor4[address(arg1)] += arg2
    require stor4[stor8] + stor4[address(arg1)] == stor4[stor8] + stor4[address(arg1)]
    emit Transfer(arg2, owner, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 > 0
    require not stor5[address(arg1)]
    require not stor5[address(arg2)]
    require stor4[address(arg1)] - frozenFunds[address(arg1)] > 0
    require not stor5[address(arg1)]
    require arg3 > 0
    require stor4[address(arg1)] >= arg3
    require stor4[address(arg1)] - frozenFunds[address(arg1)] >= arg3
    require arg2
    stor4[address(arg1)] -= arg3
    stor4[address(arg2)] += arg3
    require stor4[address(arg1)] + stor4[address(arg2)] == stor4[address(arg1)] + stor4[address(arg2)]
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
