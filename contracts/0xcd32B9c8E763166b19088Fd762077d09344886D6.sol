contract main {




// =====================  Runtime code  =====================


address sub_8bb6c247Address;
address owner;
mapping of uint8 stor2;

function sub_8bb6c247(?) {
    return sub_8bb6c247Address
}

function owner() {
    return owner
}

function sub_b498cd10(?) {
    return bool(stor2[arg1])
}

function _fallback() payable {
    revert
}

function sub_29df48c7(?) {
    require msg.sender == owner
    sub_8bb6c247Address = arg1
}

function sub_f3bedbdd(?) {
    require ext_code.size(sub_8bb6c247Address)
    call sub_8bb6c247Address.round_(uint256 arg1) with:
         gas gas_remaining wei
        args 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 416
    return ext_call.return_data[96]
}

function sub_b6dcf3cf(?) {
    require ext_code.size(sub_8bb6c247Address)
    call sub_8bb6c247Address.round_(uint256 arg1) with:
         gas gas_remaining wei
        args 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 416
    return ext_call.return_data[76 len 20]
}

function sub_8d4d8d2f(?) {
    require ext_code.size(sub_8bb6c247Address)
    call sub_8bb6c247Address.round_(uint256 arg1) with:
         gas gas_remaining wei
        args 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 416
    if not stor2[ext_call.return_data[76 len 20]]:
    require ext_call.return_data[96] < block.timestamp
}

function sub_35465d49(?) {
    require ext_code.size(sub_8bb6c247Address)
    call sub_8bb6c247Address.round_(uint256 arg1) with:
         gas gas_remaining wei
        args 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 416
    if ext_call.return_data[96] - block.timestamp >= 180:
    require ext_call.return_data[96] < block.timestamp
}



}
