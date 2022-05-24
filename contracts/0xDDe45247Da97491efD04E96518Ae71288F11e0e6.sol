contract main {




// =====================  Runtime code  =====================


uint256 stor0;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
array of struct name;
array of struct symbol;
uint256 totalSupply;
uint8 decimals;

function name() {
    return name[0 len name.length].field_0
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length].field_0
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
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

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= stor0
    stor0 -= arg1
    emit Burn(arg1, msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 > 0
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function getTokenDetail() {
    mem[96] = name.length
    mem[128] = uint256(name.field_0)
    idx = 128
    s = 0
    while name.length + 96 > idx:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(name.length) + ceil32(symbol.length) + 160
    mem[ceil32(name.length) + 128] = symbol.length
    mem[0] = 5
    mem[ceil32(name.length) + 160] = uint256(symbol.field_0)
    idx = ceil32(name.length) + 160
    s = 0
    while ceil32(name.length) + symbol.length + 128 > idx:
        mem[idx + 32] = symbol[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(name.length) + ceil32(symbol.length) + 224] = totalSupply
    mem[ceil32(name.length) + ceil32(symbol.length) + 160] = 96
    mem[ceil32(name.length) + ceil32(symbol.length) + 256] = name.length
    mem[ceil32(name.length) + ceil32(symbol.length) + 288 len ceil32(name.length)] = mem[128 len ceil32(name.length)]
    mem[ceil32(name.length) + ceil32(symbol.length) + 192] = name.length + 128
    mem[name.length + ceil32(name.length) + ceil32(symbol.length) + 288] = symbol.length
    mem[name.length + ceil32(name.length) + ceil32(symbol.length) + 320 len ceil32(symbol.length)] = mem[ceil32(name.length) + 160 len ceil32(symbol.length)]
    if not symbol.length % 32:
        return Array(len=name.length, data=mem[128 len ceil32(name.length)], mem[(2 * ceil32(name.length)) + ceil32(symbol.length) + 288 len symbol.length + name.length + -ceil32(name.length) + 32]), 
               name.length + 128,
               totalSupply
    mem[floor32(symbol.length) + name.length + ceil32(name.length) + ceil32(symbol.length) + 320] = mem[floor32(symbol.length) + name.length + ceil32(name.length) + ceil32(symbol.length) + -symbol.length % 32 + 352 len symbol.length % 32]
    return Array(len=name.length, data=mem[128 len ceil32(name.length)], mem[(2 * ceil32(name.length)) + ceil32(symbol.length) + 288 len floor32(symbol.length) + name.length + -ceil32(name.length) + 64]), 
           name.length + 128,
           totalSupply
}



}
