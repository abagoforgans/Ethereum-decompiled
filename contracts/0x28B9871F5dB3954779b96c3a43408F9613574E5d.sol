contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 682]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function multiSend(address arg1, address[] arg2, uint256[] arg3) payable {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    idx = 0
    while idx < arg2.length:
        require idx < arg3.length
        _26 = mem[(32 * idx) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg3.length) + 164] = this.address
        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = _26
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), _26
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
        require ext_call.success
        require idx < arg3.length
        _32 = mem[(32 * idx) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = this.address
        mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _32
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), _32
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
        require ext_call.success
        require idx < arg2.length
        require idx < arg3.length
        _40 = mem[(32 * idx) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg3.length) + 164] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = _40
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * arg2.length) + (32 * arg3.length) + 164], _40
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
}



}
