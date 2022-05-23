contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;

function owner() {
    return owner
}

function kill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
    emit NewOwner(arg1);
    return 1
}

function sub_f77ece83(?) {
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require msg.sender == owner
    mem[(32 * arg3.length) + 128] = 'transferFrom(address,address,uin'
    mem[(32 * arg3.length) + 160] = 't256)'
    s = 0
    idx = 0
    while uint8(idx) < arg3.length:
        require uint8(idx) < arg3.length
        _12 = mem[(32 * uint8(idx)) + 128]
        mem[(32 * arg3.length) + 128] = Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)'))
        mem[(32 * arg3.length) + 132] = arg2
        mem[(32 * arg3.length) + 164] = address(_12)
        mem[(32 * arg3.length) + 196] = arg4
        call arg1 with:
           funct Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)')) >> 224
             gas gas_remaining wei
            args address(arg2), address(_12), arg4
        s = _12
        idx = idx + 1
        continue 
}

function sub_24e11ced(?) {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    mem[(32 * arg2.length) + 128] = 'transferFrom(address,address,uin'
    mem[(32 * arg2.length) + 160] = 't256)'
    s = 0
    idx = 0
    while uint8(idx) < arg2.length:
        require uint8(idx) < arg2.length
        _12 = mem[(32 * uint8(idx)) + 128]
        mem[(32 * arg2.length) + 128] = Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)'))
        mem[(32 * arg2.length) + 132] = arg1
        mem[(32 * arg2.length) + 164] = address(_12)
        mem[(32 * arg2.length) + 196] = arg3
        call stor1 with:
           funct Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)')) >> 224
             gas gas_remaining wei
            args address(arg1), address(_12), arg3
        s = _12
        idx = idx + 1
        continue 
}



}
