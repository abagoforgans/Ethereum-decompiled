contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 435]




// =====================  Runtime code  =====================


function _fallback() payable {
    require ext_code.size(0x9ff0d33e505b9da3770c481d761d02b2fa08b8c5)
    call 0x9ff0d33e505b9da3770c481d761d02b2fa08b8c5.0x206bd362 with:
         gas gas_remaining - 710 wei
        args call.func_hash
    require ext_call.success
    require ext_code.size(0x9ff0d33e505b9da3770c481d761d02b2fa08b8c5)
    call 0x9ff0d33e505b9da3770c481d761d02b2fa08b8c5.0x92801230 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    delegate ext_call.return_data[0] with:
       funct call.data[0 len 4]
         gas gas_remaining - 10000 wei
        args call.data[4 len calldata.size - 4]
    require delegate.return_code
    return delegate.return_data[0 len ext_call.return_data[0]]
}



}
