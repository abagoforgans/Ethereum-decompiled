contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 7458]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function generate(address arg1) {
    create contract with 0 wei
                    code: code.data[426 len 6989]
    require create.new_address
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return address(create.new_address)
}



}
