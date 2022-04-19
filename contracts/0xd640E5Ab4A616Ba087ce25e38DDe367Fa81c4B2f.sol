contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
array of uint256 stor12;
address stor13;
address stor14;

function _fallback() {
    mem[96 len -2883] = code.data[3350 len -2883]
    mem[64] = -2787
    stor0 = msg.sender
    stor7 = block.timestamp
    stor12[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor8 = mem[192]
    stor1 = mem[300 len 20]
    stor2 = mem[332 len 20]
    stor3 = mem[396 len 20]
    stor5 = mem[352]
    stor6 = mem[416]
    stor9 = mem[224]
    stor10 = mem[256]
    stor13 = mem[108 len 20]
    stor14 = mem[140 len 20]
    return code.data[467 len 2883]
}



// =====================  Runtime code  =====================


address rootAddress;
address payoutAddress;
address sub_18ad9260Address;
address affiliateAddress;
uint256 totalTokensSold;
uint256 sub_361c3308;
uint256 sub_28d1226a;
uint256 startTime;
uint256 endTime;
uint256 sub_1d85de4f;
uint256 limit;
uint8 stor11;
array of uint256 ticker;
address balancesAddress;
address pricesAddress;

function sub_18ad9260(?) {
    return sub_18ad9260Address
}

function sub_1d85de4f(?) {
    return sub_1d85de4f
}

function sub_28d1226a(?) {
    return sub_28d1226a
}

function endTime() {
    return endTime
}

function sub_361c3308(?) {
    return sub_361c3308
}

function affiliate() {
    return affiliateAddress
}

function totalTokensSold() {
    return totalTokensSold
}

function payout() {
    return payoutAddress
}

function startTime() {
    return startTime
}

function balances() {
    return balancesAddress
}

function ticker() {
    return ticker[0 len ticker.length]
}

function isFinalized() {
    return bool(stor11)
}

function limit() {
    return limit
}

function prices() {
    return pricesAddress
}

function root() {
    return rootAddress
}

function kill() {
    require rootAddress == msg.sender
    selfdestruct(sub_18ad9260Address)
}

function setEndTime(uint256 arg1) {
    require rootAddress == msg.sender
    endTime = arg1
}

function transferRoot(address arg1) {
    require rootAddress == msg.sender
    rootAddress = arg1
}

function empty() {
    require rootAddress == msg.sender
    call sub_18ad9260Address with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function finalize() {
    require rootAddress == msg.sender
    require block.timestamp > endTime
    stor11 = 1
    if sub_18ad9260Address:
        if eth.balance(this.address) * sub_361c3308 / 1000 > 0:
            call sub_18ad9260Address with:
               value eth.balance(this.address) * sub_361c3308 / 1000 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    if not affiliateAddress:
        call payoutAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        if eth.balance(this.address) * sub_28d1226a / 1000 <= 0:
            call payoutAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            call affiliateAddress with:
               value eth.balance(this.address) * sub_28d1226a / 1000 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call payoutAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
    return 1
}

function _fallback() payable {
    require msg.value > 0
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require ext_code.size(pricesAddress)
    call pricesAddress.0x98d5fdca with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if msg.value:
        require msg.value
        require ext_call.return_data[0] / 10^18 * msg.value / msg.value == ext_call.return_data[0] / 10^18
    require sub_1d85de4f
    require ext_code.size(balancesAddress)
    call balancesAddress.0xc4e41b22 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] + (ext_call.return_data[0] / 10^18 * msg.value / sub_1d85de4f) >= ext_call.return_data[0] / 10^18 * msg.value / sub_1d85de4f
    require ext_call.return_data[0] + (ext_call.return_data[0] / 10^18 * msg.value / sub_1d85de4f) <= limit
    require (ext_call.return_data[0] / 10^18 * msg.value / sub_1d85de4f) + totalTokensSold >= totalTokensSold
    totalTokensSold += ext_call.return_data[0] / 10^18 * msg.value / sub_1d85de4f
    require ext_code.size(balancesAddress)
    call balancesAddress.0x66e7ea0f with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0] / 10^18 * msg.value / sub_1d85de4f
    require ext_call.success
    require ext_code.size(balancesAddress)
    call balancesAddress.0xecfc5964 with:
         gas gas_remaining - 710 wei
        args (ext_call.return_data[0] / 10^18 * msg.value / sub_1d85de4f)
    require ext_call.success
    emit 0xc4b201a5: ext_call.return_data[0], ext_call.return_data[0] / 10^18 * msg.value / sub_1d85de4f, ext_call.return_data[0] / 10^18, 4, 'mint', msg.sender
}

function createTokens() payable {
    require msg.value > 0
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require ext_code.size(pricesAddress)
    call pricesAddress.0x98d5fdca with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if msg.value:
        require msg.value
        require ext_call.return_data[0] / 10^18 * msg.value / msg.value == ext_call.return_data[0] / 10^18
    require sub_1d85de4f
    require ext_code.size(balancesAddress)
    call balancesAddress.0xc4e41b22 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] + (ext_call.return_data[0] / 10^18 * msg.value / sub_1d85de4f) >= ext_call.return_data[0] / 10^18 * msg.value / sub_1d85de4f
    require ext_call.return_data[0] + (ext_call.return_data[0] / 10^18 * msg.value / sub_1d85de4f) <= limit
    require (ext_call.return_data[0] / 10^18 * msg.value / sub_1d85de4f) + totalTokensSold >= totalTokensSold
    totalTokensSold += ext_call.return_data[0] / 10^18 * msg.value / sub_1d85de4f
    require ext_code.size(balancesAddress)
    call balancesAddress.0x66e7ea0f with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0] / 10^18 * msg.value / sub_1d85de4f
    require ext_call.success
    require ext_code.size(balancesAddress)
    call balancesAddress.0xecfc5964 with:
         gas gas_remaining - 710 wei
        args (ext_call.return_data[0] / 10^18 * msg.value / sub_1d85de4f)
    require ext_call.success
    emit 0xc4b201a5: ext_call.return_data[0], ext_call.return_data[0] / 10^18 * msg.value / sub_1d85de4f, ext_call.return_data[0] / 10^18, 4, 'mint', msg.sender
    return 1
}



}
