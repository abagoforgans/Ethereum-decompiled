contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 729]




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function recoverSigner(bytes32 arg1, bytes arg2) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg1
    emit 0x3fc50a7a: arg1
    require 65 == arg2.length
    _6 = mem[128]
    _7 = mem[160]
    _8 = mem[161]
    mem[ceil32(arg2.length) + 128] = mem[128]
    emit 0x3fc50a7a: mem[ceil32(arg2.length) + 128]
    emit 0x78db52b3: _7
    if uint8(_8) >= 27:
        emit 0xcea5ed98: uint8(_8)
        signer = erecover(arg1, _8 << 248, _6, _7) 
    else:
        emit 0xcea5ed98: uint8(uint8(_8) + 27)
        signer = erecover(arg1, uint8(_8) + 27 << 248, _6, _7) 
    require erecover.result
    return address(signer)
}

function sub_e218e6d2(?) payable {
    mem[128 len arg5.length] = arg5[all]
    mem[ceil32(arg5.length) + 160] = address(arg2)
    mem[ceil32(arg5.length) + 180] = arg3
    mem[ceil32(arg5.length) + 128] = sha3(arg1, arg2, arg3, arg4)
    emit 0x3fc50a7a: sha3(arg1, arg2, arg3, arg4)
    require 65 == arg5.length
    _9 = mem[128]
    _10 = mem[160]
    _11 = mem[161]
    mem[ceil32(arg5.length) + 128] = mem[128]
    emit 0x3fc50a7a: mem[ceil32(arg5.length) + 128]
    emit 0x78db52b3: _10
    if uint8(_11) >= 27:
        emit 0xcea5ed98: uint8(_11)
        signer = erecover(sha3(arg1, arg2, arg3, arg4), _11 << 248, _9, _10) 
    else:
        emit 0xcea5ed98: uint8(uint8(_11) + 27)
        signer = erecover(sha3(arg1, arg2, arg3, arg4), uint8(_11) + 27 << 248, _9, _10) 
    require erecover.result
    emit 0xcbd53414: address(signer)
}



}
