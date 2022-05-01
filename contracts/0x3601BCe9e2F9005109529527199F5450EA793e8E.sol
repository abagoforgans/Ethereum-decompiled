contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 433]




// =====================  Runtime code  =====================


function _fallback() payable {
    require ext_code.size(0xf340b180a486d9c7a7da83e8c1937258c492fc8a)
    call 0xf340b180a486d9c7a7da83e8c1937258c492fc8a.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_code.size(0xf340b180a486d9c7a7da83e8c1937258c492fc8a)
    call 0xf340b180a486d9c7a7da83e8c1937258c492fc8a.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args 0x521db06bf657ed1d6c98553a70319a8ddbac75a3, ext_call.return_data[0]
    require ext_call.success
}



}
