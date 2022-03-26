contract main {


// =======================  Init code  ======================


function _fallback() payable {
    create contract with 0 wei
                    code: code.data[190 len 123]
    call 0x0.a(address rg1) with:
         gas gas_remaining - 25050 wei
        args 0
    require ext_call.success
    signer = erecover(0, 1) 
    require erecover.result
    hash = sha256hash(0, 2) 
    require sha256hash.result
    hash = ripemd160hash(0, 3) 
    require ripemd160hash.result
    require memcopy.success
    mod_exp = bigModExp(0, 5) 
    require bigModExp.result
    bn_add = bn256Add(0, 6) 
    require bn256Add.result
    bn_scalar_mul = bn256ScalarMul(0, 7) 
    require bn256ScalarMul.result
    bn_pairing = bn256Pairing(0, 8) 
    require bn256Pairing.result
    call 0x9.a(address rg1) with:
         gas gas_remaining - 25050 wei
        args 9
    require ext_call.success
    call 0xa.a(address rg1) with:
         gas gas_remaining - 25050 wei
        args 10
    call 0xb.a(address rg1) with:
         gas gas_remaining - 25050 wei
        args 11
    call 0xc.a(address rg1) with:
         gas gas_remaining - 25050 wei
        args 12
    return code.data[313 len 224]
}



// =====================  Runtime code  =====================


const _fallback = code.data[18 len 105]




}
