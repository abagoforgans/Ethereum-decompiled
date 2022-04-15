contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;

function _fallback() payable {
    stor1 = 0
    stor15 = 10^17
    require not msg.value
    stor0 = msg.sender
    stor5 = code.data[5740 len 20]
    stor13 = 0
    stor14 = 0
    stor12 = 1000
    stor2 = code.data[5772 len 20]
    stor3 = code.data[5804 len 20]
    stor4 = code.data[5836 len 20]
    return code.data[227 len 5501]
}



// =====================  Runtime code  =====================


const onTransfer(address arg1, address arg2, uint256 arg3) = 1

const onApprove(address arg1, address arg2, uint256 arg3) = 1

const proxyPayment(address arg1) = 0


address controllerAddress;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
mapping of address members;
mapping of uint8 stor7;
mapping of uint256 tokenBalances;
mapping of uint256 sub_7528426a;
mapping of uint256 sub_649c30aa;
mapping of struct sub_a863430c;
uint256 exchangeRate;
uint256 totalContributed;
uint256 totalTokensIssued;
uint256 minDonation;

function totalContributed() {
    return totalContributed
}

function members(address arg1) {
    return members[arg1]
}

function minDonation() {
    return minDonation
}

function exchangeRate() {
    return exchangeRate
}

function tokenBalances(address arg1) {
    return tokenBalances[arg1]
}

function sub_649c30aa(?) {
    return sub_649c30aa[address(arg1)]
}

function sub_7528426a(?) {
    return sub_7528426a[address(arg1)]
}

function sub_78160e08(?) {
    return sub_649c30aa[arg1]
}

function totalTokensIssued() {
    return totalTokensIssued
}

function sub_a5cb4e7f(?) {
    return sub_7528426a[arg1]
}

function sub_a863430c(?) {
    return sub_a863430c[arg1][arg2].field_0, sub_a863430c[arg1][arg2].field_256
}

function sub_b08c1e16(?) {
    return bool(stor7[arg1])
}

function isRegistered(address arg1) {
    return bool(stor7[address(arg1)])
}

function sub_e04a8d82(?) {
    return tokenBalances[address(arg1)]
}

function controller() {
    return controllerAddress
}

function endContract() {
    require controllerAddress == msg.sender
    require ext_code.size(stor5)
    call stor5.0xbef97c87 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor5)
    if not ext_call.return_data[0]:
        call stor5.0xf41e60c5 with:
             gas gas_remaining - 710 wei
            args 1
        require ext_call.success
    call stor5.0xf77c4791 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != controllerAddress:
        require ext_code.size(stor5)
        call stor5.0x3cebb823 with:
             gas gas_remaining - 710 wei
            args controllerAddress
        require ext_call.success
    selfdestruct(controllerAddress)
}

function setMinDonation(uint256 arg1) {
    require controllerAddress == msg.sender
    minDonation = arg1
}

function setExchangeRate(uint256 arg1) {
    require controllerAddress == msg.sender
    exchangeRate = arg1
}

function changeController(address arg1) {
    require controllerAddress == msg.sender
    controllerAddress = arg1
}

function sub_0f82a2f3(?) {
    require controllerAddress == msg.sender
    stor2 = arg1
    stor3 = arg2
    stor4 = arg3
}

function sub_6fbc81b7(?) {
    require not stor7[address(arg1)]
    require controllerAddress == msg.sender
    stor7[address(arg1)] = 1
    members[address(arg1)] = stor1
    emit 0x408bea76: arg1
}

function isMember(address arg1) {
    if not stor7[address(arg1)]:
        return bool(stor7[address(arg1)])
    if tokenBalances[address(arg1)] <= 0:
        return (tokenBalances[address(arg1)] > 0)
    return (sub_7528426a[address(arg1)] > 0)
}

function sub_64afef30(?) {
    if stor7[address(arg1)]:
        if tokenBalances[address(arg1)] > 0:
            if sub_7528426a[address(arg1)] > 0:
                return 3
    if stor7[address(arg1)]:
        if tokenBalances[address(arg1)] > 0:
            return 2
    if not stor7[address(arg1)]:
        return 0
    return 1
}

function addMember(address arg1, address arg2) {
    require 1 == bool(stor7[address(arg1)])
    require tokenBalances[address(arg1)] > 0
    require sub_7528426a[address(arg1)] > 0
    require not stor7[address(arg2)]
    require arg2 != arg1
    require controllerAddress == msg.sender
    stor7[address(arg2)] = 1
    members[address(arg2)] = arg1
    emit 0xfbbb4067: arg2, arg1
}

function payout() {
    require controllerAddress == msg.sender
    require eth.balance(this.address) == (3 * eth.balance(this.address) / 3) + (eth.balance(this.address) % 3)
    call stor2 with:
       value eth.balance(this.address) / 3 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor3 with:
       value eth.balance(this.address) / 3 wei
         gas 2300 * is_zero(value) wei
    call stor4 with:
       value eth.balance(this.address) / 3 wei
         gas 2300 * is_zero(value) wei
}

