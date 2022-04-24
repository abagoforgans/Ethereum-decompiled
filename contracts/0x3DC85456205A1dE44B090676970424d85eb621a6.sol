contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[1707 len 20]
    return code.data[188 len 1507]
}



// =====================  Runtime code  =====================


address owner;
address contractAddress;

function owner() {
    return owner
}

function contractAddress() {
    return contractAddress
}

function _fallback() payable {
    revert
}

function sub_d8c75f6d(?) {
    require msg.sender == owner
    require ext_code.size(contractAddress)
    call contractAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(contractAddress)
    call contractAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_f852368e(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx != arg1.length:
        require idx < arg1.length
        mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + 164] = 67200 * 10^6
        require ext_code.size(contractAddress)
        call contractAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args mem[(32 * arg1.length) + 132], 67200 * 10^6
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
    return 1
}



}
