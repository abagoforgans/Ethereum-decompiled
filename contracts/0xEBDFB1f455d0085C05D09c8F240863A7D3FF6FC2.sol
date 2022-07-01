contract main {




// =====================  Runtime code  =====================


address sub_e2d3e399Address;
address otcAddress;

function otc() payable {
    return otcAddress
}

function sub_e2d3e399(?) payable {
    return sub_e2d3e399Address
}

function _fallback() payable {
    revert
}

function sub_8ba1c5d0(?) payable {
    create contract with 0 wei
                    code: code.data[816 len 16959], sub_e2d3e399Address, otcAddress
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}



}
