contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 2050]




// =====================  Runtime code  =====================


address tokenAddress;
address crowdsaleAddress;
address beneficiaryAddress;

function beneficiary() {
    return beneficiaryAddress
}

function crowdsale() {
    return crowdsaleAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function setToken(address arg1) {
    require msg.sender == beneficiaryAddress
    require arg1
    tokenAddress = arg1
}

function sub_5589869c(?) {
    require arg1
    require arg2
    require arg3
    tokenAddress = arg1
    crowdsaleAddress = arg2
    beneficiaryAddress = arg3
}

function release() {
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.0xfe67a189 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0] + 3600 >= ext_call.return_data[0]
    require block.timestamp > ext_call.return_data[0] + 3600
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args beneficiaryAddress, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}



}
