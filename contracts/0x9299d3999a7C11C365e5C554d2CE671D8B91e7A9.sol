contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
address stor2;
address stor3;
uint256 stor4;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint8 stor10;

function _fallback() payable {
    mem[128] = 'Ventureon Token PreSale by Reque'
    mem[160] = 'st'
    stor1.length = 69
    s = 0
    idx = 128
    while 162 > idx:
        stor1[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor1.length + 31 / 32 > idx:
        stor1[idx] = 0
        idx = idx + 1
        continue 
    stor7 = 0
    stor8 = 0
    stor9 = 0
    stor10 = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[2840 len 32]
    stor6 = 7 * 10^18 / code.data[2840 len 32]
    stor2 = code.data[2820 len 20]
    stor3 = msg.sender
    stor4 = code.data[2872 len 32]
    return code.data[480 len 2328]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
array of uint256 name;
address tokenAddress;
address beneficiaryAddress;
uint256 hardCap;
uint256 collected;
uint256 sub_f50a3b00;
uint256 tokensSold;
uint256 weiRaised;
uint256 investorCount;
uint8 crowdsaleFinished;

function name() {
    return name[0 len name.length]
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

function halted() {
    return bool(stor0)
}

function investorCount() {
    return investorCount
}

function crowdsaleFinished() {
    return bool(crowdsaleFinished)
}

function sub_f50a3b00(?) {
    return sub_f50a3b00
}

function hardCap() {
    return hardCap
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

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function withdraw() {
    require owner == msg.sender
    call beneficiaryAddress with:
       value collected wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
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
    crowdsaleFinished = 1
}

function _fallback() payable {
    require not stor0
    require msg.value >= 2858 * sub_f50a3b00
    require not crowdsaleFinished
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
    require sub_f50a3b00
    if 7 * collected / sub_f50a3b00 >= hardCap:
        emit GoalReached(hardCap);
}



}
