contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 585]




// =====================  Runtime code  =====================


const quickConverter = 0xf87a7ec94884f44d9de33d36b73f42c7c0dd38b1


function _fallback() payable {
    revert
}

function sub_362fe54c(?) payable {
    mem[(32 * arg1.length) + 292 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(0xf87a7ec94884f44d9de33d36b73f42c7c0dd38b1)
    call 0xf87a7ec94884f44d9de33d36b73f42c7c0dd38b1.convertFor(address[] rg1, uint256 rg2, uint256 rg3, address rg4) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 292 len (32 * arg1.length) - floor32(arg1.length)]), arg2, arg3, msg.sender
    require ext_call.success
    return 0
}



}
