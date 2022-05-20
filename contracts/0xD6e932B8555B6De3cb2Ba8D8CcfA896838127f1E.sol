contract main {




// =====================  Runtime code  =====================


address tokenAddress;
address stor1;

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function changeAddress(address arg1) {
    require stor1 == msg.sender
    tokenAddress = arg1
}

function sub_d0558c34(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + 164] = arg2
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + 132], arg2
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}



}
