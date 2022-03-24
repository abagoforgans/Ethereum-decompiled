contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 378]




// =====================  Runtime code  =====================


const WithdrawalContract = 0xbf4ed7b27f1d666546e30d74d50d173d20bca754

const DAO = 0xbb9bc244d798123fde783fcc1c72d3bb8c189413


function _fallback() payable {
  stop
}

function isForked() payable {
    call 0xbb9bc244d798123fde783fcc1c72d3bb8c189413.0x18160ddd with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call 0xbb9bc244d798123fde783fcc1c72d3bb8c189413.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args 0xbf4ed7b27f1d666546e30d74d50d173d20bca754
    return (ext_call.return_data[0] > ext_call.return_data[0] / 2)
}



}
