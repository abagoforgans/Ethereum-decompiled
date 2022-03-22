contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 12784]




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function buildDSTokenRegistry() payable {
    create contract with 0 wei
                    code: code.data[650 len 1967]
    call address(create.new_address).updateAuthority(address rg1, uint8 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, 0
    require ext_call.success
    return address(create.new_address)
}

function buildDSTokenFrontend() payable {
    create contract with 0 wei
                    code: code.data[9184 len 3600]
    call address(create.new_address).updateAuthority(address rg1, uint8 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, 0
    require ext_call.success
    return address(create.new_address)
}

function sub_6db0db1a(?) payable {
    create contract with 0 wei
                    code: code.data[2617 len 6567], address(arg1), address(arg2), arg3
    call address(create.new_address).updateAuthority(address rg1, uint8 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, 0
    require ext_call.success
    return address(create.new_address)
}



}
