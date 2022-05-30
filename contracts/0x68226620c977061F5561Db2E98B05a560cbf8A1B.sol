contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint8 sub_7ca548c6;
uint8 threshold; offset 8
uint256 nonce;

function threshold() {
    return threshold
}

function signers(address arg1) {
    return bool(stor0[arg1])
}

function sub_7ca548c6(?) {
    return sub_7ca548c6
}

function nonce() {
    return nonce
}

function _fallback() payable {
    revert
}

function sub_a7850742(?) {
    require arg1 > 0
    require arg1 <= sub_7ca548c6
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg4.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = 12
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 'setThreshold'
    require arg2.length == threshold
    require arg2.length == arg3.length
    require arg2.length == arg4.length
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256] = 0x1900000000000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 257] = 0
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 258] = address(this.address)
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 278] = address(this.address)
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 298 len 0] = None
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 298 len 20] = address(0, mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 310 len 8])
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 310] = sha3(arg1)
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 342] = nonce
    _38 = sha3(0, 0, this.address, this.address, mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 298 len 12], sha3(arg1), nonce)
    s = 0
    idx = 0
    s = 0
    while uint8(idx) < arg2.length:
        require uint8(idx) < mem[96]
        _59 = mem[(32 * uint8(idx)) + 128]
        require uint8(idx) < mem[(32 * arg2.length) + 128]
        _61 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
        require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
        _63 = mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + 192]
        _64 = mem[64]
        mem[64] = mem[64] + 32
        mem[_64 + 32] = _38
        mem[_64 + 64] = uint8(_59)
        mem[_64 + 96] = _61
        mem[_64 + 128] = _63
        signer = erecover(_38, _59 << 248, _61, _63) 
        mem[_64] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        require address(signer) > address(s)
        mem[0] = address(signer)
        mem[32] = 0
        require stor0[address(signer)]
        s = signer
        idx = idx + 1
        s = signer
        continue 
    nonce++
    threshold = arg1
    emit 0x19bdbd56: arg1
}

function sub_8053f79c(?) {
    require sub_7ca548c6 > threshold
    require stor0[address(arg1)]
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg4.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = 12
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 'removeSigner'
    require arg2.length == threshold
    require arg2.length == arg3.length
    require arg2.length == arg4.length
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256] = 0x1900000000000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 257] = 0
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 258] = address(this.address)
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 278] = address(this.address)
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 298 len 0] = None
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 298 len 20] = address(0, mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 310 len 8])
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 310] = sha3(arg1)
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 342] = nonce
    _40 = sha3(0, 0, this.address, this.address, mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 298 len 12], sha3(arg1), nonce)
    s = 0
    idx = 0
    s = 0
    while uint8(idx) < arg2.length:
        require uint8(idx) < mem[96]
        _63 = mem[(32 * uint8(idx)) + 128]
        require uint8(idx) < mem[(32 * arg2.length) + 128]
        _65 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
        require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
        _67 = mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + 192]
        _68 = mem[64]
        mem[64] = mem[64] + 32
        mem[_68 + 32] = _40
        mem[_68 + 64] = uint8(_63)
        mem[_68 + 96] = _65
        mem[_68 + 128] = _67
        signer = erecover(_40, _63 << 248, _65, _67) 
        mem[_68] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        require address(signer) > address(s)
        mem[0] = address(signer)
        mem[32] = 0
        require stor0[address(signer)]
        s = signer
        idx = idx + 1
        s = signer
        continue 
    nonce++
    stor0[address(arg1)] = 0
    sub_7ca548c6 = uint8(sub_7ca548c6 - 1)
    emit SignerRemoved(arg1);
}

function sub_479e517d(?) {
    require sub_7ca548c6 < 10
    require arg1
    require not stor0[address(arg1)]
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg4.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = 9
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 'addSigner'
    require arg2.length == threshold
    require arg2.length == arg3.length
    require arg2.length == arg4.length
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256] = 0x1900000000000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 257] = 0
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 258] = address(this.address)
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 278] = address(this.address)
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 298 len 0] = None
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 298 len 23] = Mask(184, 0, 0, mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 310 len 11])
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 307] = sha3(arg1)
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 339] = nonce
    _40 = sha3(0, 0, this.address, this.address, mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 298 len 9], sha3(arg1), nonce)
    s = 0
    idx = 0
    s = 0
    while uint8(idx) < arg2.length:
        require uint8(idx) < mem[96]
        _63 = mem[(32 * uint8(idx)) + 128]
        require uint8(idx) < mem[(32 * arg2.length) + 128]
        _65 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
        require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
        _67 = mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + 192]
        _68 = mem[64]
        mem[64] = mem[64] + 32
        mem[_68 + 32] = _40
        mem[_68 + 64] = uint8(_63)
        mem[_68 + 96] = _65
        mem[_68 + 128] = _67
        signer = erecover(_40, _63 << 248, _65, _67) 
        mem[_68] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        require address(signer) > address(s)
        mem[0] = address(signer)
        mem[32] = 0
        require stor0[address(signer)]
        s = signer
        idx = idx + 1
        s = signer
        continue 
    nonce++
    stor0[address(arg1)] = 1
    sub_7ca548c6 = uint8(sub_7ca548c6 + 1)
    emit SignerAdded(arg1);
}

function sub_1484698f(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg5.length) + 224
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg5.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len arg5.length] = arg5[all]
    require arg1.length == threshold
    require arg1.length == arg2.length
    require arg1.length == arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg5.length) + 224] = 0x1900000000000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg5.length) + 225] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg5.length) + 226] = address(this.address)
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg5.length) + 246] = address(arg4)
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg5.length) + 266 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg5.length) + floor32(arg5.length) + -(arg5.length % 32) + 298 len arg5.length % 32] = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg5.length) + -(arg5.length % 32) + 256 len arg5.length % 32]
    mem[arg5.length + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg5.length) + 266] = arg6
    mem[arg5.length + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg5.length) + 298] = nonce
    _33 = sha3(0, 0, this.address, arg4, call.data[arg5 + 36 len floor32(arg5.length)], mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg5.length) + floor32(arg5.length) + 266 len (arg5.length % 32) + 32], nonce, None)
    s = 0
    idx = 0
    s = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < mem[96]
        _50 = mem[(32 * uint8(idx)) + 128]
        require uint8(idx) < mem[(32 * arg1.length) + 128]
        _52 = mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        require uint8(idx) < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _54 = mem[(32 * uint8(idx)) + (32 * arg1.length) + (32 * arg2.length) + 192]
        _55 = mem[64]
        mem[64] = mem[64] + 32
        mem[_55 + 32] = _33
        mem[_55 + 64] = uint8(_50)
        mem[_55 + 96] = _52
        mem[_55 + 128] = _54
        signer = erecover(_33, _50 << 248, _52, _54) 
        mem[_55] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        require address(signer) > address(s)
        mem[0] = address(signer)
        mem[32] = 0
        require stor0[address(signer)]
        s = signer
        idx = idx + 1
        s = signer
        continue 
    nonce++
}



}
