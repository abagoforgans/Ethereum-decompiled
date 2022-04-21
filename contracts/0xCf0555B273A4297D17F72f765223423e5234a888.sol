contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
bool stor3; offset 256
uint8 stor3;
address stor3; offset 8
uint256 stor4;
uint256 stor5;
uint256 stor6;
mapping of uint8 stor9;
mapping of uint256 stor11;
uint256 stor15;
uint256 stor16;
bool stor17; offset 256
uint8 stor17;
uint8 stor17; offset 8
uint8 stor17; offset 16
uint16 stor17; offset 24

function _fallback() payable {
    uint8(stor17.field_0) = 1
    uint8(stor17.field_8) = 1
    uint8(stor17.field_16) = 1
    uint16(stor17.field_24) = 0
    stor17.field_256 % 1 = 0
    stor17.field_256 % 1 = 0
    stor17.field_256 % 1 = 0
    require not msg.value
    stor0 = msg.sender
    bool(stor1.length) = 0
    stor1.length.field_1 = 10
    stor1.length.field_8 = 'IntelliETH' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 5
    stor2.length.field_8 = 'INETH' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor3.field_0) = 18
    address(stor3.field_8) = 0x634da488e1e122a9f2ed83e91ccb6db3414e3984
    stor3.field_256 % 1 = 0
    stor4 = 500 * 10^6 * 10^(0 or 18)
    stor6 = 500 * 10^6 * 10^(0 or 18)
    stor5 = 0
    stor15 = 444444444444444
    stor16 = 0
    stor11[stor0] = 500 * 10^6 * 10^(0 or 18)
    stor9[stor0] = 1
    stor9[address(stor3.field_8)] = 1
    return code.data[608 len 7765]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address walletAddress; offset 8
uint256 totalSupply;
uint256 transSupply;
uint256 availSupply;
uint256 totalContributors;
uint256 totalContribution;
mapping of uint8 stor9;
mapping of uint256 contribution;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor13;
mapping of struct stor14;
uint256 buyPrice;
uint256 sellPrice;
uint8 stor17;
uint8 stor17; offset 8
uint8 stor17; offset 16
uint8 stor17; offset 24
uint8 stor17; offset 32
uint256 stor17; offset 32
uint256 stor17; offset 24
uint256 stor17; offset 16
uint256 stor17; offset 8

function name() {
    return name[0 len name.length]
}

function totalContribution() {
    return totalContribution
}

function totalSupply() {
    return totalSupply
}

function getContribution(address arg1) {
    require owner == msg.sender
    return contribution[address(arg1)]
}

function decimals() {
    return decimals
}

function buyStatus() {
    return bool(uint8(stor17.field_16))
}

function sellPrice() {
    return sellPrice
}

function wallet() {
    return walletAddress
}

