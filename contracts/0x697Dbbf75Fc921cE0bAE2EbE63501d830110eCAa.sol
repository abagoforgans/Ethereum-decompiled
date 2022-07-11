contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 637]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function multiSend(address arg1, address[] arg2, uint256[] arg3) payable {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg2.length <= 300
    require arg2.length == arg3.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
    mem[(32 * arg2.length) + (32 * arg3.length) + 196] = this.address
    require ext_code.size(arg1)
    call arg1.0xdd62ed3e with:
         gas gas_remaining wei
        args msg.sender, this.address
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0] > 0
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        require idx < arg3.length
        _23 = mem[(32 * idx) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg3.length) + 164] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = _23
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * arg2.length) + (32 * arg3.length) + 164], _23
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
}



}
