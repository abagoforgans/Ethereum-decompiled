contract main {




// =====================  Runtime code  =====================


address controllerAddress;

function getController() {
    return controllerAddress
}

function controller() {
    return controllerAddress
}

function _fallback() payable {
  stop
}

function setController(address arg1) {
    require calldata.size - 4 >= 32
    emit 0x4f7b0265: arg1
    if controllerAddress != msg.sender:
        emit 0x6e7c18ac: arg1
    else:
        controllerAddress = arg1
        emit 0x5c4387c8: arg1
}

function sub_ee8bd82d(?) {
    require calldata.size - 4 >= 128
    require calldata.size - 36 >= 96
    signer = erecover(arg1, arg2 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function sub_4ee7f87d(?) {
    require calldata.size - 4 >= 96
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128] = address(arg1)
    mem[ceil32(arg2.length) + 148 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 180 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 148] = arg3
    _22 = sha3(0, call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len (arg2.length % 32) + 32])
    mem[ceil32(arg2.length) + 192 len 0] = None
    mem[ceil32(arg2.length) + 192] = sha3(mem[ceil32(arg2.length) + 192 len 4], Mask(192, 32, '\x19Ethereum Signed Message:\n32') >> 32, _22)
    return memory
      from ceil32(arg2.length) + 192
       len 32
}

function sub_049e1d4d(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 224
    require ('cd', 4)[0] <= test266151307()
    require cd[4] + ('cd', 4)[0] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[0] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 288 <= test266151307() and ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 288 >= 256
    require cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 4)] + 36 <= calldata.size
    mem[288 len cd[(cd[4] + ('cd', 4)[0] + 4)]] = call.data[cd[4] + ('cd', 4)[0] + 36 len cd[(cd[4] + ('cd', 4)[0] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[0] + 4)] + 288] = 0
    require calldata.size + -cd[4] - 100 >= 96
    require bool(ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 384 <= test266151307())
    mem[ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 288] = uint8(('cd', 4)[2])
    mem[ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 320] = ('cd', 4)[3]
    require address(('cd', 4)[5]) == controllerAddress
    mem[ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 480] = address(('cd', 4).length)
    mem[ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 500 len floor32(cd[(cd[4] + ('cd', 4)[0] + 4)])] = call.data[cd[4] + ('cd', 4)[0] + 36 len floor32(cd[(cd[4] + ('cd', 4)[0] + 4)])]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + -(cd[(cd[4] + ('cd', 4)[0] + 4)] % 32) + 532 len cd[(cd[4] + ('cd', 4)[0] + 4)] % 32] = mem[floor32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + -(cd[(cd[4] + ('cd', 4)[0] + 4)] % 32) + 320 len cd[(cd[4] + ('cd', 4)[0] + 4)] % 32]
    mem[cd[(cd[4] + ('cd', 4)[0] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 500] = ('cd', 4)[1]
    _38 = sha3(address(('cd', 4).length), call.data[cd[4] + ('cd', 4)[0] + 36 len floor32(cd[(cd[4] + ('cd', 4)[0] + 4)])], mem[ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 500 len (cd[(cd[4] + ('cd', 4)[0] + 4)] % 32) + 32])
    mem[ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 544 len 0] = None
    signer = erecover(sha3(mem[ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 544 len 4], Mask(192, 32, '\x19Ethereum Signed Message:\n32') >> 32, _38), Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + cd[(cd[4] + ('cd', 4)[0] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[0] + 4)] + 320 len -cd[(cd[4] + ('cd', 4)[0] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)])] << 248, ('cd', 4)[3], ('cd', 4)[4]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return (address(signer) == address(('cd', 4)[5]))
}

