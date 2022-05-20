contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[83 len 1168]
}



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

function airDrop(address arg1, address arg2, address[] arg3, uint256[] arg4) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require msg.sender == owner
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        _15 = mem[(32 * idx) + 128]
        require idx < arg4.length
        _17 = mem[(32 * idx) + (32 * arg3.length) + 160]
        mem[(32 * arg3.length) + (32 * arg4.length) + 164] = arg2
        mem[(32 * arg3.length) + (32 * arg4.length) + 196] = address(_15)
        mem[(32 * arg3.length) + (32 * arg4.length) + 228] = _17
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining - 710 wei
            args address(arg2), address(_15), _17
        mem[(32 * arg3.length) + (32 * arg4.length) + 160] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
}



}
