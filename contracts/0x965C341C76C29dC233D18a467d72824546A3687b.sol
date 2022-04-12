contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
array of struct stor6;
array of struct stor7;
uint8 stor8;

function _fallback() payable {
    stor4 = 0
    bool(stor6.length) = 0
    stor6.length.field_1 = 23
    stor6.length.field_8 = 'Pre-sale Eristica Token' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor7.length) = 0
    stor7.length.field_1 = 5
    stor7.length.field_8 = 'SPERT' / 256
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor8 = 18
    require not msg.value
    mem[256] = uint256(stor6.field_0)
    idx = 256
    s = 0
    while stor6.length + 224 > idx:
        mem[idx + 32] = stor6[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor6.length) + 288] = uint256(stor7.field_0)
    idx = ceil32(stor6.length) + 288
    s = 0
    while ceil32(stor6.length) + stor7.length + 256 > idx:
        mem[idx + 32] = stor7[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    stor0 = msg.sender
    stor1[] = Array(len=stor6.length, data=mem[256 len stor6.length])
    stor2[] = Array(len=stor7.length, data=mem[ceil32(stor6.length) + 288 len stor7.length])
    stor3 = stor8
    return code.data[858 len 2275]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(address(this.address), address(arg1), arg2);
}

function burnTokens(address arg1) {
    require msg.sender == owner
    require balanceOf[address(arg1)]
    balanceOf[address(arg1)] = 0
    totalSupply -= balanceOf[address(arg1)]
    emit Burned(address(arg1), balanceOf[address(arg1)]);
}



}