function sub_62c529e4(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 224
    require ('cd', 4)[0] <= test266151307()
    require cd[4] + ('cd', 4)[0] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[0] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 288 <= test266151307() and ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 288 >= 256
    require cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 4)] + 36 <= calldata.size
    mem[288 len cd[(cd[4] + ('cd', 4)[0] + 4)]] = call.data[cd[4] + ('cd', 4)[0] + 36 len cd[(cd[4] + ('cd', 4)[0] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[0] + 4)] + 288] = 0
    require calldata.size + -cd[4] - 100 >= 96
    require bool(ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 384 <= test266151307())
    mem[ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 288] = uint8(('cd', 4)[2])
    mem[ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 320] = ('cd', 4)[3]
    emit 0x74d34c6f: address(('cd', 4).length), address(('cd', 4)[5])
    require address(('cd', 4)[5]) == controllerAddress
    mem[ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 480] = address(('cd', 4).length)
    mem[ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 500 len floor32(cd[(cd[4] + ('cd', 4)[0] + 4)])] = call.data[cd[4] + ('cd', 4)[0] + 36 len floor32(cd[(cd[4] + ('cd', 4)[0] + 4)])]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + -(cd[(cd[4] + ('cd', 4)[0] + 4)] % 32) + 532 len cd[(cd[4] + ('cd', 4)[0] + 4)] % 32] = mem[floor32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + -(cd[(cd[4] + ('cd', 4)[0] + 4)] % 32) + 320 len cd[(cd[4] + ('cd', 4)[0] + 4)] % 32]
    mem[cd[(cd[4] + ('cd', 4)[0] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 500] = ('cd', 4)[1]
    _58 = sha3(address(('cd', 4).length), call.data[cd[4] + ('cd', 4)[0] + 36 len floor32(cd[(cd[4] + ('cd', 4)[0] + 4)])], mem[ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 500 len (cd[(cd[4] + ('cd', 4)[0] + 4)] % 32) + 32])
    mem[ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 544 len 0] = None
    mem[ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 576] = sha3(mem[ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 544 len 4], Mask(192, 32, '\x19Ethereum Signed Message:\n32') >> 32, _58)
    mem[ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 608] = uint8(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + cd[(cd[4] + ('cd', 4)[0] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[0] + 4)] + 320 len -cd[(cd[4] + ('cd', 4)[0] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)])])
    mem[ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 640] = ('cd', 4)[3]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 672] = ('cd', 4)[4]
    signer = erecover(sha3(mem[ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 544 len 4], Mask(192, 32, '\x19Ethereum Signed Message:\n32') >> 32, _58), Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + cd[(cd[4] + ('cd', 4)[0] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[0] + 4)] + 320 len -cd[(cd[4] + ('cd', 4)[0] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)])] << 248, ('cd', 4)[3], ('cd', 4)[4]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != address(('cd', 4)[5]):
        revert with 0, 'Controller is not authorized to execute transaction'
    mem[ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 576 len ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)])] = call.data[cd[4] + ('cd', 4)[0] + 36 len cd[(cd[4] + ('cd', 4)[0] + 4)]], mem[cd[(cd[4] + ('cd', 4)[0] + 4)] + 288 len ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) - cd[(cd[4] + ('cd', 4)[0] + 4)]]
    if not cd[(cd[4] + ('cd', 4)[0] + 4)] % 32:
        call address(('cd', 4).length).mem[ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 576 len 4] with:
           value ('cd', 4)[1] wei
             gas gas_remaining wei
            args mem[ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 580 len cd[(cd[4] + ('cd', 4)[0] + 4)] - 4]
    else:
        mem[floor32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 576] = mem[floor32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + -(cd[(cd[4] + ('cd', 4)[0] + 4)] % 32) + 608 len cd[(cd[4] + ('cd', 4)[0] + 4)] % 32]
        call address(('cd', 4).length).mem[ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 576 len 4] with:
           value ('cd', 4)[1] wei
             gas gas_remaining wei
            args mem[ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 580 len floor32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 28]
    if not ext_call.success:
        revert with 0, 'Transaction failed during execution'
    emit 0x9ae6eab7: address(('cd', 4).length), address(('cd', 4)[5])
}

