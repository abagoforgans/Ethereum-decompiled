contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
mapping of uint256 stor2;
array of uint256 stor4;
uint8 stor5;
array of uint256 stor6;
array of uint256 stor7;

function _fallback() payable {
    bool(stor7.length) = 0
    stor7.length.field_1 = 3
    stor7.length.field_8 = '1.0' / 256
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor0 = msg.sender
    stor2[address(msg.sender)] = 10 * 10^18
    stor1 = 10 * 10^18
    bool(stor4.length) = 0
    stor4.length.field_1 = 4
    stor4.length.field_8 = 'Test' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 6
    bool(stor6.length) = 0
    stor6.length.field_1 = 3
    stor6.length.field_8 = 'TST' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[494 len 2543]
}



// =====================  Runtime code  =====================


address stor0;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
array of uint256 version;

function name() {
    return name[0 len name.length]
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
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() {
    revert
}

function changeOwner(address arg1) {
    if stor0 == msg.sender:
        stor0 = arg1
}

function add(uint256 arg1) {
    if stor0 != msg.sender:
        return 0
    totalSupply += arg1
    balanceOf[address(msg.sender)] += arg1
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    if stor0 != msg.sender:
        return 0
    if balanceOf[address(msg.sender)] < arg1:
        return 0
    totalSupply -= arg1
    balanceOf[address(msg.sender)] -= arg1
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
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
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
