contract main {




// =====================  Runtime code  =====================


address sub_d4dc3cf8Address;
address sub_81e9090aAddress;
mapping of address sub_d0d5dd40;

function sub_81e9090a(?) {
    return sub_81e9090aAddress
}

function sub_d0d5dd40(?) {
    require calldata.size - 4 >= 32
    return sub_d0d5dd40[arg1]
}

function sub_d4dc3cf8(?) {
    return sub_d4dc3cf8Address
}

function _fallback() payable {
    revert
}

function sub_25fe5114(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_d0d5dd40[arg1])
    call sub_d0d5dd40[arg1].getTimeLeft() with:
         gas gas_remaining wei
    require not ext_call.success
    revert with ext_call.return_data[0 len return_data.size]
}

function sub_e0d32d2e(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_d0d5dd40[arg1])
    call sub_d0d5dd40[arg1].getTimeLeft() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size < 32
    revert
}

function sub_49b7dd7d(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_d0d5dd40[arg1])
    call sub_d0d5dd40[arg1].getTimeLeft() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}

function sub_705aa39e(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    call arg1.rID_() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.getTimeLeft() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.getBuyPrice() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.round_(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 384
    require bool((6 * ceil32(return_data.size)) + 1088 <= test266151307())
    require ext_code.size(arg1)
    call arg1.0xde7874f3 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    require bool((7 * ceil32(return_data.size)) + 1312 <= test266151307())
    return ext_call.return_data[0], 
           ext_call.return_data[0],
           address(ext_call.return_data[12 len 20]),
           ext_call.return_data[0],
           block.number,
           block.timestamp
}



}
