contract main {




// =====================  Runtime code  =====================


uint256 nonce;
uint256 threshold;
mapping of uint8 stor2;
array of address ownersArr;
uint16 stor4; offset 32
uint256 stor4;

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

function execute(uint8[] arg1, bytes32[] arg2, bytes32[] arg3, address arg4, uint256 arg5, bytes arg6, address arg7, uint256 arg8) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg6.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len arg6.length] = arg6[all]
    require arg2.length == threshold
    require arg2.length == arg3.length
    require arg2.length == arg1.length
    if arg7 == msg.sender:
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 224 len floor32(arg6.length)] = call.data[arg6 + 36 len floor32(arg6.length)]
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + floor32(arg6.length) + -(arg6.length % 32) + 256 len arg6.length % 32] = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + -(arg6.length % 32) + floor32(arg6.length) + 256 len arg6.length % 32]
        _89 = sha3(call.data[arg6 + 36 len floor32(arg6.length)], mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + floor32(arg6.length) + 224 len arg6.length % 32])
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 256] = 0x3ee892349ae4bbe61dce18f95115b5dc02daf49204cc602458cd4c1f540d56d7
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 288] = arg4
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 320] = arg5
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 352] = _89
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 384] = nonce
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 416] = arg7
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 448] = arg8
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 224] = 224
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 480 len 224] = 0x3ee892349ae4bbe61dce18f95115b5dc02daf49204cc602458cd4c1f540d56d7, address(arg4), arg5, _89, nonce, address(arg7), arg8
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 736 len 0] = None
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 512] = 0x1901000000000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 514] = uint256(stor4.field_0)
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 546] = sha3(0x3ee892349ae4bbe61dce18f95115b5dc02daf49204cc602458cd4c1f540d56d7, address(arg4), arg5, _89, nonce, address(arg7), arg8)
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 480] = 66
        mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 578
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 578 len 64] = 0, uint256(stor4.field_0), Mask(240, 16, sha3(0x3ee892349ae4bbe61dce18f95115b5dc02daf49204cc602458cd4c1f540d56d7, address(arg4), arg5, _89, nonce, address(arg7), arg8)) >> 16
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 672 len 2] = uint16(stor4.field_32)
        s = 0
        idx = 0
        s = 0
        while idx < threshold:
            require idx < mem[96]
            _252 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            _256 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            _260 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            _261 = mem[64]
            mem[64] = mem[64] + 32
            mem[_261 + 32] = sha3(0, uint256(stor4.field_0), Mask(240, 16, sha3(0x3ee892349ae4bbe61dce18f95115b5dc02daf49204cc602458cd4c1f540d56d7, address(arg4), arg5, _89, nonce, address(arg7), arg8)) >> 16, Mask(16, -1056, 0x3ee892349ae4bbe61dce18f95115b5dc02daf49204cc602458cd4c1f540d56d7, address(arg4), arg5, _89, nonce, address(arg7), arg8) << 1056)
            mem[_261 + 64] = uint8(_252)
            mem[_261 + 96] = _256
            mem[_261 + 128] = _260
            signer = erecover(sha3(0, uint256(stor4.field_0), Mask(240, 16, sha3(0x3ee892349ae4bbe61dce18f95115b5dc02daf49204cc602458cd4c1f540d56d7, address(arg4), arg5, _89, nonce, address(arg7), arg8)) >> 16, Mask(16, -1056, 0x3ee892349ae4bbe61dce18f95115b5dc02daf49204cc602458cd4c1f540d56d7, address(arg4), arg5, _89, nonce, address(arg7), arg8) << 1056), _252 << 248, _256, _260) 
            mem[_261] = signer
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
    else:
        require not arg7
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 224 len floor32(arg6.length)] = call.data[arg6 + 36 len floor32(arg6.length)]
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + floor32(arg6.length) + -(arg6.length % 32) + 256 len arg6.length % 32] = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + -(arg6.length % 32) + floor32(arg6.length) + 256 len arg6.length % 32]
        _98 = sha3(call.data[arg6 + 36 len floor32(arg6.length)], mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + floor32(arg6.length) + 224 len arg6.length % 32])
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 256] = 0x3ee892349ae4bbe61dce18f95115b5dc02daf49204cc602458cd4c1f540d56d7
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 288] = arg4
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 320] = arg5
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 352] = _98
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 384] = nonce
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 416] = arg7
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 448] = arg8
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 224] = 224
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 480 len 224] = 0x3ee892349ae4bbe61dce18f95115b5dc02daf49204cc602458cd4c1f540d56d7, address(arg4), arg5, _98, nonce, address(arg7), arg8
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 736 len 0] = None
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 512] = 0x1901000000000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 514] = uint256(stor4.field_0)
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 546] = sha3(0x3ee892349ae4bbe61dce18f95115b5dc02daf49204cc602458cd4c1f540d56d7, address(arg4), arg5, _98, nonce, address(arg7), arg8)
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 480] = 66
        mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 578
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 578 len 64] = 0, uint256(stor4.field_0), Mask(240, 16, sha3(0x3ee892349ae4bbe61dce18f95115b5dc02daf49204cc602458cd4c1f540d56d7, address(arg4), arg5, _98, nonce, address(arg7), arg8)) >> 16
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 672 len 2] = uint16(stor4.field_32)
        s = 0
        idx = 0
        s = 0
        while idx < threshold:
            require idx < mem[96]
            _254 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            _258 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            _264 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            _265 = mem[64]
            mem[64] = mem[64] + 32
            mem[_265 + 32] = sha3(0, uint256(stor4.field_0), Mask(240, 16, sha3(0x3ee892349ae4bbe61dce18f95115b5dc02daf49204cc602458cd4c1f540d56d7, address(arg4), arg5, _98, nonce, address(arg7), arg8)) >> 16, Mask(16, -1056, 0x3ee892349ae4bbe61dce18f95115b5dc02daf49204cc602458cd4c1f540d56d7, address(arg4), arg5, _98, nonce, address(arg7), arg8) << 1056)
            mem[_265 + 64] = uint8(_254)
            mem[_265 + 96] = _258
            mem[_265 + 128] = _264
            signer = erecover(sha3(0, uint256(stor4.field_0), Mask(240, 16, sha3(0x3ee892349ae4bbe61dce18f95115b5dc02daf49204cc602458cd4c1f540d56d7, address(arg4), arg5, _98, nonce, address(arg7), arg8)) >> 16, Mask(16, -1056, 0x3ee892349ae4bbe61dce18f95115b5dc02daf49204cc602458cd4c1f540d56d7, address(arg4), arg5, _98, nonce, address(arg7), arg8) << 1056), _254 << 248, _258, _264) 
            mem[_265] = signer
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
    call arg4.mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 4] with:
       value arg5 wei
         gas arg8 wei
        args mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 228 len mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] - 4]
    require ext_call.success
}



}