function getDeveloper(address arg1) {
    require owner == msg.sender
    return bool(stor9[address(arg1)])
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function buyPrice() {
    return buyPrice
}

function transSupply() {
    return transSupply
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function refundStatus() {
    return bool(uint8(stor17.field_32))
}

function availSupply() {
    return availSupply
}

function tokenStatus() {
    return bool(uint8(stor17.field_0))
}

function sellStatus() {
    return bool(uint8(stor17.field_24))
}

function frozen(address arg1) {
    require owner == msg.sender
    return bool(stor13[address(arg1)])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function totalContributors() {
    return totalContributors
}

function transferStatus() {
    return bool(uint8(stor17.field_8))
}

function transferOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function setWallet(address arg1) {
    require owner == msg.sender
    walletAddress = arg1
    return 1
}

function setTokenStatus(bool arg1) {
    require owner == msg.sender
    uint8(stor17.field_0) = uint8(arg1)
    return 1
}

function freeze(address arg1, bool arg2) {
    require owner == msg.sender
    stor13[address(arg1)] = uint8(arg2)
    return 1
}

function setDeveloper(address arg1, bool arg2) {
    require owner == msg.sender
    stor9[address(arg1)] = uint8(arg2)
    return 1
}

function setBuyStatus(bool arg1) {
    require owner == msg.sender
    Mask(240, 0, stor17.field_16) = Mask(240, 0, arg1)
    return 1
}

function setBuyPrice(uint256 arg1) {
    require owner == msg.sender
    buyPrice = arg1
    emit Price(arg1, sellPrice);
    return 1
}

function setSellStatus(bool arg1) {
    require owner == msg.sender
    Mask(232, 0, stor17.field_24) = Mask(232, 0, arg1)
    return 1
}

function setSellPrice(uint256 arg1) {
    require owner == msg.sender
    sellPrice = arg1
    emit Price(buyPrice, arg1);
    return 1
}

function setRefundStatus(bool arg1) {
    require owner == msg.sender
    Mask(224, 0, stor17.field_32) = Mask(224, 0, arg1)
    return 1
}

function setTransferStatus(bool arg1) {
    require owner == msg.sender
    Mask(248, 0, stor17.field_8) = Mask(248, 0, arg1)
    return 1
}

function getBuyPrice(address arg1) {
    if not stor14[address(arg1)].field_512:
        return buyPrice
    return stor14[address(arg1)].field_0
}

function getSellPrice(address arg1) {
    if not stor14[address(arg1)].field_512:
        return sellPrice
    return stor14[address(arg1)].field_256
}

function price(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    buyPrice = arg1
    sellPrice = arg2
    emit Price(arg1, arg2);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require arg2 > 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdraw() {
    require owner == msg.sender
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function delSpecialPrice(address arg1) {
    require owner == msg.sender
    stor14[address(arg1)].field_0 = 0
    stor14[address(arg1)].field_256 = 0
    stor14[address(arg1)].field_512 = 0
    return 1
}

function setSpecialPrice(address arg1, uint256 arg2, uint256 arg3) {
    require owner == msg.sender
    stor14[address(arg1)].field_0 = arg2
    stor14[address(arg1)].field_256 = arg3
    stor14[address(arg1)].field_512 = 1
    return 1
}

function refund() payable {
    require contribution[address(msg.sender)] > 0
    if bool(uint8(stor17.field_0)) != 1:
        require 1 == bool(stor9[address(msg.sender)])
    require 1 == bool(uint8(stor17.field_32))
    contribution[address(msg.sender)] = 0
    emit Refund(contribution[address(msg.sender)], msg.sender);
    call msg.sender with:
       value contribution[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return contribution[address(msg.sender)]
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 > 0
    require allowance[address(msg.sender)][address(arg1)] + arg2 > allowance[address(msg.sender)][address(arg1)]
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    require arg2 + allowance[address(msg.sender)][address(arg1)] > 0
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require arg2 > 0
    require allowance[address(msg.sender)][address(arg1)] - arg2 >= 0
    require allowance[address(msg.sender)][address(arg1)] - arg2 < allowance[address(msg.sender)][address(arg1)]
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    require allowance[address(msg.sender)][address(arg1)] - arg2 > 0
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg1 != msg.sender
    require arg2 > 0
    require balanceOf[address(msg.sender)] - arg2 >= 0
    require balanceOf[address(msg.sender)] - arg2 < balanceOf[address(msg.sender)]
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require not stor13[address(msg.sender)]
    if bool(uint8(stor17.field_0)) != 1:
        require 1 == bool(stor9[address(msg.sender)])
    require 1 == bool(uint8(stor17.field_8))
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    if owner == arg1:
        require availSupply + arg2 > availSupply
        require transSupply - arg2 >= 0
        require transSupply - arg2 < transSupply
        require arg2 + availSupply >= availSupply
        availSupply += arg2
        require arg2 <= transSupply
        transSupply -= arg2
        require balanceOf[stor0] == availSupply
    if owner == msg.sender:
        require availSupply - arg2 >= 0
        require availSupply - arg2 < availSupply
        require transSupply + arg2 > transSupply
        require arg2 <= availSupply
        availSupply -= arg2
        require arg2 + transSupply >= transSupply
        transSupply += arg2
        require balanceOf[stor0] == availSupply
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(msg.sender)] - arg3 >= 0
    require allowance[address(arg1)][address(msg.sender)] - arg3 < allowance[address(arg1)][address(msg.sender)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require arg2 != arg1
    require arg3 > 0
    require balanceOf[address(arg1)] - arg3 >= 0
    require balanceOf[address(arg1)] - arg3 < balanceOf[address(arg1)]
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require not stor13[address(arg1)]
    if bool(uint8(stor17.field_0)) != 1:
        require 1 == bool(stor9[address(msg.sender)])
    require 1 == bool(uint8(stor17.field_8))
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    if owner == arg2:
        require availSupply + arg3 > availSupply
        require transSupply - arg3 >= 0
        require transSupply - arg3 < transSupply
        require arg3 + availSupply >= availSupply
        availSupply += arg3
        require arg3 <= transSupply
        transSupply -= arg3
        require balanceOf[stor0] == availSupply
    if owner == arg1:
        require availSupply - arg3 >= 0
        require availSupply - arg3 < availSupply
        require transSupply + arg3 > transSupply
        require arg3 <= availSupply
        availSupply -= arg3
        require arg3 + transSupply >= transSupply
        transSupply += arg3
        require balanceOf[stor0] == availSupply
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sell(uint256 arg1) payable {
    require arg1 > 0
    if bool(uint8(stor17.field_0)) != 1:
        require 1 == bool(stor9[address(msg.sender)])
    require 1 == bool(uint8(stor17.field_24))
    require 10^decimals
    require owner
    require owner != msg.sender
    require arg1 > 0
    require balanceOf[address(msg.sender)] - arg1 >= 0
    require balanceOf[address(msg.sender)] - arg1 < balanceOf[address(msg.sender)]
    require balanceOf[stor0] + arg1 > balanceOf[stor0]
    require not stor13[address(msg.sender)]
    if bool(uint8(stor17.field_0)) != 1:
        require 1 == bool(stor9[address(msg.sender)])
    require 1 == bool(uint8(stor17.field_8))
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 + balanceOf[stor0] >= balanceOf[stor0]
    balanceOf[stor0] += arg1
    if owner == owner:
        require availSupply + arg1 > availSupply
        require transSupply - arg1 >= 0
        require transSupply - arg1 < transSupply
        require arg1 + availSupply >= availSupply
        availSupply += arg1
        require arg1 <= transSupply
        transSupply -= arg1
        require balanceOf[stor0] == availSupply
    if owner == msg.sender:
        require availSupply - arg1 >= 0
        require availSupply - arg1 < availSupply
        require transSupply + arg1 > transSupply
        require arg1 <= availSupply
        availSupply -= arg1
        require arg1 + transSupply >= transSupply
        transSupply += arg1
        require balanceOf[stor0] == availSupply
    emit Transfer(arg1, msg.sender, owner);
    if not stor14[address(msg.sender)].field_512:
        emit Sell(sellPrice * arg1 / 10^decimals, arg1, msg.sender);
        call msg.sender with:
           value sellPrice * arg1 / 10^decimals wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        return (sellPrice * arg1 / 10^decimals)
    emit Sell(stor14[address(msg.sender)].field_256 * arg1 / 10^decimals, arg1, msg.sender);
    call msg.sender with:
       value stor14[address(msg.sender)].field_256 * arg1 / 10^decimals wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return (stor14[address(msg.sender)].field_256 * arg1 / 10^decimals)
}

function _fallback() payable {
    require msg.value > 0
    if bool(uint8(stor17.field_0)) != 1:
        require 1 == bool(stor9[address(msg.sender)])
    require 1 == bool(uint8(stor17.field_16))
    if not stor14[address(msg.sender)].field_512:
        require buyPrice
        require msg.sender
        require owner != msg.sender
        require msg.value * 10^decimals / buyPrice > 0
        require balanceOf[stor0] - (msg.value * 10^decimals / buyPrice) >= 0
        require balanceOf[stor0] - (msg.value * 10^decimals / buyPrice) < balanceOf[stor0]
        require balanceOf[address(msg.sender)] + (msg.value * 10^decimals / buyPrice) > balanceOf[address(msg.sender)]
        require not stor13[stor0]
        if bool(uint8(stor17.field_0)) != 1:
            require 1 == bool(stor9[address(msg.sender)])
        require 1 == bool(uint8(stor17.field_8))
        require msg.value * 10^decimals / buyPrice <= balanceOf[stor0]
        balanceOf[stor0] -= msg.value * 10^decimals / buyPrice
        require (msg.value * 10^decimals / buyPrice) + balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[address(msg.sender)] = (msg.value * 10^decimals / buyPrice) + balanceOf[msg.sender]
        if owner == msg.sender:
            require availSupply + (msg.value * 10^decimals / buyPrice) > availSupply
            require transSupply - (msg.value * 10^decimals / buyPrice) >= 0
            require transSupply - (msg.value * 10^decimals / buyPrice) < transSupply
            require (msg.value * 10^decimals / buyPrice) + availSupply >= availSupply
            availSupply += msg.value * 10^decimals / buyPrice
            require msg.value * 10^decimals / buyPrice <= transSupply
            transSupply -= msg.value * 10^decimals / buyPrice
            require balanceOf[stor0] == availSupply
        if owner == owner:
            require availSupply - (msg.value * 10^decimals / buyPrice) >= 0
            require availSupply - (msg.value * 10^decimals / buyPrice) < availSupply
            require transSupply + (msg.value * 10^decimals / buyPrice) > transSupply
            require msg.value * 10^decimals / buyPrice <= availSupply
            availSupply -= msg.value * 10^decimals / buyPrice
            require (msg.value * 10^decimals / buyPrice) + transSupply >= transSupply
            transSupply += msg.value * 10^decimals / buyPrice
            require balanceOf[stor0] == availSupply
        emit Transfer((msg.value * 10^decimals / buyPrice), owner, msg.sender);
        emit Buy(msg.value, msg.value * 10^decimals / buyPrice, msg.sender);
    else:
        require stor14[address(msg.sender)].field_0
        require msg.sender
        require owner != msg.sender
        require msg.value * 10^decimals / stor14[address(msg.sender)].field_0 > 0
        require balanceOf[stor0] - (msg.value * 10^decimals / stor14[address(msg.sender)].field_0) >= 0
        require balanceOf[stor0] - (msg.value * 10^decimals / stor14[address(msg.sender)].field_0) < balanceOf[stor0]
        require balanceOf[address(msg.sender)] + (msg.value * 10^decimals / stor14[address(msg.sender)].field_0) > balanceOf[address(msg.sender)]
        require not stor13[stor0]
        if bool(uint8(stor17.field_0)) != 1:
            require 1 == bool(stor9[address(msg.sender)])
        require 1 == bool(uint8(stor17.field_8))
        require msg.value * 10^decimals / stor14[address(msg.sender)].field_0 <= balanceOf[stor0]
        balanceOf[stor0] -= msg.value * 10^decimals / stor14[address(msg.sender)].field_0
        require (msg.value * 10^decimals / stor14[address(msg.sender)].field_0) + balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[address(msg.sender)] = (msg.value * 10^decimals / stor14[address(msg.sender)].field_0) + balanceOf[msg.sender]
        if owner == msg.sender:
            require availSupply + (msg.value * 10^decimals / stor14[address(msg.sender)].field_0) > availSupply
            require transSupply - (msg.value * 10^decimals / stor14[address(msg.sender)].field_0) >= 0
            require transSupply - (msg.value * 10^decimals / stor14[address(msg.sender)].field_0) < transSupply
            require (msg.value * 10^decimals / stor14[address(msg.sender)].field_0) + availSupply >= availSupply
            availSupply += msg.value * 10^decimals / stor14[address(msg.sender)].field_0
            require msg.value * 10^decimals / stor14[address(msg.sender)].field_0 <= transSupply
            transSupply -= msg.value * 10^decimals / stor14[address(msg.sender)].field_0
            require balanceOf[stor0] == availSupply
        if owner == owner:
            require availSupply - (msg.value * 10^decimals / stor14[address(msg.sender)].field_0) >= 0
            require availSupply - (msg.value * 10^decimals / stor14[address(msg.sender)].field_0) < availSupply
            require transSupply + (msg.value * 10^decimals / stor14[address(msg.sender)].field_0) > transSupply
            require msg.value * 10^decimals / stor14[address(msg.sender)].field_0 <= availSupply
            availSupply -= msg.value * 10^decimals / stor14[address(msg.sender)].field_0
            require (msg.value * 10^decimals / stor14[address(msg.sender)].field_0) + transSupply >= transSupply
            transSupply += msg.value * 10^decimals / stor14[address(msg.sender)].field_0
            require balanceOf[stor0] == availSupply
        emit Transfer((msg.value * 10^decimals / stor14[address(msg.sender)].field_0), owner, msg.sender);
        emit Buy(msg.value, msg.value * 10^decimals / stor14[address(msg.sender)].field_0, msg.sender);
    require totalContributors + 1 >= totalContributors
    totalContributors++
    require msg.value + totalContribution >= totalContribution
    totalContribution += msg.value
    require msg.value + contribution[address(msg.sender)] >= contribution[address(msg.sender)]
    contribution[address(msg.sender)] += msg.value
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function buy() payable {
    require msg.value > 0
    if bool(uint8(stor17.field_0)) != 1:
        require 1 == bool(stor9[address(msg.sender)])
    require 1 == bool(uint8(stor17.field_16))
    if not stor14[address(msg.sender)].field_512:
        require buyPrice
        require msg.sender
        require owner != msg.sender
        require msg.value * 10^decimals / buyPrice > 0
        require balanceOf[stor0] - (msg.value * 10^decimals / buyPrice) >= 0
        require balanceOf[stor0] - (msg.value * 10^decimals / buyPrice) < balanceOf[stor0]
        require balanceOf[address(msg.sender)] + (msg.value * 10^decimals / buyPrice) > balanceOf[address(msg.sender)]
        require not stor13[stor0]
        if bool(uint8(stor17.field_0)) != 1:
            require 1 == bool(stor9[address(msg.sender)])
        require 1 == bool(uint8(stor17.field_8))
        require msg.value * 10^decimals / buyPrice <= balanceOf[stor0]
        balanceOf[stor0] -= msg.value * 10^decimals / buyPrice
        require (msg.value * 10^decimals / buyPrice) + balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[address(msg.sender)] = (msg.value * 10^decimals / buyPrice) + balanceOf[msg.sender]
        if owner == msg.sender:
            require availSupply + (msg.value * 10^decimals / buyPrice) > availSupply
            require transSupply - (msg.value * 10^decimals / buyPrice) >= 0
            require transSupply - (msg.value * 10^decimals / buyPrice) < transSupply
            require (msg.value * 10^decimals / buyPrice) + availSupply >= availSupply
            availSupply += msg.value * 10^decimals / buyPrice
            require msg.value * 10^decimals / buyPrice <= transSupply
            transSupply -= msg.value * 10^decimals / buyPrice
            require balanceOf[stor0] == availSupply
        if owner == owner:
            require availSupply - (msg.value * 10^decimals / buyPrice) >= 0
            require availSupply - (msg.value * 10^decimals / buyPrice) < availSupply
            require transSupply + (msg.value * 10^decimals / buyPrice) > transSupply
            require msg.value * 10^decimals / buyPrice <= availSupply
            availSupply -= msg.value * 10^decimals / buyPrice
            require (msg.value * 10^decimals / buyPrice) + transSupply >= transSupply
            transSupply += msg.value * 10^decimals / buyPrice
            require balanceOf[stor0] == availSupply
        emit Transfer((msg.value * 10^decimals / buyPrice), owner, msg.sender);
        emit Buy(msg.value, msg.value * 10^decimals / buyPrice, msg.sender);
        require totalContributors + 1 >= totalContributors
        totalContributors++
        require msg.value + totalContribution >= totalContribution
        totalContribution += msg.value
        require msg.value + contribution[address(msg.sender)] >= contribution[address(msg.sender)]
        contribution[address(msg.sender)] += msg.value
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        return (msg.value * 10^decimals / buyPrice)
    require stor14[address(msg.sender)].field_0
    require msg.sender
    require owner != msg.sender
    require msg.value * 10^decimals / stor14[address(msg.sender)].field_0 > 0
    require balanceOf[stor0] - (msg.value * 10^decimals / stor14[address(msg.sender)].field_0) >= 0
    require balanceOf[stor0] - (msg.value * 10^decimals / stor14[address(msg.sender)].field_0) < balanceOf[stor0]
    require balanceOf[address(msg.sender)] + (msg.value * 10^decimals / stor14[address(msg.sender)].field_0) > balanceOf[address(msg.sender)]
    require not stor13[stor0]
    if bool(uint8(stor17.field_0)) != 1:
        require 1 == bool(stor9[address(msg.sender)])
    require 1 == bool(uint8(stor17.field_8))
    require msg.value * 10^decimals / stor14[address(msg.sender)].field_0 <= balanceOf[stor0]
    balanceOf[stor0] -= msg.value * 10^decimals / stor14[address(msg.sender)].field_0
    require (msg.value * 10^decimals / stor14[address(msg.sender)].field_0) + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = (msg.value * 10^decimals / stor14[address(msg.sender)].field_0) + balanceOf[msg.sender]
    if owner == msg.sender:
        require availSupply + (msg.value * 10^decimals / stor14[address(msg.sender)].field_0) > availSupply
        require transSupply - (msg.value * 10^decimals / stor14[address(msg.sender)].field_0) >= 0
        require transSupply - (msg.value * 10^decimals / stor14[address(msg.sender)].field_0) < transSupply
        require (msg.value * 10^decimals / stor14[address(msg.sender)].field_0) + availSupply >= availSupply
        availSupply += msg.value * 10^decimals / stor14[address(msg.sender)].field_0
        require msg.value * 10^decimals / stor14[address(msg.sender)].field_0 <= transSupply
        transSupply -= msg.value * 10^decimals / stor14[address(msg.sender)].field_0
        require balanceOf[stor0] == availSupply
    if owner == owner:
        require availSupply - (msg.value * 10^decimals / stor14[address(msg.sender)].field_0) >= 0
        require availSupply - (msg.value * 10^decimals / stor14[address(msg.sender)].field_0) < availSupply
        require transSupply + (msg.value * 10^decimals / stor14[address(msg.sender)].field_0) > transSupply
        require msg.value * 10^decimals / stor14[address(msg.sender)].field_0 <= availSupply
        availSupply -= msg.value * 10^decimals / stor14[address(msg.sender)].field_0
        require (msg.value * 10^decimals / stor14[address(msg.sender)].field_0) + transSupply >= transSupply
        transSupply += msg.value * 10^decimals / stor14[address(msg.sender)].field_0
        require balanceOf[stor0] == availSupply
    emit Transfer((msg.value * 10^decimals / stor14[address(msg.sender)].field_0), owner, msg.sender);
    emit Buy(msg.value, msg.value * 10^decimals / stor14[address(msg.sender)].field_0, msg.sender);
    require totalContributors + 1 >= totalContributors
    totalContributors++
    require msg.value + totalContribution >= totalContribution
    totalContribution += msg.value
    require msg.value + contribution[address(msg.sender)] >= contribution[address(msg.sender)]
    contribution[address(msg.sender)] += msg.value
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return (msg.value * 10^decimals / stor14[address(msg.sender)].field_0)
}



}
