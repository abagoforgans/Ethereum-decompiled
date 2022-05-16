contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
array of uint256 stor3;
array of uint256 stor4;
uint256 stor5;
uint256 stor6;
address stor7;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 8
    stor3.length.field_8 = 'MinerTop' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 2
    stor4.length.field_8 = 'MT' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 18
    stor6 = 600000000 * 10^18
    require not msg.value
    stor7 = code.data[7355 len 20]
    stor0 = stor6
    stor1[code.data[7355 len 20]] = stor6
    return code.data[564 len 6779]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of struct name;
array of struct symbol;
uint256 decimals;
address owner;

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

function Ownable() {
    owner = msg.sender
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

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
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

function setTokenName(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == owner
    mem[ceil32(arg1.length) + 128] = msg.sender
    mem[ceil32(arg1.length) + 256] = uint256(name.field_0)
    idx = ceil32(arg1.length) + 256
    s = 0
    while ceil32(arg1.length) + name.length + 256 > idx + 32:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 256] = arg1.length
    mem[ceil32(arg1.length) + name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 288 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit 0xd8eac539: msg.sender, Array(len=name.length, data=mem[ceil32(arg1.length) + 256 len name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 32], Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256), name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 128
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 288] = mem[floor32(arg1.length) + ceil32(arg1.length) + name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + -(arg1.length % 32) + 320 len arg1.length % 32]
        emit 0xd8eac539: msg.sender, Array(len=name.length, data=mem[ceil32(arg1.length) + 256 len name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 288 len floor32(arg1.length) + -ceil32(arg1.length) + 32]), name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 128
    name[].field_0 = Array(len=arg1.length, data=arg1[all])
    return 1
}

function setTokenSymbol(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == owner
    mem[ceil32(arg1.length) + 128] = msg.sender
    mem[ceil32(arg1.length) + 256] = uint256(symbol.field_0)
    idx = ceil32(arg1.length) + 256
    s = 0
    while ceil32(arg1.length) + symbol.length + 256 > idx + 32:
        mem[idx + 32] = symbol[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + symbol.length + (floor32(symbol.length - 1) + -symbol.length + 32 % 32) + 256] = arg1.length
    mem[ceil32(arg1.length) + symbol.length + (floor32(symbol.length - 1) + -symbol.length + 32 % 32) + 288 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit 0x9cc90473: msg.sender, Array(len=symbol.length, data=mem[ceil32(arg1.length) + 256 len symbol.length + (floor32(symbol.length - 1) + -symbol.length + 32 % 32) + 32], Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256), symbol.length + (floor32(symbol.length - 1) + -symbol.length + 32 % 32) + 128
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + symbol.length + (floor32(symbol.length - 1) + -symbol.length + 32 % 32) + 288] = mem[floor32(arg1.length) + ceil32(arg1.length) + symbol.length + (floor32(symbol.length - 1) + -symbol.length + 32 % 32) + -(arg1.length % 32) + 320 len arg1.length % 32]
        emit 0x9cc90473: msg.sender, Array(len=symbol.length, data=mem[ceil32(arg1.length) + 256 len symbol.length + (floor32(symbol.length - 1) + -symbol.length + 32 % 32) + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + symbol.length + (floor32(symbol.length - 1) + -symbol.length + 32 % 32) + 288 len floor32(arg1.length) + -ceil32(arg1.length) + 32]), symbol.length + (floor32(symbol.length - 1) + -symbol.length + 32 % 32) + 128
    symbol[].field_0 = Array(len=arg1.length, data=arg1[all])
    return 1
}



}
