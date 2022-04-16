contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
address stor2;
address stor3;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint8 stor11;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 23
    stor1.length.field_8 = 'Ventureon Token PreSale' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 0x47c14e3d3e615468d8808ad031595f83dcefc9cb
    stor5 = 219
    stor8 = 0
    stor9 = 0
    stor10 = 0
    stor11 = 0
    require not msg.value
    stor0 = msg.sender
    require stor0 == msg.sender
    require stor5
    stor6 = 85 * 10^17 / stor5
    require stor0 == msg.sender
    require stor5
    stor7 = 5000 * 10^18 / stor5
    stor3 = msg.sender
    return code.data[548 len 2390]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
array of uint256 name;
address tokenAddress;
address beneficiaryAddress;
uint256 collected;
uint256 priceEth;
uint256 sub_f50a3b00;
uint256 limit;
uint256 tokensSold;
uint256 weiRaised;
uint256 investorCount;
uint8 stor11;

function name() {
    return name[0 len name.length]
}

function priceEth() {
    return priceEth
}

function beneficiary() {
    return beneficiaryAddress
}

function weiRaised() {
    return weiRaised
}

function tokensSold() {
    return tokensSold
}

function collected() {
    return collected
}

function owner() {
    return owner
}

function limit() {
    return limit
}

function halted() {
    return bool(stor0)
}

function investorCount() {
    return investorCount
}

function crowdsaleFinished() {
    return bool(stor11)
}

function sub_f50a3b00(?) {
    return sub_f50a3b00
}

function token() {
    return tokenAddress
}

function halt() {
    require owner == msg.sender
    stor0 = 1
}

function unhalt() {
    require owner == msg.sender
    require stor0
    stor0 = 0
}

function setWeiLimit(uint256 arg1) {
    require owner == msg.sender
    limit = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function sub_44a320fd(?) {
    require owner == msg.sender
    require priceEth
    limit = 10^18 * arg1 / priceEth
}

function setPriceETH(uint256 arg1) {
    require owner == msg.sender
    priceEth = arg1
    require arg1
    sub_f50a3b00 = 85 * 10^17 / arg1
}

function withdraw() {
    require owner == msg.sender
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function closeSale() {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args beneficiaryAddress, ext_call.return_data[0]
    require ext_call.success
    stor11 = 1
}

function _fallback() payable {
    require not stor0
    require msg.value >= limit
    require not stor11
    require sub_f50a3b00
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        investorCount++
    require msg.value + collected >= collected
    collected += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, 10^18 * msg.value / sub_f50a3b00
    require ext_call.success
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require (10^18 * msg.value / sub_f50a3b00) + tokensSold >= tokensSold
    tokensSold += 10^18 * msg.value / sub_f50a3b00
    emit NewContribution(10^18 * msg.value / sub_f50a3b00, msg.value, msg.sender);
}



}
