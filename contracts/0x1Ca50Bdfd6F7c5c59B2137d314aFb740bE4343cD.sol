contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 649]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_a9a14b56(?) {
    require ext_code.size(arg1)
    call arg1.last_offer_id() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    idx = 1
    s = 0
    while idx < ext_call.return_data[0]:
        mem[160] = 0
        mem[132] = idx
        require ext_code.size(arg1)
        call arg1.isActive(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args idx
        mem[128] = ext_call.return_data[0]
        require ext_call.success
        if not ext_call.return_data[0]:
            idx = idx + 1
            s = s
            continue 
        require s + 1 < 0
        mem[(32 * s + 1) + 128] = idx
        idx = idx + 1
        s = s + 1
        continue 
    return s, 64, 0
}



}
