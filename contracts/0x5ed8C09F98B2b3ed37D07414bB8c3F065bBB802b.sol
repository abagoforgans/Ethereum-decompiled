contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 15091]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function createConverter(address arg1, address arg2, uint32 arg3, address arg4, uint32 arg5) {
    create contract with 0 wei
                    code: code.data[704 len 14344], address(arg1), address(arg2), arg3 << 224, arg4, arg5 << 224
    require create.new_address
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    require ext_call.success
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xe4edf852 with:
         gas gas_remaining wei
        args msg.sender
    require ext_call.success
    emit NewConverter(address(create.new_address), msg.sender);
    return address(create.new_address)
}



}
