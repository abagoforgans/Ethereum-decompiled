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
    return code.data[169 len 8102]
}



// =====================  Runtime code  =====================


address authorityAddress;
address owner;
uint128 stor2;
uint128 stor2; offset 128
array of address stor3;
mapping of struct investors;
address sub_f6bf6846Address;
uint8 stor6; offset 160
uint8 stor6; offset 168
uint8 stor6; offset 176
uint8 stor6; offset 184
uint8 stor6; offset 192
uint8 stor6; offset 200
uint8 stor6; offset 208
uint64 stor6; offset 200
uint64 stor6; offset 192
uint128 stor6; offset 184
uint128 stor6; offset 176
uint128 stor6; offset 168
uint128 stor6; offset 160
address coinAddress;
uint256 cost;
uint256 tokenCost;
uint8 stor9;
uint256 totalDonations;
uint256 totalDonationsWithBonuses;

function sub_04d86f17(?) {
    return bool(uint8(stor6.field_160))
}

function coin() {
    return coinAddress
}

function cost() {
    return cost
}

function canGiveMoneyBack() {
    return bool(uint8(stor6.field_200))
}

function rewardSent() {
    return bool(uint8(stor6.field_208))
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

function owner() {
    return owner
}

function tokenCost() {
    return tokenCost
}

function sub_a8b65cef(?) {
    return bool(uint8(stor6.field_176))
}

function authority() {
    return authorityAddress
}

function sub_d63e2282(?) {
    return bool(uint8(stor6.field_184))
}

function totalDonations() {
    return totalDonations
}

function sub_e1538a8b(?) {
    return bool(uint8(stor6.field_168))
}

function sub_e9dede95(?) {
    return bool(uint8(stor6.field_192))
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

function sub_3f465a5c(?) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    uint64(stor6.field_192) = uint64(arg1)
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

function sub_01cc57a9(?) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    Mask(80, 0, stor6.field_176) = Mask(80, 0, arg1)
}

function sub_2d39bc14(?) {
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

function sub_687aefbb(?) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    Mask(72, 0, stor6.field_184) = Mask(72, 0, arg1)
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

function sub_db68601f(?) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    Mask(88, 0, stor6.field_168) = Mask(88, 0, arg1)
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
    stor6.field_200 % 72057594037927936 = arg1 % 72057594037927936
}

function getMoneyBack() {
    require uint8(stor6.field_200)
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

function transferOwnership(address arg1) {
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
    call coinAddress.0x13af4035 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    emit LogTransferOwnership(address(arg1), Array(len=17, data='Changed ownership'));
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
    require sub_f6bf6846Address
    require uint8(stor6.field_192)
    require ext_code.size(sub_f6bf6846Address)
    call sub_f6bf6846Address.0x621a9d93 with:
         gas gas_remaining - 710 wei
        args 1
    require ext_call.success
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
    require sub_f6bf6846Address
    require uint8(stor6.field_168)
    require ext_code.size(sub_f6bf6846Address)
    call sub_f6bf6846Address.0x621a9d93 with:
         gas gas_remaining - 710 wei
        args 1
    require ext_call.success
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
    require sub_f6bf6846Address
    require uint8(stor6.field_184)
    require ext_code.size(sub_f6bf6846Address)
    call sub_f6bf6846Address.0x621a9d93 with:
         gas gas_remaining - 710 wei
        args 1
    require ext_call.success
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
    require sub_f6bf6846Address
    require uint8(stor6.field_176)
    require ext_code.size(sub_f6bf6846Address)
    call sub_f6bf6846Address.0x621a9d93 with:
         gas gas_remaining - 710 wei
        args 1
    require ext_call.success
    cost = 110
    emit LogStartWeek(Array(len=18, data='Third week started'));
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
    require uint128(stor2.field_0) > 0
    require uint128(stor2.field_128) > 0
    require arg1
    coinAddress = arg1
    require uint128(stor2.field_0) + uint128(stor2.field_128) >= uint128(stor2.field_0)
    require ext_code.size(arg1)
    call arg1.0x69d3e20e with:
         gas gas_remaining - 710 wei
        args uint128(uint128(stor2.field_0) + uint128(stor2.field_128))
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
    require uint8(stor6.field_160)
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

function sendPOSTokens() {
    require stor9
    require not investors[address(msg.sender)].field_264
    require investors[address(msg.sender)].field_0 > 0
    require uint128(stor2.field_128) > 0
    require investors[address(msg.sender)].field_0 * uint128(stor2.field_128) >= investors[address(msg.sender)].field_0
    require totalDonations
    require uint128(uint128(stor2.field_128) - (investors[address(msg.sender)].field_0 * uint128(stor2.field_128) / totalDonations)) > 0
    investors[address(msg.sender)].field_264 = 1
    require ext_code.size(coinAddress)
    call coinAddress.0x3452f51d with:
         gas gas_remaining - 710 wei
        args msg.sender, uint128(investors[address(msg.sender)].field_0 * uint128(stor2.field_128) / totalDonations)
    require ext_call.success
    uint128(stor2.field_128) = uint128(uint128(stor2.field_128) - (investors[address(msg.sender)].field_0 * uint128(stor2.field_128) / totalDonations))
    emit LogSendPOSTokens(address rg1, uint256 rg2, string rg3):
                          msg.sender,
                          0,
                          96,
                          17,
                          'Sent prize tokens',
}

function _fallback() payable {
    require msg.sender
    require msg.value
    require cost > 0
    require tokenCost > 0
    require uint128(stor2.field_0) > 0
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
        uint128(stor2.field_0) = uint128(uint128(stor2.field_0) - (msg.value / tokenCost * cost / 100))
    else:
        require 110 * msg.value / tokenCost * cost / 100 >= msg.value / tokenCost * cost / 100
        require ext_code.size(coinAddress)
        call coinAddress.0x3452f51d with:
             gas gas_remaining - 710 wei
            args msg.sender, uint128(110 * msg.value / tokenCost * cost / 100 / 100)
        require ext_call.success
        uint128(stor2.field_0) = uint128(uint128(stor2.field_0) - (110 * msg.value / tokenCost * cost / 100 / 100))
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
