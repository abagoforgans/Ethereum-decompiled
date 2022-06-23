contract main {




// =====================  Runtime code  =====================


uint256 sub_c4ba2625;
uint256 threshold;
uint256 sub_b72a33f2;
array of address ownersArr;
mapping of uint8 stor4;
address executorAddress;

function isOwner(address arg1) {
    return bool(stor4[arg1])
}

function threshold() {
    return threshold
}

function ownersArr(uint256 arg1) {
    require arg1 < ownersArr.length
    return ownersArr[arg1]
}

function sub_b72a33f2(?) {
    return sub_b72a33f2
}

function executor() {
    return executorAddress
}

function sub_c4ba2625(?) {
    return sub_c4ba2625
}

function _fallback() payable {
  stop
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
  stop
}

function sub_d012cfa8(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192] = arg6.length
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224 len arg6.length] = arg6[all]
    if executorAddress != msg.sender:
        emit 0x50ef177b: msg.sender
    else:
        require arg7 > sub_c4ba2625
        require arg7 <= (1000 * block.timestamp) + 600000
        require arg2.length >= threshold
        require arg2.length == arg3.length
        require arg2.length == arg1.length
        mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg6.length) + 256] = 0x1900000000000000000000000000000000000000000000000000000000000000
        mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg6.length) + 257] = 0
        mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg6.length) + 258] = address(this.address)
        mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg6.length) + 278] = address(arg4)
        mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg6.length) + 298] = arg5
        mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg6.length) + 330 len floor32(arg6.length)] = call.data[arg6 + 36 len floor32(arg6.length)]
        mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg6.length) + floor32(arg6.length) + 330] = 256^(-(arg6.length % 32) + 32) - 1 and mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg6.length) + floor32(arg6.length) + 330] or call.data[arg6 + floor32(arg6.length) + 36 len arg6.length % 32], mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + arg6.length + 224 len -(arg6.length % 32) + 32] and !(256^(-(arg6.length % 32) + 32) - 1)
        mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg6.length) + arg6.length + 330] = arg7
        mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg6.length) + 224] = arg6.length + 106
        mem[64] = (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg6.length) + arg6.length + 362
        mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg6.length) + arg6.length + 362 len floor32(arg6.length + 106)] = 0, 0, this.address, arg4, arg5, call.data[arg6 + 36 len floor32(arg6.length)], mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg6.length) + floor32(arg6.length) + 330 len floor32(arg6.length + 106) + -floor32(arg6.length) - 74]
        mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg6.length) + arg6.length + floor32(arg6.length + 106) + -(arg6.length + 106 % 32) + 394 len arg6.length + 106 % 32] = Mask(8 * -floor32(arg6.length + 106) + (arg6.length + 106 % 32) + arg6.length + 96, 0, this.address), mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg6.length) + 278 len floor32(arg6.length + 106) + -arg6.length - 96]
        _71 = sha3(Mask(8 * floor32(arg6.length + 106), -(8 * floor32(arg6.length + 106)) + 256, 0, 0, this.address, arg4, arg5, call.data[arg6 + 36 len floor32(arg6.length)], mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg6.length) + floor32(arg6.length) + 330 len floor32(arg6.length + 106) + -floor32(arg6.length) - 74]) << (8 * floor32(arg6.length + 106)) - 256, mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg6.length) + arg6.length + floor32(arg6.length + 106) + 362 len arg6.length + -floor32(arg6.length + 106) + 106])
        s = 0
        idx = 0
        s = 0
        while idx < threshold:
            require idx < mem[96]
            _93 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            _96 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
            _100 = mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192]
            _101 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            mem[_101 + 32] = _71
            mem[_101 + 64] = uint8(_93)
            mem[_101 + 96] = _96
            mem[_101 + 128] = _100
            signer = erecover(_71, _93 << 248, _96, _100) 
            mem[_101] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            require address(signer) > address(s)
            mem[0] = address(signer)
            mem[32] = 4
            require stor4[address(signer)]
            s = signer
            idx = idx + 1
            s = signer
            continue 
        sub_c4ba2625 = arg7
        _90 = mem[64]
        _91 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192]
        mem[mem[64] len ceil32(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192])] = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224 len ceil32(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192])]
        if not _91 % 32:
            call arg4.mem[mem[64] len 4] with:
               value arg5 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _91 - 4]
        else:
            mem[floor32(_91) + mem[64]] = mem[floor32(_91) + mem[64] + -(_91 % 32) + 32 len _91 % 32]
            call arg4.mem[mem[64] len 4] with:
               value arg5 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len floor32(_91) + _90 + -mem[64] + 28]
        require ext_call.success
}



}
