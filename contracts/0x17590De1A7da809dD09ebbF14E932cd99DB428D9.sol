contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[635 len 20]
    return code.data[84 len 539]
}



// =====================  Runtime code  =====================


address sub_16fe63afAddress;

function sub_16fe63af(?) {
    return sub_16fe63afAddress
}

function _fallback() payable {
    revert
}

function sub_c264db56(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _17 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(sub_16fe63afAddress)
        call sub_16fe63afAddress.getLockBalance(address arg1) with:
             gas gas_remaining wei
            args address(_17)
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        if not ext_call.return_data[0]:
            s = ext_call.return_data[0]
            idx = idx + 1
            continue 
        require idx < arg1.length
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
        return memory
          from (32 * arg1.length) + 128
           len 32
    return 0
}



}
