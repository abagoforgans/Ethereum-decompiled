contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;
mapping of uint256 stor6;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 9
    stor1.length.field_8 = 'Token 0.1' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 6
    stor2.length.field_8 = 'Nigger' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = 'NGR' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 18
    stor5 = 40695277 * 10^18
    require not msg.value
    stor0 = msg.sender
    stor6[stor0] = stor5
    emit TokenDeployed(stor5);
    return code.data[714 len 5294]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 standard;
array of struct name;
array of struct symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 stor7;

function name() {
    return name[0 len name.length].field_0
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    require arg1
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length].field_0
}

function _fallback() payable {
    revert
}

function balanceOfReadable(address arg1) {
    require arg1
    return (balanceOf[address(arg1)] / 10^18)
}

function canTransferFrom(address arg1, address arg2) {
    require arg1
    require arg2
    if arg1 != arg2:
        return stor7[address(arg1)][address(arg2)]
    return balanceOf[address(arg1)]
}

function approve(address arg1, uint256 arg2) {
    require arg1
    require arg1 != msg.sender
    stor7[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 > 0
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 > 0
    require balanceOf[address(msg.sender)] >= arg2
    require arg1 != msg.sender
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 > 0
    require arg1
    require arg2
    require arg2 != arg1
    require stor7[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg1)] >= arg3
    balanceOf[address(arg1)] -= arg3
    stor7[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function changeName(string arg1) {
    require msg.sender == stor0
    name[].field_0 = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 192] = uint256(name.field_0)
    idx = ceil32(arg1.length) + 192
    s = 0
    while ceil32(arg1.length) + name.length + 192 > idx + 32:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit NameChange(Array(len=name.length, data=mem[ceil32(arg1.length) + 192 len name.length + (floor32(name.length - 1) + -name.length + 32 % 32)]));
    return 1
}

function changeSymbol(string arg1) {
    require msg.sender == stor0
    symbol[].field_0 = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 192] = uint256(symbol.field_0)
    idx = ceil32(arg1.length) + 192
    s = 0
    while ceil32(arg1.length) + symbol.length + 192 > idx + 32:
        mem[idx + 32] = symbol[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit SymbolChange(Array(len=symbol.length, data=mem[ceil32(arg1.length) + 192 len symbol.length + (floor32(symbol.length - 1) + -symbol.length + 32 % 32)]));
    return 1
}



}
