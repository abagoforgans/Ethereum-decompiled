contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 3834]




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function build_creature() payable {
    create contract with 0 wei
                    code: code.data[165 len 3669]
    call address(create.new_address).set_admin(address rg1) with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    return address(create.new_address)
}



}
