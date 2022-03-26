contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 7556]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert 
}

function sub_e81a2a0e(?) {
    create contract with 0 wei
                    code: code.data[413 len 7143]
    require create.new_address
    emit 0xd8915793: address(create.new_address), address(arg4), msg.sender
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x7e7c0c20 with:
         gas gas_remaining - 50 wei
        args address(arg1), arg2, arg3
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_code.size(address(create.new_address))
        call address(create.new_address).forceChangeContractOwnership(address rg1) with:
             gas gas_remaining - 50 wei
            args arg4
        require ext_call.success
    return bool(ext_call.return_data[0])
}



}
