contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor3;
array of uint256 stor4;
uint256 stor5;
array of uint256 stor6;
uint256 storCB0C;

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 12
    stor4.length.field_8 = ' EtherCarbon' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 2
    bool(stor6.length) = 0
    stor6.length.field_1 = 3
    stor6.length.field_8 = 'ECN' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor3 = 0x9362586f90abad2d25309033320c9affc97aeb7d
    storCB0C = 5 * 10^6 * 10^stor5
    stor0 = 5 * 10^6 * 10^stor5
    return code.data[447 len 2141]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address stor3;
array of uint256 name;
uint256 decimals;
array of uint256 symbol;

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
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require stor3 == msg.sender
    balanceOf[arg1] = balanceOf[stor3]
    balanceOf[stor3] = 0
    stor3 = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(uint256 arg1) {
    require stor3 == msg.sender
    if arg1 <= 0:
        return 0
    totalSupply += arg1
    balanceOf[stor3] += arg1
    emit Mint(arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
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
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
