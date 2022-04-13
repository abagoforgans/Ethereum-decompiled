contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor1;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
uint8 stor6;
uint256 stor7;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 13
    stor3.length.field_8 = 'NATVCoin v1.0' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor0 = msg.sender
    stor0 = msg.sender
    stor1[stor0] = 3 * 10^15
    stor7 = 3 * 10^15
    stor6 = 8
    bool(stor5.length) = 0
    stor5.length.field_1 = 4
    stor5.length.field_8 = 'NATV' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 15
    stor4.length.field_8 = 'Native Currency' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[729 len 4215]
}



// =====================  Runtime code  =====================


address adminAddress;
mapping of uint256 balanceOf;
mapping of uint256 sub_d8495aae;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 coinSupply;
uint256 sellPrice;
uint256 buyPrice;
mapping of uint8 stor11;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return coinSupply
}

function decimals() {
    return decimals
}

function coinSupply() {
    return coinSupply
}

function sellPrice() {
    return sellPrice
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function buyPrice() {
    return buyPrice
}

function symbol() {
    return symbol[0 len symbol.length]
}

function Balances(address arg1) {
    return balanceOf[arg1]
}

function frozenAccount(address arg1) {
    return bool(stor11[arg1])
}

function sub_d8495aae(?) {
    return sub_d8495aae[arg1][arg2]
}

function allowance(address arg1, address arg2) {
    return sub_d8495aae[address(arg1)][address(arg2)]
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    sub_d8495aae[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[stor0] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[stor0] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, adminAddress, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= sub_d8495aae[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    sub_d8495aae[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
