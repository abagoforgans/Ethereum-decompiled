contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 505]




// =====================  Runtime code  =====================


function _fallback() {
    require ext_code.size(0x2829ba1dd81f1c98df78146e07f4516f17f35ddf)
    call 0x2829ba1dd81f1c98df78146e07f4516f17f35ddf.0x206bd362 with:
         gas gas_remaining - 710 wei
        args call.func_hash
    require ext_call.success
    require ext_code.size(0x2829ba1dd81f1c98df78146e07f4516f17f35ddf)
    call 0x2829ba1dd81f1c98df78146e07f4516f17f35ddf.0x92801230 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    mem[0 len calldata.size] = call.data[0 len calldata.size]
    delegate ext_call.return_data[0] with:
       funct call.data[0 len 4]
         gas gas_remaining - 10000 wei
        args call.data[4 len calldata.size - 4]
    mem[0 len ext_call.return_data[0]] = delegate.return_data[0 len ext_call.return_data[0]]
    if not delegate.return_code:
        revert with memory
          from 0
           len 32
    return delegate.return_data[0 len ext_call.return_data[0]]
}



}
