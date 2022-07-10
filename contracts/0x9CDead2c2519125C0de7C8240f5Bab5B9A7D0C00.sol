contract main {




// =====================  Runtime code  =====================


address stor0;
address fundAddress;
address sub_e0a96869Address;
address sub_b8168a86Address;

function fund() {
    return fundAddress
}

function sub_b8168a86(?) {
    return sub_b8168a86Address
}

function sub_e0a96869(?) {
    return sub_e0a96869Address
}

function sub_6cabb6a6(?) {
    require msg.sender == stor0
    sub_e0a96869Address = arg1
}

function changeFund(address arg1) {
    require msg.sender == stor0
    fundAddress = arg1
}

function withdrawETH(uint256 arg1) {
    require msg.sender == stor0
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_7036aec7(?) {
    require msg.sender == stor0
    require ext_code.size(sub_b8168a86Address)
    call sub_b8168a86Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_711b6588(?) {
    require msg.sender == stor0
    require ext_code.size(sub_b8168a86Address)
    call sub_b8168a86Address.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function _fallback() payable {
    call fundAddress with:
       value msg.value / 10 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call sub_e0a96869Address with:
       value 9 * msg.value / 10 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
