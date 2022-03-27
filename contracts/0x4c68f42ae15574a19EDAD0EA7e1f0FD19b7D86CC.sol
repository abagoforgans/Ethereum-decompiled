contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 4674]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert 
}

function create(address arg1, address arg2, address arg3) {
    create contract with 0 wei
                    code: code.data[286 len 4345], address(arg1), address(arg2), arg3
    require create.new_address
    require ext_code.size(address(create.new_address))
    call address(create.new_address).transferOwner(address rg1) with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    return address(create.new_address)
}



}
