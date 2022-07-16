contract main {




// =====================  Runtime code  =====================


uint256 sub_f26ed075;
address stor1;
mapping of uint8 stor2;

function sub_24e889ac(?) {
    return bool(stor2[arg1])
}

function sub_f26ed075(?) {
    return sub_f26ed075
}

function _fallback() payable {
    require msg.value >= 10^14
    if not stor2[address(msg.sender)]:
        stor2[address(msg.sender)] = 1
    sub_f26ed075 += msg.value
}

function payPremium() payable {
    require msg.value >= 10^14
    if not stor2[address(msg.sender)]:
        stor2[address(msg.sender)] = 1
    sub_f26ed075 += msg.value
    return 1
}

function sub_6d8d5946(?) {
    require msg.sender == stor1
    require arg2 <= sub_f26ed075
    require stor2[address(arg1)]
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
