contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 totalSupply;
address founderAddress;
mapping of uint256 balances;
mapping of uint256 lockedBalanceOf;
array of address sub_318c45ab;

function supply() {
    return totalSupply
}

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

function sub_318c45ab(?) {
    require arg2 < uint256(sub_318c45ab[arg1])
    return address(sub_318c45ab[arg1][arg2])
}

function founder() {
    return founderAddress
}

function lockedBalanceOf(uint256 arg1, address arg2) {
    return lockedBalanceOf[arg1][address(arg2)]
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

function sub_e7d185df(?) {
    return lockedBalanceOf[arg1][arg2]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require balances[stor5] >= arg1
    balances[stor5] -= arg1
    totalSupply -= arg1
    return 1
}

function mint(uint256 arg1) {
    require msg.sender == owner
    require balances[stor5] >= arg1
    balances[stor5] += arg1
    totalSupply += arg1
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balances[address(msg.sender)] >= arg2
    require arg2 > 0
    balances[address(arg1)] += arg2
    balances[address(msg.sender)] -= arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_145ca116(?) {
    require msg.sender == owner
    require balances[address(msg.sender)] >= arg3
    require arg3 > 0
    uint256(sub_318c45ab[arg1])++
    address(sub_318c45ab[arg1][uint256(sub_318c45ab[arg1])]) = arg2
    balances[address(msg.sender)] -= arg3
    lockedBalanceOf[arg1][address(arg2)] += arg3
    emit Transfer(arg3, msg.sender, arg2);
    return 1
}

function unlockBalance(uint256 arg1) {
    require msg.sender == owner
    idx = 0
    s = 0
    s = 0
    while idx < uint256(sub_318c45ab[arg1]):
        require idx < uint256(sub_318c45ab[arg1])
        balances[address(stor8[arg1][idx])] += lockedBalanceOf[arg1][address(stor8[arg1][idx])]
        mem[0] = address(sub_318c45ab[arg1][idx])
        mem[32] = sha3(arg1, 7)
        lockedBalanceOf[arg1][address(stor8[arg1][idx])] = 0
        idx = idx + 1
        s = lockedBalanceOf[arg1][address(stor8[arg1][idx])]
        s = address(sub_318c45ab[arg1][idx])
        continue 
    uint256(sub_318c45ab[arg1]) = 0
    idx = 0
    while uint256(sub_318c45ab[arg1]) > idx:
        uint256(sub_318c45ab[arg1][idx]) = 0
        idx = idx + 1
        continue 
    return 1
}



}
