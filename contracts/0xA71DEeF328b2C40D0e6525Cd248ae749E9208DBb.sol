contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;

function _fallback() {
    require code.data[2373 len 20] != code.data[2341 len 20]
    require code.data[2425 len 32] >= 1
    require code.data[2425 len 32] <= 100
    stor2 = code.data[2405 len 20]
    stor0 = code.data[2341 len 20]
    stor1 = code.data[2373 len 20]
    stor3 = code.data[2425 len 32]
    return code.data[378 len 1951]
}



// =====================  Runtime code  =====================


address principalAddress;
address partnerAddress;
address tokenAddress;
uint256 sub_431458cc;

function sub_431458cc(?) {
    return sub_431458cc
}

function principal() {
    return principalAddress
}

function partner() {
    return partnerAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_c63b9c45(?) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
    return (ext_call.return_data[0] * sub_431458cc / 100)
}

function sub_31e9a2f2(?) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
    return (ext_call.return_data[0] - (ext_call.return_data[0] * sub_431458cc / 100))
}

function sub_3045e9ec(?) {
    if principalAddress != msg.sender:
        require msg.sender == partnerAddress
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] - (ext_call.return_data[0] * sub_431458cc / 100) > 0:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args principalAddress, ext_call.return_data[0] - (ext_call.return_data[0] * sub_431458cc / 100)
        require ext_call.success
    if ext_call.return_data[0] * sub_431458cc / 100 > 0:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args partnerAddress, ext_call.return_data[0] * sub_431458cc / 100
        require ext_call.success
}

function sub_a89161dd(?) {
    require msg.sender == principalAddress
    require arg1 >= 1
    require arg1 <= 100
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] - (ext_call.return_data[0] * sub_431458cc / 100) > 0:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args principalAddress, ext_call.return_data[0] - (ext_call.return_data[0] * sub_431458cc / 100)
        require ext_call.success
    if ext_call.return_data[0] * sub_431458cc / 100 > 0:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args partnerAddress, ext_call.return_data[0] * sub_431458cc / 100
        require ext_call.success
    sub_431458cc = arg1
}



}
