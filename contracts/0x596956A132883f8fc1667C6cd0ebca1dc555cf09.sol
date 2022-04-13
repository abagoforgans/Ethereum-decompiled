contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
address stor2;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint8 stor10;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 17
    stor1.length.field_8 = 'Lord Coin Pre-ICO' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 0
    stor7 = 0
    stor10 = 0
    require not msg.value
    stor0 = msg.sender
    stor2 = code.data[3821 len 20]
    stor3 = code.data[3853 len 20]
    stor4 = code.data[3873 len 32]
    stor5 = code.data[3905 len 32]
    stor8 = code.data[3937 len 32]
    stor9 = code.data[3937 len 32] + (24 * 3600 * code.data[3969 len 32])
    return code.data[625 len 3184]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
address LCAddress;
address beneficiaryAddress;
uint256 sub_f176ea12;
uint256 priceLC;
uint256 weiRaised;
uint256 investorCount;
uint256 startTime;
uint256 endTime;
uint8 stor10;

function name() {
    return name[0 len name.length]
}

function priceLC() {
    return priceLC
}

function LC() {
    return LCAddress
}

function endTime() {
    return endTime
}

function beneficiary() {
    return beneficiaryAddress
}

function weiRaised() {
    return weiRaised
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function investorCount() {
    return investorCount
}

function crowdsaleFinished() {
    return bool(stor10)
}

function sub_f176ea12(?) {
    return sub_f176ea12
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function withdraw() {
    require msg.sender == owner
    call beneficiaryAddress with:
       value weiRaised wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor10 = 1
}

function _fallback() payable {
    require msg.value >= 10^16
    require block.timestamp > startTime
    require block.timestamp < endTime
    require not stor10
    if msg.value:
        require msg.value
        require msg.value * priceLC / msg.value == priceLC
    require sub_f176ea12
    require ext_code.size(LCAddress)
    call LCAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] >= msg.value * priceLC / sub_f176ea12 / 10^18
    require ext_code.size(LCAddress)
    call LCAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        investorCount++
    require ext_code.size(LCAddress)
    call LCAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * priceLC / sub_f176ea12 / 10^18
    require ext_call.success
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    emit NewContribution(msg.value * priceLC / sub_f176ea12 / 10^18, msg.value, msg.sender);
    require ext_code.size(LCAddress)
    call LCAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if not ext_call.return_data[0]:
        emit GoalReached(weiRaised);
}



}
