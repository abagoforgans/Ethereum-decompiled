contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 386]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function register(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _9 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = 0x779beedf00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = address(_9)
        require ext_code.size(0xeca04bb23612857650d727b8ed008f80952654ee)
        call 0xeca04bb23612857650d727b8ed008f80952654ee.registerWallet(address arg1) with:
             gas gas_remaining - 710 wei
            args address(_9)
        require ext_call.success
        idx = idx + 1
        continue 
}



}
