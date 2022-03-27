contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 9183]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert 
}

function create(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6) {
    create contract with 0 wei
                    code: code.data[318 len 8865], address(arg1), address(arg2), address(arg3), arg4, address(arg5), arg6
    require create.new_address
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x4fb2e45d with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    return address(create.new_address)
}



}
