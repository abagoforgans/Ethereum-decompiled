contract main {




// =====================  Runtime code  =====================


address sub_dee01b05Address;
address sub_f3ce955eAddress;

function sub_dee01b05(?) {
    return sub_dee01b05Address
}

function sub_f3ce955e(?) {
    return sub_f3ce955eAddress
}

function _fallback() payable {
    require ext_code.size(sub_dee01b05Address)
    staticcall sub_dee01b05Address.getState() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require msg.value >= 5 * 10^16
    if not msg.value:
        require ext_code.size(sub_dee01b05Address)
        call sub_dee01b05Address.setInfo(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, 0
    else:
        require 90 * msg.value / msg.value == 90
        require ext_code.size(sub_dee01b05Address)
        call sub_dee01b05Address.setInfo(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, 90 * msg.value / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not msg.value:
        call sub_f3ce955eAddress with:
             gas 2300 wei
    else:
        require 10 * msg.value / msg.value == 10
        call sub_f3ce955eAddress with:
           value 10 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not msg.value:
        call sub_dee01b05Address with:
             gas 2300 wei
    else:
        require 90 * msg.value / msg.value == 90
        call sub_dee01b05Address with:
           value 90 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
