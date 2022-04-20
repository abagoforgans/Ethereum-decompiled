contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function sub_90111e26(?) {
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor1, ext_call.return_data[0]
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function _fallback() {
    require ext_code.size(stor0)
    call stor0.CurrentMined() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if -ext_call.return_data[0] + 5 * 10^9 / 100 * 10^6 >= 40:
        idx = 0
        while idx < 40:
            mem[128] = 0
            require ext_code.size(stor0)
            call stor0.Mine() with:
                 gas gas_remaining - 710 wei
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            idx = idx + 1
            continue 
    else:
        require ext_code.size(stor0)
        call stor0.CurrentMined() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        idx = 0
        while idx < -ext_call.return_data[0] + 5 * 10^9 / 100 * 10^6:
            mem[128] = 0
            require ext_code.size(stor0)
            call stor0.Mine() with:
                 gas gas_remaining - 710 wei
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            idx = idx + 1
            continue 
}



// =====================  Runtime code  =====================




}
