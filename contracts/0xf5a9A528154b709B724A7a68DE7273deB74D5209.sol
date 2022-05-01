contract main {


// =======================  Init code  ======================


function _fallback() payable {
    require ext_code.size(0x7f5dbcab54cb17cd494477d4f11a2b7ba470fb3a)
    delegate 0x7f5dbcab54cb17cd494477d4f11a2b7ba470fb3a with:
       funct call.data[0 len 4]
         gas gas_remaining - 10000 wei
        args call.data[4 len calldata.size - 4]
    require delegate.return_code
    return delegate.return_data[0 len 4096]
}



// =====================  Runtime code  =====================




}
