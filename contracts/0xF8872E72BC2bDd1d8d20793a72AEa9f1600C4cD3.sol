contract main {


// =======================  Init code  ======================


uint16 stor0; offset 160
uint256 stor1;
uint256 stor2;
address stor3;

function _fallback() payable {
    stor0 = 0
    stor1 = 50000
    require not msg.value
    stor3 = code.data[2830 len 20]
    stor2 = block.timestamp + (1080 * 24 * 3600)
    return code.data[107 len 2711]
}



// =====================  Runtime code  =====================


uint8 isTokenSet; offset 160
uint8 isCrowdFundActive; offset 168
uint128 stor0; offset 168
address tokenAddress;
uint256 sub_33bd0232;
uint256 icoEndDate;
address founderMultiSigAddress;
address sub_8085e810Address;

function icoEndDate() {
    return icoEndDate
}

function founderMultiSigAddress() {
    return founderMultiSigAddress
}

function isCrowdFundActive() {
    return bool(isCrowdFundActive)
}

function sub_33bd0232(?) {
    return sub_33bd0232
}

function sub_8085e810(?) {
    return sub_8085e810Address
}

function isTokenSet() {
    return bool(isTokenSet)
}

function token() {
    return tokenAddress
}

function sub_d8986833(?) {
    require founderMultiSigAddress == msg.sender
    require arg1
    sub_8085e810Address = arg1
}

function setFounderMultiSigAddress(address arg1) {
    require founderMultiSigAddress == msg.sender
    require arg1
    founderMultiSigAddress = arg1
}

function changeCrowdfundState() {
    require 1 == bool(isTokenSet)
    require founderMultiSigAddress == msg.sender
    stor0 = Mask(88, 0, not isCrowdFundActive)
}

function setTokenAddress(address arg1) {
    require founderMultiSigAddress == msg.sender
    require arg1
    require not isTokenSet
    tokenAddress = arg1
    isTokenSet = 1
}

function sub_8c6d99d0(?) {
    require sub_8085e810Address == msg.sender
    require 1 == bool(isCrowdFundActive)
    require block.timestamp > icoEndDate
    require ext_code.size(tokenAddress)
    call tokenAddress.0x4f90db0 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    return 1
}

function buyTokens(address arg1, uint256 arg2, bytes4 arg3, bytes32 arg4) {
    require sub_8085e810Address == msg.sender
    require 1 == bool(isTokenSet)
    require founderMultiSigAddress != msg.sender
    require arg1
    require block.timestamp > icoEndDate
    require arg2 > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x8edd8e6 with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    emit TokensBought(arg2, arg4, arg1, Mask(32, 224, arg3));
    return 1
}

function _fallback() payable {
    require msg.value > 0
    require 1 == bool(isCrowdFundActive)
    require 1 == bool(isTokenSet)
    require founderMultiSigAddress != msg.sender
    require block.timestamp < icoEndDate
    call founderMultiSigAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if msg.value:
        require msg.value
        require sub_33bd0232 * msg.value / msg.value == sub_33bd0232
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, sub_33bd0232 * msg.value
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x8edd8e6 with:
         gas gas_remaining - 710 wei
        args (sub_33bd0232 * msg.value)
    require ext_call.success
    emit TokensBought(sub_33bd0232 * msg.value, 'ICO TOKENS', msg.sender, 'ETH');
}

function buyIcoTokens() payable {
    require msg.value > 0
    require 1 == bool(isCrowdFundActive)
    require 1 == bool(isTokenSet)
    require founderMultiSigAddress != msg.sender
    require block.timestamp < icoEndDate
    call founderMultiSigAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if msg.value:
        require msg.value
        require sub_33bd0232 * msg.value / msg.value == sub_33bd0232
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, sub_33bd0232 * msg.value
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x8edd8e6 with:
         gas gas_remaining - 710 wei
        args (sub_33bd0232 * msg.value)
    require ext_call.success
    emit TokensBought(sub_33bd0232 * msg.value, 'ICO TOKENS', msg.sender, 'ETH');
    return 1
}



}
