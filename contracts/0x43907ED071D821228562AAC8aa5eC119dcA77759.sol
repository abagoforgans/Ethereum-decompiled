contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8; offset 8
address stor9;

function _fallback() {
    stor4 = block.timestamp
    stor5 = stor4 + (672 * 24 * 3600)
    stor0 = msg.sender
    stor1 = 0x15656715068ab0dbdf0ab00748a8a19e40f28192
    stor2 = 0xb306cf95392b6a7d14fccc6a7003966bb5208e47
    stor3 = 8
    stor6 = 9
    stor7 = 40000000 * 10^18
    stor8 = code.data[4387 len 20]
    stor9 = code.data[4419 len 20]
    return code.data[488 len 3887]
}



// =====================  Runtime code  =====================


address rootAddress;
address payoutAddress;
address aAddress;
uint256 sub_f7bb3f3e;
uint256 startTime;
uint256 endTime;
uint256 cost;
uint256 limit;
uint8 stor8;
address balancesAddress; offset 8
address pricesAddress;
mapping of uint8 stor10;

function cost() {
    return cost
}

function endTime() {
    return endTime
}

function admins(address arg1) {
    return bool(stor10[arg1])
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

function isFinalized() {
    return bool(stor8)
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

function sub_f7bb3f3e(?) {
    return sub_f7bb3f3e
}

function aAddress() {
    return aAddress
}

function kill() {
    require rootAddress == msg.sender
    selfdestruct(payoutAddress)
}

function transferRoot(address arg1) {
    require rootAddress == msg.sender
    rootAddress = arg1
}

function sub_486581ea(?) {
    require rootAddress == msg.sender
    call payoutAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function finalize() {
    require rootAddress == msg.sender
    require block.timestamp > endTime
    stor8 = 1
    call payoutAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function _fallback() payable {
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require ext_code.size(pricesAddress)
    call pricesAddress.0x98d5fdca with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if msg.value:
        require msg.value
        require msg.value * ext_call.return_data[0] / 10^18 / msg.value == ext_call.return_data[0] / 10^18
    require cost
    require ext_code.size(balancesAddress)
    call balancesAddress.0xc4e41b22 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require (msg.value * ext_call.return_data[0] / 10^18 / cost) + ext_call.return_data[0] <= limit
    require ext_code.size(balancesAddress)
    call balancesAddress.0x66e7ea0f with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * ext_call.return_data[0] / 10^18 / cost
    require ext_call.success
    require ext_code.size(balancesAddress)
    call balancesAddress.0xecfc5964 with:
         gas gas_remaining - 710 wei
        args (msg.value * ext_call.return_data[0] / 10^18 / cost)
    require ext_call.success
    if msg.value:
        require msg.value
        require msg.value * ext_call.return_data[0] / 10^18 / msg.value == ext_call.return_data[0] / 10^18
    require sub_f7bb3f3e
    require ext_code.size(balancesAddress)
    call balancesAddress.0x66e7ea0f with:
         gas gas_remaining - 710 wei
        args aAddress, (msg.value * ext_call.return_data[0] / 10^18 / sub_f7bb3f3e) - (msg.value * ext_call.return_data[0] / 10^18 / cost)
    require ext_call.success
    require ext_code.size(balancesAddress)
    call balancesAddress.0xecfc5964 with:
         gas gas_remaining - 710 wei
        args ((msg.value * ext_call.return_data[0] / 10^18 / sub_f7bb3f3e) - (msg.value * ext_call.return_data[0] / 10^18 / cost))
    require ext_call.success
    emit 0xc4b201a5: ext_call.return_data[0], msg.value * ext_call.return_data[0] / 10^18 / cost, ext_call.return_data[0] / 10^18, 22, 'affiliate-contribution', msg.sender
}

function createTokens() payable {
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require ext_code.size(pricesAddress)
    call pricesAddress.0x98d5fdca with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if msg.value:
        require msg.value
        require msg.value * ext_call.return_data[0] / 10^18 / msg.value == ext_call.return_data[0] / 10^18
    require cost
    require ext_code.size(balancesAddress)
    call balancesAddress.0xc4e41b22 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require (msg.value * ext_call.return_data[0] / 10^18 / cost) + ext_call.return_data[0] <= limit
    require ext_code.size(balancesAddress)
    call balancesAddress.0x66e7ea0f with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * ext_call.return_data[0] / 10^18 / cost
    require ext_call.success
    require ext_code.size(balancesAddress)
    call balancesAddress.0xecfc5964 with:
         gas gas_remaining - 710 wei
        args (msg.value * ext_call.return_data[0] / 10^18 / cost)
    require ext_call.success
    if msg.value:
        require msg.value
        require msg.value * ext_call.return_data[0] / 10^18 / msg.value == ext_call.return_data[0] / 10^18
    require sub_f7bb3f3e
    require ext_code.size(balancesAddress)
    call balancesAddress.0x66e7ea0f with:
         gas gas_remaining - 710 wei
        args aAddress, (msg.value * ext_call.return_data[0] / 10^18 / sub_f7bb3f3e) - (msg.value * ext_call.return_data[0] / 10^18 / cost)
    require ext_call.success
    require ext_code.size(balancesAddress)
    call balancesAddress.0xecfc5964 with:
         gas gas_remaining - 710 wei
        args ((msg.value * ext_call.return_data[0] / 10^18 / sub_f7bb3f3e) - (msg.value * ext_call.return_data[0] / 10^18 / cost))
    require ext_call.success
    emit 0xc4b201a5: ext_call.return_data[0], msg.value * ext_call.return_data[0] / 10^18 / cost, ext_call.return_data[0] / 10^18, 22, 'affiliate-contribution', msg.sender
    return 1
}



}
