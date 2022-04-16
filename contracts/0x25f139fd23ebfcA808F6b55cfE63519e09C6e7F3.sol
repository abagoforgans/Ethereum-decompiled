contract main {


// =======================  Init code  ======================


address stor1;
uint256 stor8;
uint8 stor14;
uint64 stor14; offset 8
uint64 stor14; offset 136
uint128 stor14; offset 176
uint128 stor14; offset 48
uint8 stor15;
uint64 stor15; offset 8
uint64 stor15; offset 136
uint128 stor15; offset 176
uint128 stor15; offset 48

function _fallback() {
    stor1 = msg.sender
    emit LogSetOwner(msg.sender);
    stor8 = code.data[6140 len 32]
    uint8(stor14.field_0) = 0
    stor14.field_8 % 1099511627776 = 781250 * 10^6
    Mask(88, 0, stor14.field_48) = 0
    stor14.field_136 % 1099511627776 = 781250 * 10^6
    Mask(80, 0, stor14.field_176) = 0
    uint8(stor15.field_0) = 0
    stor15.field_8 % 1099511627776 = 78125 * 10^6
    Mask(88, 0, stor15.field_48) = 0
    stor15.field_136 % 1099511627776 = 78125 * 10^6
    Mask(80, 0, stor15.field_176) = 0
    return code.data[244 len 5896]
}



// =====================  Runtime code  =====================


address authorityAddress;
address owner;
address coinAddress;
address ICOAddress;
array of address stor4;
mapping of struct investors;
uint256 deadline;
uint256 start;
uint256 countDays;
uint8 stor9;
uint256 totalDonations;
uint256 totalDonationsWithBonuses;
uint256 donationsCount;
uint256 ethReward;
uint128 sub_46f1eafb;
uint128 preICOTokenRemaining; offset 128
uint128 preICOTokenReward;
uint128 preICOTokenRewardRemaining; offset 128

function coin() {
    return coinAddress
}

function donationsCount() {
    return donationsCount
}

function ICO() {
    return ICOAddress
}

function deadline() {
    return deadline
}

function ethReward() {
    return ethReward
}

function autoTokenSent() {
    return bool(stor9)
}

function preICOTokenRewardRemaining() {
    return preICOTokenRewardRemaining
}

function sub_46f1eafb(?) {
    return sub_46f1eafb
}

function preICOTokenReward() {
    return preICOTokenReward
}

function investors(address arg1) {
    return investors[arg1].field_0, 
           investors[arg1].field_256,
           bool(investors[arg1].field_512),
           bool(investors[arg1].field_520),
           bool(investors[arg1].field_528)
}

function owner() {
    return owner
}

function start() {
    return start
}

function authority() {
    return authorityAddress
}

function totalDonations() {
    return totalDonations
}

function countDays() {
    return countDays
}

function sub_f0c1506c(?) {
    return bool(investors[address(arg1)].field_520)
}

function totalDonationsWithBonuses() {
    return totalDonationsWithBonuses
}

function preICOTokenRemaining() {
    return preICOTokenRemaining
}

function setRewardWasSent(address arg1) {
    require ICOAddress == msg.sender
    investors[address(arg1)].field_520 = 1
}

function sub_6c67180f(?) {
    require 10^6 * investors[address(arg1)].field_0 >= investors[address(arg1)].field_0
    require totalDonationsWithBonuses
    return (10^6 * investors[address(arg1)].field_0 / totalDonationsWithBonuses)
}

function setICOContract(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    ICOAddress = arg1
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
    require sub_46f1eafb > 0
    start = block.timestamp
    deadline = (24 * 3600 * countDays) + block.timestamp
    coinAddress = arg1
    require preICOTokenReward + sub_46f1eafb >= preICOTokenReward
    require ext_code.size(arg1)
    call arg1.0xabd89e1e with:
         gas gas_remaining - 710 wei
        args uint128(preICOTokenReward + sub_46f1eafb)
    require ext_call.success
}

function getLargeBonus() {
    require investors[address(msg.sender)].field_0 > 10^18
    require not investors[address(msg.sender)].field_528
    require 10 * investors[address(msg.sender)].field_256 >= investors[address(msg.sender)].field_256
    require ext_code.size(coinAddress)
    call coinAddress.0x3452f51d with:
         gas gas_remaining - 710 wei
        args msg.sender, uint128(10 * investors[address(msg.sender)].field_256 / 100)
    require ext_call.success
    preICOTokenRewardRemaining = uint128(preICOTokenRewardRemaining - (10 * investors[address(msg.sender)].field_256 / 100))
    investors[address(msg.sender)].field_528 = 1
    emit LogSendTokens(address rg1, uint256 rg2, string rg3):
                       msg.sender,
                       0,
                       96,
                       28,
                       'Sent tokens for 1 Eth donate',
}

function sendICOTokensBack(uint128 arg1) {
    require block.timestamp >= deadline
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

function sendTokens() {
    require block.timestamp >= deadline
    require not investors[address(msg.sender)].field_512
    require investors[address(msg.sender)].field_0 * sub_46f1eafb >= investors[address(msg.sender)].field_0
    require totalDonationsWithBonuses
    require ext_code.size(coinAddress)
    call coinAddress.0x3452f51d with:
         gas gas_remaining - 710 wei
        args msg.sender, uint128(investors[address(msg.sender)].field_0 * sub_46f1eafb / totalDonationsWithBonuses)
    require ext_call.success
    preICOTokenRemaining = uint128(preICOTokenRemaining - (investors[address(msg.sender)].field_0 * sub_46f1eafb / totalDonationsWithBonuses))
    investors[address(msg.sender)].field_512 = 1
    investors[address(msg.sender)].field_256 = investors[address(msg.sender)].field_0 * sub_46f1eafb / totalDonationsWithBonuses
    emit LogSendTokens(address rg1, uint256 rg2, string rg3):
                       msg.sender,
                       0,
                       96,
                       11,
                       'Sent tokens',
}

function _fallback() payable {
    require block.timestamp <= deadline
    require msg.sender
    require msg.value
    require preICOTokenRemaining > 0
    require block.timestamp - start <= block.timestamp
    if block.timestamp - start >= 24 * 3600:
        investors[address(msg.sender)].field_512 = 0
        require msg.value >= msg.value
        totalDonationsWithBonuses += msg.value
        totalDonations += msg.value
        investors[address(msg.sender)].field_0 += msg.value
    else:
        require block.timestamp - start <= block.timestamp
        require -(block.timestamp - start / 3600) + 24 <= 24
        investors[address(msg.sender)].field_512 = 0
        require msg.value + (24 * msg.value / 100) - (block.timestamp - start / 3600 * msg.value / 100) >= msg.value
        totalDonationsWithBonuses = msg.value + (24 * msg.value / 100) - (block.timestamp - start / 3600 * msg.value / 100) + totalDonationsWithBonuses
        totalDonations += msg.value
        investors[address(msg.sender)].field_0 = msg.value + (24 * msg.value / 100) - (block.timestamp - start / 3600 * msg.value / 100) + investors[address(msg.sender)].field_0
    donationsCount++
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        idx = stor4.length + 1
        while stor4.length > idx:
            uint256(stor4[idx]) = 0
            idx = idx + 1
            continue 
    address(stor4[stor4.length]) = msg.sender
    emit LogDonation(address(msg.sender), Array(len=17, data='Donation was made'));
}

function autoSend() payable {
    mem[64] = 96
    require not msg.value
    require block.timestamp >= deadline
    emit LogDonation(address(msg.sender), Array(len=5, data='START'));
    require not stor9
    s = 0
    idx = 0
    while idx < stor4.length:
        mem[mem[64] + 64] = 96
        emit LogSendTokens(msg.sender, totalDonationsWithBonuses, Array(len=5, data='TOTAL'));
        mem[32] = 5
        require investors[address(stor4[idx])].field_0 * sub_46f1eafb >= investors[address(stor4[idx])].field_0
        require totalDonationsWithBonuses
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = investors[address(stor4[idx])].field_0 * sub_46f1eafb / totalDonationsWithBonuses
        mem[mem[64] + 64] = 96
        mem[mem[64] + 96] = 5
        mem[mem[64] + 128] = 'TOTAL'
        emit LogSendTokens(msg.sender, investors[address(stor4[idx])].field_0 * sub_46f1eafb / totalDonationsWithBonuses, Array(len=5, data='TOTAL'));
        require idx < stor4.length
        mem[0] = address(stor4[idx])
        mem[32] = 5
        if not investors[address(stor4[idx])].field_512:
            require idx < stor4.length
            mem[0] = 4
            require ext_code.size(coinAddress)
            call coinAddress.0x3452f51d with:
                 gas gas_remaining - 710 wei
                args address(stor4[idx]), uint128(investors[address(stor4[idx])].field_0 * sub_46f1eafb / totalDonationsWithBonuses)
            require ext_call.success
            mem[mem[64]] = msg.sender
            mem[mem[64] + 32] = investors[address(stor4[idx])].field_0 * sub_46f1eafb / totalDonationsWithBonuses
            mem[mem[64] + 64] = 96
            mem[mem[64] + 96] = 4
            mem[mem[64] + 128] = 'PUSH'
            emit LogSendTokens(msg.sender, investors[address(stor4[idx])].field_0 * sub_46f1eafb / totalDonationsWithBonuses, Array(len=4, data='PUSH'));
            require idx < stor4.length
            investors[address(stor4[idx])].field_256 = investors[address(stor4[idx])].field_0 * sub_46f1eafb / totalDonationsWithBonuses
            mem[0] = address(stor4[idx])
            mem[32] = 5
            investors[address(stor4[idx])].field_512 = 1
        s = investors[address(stor4[idx])].field_0 * sub_46f1eafb / totalDonationsWithBonuses
        idx = idx + 1
        continue 
    stor9 = 1
}



}
