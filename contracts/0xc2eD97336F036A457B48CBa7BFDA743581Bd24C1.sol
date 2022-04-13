contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
mapping of uint256 stor3;
uint256 stor5;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 10
    stor0.length.field_8 = 'TestToken5' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'TT5' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 6
    stor5 = 10^17
    require not msg.value
    stor3[code.data[2558 len 20]] = 4 * 10^16
    stor3[code.data[2590 len 20]] = 35 * 10^15
    stor3[code.data[2622 len 20]] = 15 * 10^15
    stor3[code.data[2654 len 20]] = 10^16
    emit code.data[2514 len 32]: 4 * 10^16, 0, code.data[2558 len 20]
    emit code.data[2514 len 32]: 35 * 10^15, 0, code.data[2590 len 20]
    emit code.data[2514 len 32]: 15 * 10^15, 0, code.data[2622 len 20]
    emit code.data[2514 len 32]: 10^16, 0, code.data[2654 len 20]
    return code.data[689 len 1825]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint256 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;

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
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
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
