contract main {




// =====================  Runtime code  =====================


uint256 nonce;
uint256 threshold;
mapping of uint8 stor2;
array of address ownersArr;

function threshold() {
    return threshold
}

function ownersArr(uint256 arg1) {
    require arg1 < ownersArr.length
    return ownersArr[arg1]
}

function nonce() {
    return nonce
}

function _fallback() payable {
  stop
}

function execute(uint8[] arg1, bytes32[] arg2, bytes32[] arg3, address arg4, uint256 arg5, bytes arg6) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[64] = (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg6.length) + 224
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192] = arg6.length
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224 len arg6.length] = arg6[all]
    require arg2.length == threshold
    require arg2.length == arg3.length
    require arg2.length == arg1.length
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg6.length) + 224] = 0x1900000000000000000000000000000000000000000000000000000000000000
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg6.length) + 225] = 0
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg6.length) + 226] = address(this.address)
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg6.length) + 246] = address(arg4)
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg6.length) + 266] = arg5
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg6.length) + 298 len floor32(arg6.length)] = call.data[arg6 + 36 len floor32(arg6.length)]
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg6.length) + floor32(arg6.length) + 298] = 256^(-(arg6.length % 32) + 32) - 1 and mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg6.length) + floor32(arg6.length) + 298] or call.data[arg6 + floor32(arg6.length) + 36 len arg6.length % 32], mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + arg6.length + 224 len -(arg6.length % 32) + 32] and !(256^(-(arg6.length % 32) + 32) - 1)
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg6.length) + arg6.length + 298] = nonce
    _37 = sha3(0, 0, this.address, arg4, arg5, call.data[arg6 + 36 len floor32(arg6.length)], mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg6.length) + floor32(arg6.length) + 298 len (arg6.length % 32) + 32])
    s = 0
    idx = 0
    s = 0
    while idx < threshold:
        require idx < mem[96]
        _59 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _62 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
        _66 = mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192]
        _67 = mem[64]
        mem[mem[64]] = 0
        mem[64] = mem[64] + 32
        mem[_67 + 32] = _37
        mem[_67 + 64] = uint8(_59)
        mem[_67 + 96] = _62
        mem[_67 + 128] = _66
        signer = erecover(_37, _59 << 248, _62, _66) 
        mem[_67] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        require address(signer) > address(s)
        mem[0] = address(signer)
        mem[32] = 2
        require stor2[address(signer)]
        s = signer
        idx = idx + 1
        s = signer
        continue 
    nonce++
    _56 = mem[64]
    _57 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192]
    mem[mem[64] len ceil32(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192])] = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224 len ceil32(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192])]
    if not _57 % 32:
        call arg4.mem[mem[64] len 4] with:
           value arg5 wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len _57 - 4]
    else:
        mem[floor32(_57) + mem[64]] = mem[floor32(_57) + mem[64] + -(_57 % 32) + 32 len _57 % 32]
        call arg4.mem[mem[64] len 4] with:
           value arg5 wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len floor32(_57) + _56 + -mem[64] + 28]
    require ext_call.success
}



}
