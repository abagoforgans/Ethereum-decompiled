contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function createConverter(address arg1, address arg2, uint32 arg3, address arg4, uint32 arg5) {
    create contract with 0 wei
                    code: code.data[669 len 19734], address(arg1), address(arg2), arg3 << 224, arg4, arg5 << 224
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).transferManagement(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit NewConverter(address(create.new_address), msg.sender);
    return address(create.new_address)
}



}
