contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 amountEthRaised;
uint256 sub_53b71eb7;
uint256 tokenPriceWei;
address sub_14c26303Address;
address sub_0f8b270fAddress;
array of struct buyers;
uint8 stor7;

function tokenPriceWei() {
    return tokenPriceWei
}

function sub_0f8b270f(?) {
    return sub_0f8b270fAddress
}

function sub_14c26303(?) {
    return sub_14c26303Address
}

function sub_53b71eb7(?) {
    return sub_53b71eb7
}

function amountEthRaised() {
    return amountEthRaised
}

function buyers(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < buyers.length
    return buyers[arg1].field_0, buyers[arg1].field_256, buyers[arg1].field_512
}

function sub_57232422(?) {
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor7 = 1
}

function sub_8838583a(?) {
    require msg.sender == stor0
    require ext_code.size(sub_14c26303Address)
    staticcall sub_14c26303Address.0x70a08231 with:
            gas gas_remaining wei
           args sub_0f8b270fAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_14c26303Address)
    call sub_14c26303Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor7 = 0
}

function _fallback() payable {
    require stor7
    require tokenPriceWei
    require ext_code.size(sub_14c26303Address)
    call sub_14c26303Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_0f8b270fAddress, 1000 * msg.value / tokenPriceWei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(sub_14c26303Address)
    call sub_14c26303Address.0x23b872dd with:
         gas gas_remaining wei
        args sub_0f8b270fAddress, msg.sender, 1000 * msg.value / tokenPriceWei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    amountEthRaised += msg.value
    sub_53b71eb7 += 1000 * msg.value / tokenPriceWei
    buyers.length++
    if buyers.length > buyers.length + 1:
        idx = (3 * buyers.length) + 3
        while 3 * buyers.length > idx:
            buyers[idx].field_0 = 0
            buyers[idx].field_256 = 0
            buyers[idx].field_512 = 0
            idx = idx + 3
            continue 
    require buyers.length < buyers.length
    buyers[buyers.length].field_0 = msg.sender
    buyers[buyers.length].field_256 = msg.value
    buyers[buyers.length].field_512 = 1000 * msg.value / tokenPriceWei
}



}