function sub_8f93a47c(?) {
    require controllerAddress == msg.sender
    stor7[address(arg1)] = 1
    require ext_code.size(stor5)
    call stor5.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if exchangeRate * arg2 / 10^18 * 10^ext_call.return_data[31 len 1] > 0:
        require ext_code.size(stor5)
        call stor5.0x827f32c0 with:
             gas gas_remaining - 710 wei
            args address(arg1), exchangeRate * arg2 / 10^18 * 10^uint8(ext_call.return_data[0])
        require ext_call.success
        tokenBalances[address(arg1)] += exchangeRate * arg2 / 10^18 * 10^uint8(ext_call.return_data[0])
        totalTokensIssued += exchangeRate * arg2 / 10^18 * 10^uint8(ext_call.return_data[0])
}

function _fallback() payable {
    require msg.value >= minDonation
    require 1 == bool(stor7[address(msg.sender)])
    sub_7528426a[address(msg.sender)] += msg.value
    totalContributed += msg.value
    if sub_a863430c[stor6[address(msg.sender)]][address(msg.sender)].field_256:
        sub_a863430c[stor6[address(msg.sender)]][address(msg.sender)].field_256 += msg.value
    else:
        sub_a863430c[stor6[address(msg.sender)]][address(msg.sender)].field_0 = msg.sender
        sub_a863430c[stor6[address(msg.sender)]][address(msg.sender)].field_256 = msg.value
    require ext_code.size(stor5)
    call stor5.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if exchangeRate * msg.value / 10^18 * 10^ext_call.return_data[31 len 1] > 0:
        require ext_code.size(stor5)
        call stor5.0x827f32c0 with:
             gas gas_remaining - 710 wei
            args msg.sender, exchangeRate * msg.value / 10^18 * 10^uint8(ext_call.return_data[0])
        require ext_call.success
        tokenBalances[address(msg.sender)] += exchangeRate * msg.value / 10^18 * 10^uint8(ext_call.return_data[0])
        totalTokensIssued += exchangeRate * msg.value / 10^18 * 10^uint8(ext_call.return_data[0])
    if eth.balance(controllerAddress) < 2 * 10^18:
        call controllerAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        if stor1 == members[address(msg.sender)]:
            require msg.value == (3 * msg.value / 3) + (msg.value % 3)
            call stor2 with:
               value msg.value / 3 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call stor3 with:
               value msg.value / 3 wei
                 gas 2300 * is_zero(value) wei
            call stor4 with:
               value msg.value / 3 wei
                 gas 2300 * is_zero(value) wei
        else:
            require msg.value == msg.value
            sub_649c30aa[stor6[address(msg.sender)]] += msg.value / 4
            call members[address(msg.sender)] with:
               value msg.value / 4 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call stor2 with:
               value msg.value / 4 wei
                 gas 2300 * is_zero(value) wei
            call stor3 with:
               value msg.value / 4 wei
                 gas 2300 * is_zero(value) wei
            call stor4 with:
               value msg.value / 4 wei
                 gas 2300 * is_zero(value) wei
        if eth.balance(this.address) > 0:
            call controllerAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    emit Contribution(msg.value, msg.sender, members[address(msg.sender)]);
}

function contribute() payable {
    require msg.value >= minDonation
    require 1 == bool(stor7[address(msg.sender)])
    sub_7528426a[address(msg.sender)] += msg.value
    totalContributed += msg.value
    if sub_a863430c[stor6[address(msg.sender)]][address(msg.sender)].field_256:
        sub_a863430c[stor6[address(msg.sender)]][address(msg.sender)].field_256 += msg.value
    else:
        sub_a863430c[stor6[address(msg.sender)]][address(msg.sender)].field_0 = msg.sender
        sub_a863430c[stor6[address(msg.sender)]][address(msg.sender)].field_256 = msg.value
    require ext_code.size(stor5)
    call stor5.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if exchangeRate * msg.value / 10^18 * 10^ext_call.return_data[31 len 1] > 0:
        require ext_code.size(stor5)
        call stor5.0x827f32c0 with:
             gas gas_remaining - 710 wei
            args msg.sender, exchangeRate * msg.value / 10^18 * 10^uint8(ext_call.return_data[0])
        require ext_call.success
        tokenBalances[address(msg.sender)] += exchangeRate * msg.value / 10^18 * 10^uint8(ext_call.return_data[0])
        totalTokensIssued += exchangeRate * msg.value / 10^18 * 10^uint8(ext_call.return_data[0])
    if eth.balance(controllerAddress) < 2 * 10^18:
        call controllerAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        if stor1 == members[address(msg.sender)]:
            require msg.value == (3 * msg.value / 3) + (msg.value % 3)
            call stor2 with:
               value msg.value / 3 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call stor3 with:
               value msg.value / 3 wei
                 gas 2300 * is_zero(value) wei
            call stor4 with:
               value msg.value / 3 wei
                 gas 2300 * is_zero(value) wei
        else:
            require msg.value == msg.value
            sub_649c30aa[stor6[address(msg.sender)]] += msg.value / 4
            call members[address(msg.sender)] with:
               value msg.value / 4 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call stor2 with:
               value msg.value / 4 wei
                 gas 2300 * is_zero(value) wei
            call stor3 with:
               value msg.value / 4 wei
                 gas 2300 * is_zero(value) wei
            call stor4 with:
               value msg.value / 4 wei
                 gas 2300 * is_zero(value) wei
        if eth.balance(this.address) > 0:
            call controllerAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    emit Contribution(msg.value, msg.sender, members[address(msg.sender)]);
}



}
