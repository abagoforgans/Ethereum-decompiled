contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor2;
mapping of uint256 stor3;
array of uint256 stor5;
uint8 stor6;
array of uint256 stor7;
array of uint256 stor8;
uint8 stor9;

function _fallback() payable {
    bool(stor8.length) = 0
    stor8.length.field_1 = 4
    stor8.length.field_8 = 'H0.1' / 256
    idx = 0
    while stor8.length + 31 / 32 > idx:
        stor8[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor3[address(msg.sender)] = 110000000 * 10^18
    stor0 = 210000000 * 10^18
    stor2 = 100000000 * 10^18
    bool(stor5.length) = 0
    stor5.length.field_1 = 14
    stor5.length.field_8 = 'Best1CoinToken' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 18
    bool(stor7.length) = 0
    stor7.length.field_1 = 3
    stor7.length.field_8 = 'B1C' / 256
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor1 = msg.sender
    stor9 = 1
    return code.data[692 len 4540]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
address targetAddress;
uint256 totalCount;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
array of uint256 version;
uint8 stor9;

function name() {
    return name[0 len name.length]
}

function canIssue() {
    return bool(stor9)
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function totalCount() {
    return totalCount
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

function target() {
    return targetAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdrawEther(uint256 arg1) {
    require msg.sender == targetAddress
    call targetAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    if allowance[address(arg1)][address(msg.sender)] < -1:
        allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require totalCount > 0
    require msg.value >= 10^16
    if targetAddress != msg.sender:
        if stor9:
            balanceOf[address(msg.sender)] += 1000 * msg.value
            if 1000 * msg.value <= totalCount:
                totalCount += -1000 * msg.value
            else:
                balanceOf[stor1] = balanceOf[stor1] - (1000 * msg.value) + totalCount
                totalCount = 0
                stor9 = 0
            emit Issue(msg.sender, msg.value, 1000 * msg.value);
    call targetAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
