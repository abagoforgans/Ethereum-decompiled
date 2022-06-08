contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 587]




// =====================  Runtime code  =====================


const DEADLINE = 1583024461

const RECEIVER = 0xa814147abab7b7c4ae0914f9af9eeae201454219


function _fallback() payable {
    revert
}

function transferAfterDeadline() {
    require block.timestamp > 1583024461
    require ext_code.size(0x8400d94a5cb0fa0d041a3788e395285d61c9ee5e)
    call 0x8400d94a5cb0fa0d041a3788e395285d61c9ee5e.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(0x8400d94a5cb0fa0d041a3788e395285d61c9ee5e)
    call 0x8400d94a5cb0fa0d041a3788e395285d61c9ee5e.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args 0xa814147abab7b7c4ae0914f9af9eeae201454219, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    return 1
}



}
