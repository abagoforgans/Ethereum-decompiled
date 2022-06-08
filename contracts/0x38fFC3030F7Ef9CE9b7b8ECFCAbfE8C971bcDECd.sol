contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
array of uint256 version;

function name() {
    return name[0 len name.length].field_0
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

function symbol() {
    return symbol[0 len symbol.length].field_0
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function SCARABToken1() {
    balanceOf[address(msg.sender)] = 10^15
    totalSupply = 10^15
    bool(name.length) = 0
    name.length.field_1 = 12
    name.length.field_8 = 'SCARAB Token' / 256
    idx = 0
    while name.length + 31 / 32 > idx:
        name[idx].field_0 = 0
        idx = idx + 1
        continue 
    decimals = 4
    bool(symbol.length) = 0
    symbol.length.field_1 = 5
    symbol.length.field_8 = 'SCARB' / 256
    idx = 0
    while symbol.length + 31 / 32 > idx:
        symbol[idx].field_0 = 0
        idx = idx + 1
        continue 
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    mem[ceil32(arg3.length) + 128] = Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)'))
    mem[ceil32(arg3.length) + 228 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        call arg1 with:
           funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
             gas gas_remaining wei
            args msg.sender, arg2, address(this.address), Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 228] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 260 len arg3.length % 32]
        call arg1 with:
           funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
             gas gas_remaining wei
            args msg.sender, arg2, address(this.address), Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 228 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
    require ext_call.success
    return 1
}



}
