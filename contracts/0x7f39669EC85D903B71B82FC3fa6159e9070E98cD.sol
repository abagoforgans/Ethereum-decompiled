contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function transfer(address arg1, address arg2, address[] arg3, uint256[] arg4) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg3.length > 0
    mem[(32 * arg4.length) + (32 * arg3.length) + 160] = 'transferFrom(address,address,uin'
    mem[(32 * arg4.length) + (32 * arg3.length) + 192] = 't256)'
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        _20 = mem[(32 * idx) + 128]
        require idx < arg4.length
        _22 = mem[(32 * idx) + (32 * arg3.length) + 160]
        mem[(32 * arg4.length) + (32 * arg3.length) + 160] = Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)'))
        mem[(32 * arg4.length) + (32 * arg3.length) + 164] = arg1
        mem[(32 * arg4.length) + (32 * arg3.length) + 196] = address(_20)
        mem[(32 * arg4.length) + (32 * arg3.length) + 228] = 10^18 * _22
        call arg2 with:
           funct Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)')) >> 224
             gas gas_remaining wei
            args address(arg1), address(_20), 10^18 * _22
        idx = idx + 1
        continue 
    return 1
}



}
