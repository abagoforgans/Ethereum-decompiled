contract main {


// =======================  Init code  ======================


address stor1;
uint8 stor2;
uint64 stor2; offset 136
uint64 stor2; offset 8
uint128 stor2; offset 56
uint128 stor2; offset 176

function _fallback() {
    stor1 = msg.sender
    emit LogSetOwner(msg.sender);
    uint8(stor2.field_0) = 0
    stor2.field_8 % 281474976710656 = 1953125 * 10^6
    Mask(80, 0, stor2.field_56) = 0
    stor2.field_136 % 1099511627776 = 39062500000
    Mask(80, 0, stor2.field_176) = 0
    return code.data[169 len 6147]
}



// =====================  Runtime code  =====================


address authorityAddress;
address owner;
uint128 sub_86aa141b;
uint128 iCOReward; offset 128
array of address stor3;
mapping of struct investors;
address sub_f6bf6846Address;
uint8 stor6; offset 160
uint8 stor6; offset 168
uint128 stor6; offset 160
address coinAddress;
uint256 cost;
uint256 tokenCost;
uint8 stor9;
uint256 totalDonations;
uint256 totalDonationsWithBonuses;

function coin() {
    return coinAddress
}

function cost() {
    return cost
}

function canGiveMoneyBack() {
    return bool(uint8(stor6.field_160))
}

function rewardSent() {
    return bool(uint8(stor6.field_168))
}

function investors(address arg1) {
    return investors[arg1].field_0, 
           bool(investors[arg1].field_256),
           bool(investors[arg1].field_264),
           bool(investors[arg1].field_272)
}

function sub_79696f41(?) {
    return bool(stor9)
}

function sub_86aa141b(?) {
    return sub_86aa141b
}

function owner() {
    return owner
}

function tokenCost() {
    return tokenCost
}

function authority() {
    return authorityAddress
}

function totalDonations() {
    return totalDonations
}

function ICOReward() {
    return iCOReward
}

function sub_f6bf6846(?) {
    return sub_f6bf6846Address
}

function totalDonationsWithBonuses() {
    return totalDonationsWithBonuses
}

function setBigICOStopped(bool arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    stor9 = uint8(arg1)
}

function setOwner(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    owner = arg1
    emit LogSetOwner(arg1);
}

function setTokenCost(uint256 arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require arg1 > 0
    tokenCost = arg1
}

function setPreICO(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require arg1
    sub_f6bf6846Address = arg1
}

function setCanGetMoneyBack(bool arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    Mask(96, 0, stor6.field_160) = Mask(96, 0, arg1)
}

function setAuthority(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    authorityAddress = arg1
    emit LogSetAuthority(arg1);
}

function startWeekFive() {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    cost = 120
    emit LogStartWeek(Array(len=17, data='Last week started'));
}

function startWeekTwo() {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    cost = 105
    emit LogStartWeek(Array(len=19, data='Second week started'));
}

function startWeekFour() {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    cost = 115
    emit LogStartWeek(Array(len=19, data='Fourth week started'));
}

function startWeekThree() {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    cost = 110
    emit LogStartWeek(Array(len=18, data='Third week started'));
}

function getMoneyBack() {
    require uint8(stor6.field_160)
    require investors[address(msg.sender)].field_0 > 0
    call msg.sender with:
       value investors[address(msg.sender)].field_0 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    investors[address(msg.sender)].field_0 = 0
    emit LogGetMoneyBack(address rg1, uint256 rg2, string rg3):
                         address(msg.sender),
                         0,
                         96,
                         14,
                         'Money returned',
}

function getEthers(uint256 arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require arg1 > 0
    require eth.balance(this.address) - arg1 >= 0
    require owner == msg.sender
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function setCoin(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require sub_86aa141b > 0
    coinAddress = arg1
    require sub_86aa141b + iCOReward >= sub_86aa141b
    require ext_code.size(arg1)
    call arg1.0xd1763180 with:
         gas gas_remaining - 710 wei
        args uint128(sub_86aa141b + iCOReward)
    require ext_call.success
}

function sendICOTokensBack(uint128 arg1) {
    require stor9
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require ext_code.size(coinAddress)
    call coinAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > arg1
    require ext_code.size(coinAddress)
    call coinAddress.0x3452f51d with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
}

function sendEthForReward() {
    require stor9
    require ext_code.size(sub_f6bf6846Address)
    call sub_f6bf6846Address.0xf0c1506c with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require not ext_call.return_data[0]
    require 3 * totalDonations >= totalDonations
    require ext_code.size(sub_f6bf6846Address)
    call sub_f6bf6846Address.0x6c67180f with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require 3 * totalDonations / 100 * ext_call.return_data[0] >= 3 * totalDonations / 100
    require ext_code.size(sub_f6bf6846Address)
    call sub_f6bf6846Address.0xf757342c with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    call msg.sender with:
       value 3 * totalDonations / 100 * ext_call.return_data[0] / 10^6 wei
         gas 2300 * is_zero(value) wei
}

function sendPOSTokens() {
    require stor9
    require not investors[address(msg.sender)].field_264
    require investors[address(msg.sender)].field_0 > 0
    require iCOReward > 0
    require investors[address(msg.sender)].field_0 * iCOReward >= investors[address(msg.sender)].field_0
    require totalDonations
    investors[address(msg.sender)].field_264 = 1
    require ext_code.size(coinAddress)
    call coinAddress.0x3452f51d with:
         gas gas_remaining - 710 wei
        args msg.sender, uint128(investors[address(msg.sender)].field_0 * iCOReward / totalDonations)
    require ext_call.success
    iCOReward = uint128(iCOReward - (investors[address(msg.sender)].field_0 * iCOReward / totalDonations))
    emit LogSendPOSTokens(address rg1, uint256 rg2, string rg3):
                          msg.sender,
                          0,
                          96,
                          17,
                          'Sent prize tokens',
}

function startWeekOne() {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require sub_f6bf6846Address
    require ext_code.size(sub_f6bf6846Address)
    call sub_f6bf6846Address.0xde2ed893 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(sub_f6bf6846Address)
    call sub_f6bf6846Address.0x46f1eafb with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[16 len 16]
    tokenCost = ext_call.return_data[0] / ext_call.return_data[16 len 16]
    cost = 100
    emit LogStartWeek(Array(len=18, data='First week started'));
}

function _fallback() payable {
    require msg.sender
    require msg.value
    require cost > 0
    require tokenCost > 0
    require sub_86aa141b > 0
    require not stor9
    investors[address(msg.sender)].field_0 += msg.value
    totalDonations += msg.value
    require tokenCost * cost >= tokenCost
    require tokenCost * cost / 100
    if msg.value <= 7 * 10^18:
        require ext_code.size(coinAddress)
        call coinAddress.0x3452f51d with:
             gas gas_remaining - 710 wei
            args msg.sender, uint128(msg.value / tokenCost * cost / 100)
        require ext_call.success
        sub_86aa141b = uint128(sub_86aa141b - (msg.value / tokenCost * cost / 100))
    else:
        require 110 * msg.value / tokenCost * cost / 100 >= msg.value / tokenCost * cost / 100
        require ext_code.size(coinAddress)
        call coinAddress.0x3452f51d with:
             gas gas_remaining - 710 wei
            args msg.sender, uint128(110 * msg.value / tokenCost * cost / 100 / 100)
        require ext_call.success
        sub_86aa141b = uint128(sub_86aa141b - (110 * msg.value / tokenCost * cost / 100 / 100))
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = stor3.length + 1
        while stor3.length > idx:
            uint256(stor3[idx]) = 0
            idx = idx + 1
            continue 
    address(stor3[stor3.length]) = msg.sender
    emit LogBuyTokens(address rg1, uint256 rg2, string rg3):
                      msg.sender,
                      0,
                      96,
                      13,
                      'Tokens bought',
}



}
