contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
mapping of uint256 stor7;
uint16 stor9; offset 160
address stor9;
uint256 stor10;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 17
    stor2.length.field_8 = 'Global Time Coins' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = 'GTC' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 100000 * 3600
    stor5 = 10^18
    stor6 = 10^18
    uint16(stor9.field_160) = 0
    stor10 = 0
    require not msg.value
    stor4 = stor6 * stor4
    address(stor9.field_0) = code.data[4273 len 20]
    stor0 = code.data[4273 len 20]
    stor7[code.data[4273 len 20]] = stor6 * stor4
    stor1 = stor7[address(stor9.field_0)]
    return code.data[502 len 3759]
}



// =====================  Runtime code  =====================


const decimals = 18


address stor0;
uint256 availableSupply;
array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
uint256 buyPrice;
uint256 stor6;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor9; offset 160
uint8 stor9; offset 168
address stor9;
uint256 sub_80aedb08;
uint256 stor11;
uint256 stor12;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function availableSupply() {
    return availableSupply
}

function sub_80aedb08(?) {
    return sub_80aedb08
}

function sub_840bad26(?) {
    return bool(uint8(stor9.field_160))
}

function buyPrice() {
    return buyPrice
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_d8ffeba7(?) {
    return bool(uint8(stor9.field_168))
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function Crowd() {
    return stor11, stor12
}

function sub_e54c64f6(?) {
    require stor0 == msg.sender
    require uint8(stor9.field_160)
    uint8(stor9.field_160) = 0
    uint8(stor9.field_168) = 1
    return 1
}

function ChangeRate(uint256 arg1, uint256 arg2) {
    require stor0 == msg.sender
    if arg2:
        buyPrice = arg1 * stor6 / arg2
    else:
        buyPrice = arg1 * stor6
    return 1
}

function sub_6c8a3216(?) {
    require stor0 == msg.sender
    uint8(stor9.field_168) = 0
    stor11 = (24 * 3600 * arg1) + block.timestamp
    stor12 = arg2 * stor6
    uint8(stor9.field_160) = 1
    sub_80aedb08++
    return 1
}

function burn(uint256 arg1) {
    require stor0 == msg.sender
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= availableSupply
    availableSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function sub_3fe0e899(?) {
    require stor0 == msg.sender
    require arg1 + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg1
    require arg1 + totalSupply >= totalSupply
    totalSupply += arg1
    require arg1 + availableSupply >= availableSupply
    availableSupply += arg1
    emit Emit(arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function burnFrom(address arg1, uint256 arg2) {
    require stor0 == msg.sender
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    require arg2 <= availableSupply
    availableSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function Buy() payable {
    require buyPrice
    require balanceOf[address(stor9.field_0)] >= msg.value / buyPrice * stor6
    if stor12 < msg.value / buyPrice * stor6:
        stor12 = 0
        require uint8(stor9.field_160)
        uint8(stor9.field_160) = 0
        uint8(stor9.field_168) = 1
        revert
    require msg.value / buyPrice * stor6 <= stor12
    stor12 += -1 * msg.value / buyPrice * stor6
    call address(stor9.field_0) with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require msg.value / buyPrice * stor6 <= availableSupply
    availableSupply += -1 * msg.value / buyPrice * stor6
    require msg.sender
    require balanceOf[address(stor9.field_0)] >= msg.value / buyPrice * stor6
    require balanceOf[address(msg.sender)] + (msg.value / buyPrice * stor6) > balanceOf[address(msg.sender)]
    require msg.value / buyPrice * stor6 <= balanceOf[address(stor9.field_0)]
    balanceOf[address(stor9.field_0)] += -1 * msg.value / buyPrice * stor6
    require (msg.value / buyPrice * stor6) + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = (msg.value / buyPrice * stor6) + balanceOf[msg.sender]
    emit Transfer((msg.value / buyPrice * stor6), address(stor9.field_0), msg.sender);
    return msg.value, msg.value / buyPrice * stor6, stor12, address(stor9.field_0)
}

function _fallback() payable {
    require msg.value >= 4 * 10^14
    require uint8(stor9.field_160)
    if not stor12:
        require uint8(stor9.field_160)
        uint8(stor9.field_160) = 0
        uint8(stor9.field_168) = 1
    if block.timestamp >= stor11:
        require uint8(stor9.field_160)
        uint8(stor9.field_160) = 0
        uint8(stor9.field_168) = 1
    require buyPrice
    require balanceOf[address(stor9.field_0)] >= msg.value / buyPrice * stor6
    if stor12 < msg.value / buyPrice * stor6:
        stor12 = 0
        require uint8(stor9.field_160)
        uint8(stor9.field_160) = 0
        uint8(stor9.field_168) = 1
        revert
    require msg.value / buyPrice * stor6 <= stor12
    stor12 += -1 * msg.value / buyPrice * stor6
    call address(stor9.field_0) with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require msg.value / buyPrice * stor6 <= availableSupply
    availableSupply += -1 * msg.value / buyPrice * stor6
    require msg.sender
    require balanceOf[address(stor9.field_0)] >= msg.value / buyPrice * stor6
    require balanceOf[address(msg.sender)] + (msg.value / buyPrice * stor6) > balanceOf[address(msg.sender)]
    require msg.value / buyPrice * stor6 <= balanceOf[address(stor9.field_0)]
    balanceOf[address(stor9.field_0)] += -1 * msg.value / buyPrice * stor6
    require (msg.value / buyPrice * stor6) + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = (msg.value / buyPrice * stor6) + balanceOf[msg.sender]
    emit Transfer((msg.value / buyPrice * stor6), address(stor9.field_0), msg.sender);
}



}
