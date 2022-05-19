contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function sub_a47fbc3e(?) payable {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg1
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        _15 = mem[(32 * idx) + 128]
        mem[(32 * arg3.length) + 132] = arg2
        mem[(32 * arg3.length) + 164] = address(_15)
        mem[(32 * arg3.length) + 196] = arg4
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args address(arg2), address(_15), arg4
        mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
    return 1
}

function sub_732e971c(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _11 = mem[(32 * idx) + 128]
        mem[(32 * arg2.length) + 132] = arg1
        mem[(32 * arg2.length) + 164] = address(_11)
        mem[(32 * arg2.length) + 196] = 10^18
        require ext_code.size(0xc54083e77f913a4f99e1232ae80c318ff03c9d17)
        call 0xc54083e77f913a4f99e1232ae80c318ff03c9d17.0x23b872dd with:
             gas gas_remaining wei
            args address(arg1), address(_11), 10^18
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}



}
