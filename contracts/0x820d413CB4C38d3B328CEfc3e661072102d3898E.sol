contract main {


// =======================  Init code  ======================


uint16 stor0;
uint64 stor0; offset 16
uint64 stor0; offset 64
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
address stor13;
uint8 stor15;
uint256 stor15; offset 8

function _fallback() payable {
    uint16(stor0.field_0) = 0
    stor0.field_16 % 281474976710656 = 15258789062500
    uint64(stor0.field_64) = 0
    stor1 = 0x74323bf7c3aeb5ab293c78a37a9323c0cbe7add9
    stor2 = stor1
    stor3 = block.timestamp
    stor4 = 1515196740
    stor5 = 1515801540
    stor6 = 1518566340
    stor7 = 11 * 10^14
    stor8 = 625 * 10^14 * 3600
    stor9 = 359801 * 10^9
    stor10 = 505615 * 10^9
    stor13 = 0x629c09f80348350216f45934ed9713ed969ce570
    uint8(stor15.field_0) = 0
    Mask(248, 0, stor15.field_8) = 0
    require not msg.value
    return code.data[491 len 3203]
}



// =====================  Runtime code  =====================


uint128 stor0;
address beneficiaryAddress;
address owner;
uint256 startdate;
uint256 deadlinePreIcoOne;
uint256 deadlinePreIcoTwo;
uint256 deadline;
uint256 vminEtherPerPurchase;
uint256 vmaxEtherPerPurchase;
uint256 price;
uint256 updatedPrice;
uint256 amountRaised;
uint256 sentToken;
address tokenRewardAddress;
mapping of uint256 balanceOf;
uint8 stor15;
uint8 stor15; offset 8
uint256 stor15; offset 8

function deadlinePreIcoTwo() {
    return deadlinePreIcoTwo
}

function deadline() {
    return deadline
}

function vmaxEtherPerPurchase() {
    return vmaxEtherPerPurchase
}

function beneficiary() {
    return beneficiaryAddress
}

function sentToken() {
    return sentToken
}

function deadlinePreIcoOne() {
    return deadlinePreIcoOne
}

function vminEtherPerPurchase() {
    return vminEtherPerPurchase
}

function tokenReward() {
    return tokenRewardAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function amountRaised() {
    return amountRaised
}

function updatedPrice() {
    return updatedPrice
}

function owner() {
    return owner
}

function price() {
    return price
}

function startdate() {
    return startdate
}

function kill() {
    require msg.sender == owner
    selfdestruct(beneficiaryAddress)
}

function MiCarsICO() {
  stop
}

function EmergencyPause() {
    require msg.sender == owner
    uint8(stor15.field_0) = 1
}

function EmergencyUnPause() {
    require msg.sender == owner
    uint8(stor15.field_0) = 0
}

function UpdatePrice(uint256 arg1) {
    require msg.sender == owner
    updatedPrice = arg1
    Mask(248, 0, stor15.field_8) = 1
}

function safeWithdrawal(uint256 arg1) {
    require msg.sender == owner
    call beneficiaryAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        emit FundTransfer(beneficiaryAddress, arg1, 0);
}

function _fallback() payable {
    require not uint8(stor15.field_0)
    if uint8(stor15.field_8):
        if bool(uint8(stor15.field_8)) != 1:
            price = 505615 * 10^9
        else:
            price = 10^18 * updatedPrice
    else:
        if block.timestamp <= deadlinePreIcoOne:
            price = 359801 * 10^9
        else:
            if block.timestamp <= deadlinePreIcoTwo:
                price = 415207 * 10^9
            else:
                price = 505615 * 10^9
    if not msg.value:
        require price
        require msg.value >= vminEtherPerPurchase
        require msg.value <= vmaxEtherPerPurchase
        balanceOf[address(msg.sender)] += msg.value
        emit FundTransfer(msg.sender, msg.value, 1);
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, 0 / price
        require ext_call.success
        amountRaised += msg.value
        sentToken += 0 / price
    else:
        require msg.value
        require msg.value * stor0 / msg.value == stor0
        require price
        require msg.value >= vminEtherPerPurchase
        require msg.value <= vmaxEtherPerPurchase
        balanceOf[address(msg.sender)] += msg.value
        emit FundTransfer(msg.sender, msg.value, 1);
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value * stor0 / price
        require ext_call.success
        amountRaised += msg.value
        sentToken += msg.value * stor0 / price
}



}
