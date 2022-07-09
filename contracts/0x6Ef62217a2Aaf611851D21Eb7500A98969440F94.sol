contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_8fd10f72(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg2.length == arg3.length
    require arg2.length >= 1
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'transferFrom(address,address,uin'
    mem[(32 * arg2.length) + (32 * arg3.length) + 192] = 't256)'
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _22 = mem[(32 * idx) + 128]
        require idx < arg3.length
        _24 = mem[(32 * idx) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)'))
        mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_22)
        mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _24
        call arg1 with:
           funct Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)')) >> 224
             gas gas_remaining wei
            args msg.sender, address(_22), _24
        require ext_call.success
        idx = idx + 1
        continue 
    return 1
}



}
