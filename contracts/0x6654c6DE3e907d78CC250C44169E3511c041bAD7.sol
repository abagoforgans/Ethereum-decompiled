contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
array of uint256 stor6;
uint8 stor7;
uint8 stor7; offset 8
uint8 stor7; offset 16
uint8 stor7; offset 24

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 3
    stor4.length.field_8 = 'YOG' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 6
    stor5.length.field_8 = 'Yogold' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor6.length) = 0
    stor6.length.field_1 = 3
    stor6.length.field_8 = 'YOG' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor7.field_0) = 16
    uint8(stor7.field_8) = 0
    uint8(stor7.field_16) = 0
    uint8(stor7.field_24) = 0
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1[address(msg.sender)] = 1000000 * 10^18
    stor3 = 1000000 * 10^18
    return code.data[937 len 3951]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
mapping of uint256 balanceOf;
mapping of uint256 statusOf;
uint256 totalSupply;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint8 contractPays; offset 8
uint8 sub_fa6f1c7d; offset 16
uint8 sub_492f12af; offset 24
uint256 stor7; offset 24
uint256 stor7; offset 16
uint256 stor7; offset 8

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sub_492f12af(?) {
    return bool(sub_492f12af)
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return address(owner)
}

function symbol() {
    return symbol[0 len symbol.length]
}

function statusOf(address arg1) {
    return statusOf[arg1]
}

function contractPays() {
    return bool(contractPays)
}

function sub_fa6f1c7d(?) {
    return bool(sub_fa6f1c7d)
}

function _fallback() payable {
    revert 
}

function sub_fde9ffd7(?) {
    require msg.sender == address(owner)
    Mask(240, 0, stor7.field_16) = Mask(240, 0, arg1)
}

function sub_ff2ea505(?) {
    require msg.sender == address(owner)
    Mask(232, 0, stor7.field_24) = Mask(232, 0, arg1)
}

function switchFeePolicy(bool arg1) {
    require msg.sender == address(owner)
    Mask(248, 0, stor7.field_8) = Mask(248, 0, arg1)
}

function changeAddressStatus(address arg1, uint8 arg2) {
    require msg.sender == address(owner)
    statusOf[address(arg1)] = arg2
}

function transferOwnership(address arg1) {
    require msg.sender == address(owner)
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function issueCoins(uint256 arg1, address arg2) {
    require msg.sender == address(owner)
    balanceOf[address(arg2)] += arg1
    totalSupply += arg1
    emit Transfer(arg1, 0, address(owner));
}

function chargebackCoins(uint256 arg1, address arg2) {
    require msg.sender == address(owner)
    require balanceOf[address(arg2)] - arg1 >= 0
    balanceOf[address(arg2)] -= arg1
    totalSupply -= arg1
    emit Transfer(-arg1, 0, address(owner));
}

function transfer(address arg1, uint256 arg2) {
    require arg2 >= 0
    require balanceOf[address(msg.sender)] >= arg2
    if not sub_492f12af:
        if not sub_fa6f1c7d:
            balanceOf[address(msg.sender)] -= arg2
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
            if not contractPays:
            call msg.sender with:
               value block.gasprice wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
        else:
            if statusOf[address(msg.sender)] == 1:
                if statusOf[address(arg1)] == 1:
                    balanceOf[address(msg.sender)] -= arg2
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    if not contractPays:
                    call msg.sender with:
                       value block.gasprice wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
    else:
        if statusOf[address(msg.sender)] != 2:
            if statusOf[address(arg1)] != 2:
                if not sub_fa6f1c7d:
                    balanceOf[address(msg.sender)] -= arg2
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    if not contractPays:
                    call msg.sender with:
                       value block.gasprice wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                else:
                    if statusOf[address(msg.sender)] == 1:
                        if statusOf[address(arg1)] == 1:
                            balanceOf[address(msg.sender)] -= arg2
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            if not contractPays:
                            call msg.sender with:
                               value block.gasprice wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
    revert 
}



}
