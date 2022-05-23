contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
mapping of uint256 stor3;
uint256 stor5;
address stor6; offset 8
uint256 stor6;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 4
    stor0.length.field_8 = 'HTOC' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 12
    stor1.length.field_160 = 0xe688bfe4baa7e9809ae8af81
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 6
    stor5 = 0
    Mask(168, 0, stor6.field_0) = 0
    require not msg.value
    address(stor6.field_8) = msg.sender
    stor5 = 15 * 10^10
    stor3[address(msg.sender)] = 15 * 10^10
    emit Transfer(15 * 10^10, 0, msg.sender);
    return code.data[478 len 2212]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint256 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 stor6;
address stor6; offset 8

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

function stopped() {
    return bool(uint8(stor6.field_0))
}

function symbol() {
    return symbol[0 len symbol.length]
}

function findBalance(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function stop() {
    require address(stor6.field_8) == msg.sender
    uint8(stor6.field_0) = 1
}

function start() {
    require address(stor6.field_8) == msg.sender
    uint8(stor6.field_0) = 0
}

function setName(string arg1) {
    require address(stor6.field_8) == msg.sender
    name[] = Array(len=arg1.length, data=arg1[all])
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor6.field_0)
    require msg.sender
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor6.field_0)
    require msg.sender
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor6.field_0)
    require msg.sender
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
