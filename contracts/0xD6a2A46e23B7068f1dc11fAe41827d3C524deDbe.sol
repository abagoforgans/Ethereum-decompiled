contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
uint256 lastIssuance;
uint256 sub_8a80b947;
uint256 sub_567b17ce;
array of uint256 symbol;
array of uint256 name;
uint256 decimals;
uint256 _totalSupply;
mapping of uint256 balances;
mapping of uint256 allowance;
mapping of uint256 stor62;
mapping of uint8 stor63;
uint8 sub_b2039f36;

function name() {
    return name[0 len name.length].field_0
}

function sub_155a1c4e(?) {
    return bool(sub_b2039f36)
}

function balances(address arg1) {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function decimals() {
    return decimals
}

function _totalSupply() {
    return _totalSupply
}

function sub_567b17ce(?) {
    return sub_567b17ce
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balances[address(arg1)]
}

function sub_8a80b947(?) {
    return sub_8a80b947
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length].field_0
}

function sub_b2039f36(?) {
    require msg.sender == owner
    return bool(sub_b2039f36)
}

function frozenAccount(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor63[arg1])
}

function sub_b9178e4a(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    return bool(stor63[address(arg1)])
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function lastIssuance() {
    return lastIssuance
}

function _fallback() payable {
    revert
}

function totalSupply() {
    require balances[0] <= _totalSupply
    return (_totalSupply - balances[0])
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    newOwner = arg1
}

function sub_b6986d55(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_567b17ce = arg1
    return 1
}

function sub_c05b52a6(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_b2039f36 = uint8(arg1)
    return arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function freezeAccount(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    stor63[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg1
    require arg1 <= _totalSupply
    _totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function changeName(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require msg.sender == owner
    name[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function burnFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= balances[address(arg1)]
    balances[address(arg1)] -= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    require arg2 <= _totalSupply
    _totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function sub_3aef8aeb(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require arg2 <= balances[address(arg1)]
    balances[address(arg1)] -= arg2
    require arg2 <= stor62[address(arg1)]
    stor62[address(arg1)] -= arg2
    require balances[stor51] + arg2 >= balances[stor51]
    balances[stor51] += arg2
    emit Transfer(arg2, arg1, owner);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not sub_b2039f36
    require not stor63[address(arg1)]
    require not stor63[address(msg.sender)]
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require not sub_b2039f36
    require not stor63[address(arg1)]
    require not stor63[address(arg2)]
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function initialize() {
    bool(symbol.length) = 0
    symbol.length.field_1 = 4
    symbol.length.field_8 = 'MDZA' / 256
    idx = 0
    while symbol.length + 31 / 32 > idx:
        symbol[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(name.length) = 0
    name.length.field_1 = 22
    name.length.field_8 = 'MEDOOZA Ecosystem v2.0' / 256
    idx = 0
    while name.length + 31 / 32 > idx:
        name[idx].field_0 = 0
        idx = idx + 1
        continue 
    decimals = 18
    owner = msg.sender
    _totalSupply = 1200 * 10^6 * 10^decimals
    sub_567b17ce = 300000 * 10^decimals
    balances[stor51] = _totalSupply
    emit Transfer(_totalSupply, 0, owner);
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    allowance[address(msg.sender)][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 128] = arg2
    emit Approval(address arg1, address arg2, uint256 arg3):
                  Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                  mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
                  msg.sender,
                  arg1,
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0, 1
}

function sub_d5dd23fb(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require not sub_b2039f36
    require not stor63[address(arg2)]
    require not stor63[address(msg.sender)]
    require arg1 <= sub_567b17ce
    if block.timestamp / 24 * 3600 != lastIssuance:
        lastIssuance = block.timestamp / 24 * 3600
        sub_8a80b947 = arg1
        require arg1 <= balances[stor51]
        balances[stor51] -= arg1
        require stor62[address(arg2)] + arg1 >= stor62[address(arg2)]
        stor62[address(arg2)] += arg1
        require balances[address(arg2)] + arg1 >= balances[address(arg2)]
        balances[address(arg2)] += arg1
    else:
        require sub_8a80b947 + arg1 <= sub_567b17ce
        require arg1 <= balances[stor51]
        balances[stor51] -= arg1
        require stor62[address(arg2)] + arg1 >= stor62[address(arg2)]
        stor62[address(arg2)] += arg1
        require balances[address(arg2)] + arg1 >= balances[address(arg2)]
        balances[address(arg2)] += arg1
        require sub_8a80b947 + arg1 >= sub_8a80b947
        sub_8a80b947 += arg1
    emit Transfer(arg1, owner, arg2);
    return 1
}



}
