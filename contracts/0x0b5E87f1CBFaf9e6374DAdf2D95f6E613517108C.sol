contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 8406]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert 
}

function CreateProxyWithControllerAndRecovery(address arg1, address[] arg2, uint256 arg3, uint256 arg4) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    create contract with 0 wei
                    code: code.data[666 len 954]
    require create.new_address
    create contract with 0 wei
                    code: code.data[1620 len 2579], address(create.new_address), address(arg1), arg3, arg4
    require ext_code.size(address(create.new_address))
    call address(create.new_address).transfer(address rg1) with:
         gas gas_remaining - 50 wei
        args address(create.new_address)
    require ext_call.success
    mem[(32 * arg2.length) + 128 len 4164] = code.data[4199 len 4164]
    mem[(32 * arg2.length) + 4292] = address(create.new_address)
    mem[(32 * arg2.length) + 4324] = 64
    mem[(32 * arg2.length) + 4356] = arg2.length
    if Mask(251, 0, arg2.length):
        mem[(32 * arg2.length) + 4388] = mem[128]
        mem[(32 * arg2.length) + 4420 len floor32((32 * arg2.length) - 1)] = mem[160 len floor32((32 * arg2.length) - 1)]
    create contract with 0 wei
                    code: code.data[4199 len 4164], address(create.new_address), 64, arg2.length, mem[(32 * arg2.length) + 4388 len 32 * arg2.length]
    require create.new_address
    require ext_code.size(address(create.new_address))
    call address(create.new_address).changeRecoveryFromRecovery(address rg1) with:
         gas gas_remaining - 50 wei
        args address(create.new_address)
    require ext_call.success
    emit IdentityCreated(address(create.new_address), address(create.new_address), address(create.new_address), arg1);
}



}
