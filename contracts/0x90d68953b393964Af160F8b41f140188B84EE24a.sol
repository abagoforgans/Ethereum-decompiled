contract main {




// =====================  Runtime code  =====================


address oracleAddress;

function oracle() {
    return oracleAddress
}

function _fallback() payable {
    revert
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
    mem[128] = 0
    mem[160] = 0
    mem[192] = 96
    mem[224] = 96
    mem[320] = 0
    mem[352] = 0
    mem[256] = 320
    mem[384] = 0x3cf244a900000000000000000000000000000000000000000000000000000000
    mem[388] = arg1
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0x3cf244a9 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _6 = mem[384 len 4], address(arg1) << 64
    require mem[384 len 4], address(arg1) << 64 <= test266151307()
    require return_data.size - mem[384 len 4], address(arg1) << 64 >= 224
    require bool(ceil32(return_data.size) + 576 <= test266151307())
    mem[64] = ceil32(return_data.size) + 576
    mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], address(arg1) << 64 + 415 len 1]
    mem[ceil32(return_data.size) + 416] = mem[_6 + 416]
    mem[ceil32(return_data.size) + 448] = mem[_6 + 448]
    _11 = mem[_6 + 480]
    require mem[_6 + 480] <= test266151307()
    require return_data.size + 384 > _6 + mem[_6 + 480] + 415
    _12 = mem[_6 + mem[_6 + 480] + 384]
    require mem[_6 + mem[_6 + 480] + 384] <= test266151307()
    require (32 * mem[_6 + mem[_6 + 480] + 384]) + 224 >= 192 and ceil32(return_data.size) + (32 * mem[_6 + mem[_6 + 480] + 384]) + 608 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[_6 + mem[_6 + 480] + 384]) + 608
    mem[ceil32(return_data.size) + 576] = _12
    require _6 + _11 + (64 * _12) + 32 <= return_data.size
    idx = 0
    s = _6 + _11 + 416
    t = ceil32(return_data.size) + 608
    while idx < _12:
        require return_data.size + -s + 384 >= 64
        _45 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_45] = mem[s]
        mem[_45 + 32] = mem[s + 32]
        mem[t] = _45
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 480] = ceil32(return_data.size) + 576
    _44 = mem[_6 + 512]
    require mem[_6 + 512] <= test266151307()
    require return_data.size + 384 > _6 + mem[_6 + 512] + 415
    _46 = mem[_6 + mem[_6 + 512] + 384]
    require mem[_6 + mem[_6 + 512] + 384] <= test266151307()
    _48 = mem[64]
    require mem[64] + (32 * mem[_6 + mem[_6 + 512] + 384]) + 32 >= mem[64] and mem[64] + (32 * mem[_6 + mem[_6 + 512] + 384]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[_6 + mem[_6 + 512] + 384]) + 32
    mem[_48] = mem[_6 + mem[_6 + 512] + 384]
    require _6 + _44 + (64 * _46) + 32 <= return_data.size
    idx = 0
    s = _6 + _44 + 416
    t = _48 + 32
    while idx < _46:
        require return_data.size + -s + 384 >= 64
        _74 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_74] = mem[s]
        mem[_74 + 32] = mem[s + 32]
        mem[t] = _74
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 512] = _48
    require return_data.size + -_6 - 160 >= 64
    _75 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_75] = mem[_6 + 544]
    mem[_75 + 32] = mem[_6 + 576]
    mem[ceil32(return_data.size) + 544] = _75
    _80 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 415 len 1]
    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 416]
    mem[mem[64] + 96] = mem[ceil32(return_data.size) + 448]
    _84 = mem[ceil32(return_data.size) + 480]
    mem[mem[64] + 128] = 224
    _85 = mem[_84]
    mem[mem[64] + 256] = mem[_84]
    idx = 0
    s = _84 + 32
    t = mem[64] + 288
    while idx < _85:
        _98 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_98 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    _99 = mem[ceil32(return_data.size) + 512]
    mem[_80 + 160] = (64 * _85) + 256
    _101 = mem[_99]
    mem[_80 + (64 * _85) + 288] = mem[_99]
    idx = 0
    s = _99 + 32
    t = _80 + (64 * _85) + 320
    while idx < _101:
        _110 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_110 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    _111 = mem[ceil32(return_data.size) + 544]
    mem[_80 + 192] = mem[mem[ceil32(return_data.size) + 544]]
    mem[_80 + 224] = mem[_111 + 32]
    return memory
      from mem[64]
       len _80 + (64 * _85) + (64 * _101) + -mem[64] + 320
}



}
