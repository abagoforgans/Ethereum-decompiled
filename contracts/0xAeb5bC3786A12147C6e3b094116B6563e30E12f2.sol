contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
uint256 stor5;

function _fallback() payable {
    stor5 = 10^15
    require not msg.value
    stor0 = msg.sender
    stor0 = code.data[3007 len 20]
    stor2 = code.data[3039 len 20]
    stor3 = code.data[3071 len 20]
    stor4 = code.data[3103 len 20]
    stor1 = code.data[3135 len 20]
    return code.data[214 len 2781]
}



// =====================  Runtime code  =====================


address owner;
address tokenFundAddress;
address ethAddress;
address multisigAddress;
address supportAddress;
uint256 tokenPrice;
mapping of address referral;

function supportAddress() {
    return supportAddress
}

function getReferral(address arg1) {
    return referral[address(arg1)]
}

function tokenFund() {
    return tokenFundAddress
}

function ethAddress() {
    return ethAddress
}

function multisig() {
    return multisigAddress
}

function getTokenPrice() {
    return tokenPrice
}

function tokenPrice() {
    return tokenPrice
}

function owner() {
    return owner
}

function referrals(address arg1) {
    return referral[arg1]
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function setTokenPrice(uint256 arg1) {
    require owner == msg.sender
    tokenPrice = arg1
}

function changeEthAddress(address arg1) {
    require owner == msg.sender
    ethAddress = arg1
}

function changeMultisig(address arg1) {
    require owner == msg.sender
    multisigAddress = arg1
}

function estimateTokens(uint256 arg1) {
    require tokenPrice
    return (95 * 10^6 * arg1 / tokenPrice)
}

function calculateTokens(uint256 arg1) {
    require tokenPrice
    return (100 * 10^6 * arg1 / tokenPrice)
}

function setReferral(address arg1, address arg2) {
    require owner == msg.sender
    referral[address(arg1)] = arg2
}

function withdrawTokens(uint256 arg1) {
    require ext_code.size(tokenFundAddress)
    call tokenFundAddress.0x315a095d with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function addInvestment(address arg1, uint256 arg2) {
    require owner == msg.sender
    require tokenPrice
    if not 100 * 10^6 * arg2 / tokenPrice:
        return 0
    require ext_code.size(tokenFundAddress)
    call tokenFundAddress.0x475a9fa9 with:
         gas gas_remaining - 710 wei
        args multisigAddress, 100 * 10^6 * arg2 / tokenPrice / 100
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(tokenFundAddress)
    call tokenFundAddress.0x475a9fa9 with:
         gas gas_remaining - 710 wei
        args supportAddress, 100 * 10^6 * arg2 / tokenPrice / 100
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(tokenFundAddress)
    if not referral[address(arg1)]:
        call tokenFundAddress.0x475a9fa9 with:
             gas gas_remaining - 710 wei
            args multisigAddress, 3 * 100 * 10^6 * arg2 / tokenPrice / 100
    else:
        call tokenFundAddress.0x475a9fa9 with:
             gas gas_remaining - 710 wei
            args referral[address(arg1)], 3 * 100 * 10^6 * arg2 / tokenPrice / 100
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(tokenFundAddress)
    call tokenFundAddress.0x475a9fa9 with:
         gas gas_remaining - 710 wei
        args address(arg1), (100 * 10^6 * arg2 / tokenPrice) - (5 * 100 * 10^6 * arg2 / tokenPrice / 100)
    require ext_call.success
    require ext_call.return_data[0]
    return 1
}

function fund() payable {
    require tokenPrice
    if msg.value <= 100 * 10^6 * msg.value / tokenPrice * tokenPrice / 100 * 10^6:
        call ethAddress with:
           value 100 * 10^6 * msg.value / tokenPrice * tokenPrice / 100 * 10^6 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        call msg.sender with:
           value msg.value - (100 * 10^6 * msg.value / tokenPrice * tokenPrice / 100 * 10^6) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call ethAddress with:
           value 100 * 10^6 * msg.value / tokenPrice * tokenPrice / 100 * 10^6 wei
             gas 2300 * is_zero(value) wei
    if not 100 * 10^6 * msg.value / tokenPrice:
        return 0
    require ext_code.size(tokenFundAddress)
    call tokenFundAddress.0x475a9fa9 with:
         gas gas_remaining - 710 wei
        args multisigAddress, 100 * 10^6 * msg.value / tokenPrice / 100
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(tokenFundAddress)
    call tokenFundAddress.0x475a9fa9 with:
         gas gas_remaining - 710 wei
        args supportAddress, 100 * 10^6 * msg.value / tokenPrice / 100
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(tokenFundAddress)
    if not referral[address(msg.sender)]:
        call tokenFundAddress.0x475a9fa9 with:
             gas gas_remaining - 710 wei
            args multisigAddress, 3 * 100 * 10^6 * msg.value / tokenPrice / 100
    else:
        call tokenFundAddress.0x475a9fa9 with:
             gas gas_remaining - 710 wei
            args referral[address(msg.sender)], 3 * 100 * 10^6 * msg.value / tokenPrice / 100
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(tokenFundAddress)
    call tokenFundAddress.0x475a9fa9 with:
         gas gas_remaining - 710 wei
        args msg.sender, (100 * 10^6 * msg.value / tokenPrice) - (5 * 100 * 10^6 * msg.value / tokenPrice / 100)
    require ext_call.success
    require ext_call.return_data[0]
    return 1
}

function _fallback() payable {
    require tokenPrice
    if msg.value <= 100 * 10^6 * msg.value / tokenPrice * tokenPrice / 100 * 10^6:
        call ethAddress with:
           value 100 * 10^6 * msg.value / tokenPrice * tokenPrice / 100 * 10^6 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        call msg.sender with:
           value msg.value - (100 * 10^6 * msg.value / tokenPrice * tokenPrice / 100 * 10^6) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call ethAddress with:
           value 100 * 10^6 * msg.value / tokenPrice * tokenPrice / 100 * 10^6 wei
             gas 2300 * is_zero(value) wei
    if 100 * 10^6 * msg.value / tokenPrice:
        require ext_code.size(tokenFundAddress)
        call tokenFundAddress.0x475a9fa9 with:
             gas gas_remaining - 710 wei
            args multisigAddress, 100 * 10^6 * msg.value / tokenPrice / 100
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(tokenFundAddress)
        call tokenFundAddress.0x475a9fa9 with:
             gas gas_remaining - 710 wei
            args supportAddress, 100 * 10^6 * msg.value / tokenPrice / 100
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(tokenFundAddress)
        if not referral[address(msg.sender)]:
            call tokenFundAddress.0x475a9fa9 with:
                 gas gas_remaining - 710 wei
                args multisigAddress, 3 * 100 * 10^6 * msg.value / tokenPrice / 100
        else:
            call tokenFundAddress.0x475a9fa9 with:
                 gas gas_remaining - 710 wei
                args referral[address(msg.sender)], 3 * 100 * 10^6 * msg.value / tokenPrice / 100
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(tokenFundAddress)
        call tokenFundAddress.0x475a9fa9 with:
             gas gas_remaining - 710 wei
            args msg.sender, (100 * 10^6 * msg.value / tokenPrice) - (5 * 100 * 10^6 * msg.value / tokenPrice / 100)
        require ext_call.success
        require ext_call.return_data[0]
}



}
