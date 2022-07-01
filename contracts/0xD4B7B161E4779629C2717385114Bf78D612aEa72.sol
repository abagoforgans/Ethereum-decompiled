contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function multiSend(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 32
    while idx < arg1.length:
        if not mem[idx + 96]:
            call mem[idx + 128].mem[idx + 256 len 4] with:
               value mem[idx + 160] wei
                 gas gas_remaining wei
                args mem[idx + 260 len mem[idx + 224] - 4]
            require ext_call.success
        else:
            require mem[idx + 96] == 1
            delegate mem[idx + 128].mem[idx + 256 len 4] with:
                 gas gas_remaining wei
                args mem[idx + 260 len mem[idx + 224] - 4]
            require delegate.return_code
        idx = idx + ceil32(mem[idx + 224]) + 160
        continue 
}



}
