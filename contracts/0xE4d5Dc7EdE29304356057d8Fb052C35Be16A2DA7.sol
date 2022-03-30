contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 4045]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert 
}

function CreateProxyWithControllerAndRecoveryKey(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    create contract with 0 wei
                    code: code.data[469 len 954]
    require create.new_address
    create contract with 0 wei
                    code: code.data[1423 len 2579], address(create.new_address), address(arg1), arg3, arg4
    require ext_code.size(address(create.new_address))
    call address(create.new_address).transfer(address rg1) with:
         gas gas_remaining - 50 wei
        args address(create.new_address)
    require ext_call.success
    require ext_code.size(address(create.new_address))
    call address(create.new_address).changeRecoveryFromRecovery(address rg1) with:
         gas gas_remaining - 50 wei
        args arg2
    require ext_call.success
    emit IdentityCreated(address(create.new_address), address(create.new_address), arg1, arg2);
}



}