function sub_10bfce71(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size + -cd[4] + -cd[s] - 36 >= 224
        _59 = mem[64]
        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
        mem[64] = mem[64] + 160
        mem[_59] = address(cd[(cd[4] + cd[s] + 36)])
        require cd[(cd[4] + cd[s] + 68)] <= test266151307()
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 67 < calldata.size
        require cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)] <= test266151307()
        _68 = mem[64]
        require mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]) + 32
        mem[_68] = cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_68 + 32 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]] = call.data[cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 68 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]]
        mem[_68 + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)] + 32] = 0
        mem[_59 + 32] = _68
        mem[_59 + 64] = cd[(cd[4] + cd[s] + 100)]
        require calldata.size + -cd[4] + -cd[s] - 132 >= 96
        _96 = mem[64]
        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
        mem[64] = mem[64] + 96
        mem[_96] = uint8(cd[(cd[4] + cd[s] + 132)])
        mem[_96 + 32] = cd[(cd[4] + cd[s] + 164)]
        mem[_96 + 64] = cd[(cd[4] + cd[s] + 196)]
        mem[_59 + 96] = _96
        mem[_59 + 128] = address(cd[(cd[4] + cd[s] + 228)])
        mem[t] = _59
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _116 = mem[96]
    idx = 0
    while uint8(idx) < _116:
        require uint8(idx) < mem[96]
        _118 = mem[(32 * uint8(idx)) + 128]
        _119 = mem[mem[(32 * uint8(idx)) + 128]]
        _120 = mem[mem[(32 * uint8(idx)) + 128] + 32]
        _121 = mem[mem[(32 * uint8(idx)) + 128] + 64]
        _122 = mem[mem[(32 * uint8(idx)) + 128] + 128]
        mem[mem[64]] = mem[mem[(32 * uint8(idx)) + 128] + 12 len 20]
        mem[mem[64] + 32] = address(_122)
        emit 0x74d34c6f: mem[mem[64]], address(_122)
        _125 = mem[64]
        mem[64] = mem[64] + 96
        mem[_125] = 0
        mem[_125 + 32] = 0
        mem[_125 + 64] = 0
        _127 = mem[_118 + 32]
        _128 = mem[_118 + 64]
        _129 = mem[_118 + 128]
        _130 = mem[_118 + 96]
        require mem[_118 + 140 len 20] == controllerAddress
        mem[mem[64]] = address(mem[_118])
        _132 = mem[_127]
        t = _127 + 32
        u = mem[64] + 20
        s = mem[_127]
        while s >= 32:
            mem[u] = mem[t]
            _116 = mem[96]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_127]) + 20] = mem[_127 + floor32(mem[_127]) + -(mem[_127] % 32) + 64 len mem[_127] % 32] or Mask(8 * -(mem[_127] % 32) + 32, -(8 * -(mem[_127] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_127]) + 20])
        mem[_132 + mem[64] + 20] = _128
        _173 = sha3(mem[mem[64] len _132 + 20], _128)
        _174 = mem[64]
        mem[64] = mem[64] + 64
        mem[_174] = 28
        mem[_174 + 32] = '\x19Ethereum Signed Message:\n32'
        _175 = mem[64]
        t = _174 + 32
        u = mem[64]
        s = mem[_174]
        while s >= 32:
            mem[u] = mem[t]
            _116 = mem[96]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_174])] = mem[_174 + floor32(mem[_174]) + -(mem[_174] % 32) + 64 len mem[_174] % 32] or Mask(8 * -(mem[_174] % 32) + 32, -(8 * -(mem[_174] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_174])])
        mem[_175 + 28] = _173
        _210 = sha3(mem[mem[64] len _175 + -mem[64] + 60])
        _212 = mem[_130]
        _213 = mem[_130 + 32]
        _214 = mem[_130 + 64]
        _215 = mem[64]
        mem[64] = mem[64] + 32
        mem[_215 + 32] = _210
        mem[_215 + 64] = uint8(_212)
        mem[_215 + 96] = _213
        mem[_215 + 128] = _214
        signer = erecover(_210, _212 << 248, _213, _214) 
        mem[_215] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if address(signer) != address(_129):
            revert with 0, 'Controller is not authorized to execute transaction'
        _221 = mem[_120]
        s = 0
        while s < _221:
            mem[_215 + s + 32] = mem[_120 + s + 32]
            _116 = mem[96]
            s = s + 32
            continue 
        if not _221 % 32:
            call address(_119).mem[mem[64] len 4] with:
               value _121 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _221 + _215 + -mem[64] + 28]
        else:
            mem[floor32(_221) + _215 + 32] = mem[floor32(_221) + _215 + -(_221 % 32) + 64 len _221 % 32]
            call address(_119).mem[mem[64] len 4] with:
               value _121 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len floor32(_221) + _215 + -mem[64] + 60]
        if not ext_call.success:
            revert with 0, 'Transaction failed during execution'
        mem[mem[64]] = address(_119)
        mem[mem[64] + 32] = address(_122)
        emit 0x9ae6eab7: address(_119), address(_122)
        _116 = mem[96]
        idx = idx + 1
        continue 
}



}
