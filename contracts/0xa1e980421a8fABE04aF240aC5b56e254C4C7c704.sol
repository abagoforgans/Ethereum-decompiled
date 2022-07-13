contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
mapping of uint256 stor3;
uint256 stor5;
uint8 stor6;
address stor6; offset 8

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 3
    stor0.length.field_8 = 'UTS' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 24
    stor1.length.field_64 = 0xe4bc98e8bebee5b881efbc8ce5afb9e6a087e7be8ee58583
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 0
    stor5 = 0
    uint8(stor6.field_0) = 0
    address(stor6.field_8) = 0
    require not msg.value
    address(stor6.field_8) = msg.sender
    stor5 = 913933333
    stor3[code.data[4003 len 20]] = 913933333
    emit Transfer(913933333, 0, code.data[4003 len 20]);
    return code.data[717 len 3274]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint256 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 stopped;

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
    return bool(stopped)
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require msg.sender != 0
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require msg.sender != 0
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require msg.sender != 0
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
