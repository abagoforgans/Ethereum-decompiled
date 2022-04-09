contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[608 len 20]
    return code.data[75 len 521]
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
    mem[64] = 11328
    mem[96] = 0
    mem[128 len 11200] = 0
    idx = 0
    while uint8(idx) < 351:
        mem[mem[64] + 32] = 0
        mem[mem[64] + 4] = uint8(idx)
        require ext_code.size(saleAddress)
        call saleAddress.dailyTotals(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args (idx << 248)
        mem[mem[64]] = ext_call.return_data[0]
        require ext_call.success
        require uint8(idx) < 351
        mem[(32 * uint8(idx)) + 96] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    mem[mem[64]] = mem[96]
    mem[mem[64] + 32 len 11200] = mem[128 len 11200]
    return memory
      from mem[64]
       len 11232
}



}
