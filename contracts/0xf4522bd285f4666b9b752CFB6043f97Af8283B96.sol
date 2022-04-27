contract main {


// =======================  Init code  ======================


const _fallback = code.data[27 len 98]




// =====================  Runtime code  =====================


function _fallback() payable {
    call 0xc2b67c9c68ba4ac7c549cedd9f3b46a142a5a761 with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not ext_call.success:
    return ext_call.return_data[0 len 8]
}



}
