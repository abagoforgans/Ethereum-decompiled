contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint64 stor4;
uint64 stor4; offset 64
uint256 stor4; offset 64
array of uint256 stor5;
array of uint256 stor6;
array of uint256 stor7;
uint8 stor8;
uint256 stor9;
bool stor10; offset 256
uint8 stor10;
uint8 stor10; offset 8
uint32 stor10; offset 16
uint32 stor10; offset 40
mapping of uint256 stor12;

function _fallback() payable {
    bool(stor5.length) = 0
    stor5.length.field_1 = 9
    stor5.length.field_8 = 'Token 0.1' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor6.length) = 0
    stor6.length.field_1 = 10
    stor6.length.field_8 = 'CardoToken' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor7.length) = 0
    stor7.length.field_1 = 3
    stor7.length.field_8 = 'CDT' / 256
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor8 = 1
    stor9 = 24 * 10^9
    uint8(stor10.field_0) = 1
    uint8(stor10.field_8) = 0
    stor10.field_16 % 16777216 = 468750
    uint32(stor10.field_40) = 0
    stor10.field_256 % 1 = 0
    require not msg.value
    stor0 = msg.sender
    stor12[address(msg.sender)] = stor9
    stor1 = stor9
    stor0 = msg.sender
    uint64(stor4.field_0) = code.data[7476 len 8]
    Mask(192, 0, stor4.field_64) = 0
    uint64(stor4.field_64) = code.data[7444 len 8]
    return code.data[664 len 6756]
}



// =====================  Runtime code  =====================


address owner;
uint256 totalSupply;
mapping of uint256 stor3;
uint64 sellPrice;
uint64 buyPrice; offset 64
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 initialSupply;
uint8 stor10;
uint64 purchaseLimit; offset 8
uint256 stor11;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 unlockDate;
mapping of uint8 stor15;
mapping of uint256 sub_6f306e9c;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function purchaseLimit() {
    return purchaseLimit
}

function decimals() {
    return decimals
}

function initialSupply() {
    return initialSupply
}

function available() {
    return bool(stor10)
}

function unlockDate(address arg1) {
    return unlockDate[arg1]
}

function sellPrice() {
    return sellPrice
}

function standard() {
    return standard[0 len standard.length]
}

