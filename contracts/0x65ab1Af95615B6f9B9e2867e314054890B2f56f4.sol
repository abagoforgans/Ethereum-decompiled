contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function transfer(address arg1, address arg2, address[] arg3, uint256 arg4) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg3.length > 0
    mem[(32 * arg3.length) + 128] = 'transferFrom(address,address,uin'
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        _17 = mem[(32 * idx) + 128]
        mem[(32 * arg3.length) + 128] = Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)'))
        mem[(32 * arg3.length) + 132] = arg1
        mem[(32 * arg3.length) + 164] = address(_17)
        mem[(32 * arg3.length) + 196] = arg4
        call arg2 with:
           funct Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)')) >> 224
             gas gas_remaining wei
            args address(arg1), address(_17), arg4
        idx = idx + 1
        continue 
    return 1
}



}
