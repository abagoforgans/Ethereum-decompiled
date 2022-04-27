contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 341]




// =====================  Runtime code  =====================


function _fallback() payable {
    if msg.value > 0:
        emit 0x1e35c31a: msg.sender, msg.value
    require ext_code.size(0x3ecfe24ed1569e177aaa22290d9563b43232a8d6)
    call 0x3ecfe24ed1569e177aaa22290d9563b43232a8d6.0xaaf10f42 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    delegate ext_call.return_data[0] with:
       funct call.data[0 len 4]
         gas 63 * gas_remaining / 64 wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}



}
