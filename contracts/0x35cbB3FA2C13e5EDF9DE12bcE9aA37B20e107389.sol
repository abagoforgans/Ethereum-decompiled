contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 441]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function drop(address arg1, address[] arg2, uint256 arg3) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        mem[(32 * arg2.length) + 132] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg2.length) + 164] = arg3
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args mem[(32 * arg2.length) + 132], arg3
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
}



}
