contract main {


// =======================  Init code  ======================


array of uint256 stor1;
uint8 stor2;
array of uint256 stor3;
array of uint256 stor4;
address stor5;
uint256 stor7;

function _fallback() payable {
    mem[128] = '0.0.1'
    bool(stor4.length) = 0
    stor4.length.field_1 = 5
    stor4.length.field_8 = '0.0.1' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    mem[160 len -4071] = code.data[4502 len -4071]
    stor1[] = Array(len=mem[mem[160] + 160], data=mem[mem[160] + 192 len mem[mem[160] + 160]])
    stor2 = mem[223 len 1]
    stor3[] = Array(len=mem[mem[224] + 160], data=mem[mem[224] + 192 len mem[mem[224] + 160]])
    stor7 = mem[256]
    stor5 = msg.sender
    return code.data[431 len 4071]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
array of uint256 version;
address owner;
address minterAddress;
uint256 lockedUntilBlock;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function minter() {
    return minterAddress
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function lockedUntilBlock() {
    return lockedUntilBlock
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isLocked() {
    return (lockedUntilBlock > block.number)
}

function replaceOwner(address arg1) {
    if owner != msg.sender:
        return 0
    owner = arg1
    emit NewOwner(arg1);
    return 1
}

function setMinter(address arg1) {
    if owner != msg.sender:
        return 0
    minterAddress = arg1
    emit NewMinter(arg1);
    return 1
}

function setBlockLock(uint256 arg1) {
    if owner != msg.sender:
        return 0
    lockedUntilBlock = arg1
    emit BlockLockSet(arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    if lockedUntilBlock > block.number:
        if owner != msg.sender:
            return 0
    if not arg1:
        return 0
    if arg1 > balanceOf[address(msg.sender)]:
        return 0
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, totalSupply - arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function mint(address arg1, uint256 arg2) {
    if minterAddress != msg.sender:
        if owner != msg.sender:
            return 0
    if lockedUntilBlock > block.number:
        if owner != msg.sender:
            return 0
    if totalSupply + arg2 <= totalSupply:
        return 0
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Mint(arg2, arg2 + totalSupply, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if lockedUntilBlock > block.number:
        if owner != msg.sender:
            return 0
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if arg1 == this.address:
        return 0
    if not arg1:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if lockedUntilBlock > block.number:
        if owner != arg1:
            return 0
    if balanceOf[address(arg1)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if arg2 == this.address:
        return 0
    if not arg2:
        return 0
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
