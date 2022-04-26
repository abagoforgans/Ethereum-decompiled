contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[94 len 556]
}



// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function doAirdrop(address arg1, address[] arg2, uint256 arg3) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _12 = mem[(32 * idx) + 128]
        mem[(32 * arg2.length) + 132] = msg.sender
        mem[(32 * arg2.length) + 164] = address(_12)
        mem[(32 * arg2.length) + 196] = arg3
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, address(_12), arg3
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
}



}