function sub_6f306e9c(?) {
    return sub_6f306e9c[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function buyPrice() {
    return buyPrice
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor15[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function destroy() {
    require owner == msg.sender
    selfdestruct(owner)
}

function sub_964d8908(?) {
    require owner == msg.sender
    decimals = arg1
}

function sub_9992e2dd(?) {
    require owner == msg.sender
    stor10 = uint8(arg1)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function sub_20dea885(?) {
    require owner == msg.sender
    sellPrice = arg1
    buyPrice = arg2
}

function lock(address arg1) {
    require owner == msg.sender
    stor15[address(arg1)] = 1
    emit FrozenFunds(address(arg1), 1);
}

function unlock(address arg1) {
    require owner == msg.sender
    stor15[address(arg1)] = 0
    emit FrozenFunds(address(arg1), 0);
}

function approve(address arg1, uint256 arg2) {
    stor3[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdraw() {
    require owner == msg.sender
    call owner with:
       value stor11 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor11 = 0
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    stor3[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require arg2 + balanceOf[address(arg1)] >= arg2
    balanceOf[address(arg1)] += arg2
    require arg2 + totalSupply >= totalSupply
    require arg2 + totalSupply >= arg2
    totalSupply += arg2
    emit 0xa50a8510: arg2, 0, this.address
    emit 0xa50a8510: arg2, this.address, arg1
    emit TokenMinted(address(arg1), arg2);
}

function sell(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    require not stor15[address(msg.sender)]
    require arg1 + balanceOf[stor0] >= balanceOf[stor0]
    require arg1 + balanceOf[stor0] >= arg1
    balanceOf[stor0] += arg1
    require balanceOf[msg.sender] >= arg1
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] - arg1
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0xa50a8510: arg1, msg.sender, owner
    return (arg1 * sellPrice)
}

function sub_51268282(?) {
    require (60 * arg1) + block.timestamp >= block.timestamp
    require (60 * arg1) + block.timestamp >= 60 * arg1
    unlockDate[address(msg.sender)] = (60 * arg1) + block.timestamp
    if arg1 == 6:
        sub_6f306e9c[address(msg.sender)] = 0
    else:
        if 12 == arg1:
            sub_6f306e9c[address(msg.sender)] = 7
        else:
            if 24 == arg1:
                sub_6f306e9c[address(msg.sender)] = 15
            else:
                if 36 == arg1:
                    sub_6f306e9c[address(msg.sender)] = 20
    stor15[address(msg.sender)] = 1
    emit FrozenFunds(msg.sender, 1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor15[address(msg.sender)]
    if balanceOf[address(msg.sender)] < arg2:
        emit 0x1afeea2e: msg.sender, balanceOf[address(msg.sender)], arg2
        revert
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require arg2 + balanceOf[address(arg1)] >= arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit 0xa50a8510: arg2, msg.sender, arg1
    return 1
}

function _fallback() payable {
    emit 0xfb0a5ae8: bool(stor10)
    require stor10
    require buyPrice
    stor11 += msg.value
    require balanceOf[address(msg.sender)] + (msg.value / buyPrice) >= msg.value / buyPrice
    require balanceOf[address(msg.sender)] + (msg.value / buyPrice) >= balanceOf[address(msg.sender)]
    if balanceOf[address(msg.sender)] + (msg.value / buyPrice) > purchaseLimit:
        require balanceOf[address(msg.sender)] + (msg.value / buyPrice) >= msg.value / buyPrice
        require balanceOf[address(msg.sender)] + (msg.value / buyPrice) >= balanceOf[address(msg.sender)]
        emit 0xadf88ba0: msg.sender, balanceOf[address(msg.sender)] + (msg.value / buyPrice), purchaseLimit
        revert
    require (msg.value / buyPrice) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    require (msg.value / buyPrice) + balanceOf[address(msg.sender)] >= msg.value / buyPrice
    balanceOf[address(msg.sender)] += msg.value / buyPrice
    require balanceOf[stor0] >= msg.value / buyPrice
    balanceOf[stor0] -= msg.value / buyPrice
    emit 0xa50a8510: (msg.value / buyPrice), owner, msg.sender
}

function buy() payable {
    emit 0xfb0a5ae8: bool(stor10)
    require stor10
    require buyPrice
    require balanceOf[address(msg.sender)] + (msg.value / buyPrice) >= msg.value / buyPrice
    require balanceOf[address(msg.sender)] + (msg.value / buyPrice) >= balanceOf[address(msg.sender)]
    if balanceOf[address(msg.sender)] + (msg.value / buyPrice) > purchaseLimit:
        require balanceOf[address(msg.sender)] + (msg.value / buyPrice) >= msg.value / buyPrice
        require balanceOf[address(msg.sender)] + (msg.value / buyPrice) >= balanceOf[address(msg.sender)]
        emit 0xadf88ba0: msg.sender, balanceOf[address(msg.sender)] + (msg.value / buyPrice), purchaseLimit
        revert
    stor11 += msg.value
    require (msg.value / buyPrice) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    require (msg.value / buyPrice) + balanceOf[address(msg.sender)] >= msg.value / buyPrice
    balanceOf[address(msg.sender)] += msg.value / buyPrice
    require balanceOf[stor0] >= msg.value / buyPrice
    balanceOf[stor0] -= msg.value / buyPrice
    emit 0xa50a8510: (msg.value / buyPrice), owner, msg.sender
    return (msg.value / buyPrice)
}

function requestReward() {
    require block.timestamp >= unlockDate[address(msg.sender)]
    stor15[address(msg.sender)] = 0
    emit FrozenFunds(msg.sender, 0);
    if balanceOf[address(msg.sender)]:
        require balanceOf[address(msg.sender)]
        require sub_6f306e9c[address(msg.sender)] * balanceOf[address(msg.sender)] / balanceOf[address(msg.sender)] == sub_6f306e9c[address(msg.sender)]
    require not stor15[stor0]
    if balanceOf[stor0] < sub_6f306e9c[address(msg.sender)] * balanceOf[address(msg.sender)] / 100:
        emit 0x1afeea2e: owner, balanceOf[stor0], sub_6f306e9c[address(msg.sender)] * balanceOf[address(msg.sender)] / 100
        revert
    require (sub_6f306e9c[address(msg.sender)] * balanceOf[address(msg.sender)] / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    require (sub_6f306e9c[address(msg.sender)] * balanceOf[address(msg.sender)] / 100) + balanceOf[address(msg.sender)] >= sub_6f306e9c[address(msg.sender)] * balanceOf[address(msg.sender)] / 100
    require (sub_6f306e9c[address(msg.sender)] * balanceOf[address(msg.sender)] / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    require balanceOf[stor0] >= sub_6f306e9c[address(msg.sender)] * balanceOf[address(msg.sender)] / 100
    balanceOf[stor0] -= sub_6f306e9c[address(msg.sender)] * balanceOf[address(msg.sender)] / 100
    require (sub_6f306e9c[address(msg.sender)] * balanceOf[address(msg.sender)] / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
    require (sub_6f306e9c[address(msg.sender)] * balanceOf[address(msg.sender)] / 100) + balanceOf[msg.sender] >= sub_6f306e9c[address(msg.sender)] * balanceOf[address(msg.sender)] / 100
    balanceOf[address(msg.sender)] = (sub_6f306e9c[address(msg.sender)] * balanceOf[address(msg.sender)] / 100) + balanceOf[msg.sender]
    emit 0xa50a8510: (sub_6f306e9c[address(msg.sender)] * balanceOf[address(msg.sender)] / 100), owner, msg.sender
    emit 0xa50a8510: (sub_6f306e9c[address(msg.sender)] * balanceOf[address(msg.sender)] / 100), owner, msg.sender
    sub_6f306e9c[address(msg.sender)] = 0
    return 1
}



}
