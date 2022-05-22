contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 _CAP;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 _totalBurnedTokens;
uint256 totalMinedSupply;
uint256 _initialSupply;
uint8 stor7;
array of uint256 name;
uint256 decimals;
array of uint256 symbol;
array of uint256 version;

function maximumSupply() {
    return _CAP
}

function mintingFinished() {
    return bool(stor7)
}

function name() {
    return name[0 len name.length]
}

function _CAP() {
    return _CAP
}

function _totalMinedSupply() {
    return totalMinedSupply
}

function decimals() {
    return decimals
}

function version() {
    return version[0 len version.length]
}

function totalBurnedTokens() {
    return _totalBurnedTokens
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function _totalBurnedTokens() {
    return _totalBurnedTokens
}

function symbol() {
    return symbol[0 len symbol.length]
}

function preMinedSupply() {
    return _initialSupply
}

function totalMinedSupply() {
    return totalMinedSupply
}

function _initialSupply() {
    return _initialSupply
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() {
    revert
}

function totalSupply() {
    require _totalBurnedTokens <= totalMinedSupply
    return (totalMinedSupply - _totalBurnedTokens)
}

function finishMinting() {
    if owner != msg.sender:
        revert with 0, 'Unauthorized Access'
    require not stor7
    stor7 = 1
    emit MintFinished()
    return 1
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Unauthorized Access'
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Unauthorized Access'
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Unauthorized Access'
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function disApprove(address arg1) {
    require not uint8(stor0.field_160)
    allowance[address(msg.sender)][address(arg1)] = 0
    require not allowance[address(msg.sender)][address(arg1)]
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor0.field_160)
    require balanceOf[address(msg.sender)] >= arg2
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 'Unauthorized Access'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sender doesn't have enough balance'
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= _CAP
    _CAP -= arg1
    require _totalBurnedTokens + arg1 >= _totalBurnedTokens
    _totalBurnedTokens += arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0, 'Unauthorized Access'
    if balanceOf[address(arg1)] < arg2:
        revert with 0, 'target balance is not enough'
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    require arg2 <= _CAP
    _CAP -= arg2
    emit Burn(arg2, arg1);
    emit Transfer(arg2, arg1, 0);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor0.field_160)
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    if balanceOf[address(msg.sender)] < allowance[address(msg.sender)][address(arg1)] + arg2:
        revert with 0, 'Callers balance not enough'
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require not uint8(stor0.field_160)
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor0.field_160)
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The amount to be decreased is incorrect'
    if allowance[address(msg.sender)][address(arg1)] <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The amount to be decreased is incorrect'
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0, 'Unauthorized Access'
    require not stor7
    require _totalBurnedTokens <= totalMinedSupply
    require arg2 >= 0
    if _CAP < totalMinedSupply - _totalBurnedTokens + arg2:
        revert with 0, 'All tokens minted, Cap reached'
    require totalMinedSupply + arg2 >= totalMinedSupply
    totalMinedSupply += arg2
    require _totalBurnedTokens <= totalMinedSupply
    if _CAP <= totalMinedSupply - _totalBurnedTokens:
        stor7 = 1
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    mem[128] = 64
    mem[160] = arg2
    mem[192 len ceil32(arg2)] = mem[128 len ceil32(arg2)]
    emit Transfer(arg2, Array(len=arg2, data=mem[192 len arg2]), 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    require not uint8(stor0.field_160)
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require not uint8(stor0.field_160)
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) <= 0:
    else:
        require ext_code.size(arg1)
        call arg1.0xc0ee0b8a with:
             gas gas_remaining wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg2, msg.sender, arg1);
    emit Transfer(arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor0.field_160)
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require not uint8(stor0.field_160)
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) <= 0:
    else:
        mem[164] = 96
        mem[196] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
        require ext_code.size(arg1)
        call arg1.0xc0ee0b8a with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg2, msg.sender, arg1);
    mem[128] = 64
    mem[160] = arg2
    mem[192 len ceil32(arg2)] = mem[128 len ceil32(arg2)]
    emit Transfer(arg2, Array(len=arg2, data=mem[192 len arg2]), msg.sender, arg1);
    return 1
}



}
