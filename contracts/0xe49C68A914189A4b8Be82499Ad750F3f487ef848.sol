contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 493]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function airdrop(address arg1, uint256 arg2, address[] arg3) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        _16 = mem[(32 * idx) + 128]
        mem[(32 * arg3.length) + 132] = msg.sender
        mem[(32 * arg3.length) + 164] = address(_16)
        mem[(32 * arg3.length) + 196] = arg2
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, address(_16), arg2
        mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
    return 1
}



}
