contract main {




// =====================  Runtime code  =====================


address sub_84952ba4Address;
address sub_c5e25919Address;
address proxyFactoryAddress;

function sub_84952ba4(?) payable {
    return sub_84952ba4Address
}

function proxyFactory() payable {
    return proxyFactoryAddress
}

function sub_c5e25919(?) payable {
    return sub_c5e25919Address
}

function _fallback() payable {
    revert
}

function createWorker() payable {
    create contract with 0 wei
                    code: code.data[1025 len 10877], sub_84952ba4Address, sub_c5e25919Address, proxyFactoryAddress
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
