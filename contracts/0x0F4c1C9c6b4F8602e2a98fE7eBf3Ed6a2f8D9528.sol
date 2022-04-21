contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint8 stor8;

function _fallback() payable {
    stor7 = 0
    stor8 = 1
    require not msg.value
    stor0 = msg.sender
    stor3 = 5000
    stor2 = 0xa2e06a74eaccb799ad81d444e35ab5d1cda3a7f1
    create contract with 0 wei
                    code: code.data[1967 len 3280]
    require create.new_address
    stor1 = address(create.new_address)
    stor5 = 0
    stor6 = 2100 * 10^18
    return code.data[224 len 1743]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address hardwareWalletAddress;
uint256 rate;
uint256 weiRaised;
uint256 minContribution;
uint256 hardcap;
uint256 numberOfPurchasers;
uint8 stor8;

function rate() {
    return rate
}

function sub_32557dc1(?) {
    return bool(stor8)
}

function weiRaised() {
    return weiRaised
}

function numberOfPurchasers() {
    return numberOfPurchasers
}

function owner() {
    return owner
}

function minContribution() {
    return minContribution
}

function hardcap() {
    return hardcap
}

function hardwareWallet() {
    return hardwareWalletAddress
}

function token() {
    return tokenAddress
}

function sub_4e914c73(?) {
    require owner == msg.sender
    stor8 = 1
}

function sub_f40f014a(?) {
    require owner == msg.sender
    stor8 = 0
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function hasEnded() {
    if weiRaised >= hardcap:
        return weiRaised >= hardcap
    return bool(stor8)
}

function finishPresale() {
    require owner == msg.sender
    if weiRaised < hardcap:
        require stor8
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
    emit PreSaleClosed()
}

function _fallback() payable {
    require msg.value >= minContribution
    require stor8
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= hardcap
    require msg.sender
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    numberOfPurchasers++
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, rate * msg.value
    require ext_call.success
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
    call hardwareWalletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function buyTokens(address arg1) payable {
    require msg.value >= minContribution
    require stor8
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= hardcap
    require arg1
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    numberOfPurchasers++
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), rate * msg.value
    require ext_call.success
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
    call hardwareWalletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
