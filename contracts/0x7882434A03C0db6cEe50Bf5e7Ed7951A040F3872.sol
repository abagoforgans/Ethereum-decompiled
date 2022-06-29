contract main {




// =====================  Runtime code  =====================


address oracleAddress;

function oracle() {
    return oracleAddress
}

function _fallback() payable {
  stop
}

function subscribe(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(oracleAddress)
    call oracleAddress.0x41a7726a with:
       value msg.value wei
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}

function unsubscribe(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(oracleAddress)
    call oracleAddress.0x883e5b7a with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_ef9152d1(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0xef9152d1 with:
            gas gas_remaining wei
           args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_3cf244a9(?) {
    require calldata.size - 4 >= 32
    mem[96] = 0
    mem[128] = 96
    mem[160] = 96
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[192] = 384
    mem[480] = 0
    mem[512] = 0
    mem[544] = 0
    mem[224] = 480
    mem[576] = 0x3cf244a900000000000000000000000000000000000000000000000000000000
    mem[580] = arg1
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0x3cf244a9 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _7 = mem[576 len 4], address(arg1) << 64
    require mem[576 len 4], address(arg1) << 64 <= test266151307()
    require return_data.size - mem[576 len 4], address(arg1) << 64 >= 288
    require bool(ceil32(return_data.size) + 736 <= test266151307())
    mem[64] = ceil32(return_data.size) + 736
    mem[ceil32(return_data.size) + 576] = mem[mem[576 len 4], address(arg1) << 64 + 576]
    _10 = mem[_7 + 608]
    require mem[_7 + 608] <= test266151307()
    require return_data.size + 576 > _7 + mem[_7 + 608] + 607
    _11 = mem[_7 + mem[_7 + 608] + 576]
    require mem[_7 + mem[_7 + 608] + 576] <= test266151307()
    require (32 * mem[_7 + mem[_7 + 608] + 576]) + 192 >= 160 and ceil32(return_data.size) + (32 * mem[_7 + mem[_7 + 608] + 576]) + 768 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[_7 + mem[_7 + 608] + 576]) + 768
    mem[ceil32(return_data.size) + 736] = mem[_7 + mem[_7 + 608] + 576]
    require _7 + _10 + (96 * _11) + 32 <= return_data.size
    idx = 0
    s = _7 + _10 + 608
    t = ceil32(return_data.size) + 768
    while idx < _11:
        require return_data.size + -s + 576 >= 96
        _56 = mem[64]
        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
        mem[64] = mem[64] + 96
        mem[_56] = mem[s]
        mem[_56 + 32] = mem[s + 32]
        mem[_56 + 64] = mem[s + 64]
        mem[t] = _56
        idx = idx + 1
        s = s + 96
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 608] = ceil32(return_data.size) + 736
    _55 = mem[_7 + 640]
    require mem[_7 + 640] <= test266151307()
    require return_data.size + 576 > _7 + mem[_7 + 640] + 607
    _57 = mem[_7 + mem[_7 + 640] + 576]
    require mem[_7 + mem[_7 + 640] + 576] <= test266151307()
    _59 = mem[64]
    require mem[64] + (32 * mem[_7 + mem[_7 + 640] + 576]) + 32 >= mem[64] and mem[64] + (32 * mem[_7 + mem[_7 + 640] + 576]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[_7 + mem[_7 + 640] + 576]) + 32
    mem[_59] = mem[_7 + mem[_7 + 640] + 576]
    require _7 + _55 + (96 * _57) + 32 <= return_data.size
    idx = 0
    s = _7 + _55 + 608
    t = _59 + 32
    while idx < _57:
        require return_data.size + -s + 576 >= 96
        _97 = mem[64]
        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
        mem[64] = mem[64] + 96
        mem[_97] = mem[s]
        mem[_97 + 32] = mem[s + 32]
        mem[_97 + 64] = mem[s + 64]
        mem[t] = _97
        idx = idx + 1
        s = s + 96
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 640] = _59
    require return_data.size + -_7 - 96 >= 96
    _98 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_98] = mem[_7 + 672]
    mem[_98 + 32] = mem[_7 + 704]
    mem[_98 + 64] = mem[_7 + 736]
    mem[ceil32(return_data.size) + 672] = _98
    require return_data.size + -_7 - 192 >= 96
    _105 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_105] = mem[_7 + 768]
    mem[_105 + 32] = mem[_7 + 800]
    mem[_105 + 64] = mem[_7 + 832]
    mem[ceil32(return_data.size) + 704] = _105
    _109 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 576]
    _111 = mem[ceil32(return_data.size) + 608]
    mem[mem[64] + 64] = 288
    _112 = mem[_111]
    mem[mem[64] + 320] = mem[_111]
    idx = 0
    s = _111 + 32
    t = mem[64] + 352
    while idx < _112:
        _132 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_132 + 32]
        mem[t + 64] = mem[_132 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    _133 = mem[ceil32(return_data.size) + 640]
    mem[_109 + 96] = (96 * _112) + 320
    _135 = mem[_133]
    mem[_109 + (96 * _112) + 352] = mem[_133]
    idx = 0
    s = _133 + 32
    t = _109 + (96 * _112) + 384
    while idx < _135:
        _151 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_151 + 32]
        mem[t + 64] = mem[_151 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    _152 = mem[ceil32(return_data.size) + 672]
    mem[_109 + 128] = mem[mem[ceil32(return_data.size) + 672]]
    mem[_109 + 160] = mem[_152 + 32]
    mem[_109 + 192] = mem[_152 + 64]
    _159 = mem[ceil32(return_data.size) + 704]
    mem[_109 + 224] = mem[mem[ceil32(return_data.size) + 704]]
    mem[_109 + 256] = mem[_159 + 32]
    mem[_109 + 288] = mem[_159 + 64]
    return memory
      from mem[64]
       len _109 + (96 * _112) + (96 * _135) + -mem[64] + 384
}



}
