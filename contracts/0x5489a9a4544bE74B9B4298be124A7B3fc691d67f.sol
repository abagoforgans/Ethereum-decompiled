contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
uint256 stor4;
mapping of uint256 stor5;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 12
    stor1.length.field_8 = 'TTT on chain' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = 'TTT' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 18
    stor4 = 1500 * 10^6
    require not msg.value
    stor0 = msg.sender
    stor5[stor0] = stor4
    return code.data[532 len 3625]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowanceOf;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function allowanceOf(address arg1, address arg2) {
    return allowanceOf[address(arg1)][address(arg2)]
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
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowanceOf[address(msg.sender)][address(arg1)] = arg2
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

function burnFrom(address arg1, uint256 arg2) {
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowanceOf[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    allowanceOf[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowanceOf[address(arg1)][address(msg.sender)]
    allowanceOf[address(arg1)][address(msg.sender)] -= arg3
    if balanceOf[address(msg.sender)] >= arg3:
        if arg3 > 0:
            if balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]:
                balanceOf[address(msg.sender)] -= arg3
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, msg.sender, arg2);
    return 1
}



}
