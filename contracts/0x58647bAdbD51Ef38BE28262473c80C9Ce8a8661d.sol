contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
address stor6;
mapping of uint256 stor7;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 14
    stor0.length.field_8 = 'Free Coin Gold' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 5
    stor1.length.field_8 = 'FREEG' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    stor4 = 10^13
    stor5 = 10^12
    require not msg.value
    stor3 = 10^stor2 * stor4
    stor7[address(msg.sender)] = 10^stor2 * stor4
    stor6 = msg.sender
    return code.data[433 len 1439]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 sub_0f8a89b8;
uint256 buyPrice;
address creatorAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function creator() {
    return creatorAddress
}

function name() {
    return name[0 len name.length]
}

function sub_0f8a89b8(?) {
    return sub_0f8a89b8
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

function buyPrice() {
    return buyPrice
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function _fallback() payable {
    require balanceOf[stor6] >= msg.value * buyPrice
    require msg.value < 10^17
    balanceOf[address(msg.sender)] += msg.value * buyPrice
    balanceOf[stor6] += -1 * msg.value * buyPrice
    emit Transfer((msg.value * buyPrice), creatorAddress, msg.sender);
    call creatorAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
