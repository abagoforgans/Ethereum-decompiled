contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    staticcall cd[128] with:
         funct uint32(call.func_hash)
            gas gas_remaining wei
           args cd[160], cd[192]
    if not ext_call.return_data[0]:
        return block.number, ext_call.return_data[0], 0, 0, 0
    staticcall cd[128] with:
         funct uint32(cd[32])
            gas gas_remaining wei
           args cd[160], cd[192], ext_call.return_data[0]
    staticcall cd[128] with:
         funct uint32(cd[64])
            gas gas_remaining wei
           args cd[160], cd[192]
    staticcall cd[128] with:
         funct uint32(cd[96])
            gas gas_remaining wei
           args cd[160], cd[192]
    if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) - ext_call.return_data[0] >= 0:
        return block.number, 
               ext_call.return_data[0],
               (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) - ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[32]
    return block.number, ext_call.return_data[0], 0, ext_call.return_data[0], ext_call.return_data[32]
}



}
