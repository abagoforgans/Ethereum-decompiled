contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
mapping of uint256 stor6;

function _fallback() payable {
    stor0 = 100 * 10^6
    bool(stor1.length) = 0
    stor1.length.field_1 = 9
    stor1.length.field_8 = 'WrongCoin' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 4
    stor2.length.field_8 = 'WRNG' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 215
    stor4 = 1
    require not msg.value
    stor5 = msg.sender
    stor6[stor5] = stor0
    return code.data[541 len 3387]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
uint256 stor3;
uint256 stor4;
address stor5;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function setUSDExchangeRate(uint256 arg1) {
    if msg.sender == stor5:
        stor3 = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdraw(uint256 arg1) {
    if msg.sender == stor5:
        call stor5 with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
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
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    if msg.value:
        require msg.value
        require msg.value * stor3 / msg.value == stor3
    require msg.value * stor3 == (10^18 * msg.value * stor3 / 10^18) + (msg.value * stor3 % 10^18)
    require stor4 > 0
    require stor4
    require msg.value * stor3 / 10^18 == (stor4 * msg.value * stor3 / 10^18 / stor4) + (msg.value * stor3 / 10^18 % stor4)
    if balanceOf[stor5] >= msg.value * stor3 / 10^18 / stor4:
        if msg.value * stor3 / 10^18 / stor4 > 0:
            require balanceOf[address(msg.sender)] + (msg.value * stor3 / 10^18 / stor4) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += msg.value * stor3 / 10^18 / stor4
            require msg.value * stor3 / 10^18 / stor4 <= balanceOf[stor5]
            balanceOf[stor5] -= msg.value * stor3 / 10^18 / stor4
            emit Transfer((msg.value * stor3 / 10^18 / stor4), stor5, msg.sender);
}



}
