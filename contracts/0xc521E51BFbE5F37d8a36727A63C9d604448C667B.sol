contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[600 len 20]
    return code.data[75 len 513]
}



// =====================  Runtime code  =====================


address saleAddress;

function sale() {
    return saleAddress
}

function _fallback() payable {
    revert
}

function dailyTotals() {
    mem[96] = 0
    mem[128 len 11200] = 0
    idx = 0
    while idx < 351:
        mem[11360] = 0
        mem[11332] = idx
        require ext_code.size(saleAddress)
        call saleAddress.dailyTotals(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args idx
        mem[11328] = ext_call.return_data[0]
        require ext_call.success
        require idx < 351
        mem[(32 * idx) + 96] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    return mem[96], mem[128 len 11200]
}



}
