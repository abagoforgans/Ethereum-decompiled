contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function create(address arg1) payable {
    require calldata.size - 4 >= 32
    create contract with 0 wei
                    code: code.data[640 len 16139], address(arg1)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).registerScheme(address arg1, bytes32 arg2, bytes4 arg3, address arg4) with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), 0, 0x1f00000000000000000000000000000000000000000000000000000000, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(create.new_address))
    call address(create.new_address).unregisterScheme(address arg1, address arg2) with:
         gas gas_remaining wei
        args this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(create.new_address)
}



}
