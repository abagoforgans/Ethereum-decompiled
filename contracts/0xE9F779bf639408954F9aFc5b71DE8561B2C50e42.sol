contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 9828]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert 
}

function sub_e81a2a0e(?) {
    create contract with 0 wei
                    code: code.data[493 len 9292]
    require create.new_address
    require ext_code.size(address(create.new_address))
    call address(create.new_address).'~| ' with:
         gas gas_remaining - 50 wei
        args address(arg1), arg2, arg3
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(address(create.new_address))
    call address(create.new_address).forceChangeContractOwnership(address rg1) with:
         gas gas_remaining - 50 wei
        args arg4
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    emit 0xd8915793: address(create.new_address), address(arg4), msg.sender
    return 1
}



}
