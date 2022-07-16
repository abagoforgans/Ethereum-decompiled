contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function tokenCount() {
    require ext_code.size(stor0)
    staticcall stor0.0x9f181b5e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function fromTLA(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[256] = 0
    mem[288] = 0x891de9ed00000000000000000000000000000000000000000000000000000000
    mem[292] = 32
    mem[324] = arg1.length
    mem[356 len arg1.length] = arg1[all]
    mem[arg1.length + 356] = 0
    require ext_code.size(stor0)
    staticcall stor0.0x891de9ed with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    _5 = mem[288 len 4], 0
    _7 = uint32(arg1.length), mem[356 len 28]
    _8 = mem[384]
    require mem[384] <= test266151307()
    require mem[384] + 319 < return_data.size + 288
    _9 = mem[mem[384] + 288]
    require mem[mem[384] + 288] <= test266151307()
    require ceil32(return_data.size) + ceil32(mem[mem[384] + 288]) + 320 <= test266151307() and ceil32(mem[mem[384] + 288]) + 32 >= 0
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[384] + 288]) + 320
    mem[ceil32(return_data.size) + 288] = mem[mem[384] + 288]
    require _8 + _9 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 320 len ceil32(_9)] = mem[_8 + 320 len ceil32(_9)]
    if ceil32(_9) <= _9:
        _61 = mem[416]
        mem[96] = _5
        mem[128] = Mask(160, 32, arg1.length) >> 32
        _63 = mem[64]
        mem[64] = mem[64] + ceil32(arg1.length) + 32
        mem[_63] = arg1.length
        mem[_63 + 32 len arg1.length] = arg1[all]
        mem[_63 + arg1.length + 32] = 0
        mem[160] = _63
        mem[192] = _7
        mem[224] = ceil32(return_data.size) + 288
        mem[256] = address(_61)
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _5
        mem[mem[64] + 64] = Mask(160, 32, arg1.length) >> 32
        mem[mem[64] + 96] = 192
        mem[mem[64] + 224] = arg1.length
        mem[mem[64] + 256 len ceil32(arg1.length)] = arg1[all], mem[_63 + arg1.length + 32 len ceil32(arg1.length) - arg1.length]
        if ceil32(arg1.length) <= arg1.length:
            mem[mem[64] + 128] = _7
            mem[mem[64] + 160] = ceil32(arg1.length) + 224
            _119 = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + ceil32(arg1.length) + 256] = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + ceil32(arg1.length) + 288 len ceil32(_119)] = mem[ceil32(return_data.size) + 320 len ceil32(_119)]
            if ceil32(_119) > _119:
                mem[mem[64] + ceil32(arg1.length) + _119 + 288] = 0
            return 32, _5, 
                   Mask(160, 32, arg1.length) << 64,
                   192,
                   _7,
                   ceil32(arg1.length) + 224,
                   uint64(_61) << 96,
                   arg1.length,
                   mem[mem[64] + 256 len ceil32(arg1.length) + ceil32(_119) + 32]
        mem[mem[64] + arg1.length + 256] = 0
        mem[mem[64] + 128] = _7
        mem[mem[64] + 160] = ceil32(arg1.length) + 224
        _121 = mem[ceil32(return_data.size) + 288]
        mem[mem[64] + ceil32(arg1.length) + 256] = mem[ceil32(return_data.size) + 288]
        mem[mem[64] + ceil32(arg1.length) + 288 len ceil32(_121)] = mem[ceil32(return_data.size) + 320 len ceil32(_121)]
        if ceil32(_121) > _121:
            mem[mem[64] + ceil32(arg1.length) + _121 + 288] = 0
        return 32, _5, 
               Mask(160, 32, arg1.length) << 64,
               192,
               _7,
               ceil32(arg1.length) + 224,
               uint64(_61) << 96,
               arg1.length,
               mem[mem[64] + 256 len ceil32(arg1.length) + ceil32(_121) + 32]
    mem[ceil32(return_data.size) + _9 + 320] = 0
    _62 = mem[416]
    mem[96] = _5
    mem[128] = Mask(160, 32, arg1.length) >> 32
    _65 = mem[64]
    mem[64] = mem[64] + ceil32(arg1.length) + 32
    mem[_65] = arg1.length
    mem[_65 + 32 len arg1.length] = arg1[all]
    mem[_65 + arg1.length + 32] = 0
    mem[160] = _65
    mem[192] = _7
    mem[224] = ceil32(return_data.size) + 288
    mem[256] = address(_62)
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64] = Mask(160, 32, arg1.length) >> 32
    mem[mem[64] + 96] = 192
    mem[mem[64] + 224] = arg1.length
    mem[mem[64] + 256 len ceil32(arg1.length)] = arg1[all], mem[_65 + arg1.length + 32 len ceil32(arg1.length) - arg1.length]
    if ceil32(arg1.length) <= arg1.length:
        mem[mem[64] + 128] = _7
        mem[mem[64] + 160] = ceil32(arg1.length) + 224
        _120 = mem[ceil32(return_data.size) + 288]
        mem[mem[64] + ceil32(arg1.length) + 256] = mem[ceil32(return_data.size) + 288]
        mem[mem[64] + ceil32(arg1.length) + 288 len ceil32(_120)] = mem[ceil32(return_data.size) + 320 len ceil32(_120)]
        if ceil32(_120) > _120:
            mem[mem[64] + ceil32(arg1.length) + _120 + 288] = 0
        return 32, _5, 
               Mask(160, 32, arg1.length) << 64,
               192,
               _7,
               ceil32(arg1.length) + 224,
               uint64(_62) << 96,
               arg1.length,
               mem[mem[64] + 256 len ceil32(arg1.length) + ceil32(_120) + 32]
    mem[mem[64] + arg1.length + 256] = 0
    mem[mem[64] + 128] = _7
    mem[mem[64] + 160] = ceil32(arg1.length) + 224
    _122 = mem[ceil32(return_data.size) + 288]
    mem[mem[64] + ceil32(arg1.length) + 256] = mem[ceil32(return_data.size) + 288]
    mem[mem[64] + ceil32(arg1.length) + 288 len ceil32(_122)] = mem[ceil32(return_data.size) + 320 len ceil32(_122)]
    if ceil32(_122) > _122:
        mem[mem[64] + ceil32(arg1.length) + _122 + 288] = 0
    return 32, _5, 
           Mask(160, 32, arg1.length) << 64,
           192,
           _7,
           ceil32(arg1.length) + 224,
           uint64(_62) << 96,
           arg1.length,
           mem[mem[64] + 256 len ceil32(arg1.length) + ceil32(_122) + 32]
}

function fromAddress(address arg1) {
    require calldata.size - 4 >= 32
    mem[256] = 0
    mem[288] = 0xb72e717d00000000000000000000000000000000000000000000000000000000
    mem[292] = arg1
    require ext_code.size(stor0)
    staticcall stor0.0xb72e717d with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 288
    require return_data.size >= 160
    _5 = mem[288 len 4], address(arg1) << 64
    _6 = 0, mem[324 len 28]
    require 0, mem[324 len 28] <= test266151307()
    require 0, mem[324 len 28] + 319 < return_data.size + 288
    _7 = mem[0, mem[324 len 28] + 288]
    require mem[0, mem[324 len 28] + 288] <= test266151307()
    require ceil32(return_data.size) + ceil32(mem[0, mem[324 len 28] + 288]) + 320 <= test266151307() and ceil32(mem[0, mem[324 len 28] + 288]) + 32 >= 0
    mem[64] = ceil32(return_data.size) + ceil32(mem[0, mem[324 len 28] + 288]) + 320
    mem[ceil32(return_data.size) + 288] = mem[0, mem[324 len 28] + 288]
    require _6 + _7 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 320 len ceil32(_7)] = mem[_6 + 320 len ceil32(_7)]
    if ceil32(_7) <= _7:
        _113 = mem[352]
        _115 = mem[384]
        require mem[384] <= test266151307()
        require mem[384] + 319 < return_data.size + 288
        _117 = mem[mem[384] + 288]
        require mem[mem[384] + 288] <= test266151307()
        _119 = mem[64]
        require mem[64] + ceil32(mem[mem[384] + 288]) + 32 <= test266151307() and mem[64] + ceil32(mem[mem[384] + 288]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(mem[mem[384] + 288]) + 32
        mem[_119] = mem[mem[384] + 288]
        require _115 + _117 + 32 <= return_data.size
        mem[_119 + 32 len ceil32(_117)] = mem[_115 + 320 len ceil32(_117)]
        if ceil32(_117) <= _117:
            mem[96] = _5
            mem[128] = arg1
            mem[160] = ceil32(return_data.size) + 288
            mem[192] = _113
            mem[224] = _119
            mem[256] = mem[428 len 20]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _5
            mem[mem[64] + 64] = arg1
            mem[mem[64] + 96] = 192
            _237 = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + 224] = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + 256 len ceil32(_237)] = mem[ceil32(return_data.size) + 320 len ceil32(_237)]
            if ceil32(_237) <= _237:
                mem[mem[64] + 128] = _113
                mem[mem[64] + 160] = ceil32(_237) + 224
                _329 = mem[_119]
                mem[mem[64] + ceil32(_237) + 256] = mem[_119]
                mem[mem[64] + ceil32(_237) + 288 len ceil32(_329)] = mem[_119 + 32 len ceil32(_329)]
                if ceil32(_329) > _329:
                    mem[mem[64] + ceil32(_237) + _329 + 288] = 0
                mem[mem[64] + 192] = mem[268 len 20]
                return 32, _5, address(arg1), 192, _113, ceil32(_237) + 224, mem[mem[64] + 192 len ceil32(_237) + ceil32(_329) + 96]
            mem[mem[64] + _237 + 256] = 0
            mem[mem[64] + 128] = _113
            mem[mem[64] + 160] = ceil32(_237) + 224
            _333 = mem[_119]
            mem[mem[64] + ceil32(_237) + 256] = mem[_119]
            mem[mem[64] + ceil32(_237) + 288 len ceil32(_333)] = mem[_119 + 32 len ceil32(_333)]
            if ceil32(_333) > _333:
                mem[mem[64] + ceil32(_237) + _333 + 288] = 0
            mem[mem[64] + 192] = mem[268 len 20]
            return 32, _5, 
                   address(arg1),
                   192,
                   _113,
                   ceil32(_237) + 224,
                   mem[mem[64] + 192 len _237 + 64],
                   0,
                   mem[mem[64] + _237 + 288 len ceil32(_237) + ceil32(_333) - _237]
        mem[_119 + _117 + 32] = 0
        mem[96] = _5
        mem[128] = arg1
        mem[160] = ceil32(return_data.size) + 288
        mem[192] = _113
        mem[224] = _119
        mem[256] = mem[428 len 20]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _5
        mem[mem[64] + 64] = arg1
        mem[mem[64] + 96] = 192
        _239 = mem[ceil32(return_data.size) + 288]
        mem[mem[64] + 224] = mem[ceil32(return_data.size) + 288]
        mem[mem[64] + 256 len ceil32(_239)] = mem[ceil32(return_data.size) + 320 len ceil32(_239)]
        if ceil32(_239) <= _239:
            mem[mem[64] + 128] = _113
            mem[mem[64] + 160] = ceil32(_239) + 224
            _330 = mem[_119]
            mem[mem[64] + ceil32(_239) + 256] = mem[_119]
            mem[mem[64] + ceil32(_239) + 288 len ceil32(_330)] = mem[_119 + 32 len ceil32(_330)]
            if ceil32(_330) > _330:
                mem[mem[64] + ceil32(_239) + _330 + 288] = 0
            mem[mem[64] + 192] = mem[268 len 20]
            return 32, _5, address(arg1), 192, _113, ceil32(_239) + 224, mem[mem[64] + 192 len ceil32(_239) + ceil32(_330) + 96]
        mem[mem[64] + _239 + 256] = 0
        mem[mem[64] + 128] = _113
        mem[mem[64] + 160] = ceil32(_239) + 224
        _334 = mem[_119]
        mem[mem[64] + ceil32(_239) + 256] = mem[_119]
        mem[mem[64] + ceil32(_239) + 288 len ceil32(_334)] = mem[_119 + 32 len ceil32(_334)]
        if ceil32(_334) > _334:
            mem[mem[64] + ceil32(_239) + _334 + 288] = 0
        mem[mem[64] + 192] = mem[268 len 20]
        return 32, _5, 
               address(arg1),
               192,
               _113,
               ceil32(_239) + 224,
               mem[mem[64] + 192 len _239 + 64],
               0,
               mem[mem[64] + _239 + 288 len ceil32(_239) + ceil32(_334) - _239]
    mem[ceil32(return_data.size) + _7 + 320] = 0
    _114 = mem[352]
    _116 = mem[384]
    require mem[384] <= test266151307()
    require mem[384] + 319 < return_data.size + 288
    _118 = mem[mem[384] + 288]
    require mem[mem[384] + 288] <= test266151307()
    _120 = mem[64]
    require mem[64] + ceil32(mem[mem[384] + 288]) + 32 <= test266151307() and mem[64] + ceil32(mem[mem[384] + 288]) + 32 >= mem[64]
    mem[64] = mem[64] + ceil32(mem[mem[384] + 288]) + 32
    mem[_120] = mem[mem[384] + 288]
    require _116 + _118 + 32 <= return_data.size
    mem[_120 + 32 len ceil32(_118)] = mem[_116 + 320 len ceil32(_118)]
    if ceil32(_118) <= _118:
        mem[96] = _5
        mem[128] = arg1
        mem[160] = ceil32(return_data.size) + 288
        mem[192] = _114
        mem[224] = _120
        mem[256] = mem[428 len 20]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _5
        mem[mem[64] + 64] = arg1
        mem[mem[64] + 96] = 192
        _238 = mem[ceil32(return_data.size) + 288]
        mem[mem[64] + 224] = mem[ceil32(return_data.size) + 288]
        mem[mem[64] + 256 len ceil32(_238)] = mem[ceil32(return_data.size) + 320 len ceil32(_238)]
        if ceil32(_238) <= _238:
            mem[mem[64] + 128] = _114
            mem[mem[64] + 160] = ceil32(_238) + 224
            _331 = mem[_120]
            mem[mem[64] + ceil32(_238) + 256] = mem[_120]
            mem[mem[64] + ceil32(_238) + 288 len ceil32(_331)] = mem[_120 + 32 len ceil32(_331)]
            if ceil32(_331) > _331:
                mem[mem[64] + ceil32(_238) + _331 + 288] = 0
            mem[mem[64] + 192] = mem[268 len 20]
            return 32, _5, address(arg1), 192, _114, ceil32(_238) + 224, mem[mem[64] + 192 len ceil32(_238) + ceil32(_331) + 96]
        mem[mem[64] + _238 + 256] = 0
        mem[mem[64] + 128] = _114
        mem[mem[64] + 160] = ceil32(_238) + 224
        _335 = mem[_120]
        mem[mem[64] + ceil32(_238) + 256] = mem[_120]
        mem[mem[64] + ceil32(_238) + 288 len ceil32(_335)] = mem[_120 + 32 len ceil32(_335)]
        if ceil32(_335) > _335:
            mem[mem[64] + ceil32(_238) + _335 + 288] = 0
        mem[mem[64] + 192] = mem[268 len 20]
        return 32, _5, 
               address(arg1),
               192,
               _114,
               ceil32(_238) + 224,
               mem[mem[64] + 192 len _238 + 64],
               0,
               mem[mem[64] + _238 + 288 len ceil32(_238) + ceil32(_335) - _238]
    mem[_120 + _118 + 32] = 0
    mem[96] = _5
    mem[128] = arg1
    mem[160] = ceil32(return_data.size) + 288
    mem[192] = _114
    mem[224] = _120
    mem[256] = mem[428 len 20]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64] = arg1
    mem[mem[64] + 96] = 192
    _240 = mem[ceil32(return_data.size) + 288]
    mem[mem[64] + 224] = mem[ceil32(return_data.size) + 288]
    mem[mem[64] + 256 len ceil32(_240)] = mem[ceil32(return_data.size) + 320 len ceil32(_240)]
    if ceil32(_240) <= _240:
        mem[mem[64] + 128] = _114
        mem[mem[64] + 160] = ceil32(_240) + 224
        _332 = mem[_120]
        mem[mem[64] + ceil32(_240) + 256] = mem[_120]
        mem[mem[64] + ceil32(_240) + 288 len ceil32(_332)] = mem[_120 + 32 len ceil32(_332)]
        if ceil32(_332) > _332:
            mem[mem[64] + ceil32(_240) + _332 + 288] = 0
        mem[mem[64] + 192] = mem[268 len 20]
        return 32, _5, address(arg1), 192, _114, ceil32(_240) + 224, mem[mem[64] + 192 len ceil32(_240) + ceil32(_332) + 96]
    mem[mem[64] + _240 + 256] = 0
    mem[mem[64] + 128] = _114
    mem[mem[64] + 160] = ceil32(_240) + 224
    _336 = mem[_120]
    mem[mem[64] + ceil32(_240) + 256] = mem[_120]
    mem[mem[64] + ceil32(_240) + 288 len ceil32(_336)] = mem[_120 + 32 len ceil32(_336)]
    if ceil32(_336) > _336:
        mem[mem[64] + ceil32(_240) + _336 + 288] = 0
    mem[mem[64] + 192] = mem[268 len 20]
    return 32, _5, 
           address(arg1),
           192,
           _114,
           ceil32(_240) + 224,
           mem[mem[64] + 192 len _240 + 64],
           0,
           mem[mem[64] + _240 + 288 len ceil32(_240) + ceil32(_336) - _240]
}

function getToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[256] = 0
    mem[288] = 0x44215c600000000000000000000000000000000000000000000000000000000
    mem[292] = arg1
    require ext_code.size(stor0)
    staticcall stor0.token(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 288
    require return_data.size >= 160
    _5 = mem[288 len 4], Mask(224, 32, arg1) >> 32
    _6 = uint32(arg1), mem[324 len 28]
    require uint32(arg1), mem[324 len 28] <= test266151307()
    require uint32(arg1), mem[324 len 28] + 319 < return_data.size + 288
    _7 = mem[uint32(arg1), mem[324 len 28] + 288]
    require mem[uint32(arg1), mem[324 len 28] + 288] <= test266151307()
    require ceil32(return_data.size) + ceil32(mem[uint32(arg1), mem[324 len 28] + 288]) + 320 <= test266151307() and ceil32(mem[uint32(arg1), mem[324 len 28] + 288]) + 32 >= 0
    mem[64] = ceil32(return_data.size) + ceil32(mem[uint32(arg1), mem[324 len 28] + 288]) + 320
    mem[ceil32(return_data.size) + 288] = mem[uint32(arg1), mem[324 len 28] + 288]
    require _6 + _7 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 320 len ceil32(_7)] = mem[_6 + 320 len ceil32(_7)]
    if ceil32(_7) <= _7:
        _113 = mem[352]
        _115 = mem[384]
        require mem[384] <= test266151307()
        require mem[384] + 319 < return_data.size + 288
        _117 = mem[mem[384] + 288]
        require mem[mem[384] + 288] <= test266151307()
        _119 = mem[64]
        require mem[64] + ceil32(mem[mem[384] + 288]) + 32 <= test266151307() and mem[64] + ceil32(mem[mem[384] + 288]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(mem[mem[384] + 288]) + 32
        mem[_119] = mem[mem[384] + 288]
        require _115 + _117 + 32 <= return_data.size
        mem[_119 + 32 len ceil32(_117)] = mem[_115 + 320 len ceil32(_117)]
        if ceil32(_117) <= _117:
            mem[96] = arg1
            mem[128] = address(_5)
            mem[160] = ceil32(return_data.size) + 288
            mem[192] = _113
            mem[224] = _119
            mem[256] = mem[428 len 20]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = address(_5)
            mem[mem[64] + 96] = 192
            _237 = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + 224] = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + 256 len ceil32(_237)] = mem[ceil32(return_data.size) + 320 len ceil32(_237)]
            if ceil32(_237) <= _237:
                mem[mem[64] + 128] = _113
                mem[mem[64] + 160] = ceil32(_237) + 224
                _329 = mem[_119]
                mem[mem[64] + ceil32(_237) + 256] = mem[_119]
                mem[mem[64] + ceil32(_237) + 288 len ceil32(_329)] = mem[_119 + 32 len ceil32(_329)]
                if ceil32(_329) > _329:
                    mem[mem[64] + ceil32(_237) + _329 + 288] = 0
                mem[mem[64] + 192] = mem[268 len 20]
                return 32, arg1, address(_5), 192, _113, ceil32(_237) + 224, mem[mem[64] + 192 len ceil32(_237) + ceil32(_329) + 96]
            mem[mem[64] + _237 + 256] = 0
            mem[mem[64] + 128] = _113
            mem[mem[64] + 160] = ceil32(_237) + 224
            _333 = mem[_119]
            mem[mem[64] + ceil32(_237) + 256] = mem[_119]
            mem[mem[64] + ceil32(_237) + 288 len ceil32(_333)] = mem[_119 + 32 len ceil32(_333)]
            if ceil32(_333) > _333:
                mem[mem[64] + ceil32(_237) + _333 + 288] = 0
            mem[mem[64] + 192] = mem[268 len 20]
            return 32, arg1, 
                   address(_5),
                   192,
                   _113,
                   ceil32(_237) + 224,
                   mem[mem[64] + 192 len _237 + 64],
                   0,
                   mem[mem[64] + _237 + 288 len ceil32(_237) + ceil32(_333) - _237]
        mem[_119 + _117 + 32] = 0
        mem[96] = arg1
        mem[128] = address(_5)
        mem[160] = ceil32(return_data.size) + 288
        mem[192] = _113
        mem[224] = _119
        mem[256] = mem[428 len 20]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = arg1
        mem[mem[64] + 64] = address(_5)
        mem[mem[64] + 96] = 192
        _239 = mem[ceil32(return_data.size) + 288]
        mem[mem[64] + 224] = mem[ceil32(return_data.size) + 288]
        mem[mem[64] + 256 len ceil32(_239)] = mem[ceil32(return_data.size) + 320 len ceil32(_239)]
        if ceil32(_239) <= _239:
            mem[mem[64] + 128] = _113
            mem[mem[64] + 160] = ceil32(_239) + 224
            _330 = mem[_119]
            mem[mem[64] + ceil32(_239) + 256] = mem[_119]
            mem[mem[64] + ceil32(_239) + 288 len ceil32(_330)] = mem[_119 + 32 len ceil32(_330)]
            if ceil32(_330) > _330:
                mem[mem[64] + ceil32(_239) + _330 + 288] = 0
            mem[mem[64] + 192] = mem[268 len 20]
            return 32, arg1, address(_5), 192, _113, ceil32(_239) + 224, mem[mem[64] + 192 len ceil32(_239) + ceil32(_330) + 96]
        mem[mem[64] + _239 + 256] = 0
        mem[mem[64] + 128] = _113
        mem[mem[64] + 160] = ceil32(_239) + 224
        _334 = mem[_119]
        mem[mem[64] + ceil32(_239) + 256] = mem[_119]
        mem[mem[64] + ceil32(_239) + 288 len ceil32(_334)] = mem[_119 + 32 len ceil32(_334)]
        if ceil32(_334) > _334:
            mem[mem[64] + ceil32(_239) + _334 + 288] = 0
        mem[mem[64] + 192] = mem[268 len 20]
        return 32, arg1, 
               address(_5),
               192,
               _113,
               ceil32(_239) + 224,
               mem[mem[64] + 192 len _239 + 64],
               0,
               mem[mem[64] + _239 + 288 len ceil32(_239) + ceil32(_334) - _239]
    mem[ceil32(return_data.size) + _7 + 320] = 0
    _114 = mem[352]
    _116 = mem[384]
    require mem[384] <= test266151307()
    require mem[384] + 319 < return_data.size + 288
    _118 = mem[mem[384] + 288]
    require mem[mem[384] + 288] <= test266151307()
    _120 = mem[64]
    require mem[64] + ceil32(mem[mem[384] + 288]) + 32 <= test266151307() and mem[64] + ceil32(mem[mem[384] + 288]) + 32 >= mem[64]
    mem[64] = mem[64] + ceil32(mem[mem[384] + 288]) + 32
    mem[_120] = mem[mem[384] + 288]
    require _116 + _118 + 32 <= return_data.size
    mem[_120 + 32 len ceil32(_118)] = mem[_116 + 320 len ceil32(_118)]
    if ceil32(_118) <= _118:
        mem[96] = arg1
        mem[128] = address(_5)
        mem[160] = ceil32(return_data.size) + 288
        mem[192] = _114
        mem[224] = _120
        mem[256] = mem[428 len 20]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = arg1
        mem[mem[64] + 64] = address(_5)
        mem[mem[64] + 96] = 192
        _238 = mem[ceil32(return_data.size) + 288]
        mem[mem[64] + 224] = mem[ceil32(return_data.size) + 288]
        mem[mem[64] + 256 len ceil32(_238)] = mem[ceil32(return_data.size) + 320 len ceil32(_238)]
        if ceil32(_238) <= _238:
            mem[mem[64] + 128] = _114
            mem[mem[64] + 160] = ceil32(_238) + 224
            _331 = mem[_120]
            mem[mem[64] + ceil32(_238) + 256] = mem[_120]
            mem[mem[64] + ceil32(_238) + 288 len ceil32(_331)] = mem[_120 + 32 len ceil32(_331)]
            if ceil32(_331) > _331:
                mem[mem[64] + ceil32(_238) + _331 + 288] = 0
            mem[mem[64] + 192] = mem[268 len 20]
            return 32, arg1, address(_5), 192, _114, ceil32(_238) + 224, mem[mem[64] + 192 len ceil32(_238) + ceil32(_331) + 96]
        mem[mem[64] + _238 + 256] = 0
        mem[mem[64] + 128] = _114
        mem[mem[64] + 160] = ceil32(_238) + 224
        _335 = mem[_120]
        mem[mem[64] + ceil32(_238) + 256] = mem[_120]
        mem[mem[64] + ceil32(_238) + 288 len ceil32(_335)] = mem[_120 + 32 len ceil32(_335)]
        if ceil32(_335) > _335:
            mem[mem[64] + ceil32(_238) + _335 + 288] = 0
        mem[mem[64] + 192] = mem[268 len 20]
        return 32, arg1, 
               address(_5),
               192,
               _114,
               ceil32(_238) + 224,
               mem[mem[64] + 192 len _238 + 64],
               0,
               mem[mem[64] + _238 + 288 len ceil32(_238) + ceil32(_335) - _238]
    mem[_120 + _118 + 32] = 0
    mem[96] = arg1
    mem[128] = address(_5)
    mem[160] = ceil32(return_data.size) + 288
    mem[192] = _114
    mem[224] = _120
    mem[256] = mem[428 len 20]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = arg1
    mem[mem[64] + 64] = address(_5)
    mem[mem[64] + 96] = 192
    _240 = mem[ceil32(return_data.size) + 288]
    mem[mem[64] + 224] = mem[ceil32(return_data.size) + 288]
    mem[mem[64] + 256 len ceil32(_240)] = mem[ceil32(return_data.size) + 320 len ceil32(_240)]
    if ceil32(_240) <= _240:
        mem[mem[64] + 128] = _114
        mem[mem[64] + 160] = ceil32(_240) + 224
        _332 = mem[_120]
        mem[mem[64] + ceil32(_240) + 256] = mem[_120]
        mem[mem[64] + ceil32(_240) + 288 len ceil32(_332)] = mem[_120 + 32 len ceil32(_332)]
        if ceil32(_332) > _332:
            mem[mem[64] + ceil32(_240) + _332 + 288] = 0
        mem[mem[64] + 192] = mem[268 len 20]
        return 32, arg1, address(_5), 192, _114, ceil32(_240) + 224, mem[mem[64] + 192 len ceil32(_240) + ceil32(_332) + 96]
    mem[mem[64] + _240 + 256] = 0
    mem[mem[64] + 128] = _114
    mem[mem[64] + 160] = ceil32(_240) + 224
    _336 = mem[_120]
    mem[mem[64] + ceil32(_240) + 256] = mem[_120]
    mem[mem[64] + ceil32(_240) + 288 len ceil32(_336)] = mem[_120 + 32 len ceil32(_336)]
    if ceil32(_336) > _336:
        mem[mem[64] + ceil32(_240) + _336 + 288] = 0
    mem[mem[64] + 192] = mem[268 len 20]
    return 32, arg1, 
           address(_5),
           192,
           _114,
           ceil32(_240) + 224,
           mem[mem[64] + 192 len _240 + 64],
           0,
           mem[mem[64] + _240 + 288 len ceil32(_240) + ceil32(_336) - _240]
}

function sub_e2ff34d5(?) {
    require ext_code.size(stor0)
    staticcall stor0.0x9f181b5e with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        s = 0
        idx = 0
        while idx < ext_call.return_data[0]:
            _189 = mem[64]
            mem[mem[64] + 36] = s
            _194 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            mem[_194 + 32] = mem[_194 + 36 len 28] or 0x44215c600000000000000000000000000000000000000000000000000000000
            _197 = mem[_194]
            u = _194 + 32
            v = _189 + 68
            t = mem[_194]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[_189 + floor32(mem[_194]) + 68] = mem[_194 + -(mem[_194] % 32) + floor32(mem[_194]) + 64 len mem[_194] % 32] or Mask(8 * -(mem[_194] % 32) + 32, -(8 * -(mem[_194] % 32) + 32) + 256, mem[_189 + floor32(mem[_194]) + 68])
            staticcall stor0.mem[_189 + 68 len 4] with:
                    gas gas_remaining wei
                   args mem[_189 + 72 len _197 - 4]
            if not return_data.size:
                if not ext_call.success:
                    s = s + 1
                    idx = idx
                    continue 
                mem[_189 + 68] = 0x44215c600000000000000000000000000000000000000000000000000000000
                mem[_189 + 72] = s
                require ext_code.size(stor0)
                staticcall stor0.token(uint256 arg1) with:
                        gas gas_remaining wei
                       args s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_189 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _189 + ceil32(return_data.size) + 68
                require return_data.size >= 160
                _403 = mem[_189 + 68 len 4], Mask(224, 32, s) >> 32
                _411 = uint32(s), mem[_189 + 104 len 28]
                require uint32(s), mem[_189 + 104 len 28] <= test266151307()
                require _189 + uint32(s), mem[_189 + 104 len 28] + 99 < _189 + return_data.size + 68
                _416 = mem[_189 + uint32(s), mem[_189 + 104 len 28] + 68]
                require mem[_189 + uint32(s), mem[_189 + 104 len 28] + 68] <= test266151307()
                require _189 + ceil32(return_data.size) + ceil32(mem[_189 + uint32(s), mem[_189 + 104 len 28] + 68]) + 100 <= test266151307() and ceil32(mem[_189 + uint32(s), mem[_189 + 104 len 28] + 68]) + 32 >= 0
                mem[64] = _189 + ceil32(return_data.size) + ceil32(mem[_189 + uint32(s), mem[_189 + 104 len 28] + 68]) + 100
                mem[_189 + ceil32(return_data.size) + 68] = _416
                require _411 + _416 + 32 <= return_data.size
                t = 0
                while t < _416:
                    mem[_189 + ceil32(return_data.size) + t + 100] = mem[_189 + _411 + t + 100]
                    t = t + 32
                    continue 
                if ceil32(_416) <= _416:
                    _553 = mem[_189 + 132]
                    _564 = mem[_189 + 164]
                    require mem[_189 + 164] <= test266151307()
                    require _189 + mem[_189 + 164] + 99 < _189 + return_data.size + 68
                    _576 = mem[_189 + mem[_189 + 164] + 68]
                    require mem[_189 + mem[_189 + 164] + 68] <= test266151307()
                    _586 = mem[64]
                    require mem[64] + ceil32(mem[_189 + mem[_189 + 164] + 68]) + 32 <= test266151307() and mem[64] + ceil32(mem[_189 + mem[_189 + 164] + 68]) + 32 >= mem[64]
                    mem[64] = mem[64] + ceil32(mem[_189 + mem[_189 + 164] + 68]) + 32
                    mem[_586] = _576
                    require _564 + _576 + 32 <= return_data.size
                    t = 0
                    while t < _576:
                        mem[_586 + t + 32] = mem[_189 + _564 + t + 100]
                        t = t + 32
                        continue 
                    if ceil32(_576) <= _576:
                        _714 = mem[_189 + 196]
                        _729 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_729] = s
                        mem[_729 + 32] = address(_403)
                        mem[_729 + 64] = _189 + ceil32(return_data.size) + 68
                        mem[_729 + 96] = _553
                        mem[_729 + 128] = _586
                        mem[_729 + 160] = address(_714)
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = _729
                    else:
                        mem[_586 + _576 + 32] = 0
                        _720 = mem[_189 + 196]
                        _737 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_737] = s
                        mem[_737 + 32] = address(_403)
                        mem[_737 + 64] = _189 + ceil32(return_data.size) + 68
                        mem[_737 + 96] = _553
                        mem[_737 + 128] = _586
                        mem[_737 + 160] = address(_720)
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = _737
                else:
                    mem[_189 + ceil32(return_data.size) + _416 + 100] = 0
                    _557 = mem[_189 + 132]
                    _566 = mem[_189 + 164]
                    require mem[_189 + 164] <= test266151307()
                    require _189 + mem[_189 + 164] + 99 < _189 + return_data.size + 68
                    _580 = mem[_189 + mem[_189 + 164] + 68]
                    require mem[_189 + mem[_189 + 164] + 68] <= test266151307()
                    _590 = mem[64]
                    require mem[64] + ceil32(mem[_189 + mem[_189 + 164] + 68]) + 32 <= test266151307() and mem[64] + ceil32(mem[_189 + mem[_189 + 164] + 68]) + 32 >= mem[64]
                    mem[64] = mem[64] + ceil32(mem[_189 + mem[_189 + 164] + 68]) + 32
                    mem[_590] = _580
                    require _566 + _580 + 32 <= return_data.size
                    t = 0
                    while t < _580:
                        mem[_590 + t + 32] = mem[_189 + _566 + t + 100]
                        t = t + 32
                        continue 
                    if ceil32(_580) <= _580:
                        _715 = mem[_189 + 196]
                        _731 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_731] = s
                        mem[_731 + 32] = address(_403)
                        mem[_731 + 64] = _189 + ceil32(return_data.size) + 68
                        mem[_731 + 96] = _557
                        mem[_731 + 128] = _590
                        mem[_731 + 160] = address(_715)
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = _731
                    else:
                        mem[_590 + _580 + 32] = 0
                        _721 = mem[_189 + 196]
                        _739 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_739] = s
                        mem[_739 + 32] = address(_403)
                        mem[_739 + 64] = _189 + ceil32(return_data.size) + 68
                        mem[_739 + 96] = _557
                        mem[_739 + 128] = _590
                        mem[_739 + 160] = address(_721)
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = _739
            else:
                mem[64] = _189 + ceil32(return_data.size) + 69
                mem[_189 + 68] = return_data.size
                mem[_189 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    s = s + 1
                    idx = idx
                    continue 
                mem[_189 + ceil32(return_data.size) + 69] = 0x44215c600000000000000000000000000000000000000000000000000000000
                mem[_189 + ceil32(return_data.size) + 73] = s
                require ext_code.size(stor0)
                staticcall stor0.token(uint256 arg1) with:
                        gas gas_remaining wei
                       args s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_189 + ceil32(return_data.size) + 69 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _189 + ceil32(return_data.size) + ceil32(return_data.size) + 69
                require return_data.size >= 160
                _404 = mem[_189 + ceil32(return_data.size) + 69 len 4], Mask(224, 32, s) >> 32
                _412 = uint32(s), mem[_189 + ceil32(return_data.size) + 105 len 28]
                require uint32(s), mem[_189 + ceil32(return_data.size) + 105 len 28] <= test266151307()
                require _189 + ceil32(return_data.size) + uint32(s), mem[_189 + ceil32(return_data.size) + 105 len 28] + 100 < _189 + ceil32(return_data.size) + return_data.size + 69
                _417 = mem[_189 + ceil32(return_data.size) + uint32(s), mem[_189 + ceil32(return_data.size) + 105 len 28] + 69]
                require mem[_189 + ceil32(return_data.size) + uint32(s), mem[_189 + ceil32(return_data.size) + 105 len 28] + 69] <= test266151307()
                require _189 + ceil32(return_data.size) + ceil32(return_data.size) + ceil32(mem[_189 + ceil32(return_data.size) + uint32(s), mem[_189 + ceil32(return_data.size) + 105 len 28] + 69]) + 101 <= test266151307() and ceil32(mem[_189 + ceil32(return_data.size) + uint32(s), mem[_189 + ceil32(return_data.size) + 105 len 28] + 69]) + 32 >= 0
                mem[64] = _189 + ceil32(return_data.size) + ceil32(return_data.size) + ceil32(mem[_189 + ceil32(return_data.size) + uint32(s), mem[_189 + ceil32(return_data.size) + 105 len 28] + 69]) + 101
                mem[_189 + ceil32(return_data.size) + ceil32(return_data.size) + 69] = _417
                require _412 + _417 + 32 <= return_data.size
                t = 0
                while t < _417:
                    mem[_189 + ceil32(return_data.size) + ceil32(return_data.size) + t + 101] = mem[_189 + ceil32(return_data.size) + _412 + t + 101]
                    t = t + 32
                    continue 
                if ceil32(_417) <= _417:
                    _554 = mem[_189 + ceil32(return_data.size) + 133]
                    _565 = mem[_189 + ceil32(return_data.size) + 165]
                    require mem[_189 + ceil32(return_data.size) + 165] <= test266151307()
                    require _189 + ceil32(return_data.size) + mem[_189 + ceil32(return_data.size) + 165] + 100 < _189 + ceil32(return_data.size) + return_data.size + 69
                    _577 = mem[_189 + ceil32(return_data.size) + mem[_189 + ceil32(return_data.size) + 165] + 69]
                    require mem[_189 + ceil32(return_data.size) + mem[_189 + ceil32(return_data.size) + 165] + 69] <= test266151307()
                    _587 = mem[64]
                    require mem[64] + ceil32(mem[_189 + ceil32(return_data.size) + mem[_189 + ceil32(return_data.size) + 165] + 69]) + 32 <= test266151307() and mem[64] + ceil32(mem[_189 + ceil32(return_data.size) + mem[_189 + ceil32(return_data.size) + 165] + 69]) + 32 >= mem[64]
                    mem[64] = mem[64] + ceil32(mem[_189 + ceil32(return_data.size) + mem[_189 + ceil32(return_data.size) + 165] + 69]) + 32
                    mem[_587] = _577
                    require _565 + _577 + 32 <= return_data.size
                    t = 0
                    while t < _577:
                        mem[_587 + t + 32] = mem[_189 + ceil32(return_data.size) + _565 + t + 101]
                        t = t + 32
                        continue 
                    if ceil32(_577) <= _577:
                        _716 = mem[_189 + ceil32(return_data.size) + 197]
                        _733 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_733] = s
                        mem[_733 + 32] = address(_404)
                        mem[_733 + 64] = _189 + ceil32(return_data.size) + ceil32(return_data.size) + 69
                        mem[_733 + 96] = _554
                        mem[_733 + 128] = _587
                        mem[_733 + 160] = address(_716)
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = _733
                    else:
                        mem[_587 + _577 + 32] = 0
                        _722 = mem[_189 + ceil32(return_data.size) + 197]
                        _741 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_741] = s
                        mem[_741 + 32] = address(_404)
                        mem[_741 + 64] = _189 + ceil32(return_data.size) + ceil32(return_data.size) + 69
                        mem[_741 + 96] = _554
                        mem[_741 + 128] = _587
                        mem[_741 + 160] = address(_722)
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = _741
                else:
                    mem[_189 + ceil32(return_data.size) + ceil32(return_data.size) + _417 + 101] = 0
                    _558 = mem[_189 + ceil32(return_data.size) + 133]
                    _567 = mem[_189 + ceil32(return_data.size) + 165]
                    require mem[_189 + ceil32(return_data.size) + 165] <= test266151307()
                    require _189 + ceil32(return_data.size) + mem[_189 + ceil32(return_data.size) + 165] + 100 < _189 + ceil32(return_data.size) + return_data.size + 69
                    _581 = mem[_189 + ceil32(return_data.size) + mem[_189 + ceil32(return_data.size) + 165] + 69]
                    require mem[_189 + ceil32(return_data.size) + mem[_189 + ceil32(return_data.size) + 165] + 69] <= test266151307()
                    _591 = mem[64]
                    require mem[64] + ceil32(mem[_189 + ceil32(return_data.size) + mem[_189 + ceil32(return_data.size) + 165] + 69]) + 32 <= test266151307() and mem[64] + ceil32(mem[_189 + ceil32(return_data.size) + mem[_189 + ceil32(return_data.size) + 165] + 69]) + 32 >= mem[64]
                    mem[64] = mem[64] + ceil32(mem[_189 + ceil32(return_data.size) + mem[_189 + ceil32(return_data.size) + 165] + 69]) + 32
                    mem[_591] = _581
                    require _567 + _581 + 32 <= return_data.size
                    t = 0
                    while t < _581:
                        mem[_591 + t + 32] = mem[_189 + ceil32(return_data.size) + _567 + t + 101]
                        t = t + 32
                        continue 
                    if ceil32(_581) <= _581:
                        _717 = mem[_189 + ceil32(return_data.size) + 197]
                        _735 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_735] = s
                        mem[_735 + 32] = address(_404)
                        mem[_735 + 64] = _189 + ceil32(return_data.size) + ceil32(return_data.size) + 69
                        mem[_735 + 96] = _558
                        mem[_735 + 128] = _591
                        mem[_735 + 160] = address(_717)
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = _735
                    else:
                        mem[_591 + _581 + 32] = 0
                        _723 = mem[_189 + ceil32(return_data.size) + 197]
                        _743 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_743] = s
                        mem[_743 + 32] = address(_404)
                        mem[_743 + 64] = _189 + ceil32(return_data.size) + ceil32(return_data.size) + 69
                        mem[_743 + 96] = _558
                        mem[_743 + 128] = _591
                        mem[_743 + 160] = address(_723)
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = _743
            s = s + 1
            idx = idx + 1
            continue 
        _191 = mem[64]
        mem[mem[64]] = 32
        _192 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + (32 * _192) + 64
        u = mem[64] + 64
        while idx < _192:
            mem[u] = t + -_191 - 64
            _373 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_373 + 44 len 20]
            _393 = mem[_373 + 64]
            mem[t + 64] = 192
            _400 = mem[_393]
            mem[t + 192] = mem[_393]
            v = 0
            while v < _400:
                mem[t + v + 224] = mem[_393 + v + 32]
                v = v + 32
                continue 
            if ceil32(_400) <= _400:
                mem[t + 96] = mem[_373 + 96]
                _572 = mem[_373 + 128]
                mem[t + 128] = ceil32(_400) + 224
                _579 = mem[_572]
                mem[t + ceil32(_400) + 224] = mem[_572]
                v = 0
                while v < _579:
                    mem[t + ceil32(_400) + v + 256] = mem[_572 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_579) > _579:
                    mem[t + ceil32(_400) + _579 + 256] = 0
                mem[t + 160] = mem[_373 + 172 len 20]
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_400) + ceil32(_579) + 256
                u = u + 32
                continue 
            mem[t + _400 + 224] = 0
            mem[t + 96] = mem[_373 + 96]
            _575 = mem[_373 + 128]
            mem[t + 128] = ceil32(_400) + 224
            _585 = mem[_575]
            mem[t + ceil32(_400) + 224] = mem[_575]
            v = 0
            while v < _585:
                mem[t + ceil32(_400) + v + 256] = mem[_575 + v + 32]
                v = v + 32
                continue 
            if ceil32(_585) > _585:
                mem[t + ceil32(_400) + _585 + 256] = 0
            mem[t + 160] = mem[_373 + 172 len 20]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_400) + ceil32(_585) + 256
            u = u + 32
            continue 
    else:
        mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 320
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = 96
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 256] = 96
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 288] = 0
        mem[var17001] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
        s = var17001
        idx = var17002
        while idx - 1:
            mem[64] = mem[64] + 192
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = 96
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 256] = 96
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 288] = 0
            mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
            s = s + 32
            idx = idx - 1
            continue 
        s = 0
        idx = 0
        while idx < ext_call.return_data[0]:
            _551 = mem[64]
            mem[mem[64] + 36] = s
            _560 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            mem[_560 + 32] = mem[_560 + 36 len 28] or 0x44215c600000000000000000000000000000000000000000000000000000000
            _563 = mem[_560]
            u = _560 + 32
            v = mem[64]
            t = mem[_560]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[mem[64] + floor32(mem[_560])] = mem[_560 + floor32(mem[_560]) + -(mem[_560] % 32) + 64 len mem[_560] % 32] or Mask(8 * -(mem[_560] % 32) + 32, -(8 * -(mem[_560] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_560])])
            staticcall stor0.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _563 + _551 + -mem[64] + 64]
            if not return_data.size:
                if not ext_call.success:
                    s = s + 1
                    idx = idx
                    continue 
                mem[mem[64]] = 0x44215c600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                require ext_code.size(stor0)
                staticcall stor0.token(uint256 arg1) with:
                        gas gas_remaining wei
                       args s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _746 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 160
                _749 = mem[_746]
                _752 = mem[_746 + 32]
                require mem[_746 + 32] <= test266151307()
                require _746 + mem[_746 + 32] + 31 < _746 + return_data.size
                _755 = mem[_746 + mem[_746 + 32]]
                require mem[_746 + mem[_746 + 32]] <= test266151307()
                require _746 + ceil32(return_data.size) + ceil32(mem[_746 + mem[_746 + 32]]) + 32 <= test266151307() and ceil32(mem[_746 + mem[_746 + 32]]) + 32 >= 0
                mem[64] = _746 + ceil32(return_data.size) + ceil32(mem[_746 + mem[_746 + 32]]) + 32
                mem[_746 + ceil32(return_data.size)] = _755
                require _752 + _755 + 32 <= return_data.size
                t = 0
                while t < _755:
                    mem[_746 + ceil32(return_data.size) + t + 32] = mem[_746 + _752 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_755) <= _755:
                    _819 = mem[_746 + 64]
                    _825 = mem[_746 + 96]
                    require mem[_746 + 96] <= test266151307()
                    require _746 + mem[_746 + 96] + 31 < _746 + return_data.size
                    _831 = mem[_746 + mem[_746 + 96]]
                    require mem[_746 + mem[_746 + 96]] <= test266151307()
                    _837 = mem[64]
                    require mem[64] + ceil32(mem[_746 + mem[_746 + 96]]) + 32 <= test266151307() and mem[64] + ceil32(mem[_746 + mem[_746 + 96]]) + 32 >= mem[64]
                    mem[64] = mem[64] + ceil32(mem[_746 + mem[_746 + 96]]) + 32
                    mem[_837] = _831
                    require _825 + _831 + 32 <= return_data.size
                    t = 0
                    while t < _831:
                        mem[_837 + t + 32] = mem[_746 + _825 + t + 32]
                        t = t + 32
                        continue 
                    if ceil32(_831) <= _831:
                        _881 = mem[_746 + 128]
                        _893 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_893] = s
                        mem[_893 + 32] = address(_749)
                        mem[_893 + 64] = _746 + ceil32(return_data.size)
                        mem[_893 + 96] = _819
                        mem[_893 + 128] = _837
                        mem[_893 + 160] = address(_881)
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = _893
                    else:
                        mem[_837 + _831 + 32] = 0
                        _887 = mem[_746 + 128]
                        _901 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_901] = s
                        mem[_901 + 32] = address(_749)
                        mem[_901 + 64] = _746 + ceil32(return_data.size)
                        mem[_901 + 96] = _819
                        mem[_901 + 128] = _837
                        mem[_901 + 160] = address(_887)
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = _901
                else:
                    mem[_746 + ceil32(return_data.size) + _755 + 32] = 0
                    _822 = mem[_746 + 64]
                    _827 = mem[_746 + 96]
                    require mem[_746 + 96] <= test266151307()
                    require _746 + mem[_746 + 96] + 31 < _746 + return_data.size
                    _834 = mem[_746 + mem[_746 + 96]]
                    require mem[_746 + mem[_746 + 96]] <= test266151307()
                    _840 = mem[64]
                    require mem[64] + ceil32(mem[_746 + mem[_746 + 96]]) + 32 <= test266151307() and mem[64] + ceil32(mem[_746 + mem[_746 + 96]]) + 32 >= mem[64]
                    mem[64] = mem[64] + ceil32(mem[_746 + mem[_746 + 96]]) + 32
                    mem[_840] = _834
                    require _827 + _834 + 32 <= return_data.size
                    t = 0
                    while t < _834:
                        mem[_840 + t + 32] = mem[_746 + _827 + t + 32]
                        t = t + 32
                        continue 
                    if ceil32(_834) <= _834:
                        _882 = mem[_746 + 128]
                        _895 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_895] = s
                        mem[_895 + 32] = address(_749)
                        mem[_895 + 64] = _746 + ceil32(return_data.size)
                        mem[_895 + 96] = _822
                        mem[_895 + 128] = _840
                        mem[_895 + 160] = address(_882)
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = _895
                    else:
                        mem[_840 + _834 + 32] = 0
                        _888 = mem[_746 + 128]
                        _903 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_903] = s
                        mem[_903 + 32] = address(_749)
                        mem[_903 + 64] = _746 + ceil32(return_data.size)
                        mem[_903 + 96] = _822
                        mem[_903 + 128] = _840
                        mem[_903 + 160] = address(_888)
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = _903
            else:
                _710 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_710] = return_data.size
                mem[_710 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    s = s + 1
                    idx = idx
                    continue 
                mem[mem[64]] = 0x44215c600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                require ext_code.size(stor0)
                staticcall stor0.token(uint256 arg1) with:
                        gas gas_remaining wei
                       args s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _747 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 160
                _750 = mem[_747]
                _753 = mem[_747 + 32]
                require mem[_747 + 32] <= test266151307()
                require _747 + mem[_747 + 32] + 31 < _747 + return_data.size
                _756 = mem[_747 + mem[_747 + 32]]
                require mem[_747 + mem[_747 + 32]] <= test266151307()
                require _747 + ceil32(return_data.size) + ceil32(mem[_747 + mem[_747 + 32]]) + 32 <= test266151307() and ceil32(mem[_747 + mem[_747 + 32]]) + 32 >= 0
                mem[64] = _747 + ceil32(return_data.size) + ceil32(mem[_747 + mem[_747 + 32]]) + 32
                mem[_747 + ceil32(return_data.size)] = _756
                require _753 + _756 + 32 <= return_data.size
                t = 0
                while t < _756:
                    mem[_747 + ceil32(return_data.size) + t + 32] = mem[_747 + _753 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_756) <= _756:
                    _820 = mem[_747 + 64]
                    _826 = mem[_747 + 96]
                    require mem[_747 + 96] <= test266151307()
                    require _747 + mem[_747 + 96] + 31 < _747 + return_data.size
                    _832 = mem[_747 + mem[_747 + 96]]
                    require mem[_747 + mem[_747 + 96]] <= test266151307()
                    _838 = mem[64]
                    require mem[64] + ceil32(mem[_747 + mem[_747 + 96]]) + 32 <= test266151307() and mem[64] + ceil32(mem[_747 + mem[_747 + 96]]) + 32 >= mem[64]
                    mem[64] = mem[64] + ceil32(mem[_747 + mem[_747 + 96]]) + 32
                    mem[_838] = _832
                    require _826 + _832 + 32 <= return_data.size
                    t = 0
                    while t < _832:
                        mem[_838 + t + 32] = mem[_747 + _826 + t + 32]
                        t = t + 32
                        continue 
                    if ceil32(_832) <= _832:
                        _883 = mem[_747 + 128]
                        _897 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_897] = s
                        mem[_897 + 32] = address(_750)
                        mem[_897 + 64] = _747 + ceil32(return_data.size)
                        mem[_897 + 96] = _820
                        mem[_897 + 128] = _838
                        mem[_897 + 160] = address(_883)
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = _897
                    else:
                        mem[_838 + _832 + 32] = 0
                        _889 = mem[_747 + 128]
                        _905 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_905] = s
                        mem[_905 + 32] = address(_750)
                        mem[_905 + 64] = _747 + ceil32(return_data.size)
                        mem[_905 + 96] = _820
                        mem[_905 + 128] = _838
                        mem[_905 + 160] = address(_889)
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = _905
                else:
                    mem[_747 + ceil32(return_data.size) + _756 + 32] = 0
                    _823 = mem[_747 + 64]
                    _828 = mem[_747 + 96]
                    require mem[_747 + 96] <= test266151307()
                    require _747 + mem[_747 + 96] + 31 < _747 + return_data.size
                    _835 = mem[_747 + mem[_747 + 96]]
                    require mem[_747 + mem[_747 + 96]] <= test266151307()
                    _841 = mem[64]
                    require mem[64] + ceil32(mem[_747 + mem[_747 + 96]]) + 32 <= test266151307() and mem[64] + ceil32(mem[_747 + mem[_747 + 96]]) + 32 >= mem[64]
                    mem[64] = mem[64] + ceil32(mem[_747 + mem[_747 + 96]]) + 32
                    mem[_841] = _835
                    require _828 + _835 + 32 <= return_data.size
                    t = 0
                    while t < _835:
                        mem[_841 + t + 32] = mem[_747 + _828 + t + 32]
                        t = t + 32
                        continue 
                    if ceil32(_835) <= _835:
                        _884 = mem[_747 + 128]
                        _899 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_899] = s
                        mem[_899 + 32] = address(_750)
                        mem[_899 + 64] = _747 + ceil32(return_data.size)
                        mem[_899 + 96] = _823
                        mem[_899 + 128] = _841
                        mem[_899 + 160] = address(_884)
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = _899
                    else:
                        mem[_841 + _835 + 32] = 0
                        _890 = mem[_747 + 128]
                        _907 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_907] = s
                        mem[_907 + 32] = address(_750)
                        mem[_907 + 64] = _747 + ceil32(return_data.size)
                        mem[_907 + 96] = _823
                        mem[_907 + 128] = _841
                        mem[_907 + 160] = address(_890)
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = _907
            s = s + 1
            idx = idx + 1
            continue 
        _552 = mem[64]
        mem[mem[64]] = 32
        _555 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + (32 * _555) + 64
        u = mem[64] + 64
        while idx < _555:
            mem[u] = t + -_552 - 64
            _704 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_704 + 44 len 20]
            _745 = mem[_704 + 64]
            mem[t + 64] = 192
            _748 = mem[_745]
            mem[t + 192] = mem[_745]
            v = 0
            while v < _748:
                mem[t + v + 224] = mem[_745 + v + 32]
                v = v + 32
                continue 
            if ceil32(_748) <= _748:
                mem[t + 96] = mem[_704 + 96]
                _829 = mem[_704 + 128]
                mem[t + 128] = ceil32(_748) + 224
                _833 = mem[_829]
                mem[t + ceil32(_748) + 224] = mem[_829]
                v = 0
                while v < _833:
                    mem[t + ceil32(_748) + v + 256] = mem[_829 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_833) > _833:
                    mem[t + ceil32(_748) + _833 + 256] = 0
                mem[t + 160] = mem[_704 + 172 len 20]
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_748) + ceil32(_833) + 256
                u = u + 32
                continue 
            mem[t + _748 + 224] = 0
            mem[t + 96] = mem[_704 + 96]
            _830 = mem[_704 + 128]
            mem[t + 128] = ceil32(_748) + 224
            _836 = mem[_830]
            mem[t + ceil32(_748) + 224] = mem[_830]
            v = 0
            while v < _836:
                mem[t + ceil32(_748) + v + 256] = mem[_830 + v + 32]
                v = v + 32
                continue 
            if ceil32(_836) > _836:
                mem[t + ceil32(_748) + _836 + 256] = 0
            mem[t + 160] = mem[_704 + 172 len 20]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_748) + ceil32(_836) + 256
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_f6831f6a(?) {
    require ext_code.size(stor0)
    staticcall stor0.0x9f181b5e with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + (131 * ext_call.return_data[0]) + 224] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + (164 * ext_call.return_data[0]) + 256] = ext_call.return_data[0]
        mem[64] = ceil32(return_data.size) + (197 * ext_call.return_data[0]) + 288
        s = 0
        idx = 0
        while idx < ext_call.return_data[0]:
            _498 = mem[64]
            mem[mem[64] + 36] = s
            _505 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            mem[_505 + 32] = mem[_505 + 36 len 28] or 0x44215c600000000000000000000000000000000000000000000000000000000
            _508 = mem[_505]
            u = _505 + 32
            v = _498 + 68
            t = mem[_505]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[_498 + floor32(mem[_505]) + 68] = mem[_505 + -(mem[_505] % 32) + floor32(mem[_505]) + 64 len mem[_505] % 32] or Mask(8 * -(mem[_505] % 32) + 32, -(8 * -(mem[_505] % 32) + 32) + 256, mem[_498 + floor32(mem[_505]) + 68])
            staticcall stor0.mem[_498 + 68 len 4] with:
                    gas gas_remaining wei
                   args mem[_498 + 72 len _508 - 4]
            if not return_data.size:
                if not ext_call.success:
                    s = s + 1
                    idx = idx
                    continue 
                mem[_498 + 68] = 0x44215c600000000000000000000000000000000000000000000000000000000
                mem[_498 + 72] = s
                require ext_code.size(stor0)
                staticcall stor0.token(uint256 arg1) with:
                        gas gas_remaining wei
                       args s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_498 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _498 + ceil32(return_data.size) + 68
                require return_data.size >= 160
                _1039 = mem[_498 + 68 len 4], Mask(224, 32, s) >> 32
                _1055 = uint32(s), mem[_498 + 104 len 28]
                require uint32(s), mem[_498 + 104 len 28] <= test266151307()
                require _498 + uint32(s), mem[_498 + 104 len 28] + 99 < _498 + return_data.size + 68
                _1064 = mem[_498 + uint32(s), mem[_498 + 104 len 28] + 68]
                require mem[_498 + uint32(s), mem[_498 + 104 len 28] + 68] <= test266151307()
                require _498 + ceil32(return_data.size) + ceil32(mem[_498 + uint32(s), mem[_498 + 104 len 28] + 68]) + 100 <= test266151307() and ceil32(mem[_498 + uint32(s), mem[_498 + 104 len 28] + 68]) + 32 >= 0
                mem[64] = _498 + ceil32(return_data.size) + ceil32(mem[_498 + uint32(s), mem[_498 + 104 len 28] + 68]) + 100
                mem[_498 + ceil32(return_data.size) + 68] = _1064
                require _1055 + _1064 + 32 <= return_data.size
                t = 0
                while t < _1064:
                    mem[_498 + ceil32(return_data.size) + t + 100] = mem[_498 + _1055 + t + 100]
                    t = t + 32
                    continue 
                if ceil32(_1064) <= _1064:
                    _1474 = mem[_498 + 132]
                    _1488 = mem[_498 + 164]
                    require mem[_498 + 164] <= test266151307()
                    require _498 + mem[_498 + 164] + 99 < _498 + return_data.size + 68
                    _1509 = mem[_498 + mem[_498 + 164] + 68]
                    require mem[_498 + mem[_498 + 164] + 68] <= test266151307()
                    _1524 = mem[64]
                    require mem[64] + ceil32(mem[_498 + mem[_498 + 164] + 68]) + 32 <= test266151307() and mem[64] + ceil32(mem[_498 + mem[_498 + 164] + 68]) + 32 >= mem[64]
                    mem[64] = mem[64] + ceil32(mem[_498 + mem[_498 + 164] + 68]) + 32
                    mem[_1524] = _1509
                    require _1488 + _1509 + 32 <= return_data.size
                    t = 0
                    while t < _1509:
                        mem[_1524 + t + 32] = mem[_498 + _1488 + t + 100]
                        t = t + 32
                        continue 
                    if ceil32(_1509) <= _1509:
                        _1931 = mem[_498 + 196]
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = s
                        require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                        mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_1039)
                        require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                        mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = _498 + ceil32(return_data.size) + 68
                        require idx < mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
                        mem[(32 * idx) + ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224] = _1474
                        require idx < mem[ceil32(return_data.size) + (131 * ext_call.return_data[0]) + 224]
                        mem[(32 * idx) + ceil32(return_data.size) + (131 * ext_call.return_data[0]) + 256] = _1524
                        require idx < mem[ceil32(return_data.size) + (164 * ext_call.return_data[0]) + 256]
                        mem[(32 * idx) + ceil32(return_data.size) + (164 * ext_call.return_data[0]) + 288] = address(_1931)
                    else:
                        mem[_1524 + _1509 + 32] = 0
                        _1937 = mem[_498 + 196]
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = s
                        require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                        mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_1039)
                        require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                        mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = _498 + ceil32(return_data.size) + 68
                        require idx < mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
                        mem[(32 * idx) + ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224] = _1474
                        require idx < mem[ceil32(return_data.size) + (131 * ext_call.return_data[0]) + 224]
                        mem[(32 * idx) + ceil32(return_data.size) + (131 * ext_call.return_data[0]) + 256] = _1524
                        require idx < mem[ceil32(return_data.size) + (164 * ext_call.return_data[0]) + 256]
                        mem[(32 * idx) + ceil32(return_data.size) + (164 * ext_call.return_data[0]) + 288] = address(_1937)
                else:
                    mem[_498 + ceil32(return_data.size) + _1064 + 100] = 0
                    _1478 = mem[_498 + 132]
                    _1491 = mem[_498 + 164]
                    require mem[_498 + 164] <= test266151307()
                    require _498 + mem[_498 + 164] + 99 < _498 + return_data.size + 68
                    _1512 = mem[_498 + mem[_498 + 164] + 68]
                    require mem[_498 + mem[_498 + 164] + 68] <= test266151307()
                    _1528 = mem[64]
                    require mem[64] + ceil32(mem[_498 + mem[_498 + 164] + 68]) + 32 <= test266151307() and mem[64] + ceil32(mem[_498 + mem[_498 + 164] + 68]) + 32 >= mem[64]
                    mem[64] = mem[64] + ceil32(mem[_498 + mem[_498 + 164] + 68]) + 32
                    mem[_1528] = _1512
                    require _1491 + _1512 + 32 <= return_data.size
                    t = 0
                    while t < _1512:
                        mem[_1528 + t + 32] = mem[_498 + _1491 + t + 100]
                        t = t + 32
                        continue 
                    if ceil32(_1512) <= _1512:
                        _1932 = mem[_498 + 196]
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = s
                        require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                        mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_1039)
                        require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                        mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = _498 + ceil32(return_data.size) + 68
                        require idx < mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
                        mem[(32 * idx) + ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224] = _1478
                        require idx < mem[ceil32(return_data.size) + (131 * ext_call.return_data[0]) + 224]
                        mem[(32 * idx) + ceil32(return_data.size) + (131 * ext_call.return_data[0]) + 256] = _1528
                        require idx < mem[ceil32(return_data.size) + (164 * ext_call.return_data[0]) + 256]
                        mem[(32 * idx) + ceil32(return_data.size) + (164 * ext_call.return_data[0]) + 288] = address(_1932)
                    else:
                        mem[_1528 + _1512 + 32] = 0
                        _1938 = mem[_498 + 196]
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = s
                        require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                        mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_1039)
                        require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                        mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = _498 + ceil32(return_data.size) + 68
                        require idx < mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
                        mem[(32 * idx) + ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224] = _1478
                        require idx < mem[ceil32(return_data.size) + (131 * ext_call.return_data[0]) + 224]
                        mem[(32 * idx) + ceil32(return_data.size) + (131 * ext_call.return_data[0]) + 256] = _1528
                        require idx < mem[ceil32(return_data.size) + (164 * ext_call.return_data[0]) + 256]
                        mem[(32 * idx) + ceil32(return_data.size) + (164 * ext_call.return_data[0]) + 288] = address(_1938)
            else:
                mem[64] = _498 + ceil32(return_data.size) + 69
                mem[_498 + 68] = return_data.size
                mem[_498 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    s = s + 1
                    idx = idx
                    continue 
                mem[_498 + ceil32(return_data.size) + 69] = 0x44215c600000000000000000000000000000000000000000000000000000000
                mem[_498 + ceil32(return_data.size) + 73] = s
                require ext_code.size(stor0)
                staticcall stor0.token(uint256 arg1) with:
                        gas gas_remaining wei
                       args s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_498 + ceil32(return_data.size) + 69 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _498 + ceil32(return_data.size) + ceil32(return_data.size) + 69
                require return_data.size >= 160
                _1040 = mem[_498 + ceil32(return_data.size) + 69 len 4], Mask(224, 32, s) >> 32
                _1056 = uint32(s), mem[_498 + ceil32(return_data.size) + 105 len 28]
                require uint32(s), mem[_498 + ceil32(return_data.size) + 105 len 28] <= test266151307()
                require _498 + ceil32(return_data.size) + uint32(s), mem[_498 + ceil32(return_data.size) + 105 len 28] + 100 < _498 + ceil32(return_data.size) + return_data.size + 69
                _1065 = mem[_498 + ceil32(return_data.size) + uint32(s), mem[_498 + ceil32(return_data.size) + 105 len 28] + 69]
                require mem[_498 + ceil32(return_data.size) + uint32(s), mem[_498 + ceil32(return_data.size) + 105 len 28] + 69] <= test266151307()
                require _498 + ceil32(return_data.size) + ceil32(return_data.size) + ceil32(mem[_498 + ceil32(return_data.size) + uint32(s), mem[_498 + ceil32(return_data.size) + 105 len 28] + 69]) + 101 <= test266151307() and ceil32(mem[_498 + ceil32(return_data.size) + uint32(s), mem[_498 + ceil32(return_data.size) + 105 len 28] + 69]) + 32 >= 0
                mem[64] = _498 + ceil32(return_data.size) + ceil32(return_data.size) + ceil32(mem[_498 + ceil32(return_data.size) + uint32(s), mem[_498 + ceil32(return_data.size) + 105 len 28] + 69]) + 101
                mem[_498 + ceil32(return_data.size) + ceil32(return_data.size) + 69] = _1065
                require _1056 + _1065 + 32 <= return_data.size
                t = 0
                while t < _1065:
                    mem[_498 + ceil32(return_data.size) + ceil32(return_data.size) + t + 101] = mem[_498 + ceil32(return_data.size) + _1056 + t + 101]
                    t = t + 32
                    continue 
                if ceil32(_1065) <= _1065:
                    _1475 = mem[_498 + ceil32(return_data.size) + 133]
                    _1489 = mem[_498 + ceil32(return_data.size) + 165]
                    require mem[_498 + ceil32(return_data.size) + 165] <= test266151307()
                    require _498 + ceil32(return_data.size) + mem[_498 + ceil32(return_data.size) + 165] + 100 < _498 + ceil32(return_data.size) + return_data.size + 69
                    _1510 = mem[_498 + ceil32(return_data.size) + mem[_498 + ceil32(return_data.size) + 165] + 69]
                    require mem[_498 + ceil32(return_data.size) + mem[_498 + ceil32(return_data.size) + 165] + 69] <= test266151307()
                    _1525 = mem[64]
                    require mem[64] + ceil32(mem[_498 + ceil32(return_data.size) + mem[_498 + ceil32(return_data.size) + 165] + 69]) + 32 <= test266151307() and mem[64] + ceil32(mem[_498 + ceil32(return_data.size) + mem[_498 + ceil32(return_data.size) + 165] + 69]) + 32 >= mem[64]
                    mem[64] = mem[64] + ceil32(mem[_498 + ceil32(return_data.size) + mem[_498 + ceil32(return_data.size) + 165] + 69]) + 32
                    mem[_1525] = _1510
                    require _1489 + _1510 + 32 <= return_data.size
                    t = 0
                    while t < _1510:
                        mem[_1525 + t + 32] = mem[_498 + ceil32(return_data.size) + _1489 + t + 101]
                        t = t + 32
                        continue 
                    if ceil32(_1510) <= _1510:
                        _1933 = mem[_498 + ceil32(return_data.size) + 197]
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = s
                        require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                        mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_1040)
                        require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                        mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = _498 + ceil32(return_data.size) + ceil32(return_data.size) + 69
                        require idx < mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
                        mem[(32 * idx) + ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224] = _1475
                        require idx < mem[ceil32(return_data.size) + (131 * ext_call.return_data[0]) + 224]
                        mem[(32 * idx) + ceil32(return_data.size) + (131 * ext_call.return_data[0]) + 256] = _1525
                        require idx < mem[ceil32(return_data.size) + (164 * ext_call.return_data[0]) + 256]
                        mem[(32 * idx) + ceil32(return_data.size) + (164 * ext_call.return_data[0]) + 288] = address(_1933)
                    else:
                        mem[_1525 + _1510 + 32] = 0
                        _1939 = mem[_498 + ceil32(return_data.size) + 197]
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = s
                        require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                        mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_1040)
                        require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                        mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = _498 + ceil32(return_data.size) + ceil32(return_data.size) + 69
                        require idx < mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
                        mem[(32 * idx) + ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224] = _1475
                        require idx < mem[ceil32(return_data.size) + (131 * ext_call.return_data[0]) + 224]
                        mem[(32 * idx) + ceil32(return_data.size) + (131 * ext_call.return_data[0]) + 256] = _1525
                        require idx < mem[ceil32(return_data.size) + (164 * ext_call.return_data[0]) + 256]
                        mem[(32 * idx) + ceil32(return_data.size) + (164 * ext_call.return_data[0]) + 288] = address(_1939)
                else:
                    mem[_498 + ceil32(return_data.size) + ceil32(return_data.size) + _1065 + 101] = 0
                    _1479 = mem[_498 + ceil32(return_data.size) + 133]
                    _1492 = mem[_498 + ceil32(return_data.size) + 165]
                    require mem[_498 + ceil32(return_data.size) + 165] <= test266151307()
                    require _498 + ceil32(return_data.size) + mem[_498 + ceil32(return_data.size) + 165] + 100 < _498 + ceil32(return_data.size) + return_data.size + 69
                    _1513 = mem[_498 + ceil32(return_data.size) + mem[_498 + ceil32(return_data.size) + 165] + 69]
                    require mem[_498 + ceil32(return_data.size) + mem[_498 + ceil32(return_data.size) + 165] + 69] <= test266151307()
                    _1529 = mem[64]
                    require mem[64] + ceil32(mem[_498 + ceil32(return_data.size) + mem[_498 + ceil32(return_data.size) + 165] + 69]) + 32 <= test266151307() and mem[64] + ceil32(mem[_498 + ceil32(return_data.size) + mem[_498 + ceil32(return_data.size) + 165] + 69]) + 32 >= mem[64]
                    mem[64] = mem[64] + ceil32(mem[_498 + ceil32(return_data.size) + mem[_498 + ceil32(return_data.size) + 165] + 69]) + 32
                    mem[_1529] = _1513
                    require _1492 + _1513 + 32 <= return_data.size
                    t = 0
                    while t < _1513:
                        mem[_1529 + t + 32] = mem[_498 + ceil32(return_data.size) + _1492 + t + 101]
                        t = t + 32
                        continue 
                    if ceil32(_1513) <= _1513:
                        _1934 = mem[_498 + ceil32(return_data.size) + 197]
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = s
                        require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                        mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_1040)
                        require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                        mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = _498 + ceil32(return_data.size) + ceil32(return_data.size) + 69
                        require idx < mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
                        mem[(32 * idx) + ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224] = _1479
                        require idx < mem[ceil32(return_data.size) + (131 * ext_call.return_data[0]) + 224]
                        mem[(32 * idx) + ceil32(return_data.size) + (131 * ext_call.return_data[0]) + 256] = _1529
                        require idx < mem[ceil32(return_data.size) + (164 * ext_call.return_data[0]) + 256]
                        mem[(32 * idx) + ceil32(return_data.size) + (164 * ext_call.return_data[0]) + 288] = address(_1934)
                    else:
                        mem[_1529 + _1513 + 32] = 0
                        _1940 = mem[_498 + ceil32(return_data.size) + 197]
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = s
                        require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                        mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_1040)
                        require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                        mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = _498 + ceil32(return_data.size) + ceil32(return_data.size) + 69
                        require idx < mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
                        mem[(32 * idx) + ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224] = _1479
                        require idx < mem[ceil32(return_data.size) + (131 * ext_call.return_data[0]) + 224]
                        mem[(32 * idx) + ceil32(return_data.size) + (131 * ext_call.return_data[0]) + 256] = _1529
                        require idx < mem[ceil32(return_data.size) + (164 * ext_call.return_data[0]) + 256]
                        mem[(32 * idx) + ceil32(return_data.size) + (164 * ext_call.return_data[0]) + 288] = address(_1940)
            s = s + 1
            idx = idx + 1
            continue 
        _499 = mem[64]
        mem[mem[64]] = 192
        _504 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 192] = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 224 len 32 * _504] = mem[ceil32(return_data.size) + 128 len 32 * _504]
        mem[mem[64] + 32] = (32 * _504) + 224
        _992 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        mem[mem[64] + (32 * _504) + 224] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        idx = 0
        s = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
        t = mem[64] + (32 * _504) + 256
        while idx < _992:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_499 + 64] = (32 * _504) + (32 * _992) + 256
        _1470 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
        mem[_499 + (32 * _504) + (32 * _992) + 256] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
        idx = 0
        s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192
        t = _499 + (32 * _504) + (32 * _992) + (32 * _1470) + 288
        u = _499 + (32 * _504) + (32 * _992) + 288
        while idx < _1470:
            mem[u] = t + -_499 + -(32 * _504) + -(32 * _992) - 288
            _1902 = mem[s]
            _1922 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _1922:
                mem[t + v + 32] = mem[_1902 + v + 32]
                v = v + 32
                continue 
            if ceil32(_1922) > _1922:
                mem[t + _1922 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_1922) + 32
            u = u + 32
            continue 
        mem[_499 + 96] = t - _499
        _1923 = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
        mem[t] = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192]
        mem[t + 32 len 32 * _1923] = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 224 len 32 * _1923]
        mem[_499 + 128] = t + (32 * _1923) + -_499 + 32
        _2306 = mem[ceil32(return_data.size) + (131 * ext_call.return_data[0]) + 224]
        mem[t + (32 * _1923) + 32] = mem[ceil32(return_data.size) + (131 * ext_call.return_data[0]) + 224]
        idx = 0
        s = ceil32(return_data.size) + (131 * ext_call.return_data[0]) + 256
        u = t + (32 * _1923) + (32 * _2306) + 64
        v = t + (32 * _1923) + 64
        while idx < _2306:
            mem[v] = u + -t + -(32 * _1923) - 64
            _2557 = mem[s]
            _2570 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            t = 0
            while t < _2570:
                mem[u + t + 32] = mem[_2557 + t + 32]
                t = t + 32
                continue 
            if ceil32(_2570) > _2570:
                mem[u + _2570 + 32] = 0
            idx = idx + 1
            s = s + 32
            u = u + ceil32(_2570) + 32
            v = v + 32
            continue 
        mem[_499 + 160] = u - _499
        _2573 = mem[ceil32(return_data.size) + (164 * ext_call.return_data[0]) + 256]
        mem[u] = mem[ceil32(return_data.size) + (164 * ext_call.return_data[0]) + 256]
        idx = 0
        s = ceil32(return_data.size) + (164 * ext_call.return_data[0]) + 288
        t = u + 32
        while idx < _2573:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len u + (32 * _2573) + -mem[64] + 32
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = code.data[7040 len 32 * ext_call.return_data[0]]
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = code.data[7040 len 32 * ext_call.return_data[0]]
    mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192
    mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = 96
    s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192
    idx = ext_call.return_data[0]
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    _500 = mem[64]
    if not ext_call.return_data[0]:
        _501 = mem[64] + (32 * ext_call.return_data[0]) + 32
        mem[mem[64] + (32 * ext_call.return_data[0]) + 32] = ext_call.return_data[0]
        mem[mem[64] + (64 * ext_call.return_data[0]) + 64] = ext_call.return_data[0]
        mem[64] = mem[64] + (98 * ext_call.return_data[0]) + 96
        s = 0
        idx = 0
        while idx < ext_call.return_data[0]:
            _988 = mem[64]
            mem[mem[64] + 36] = s
            _999 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            mem[_999 + 32] = mem[_999 + 36 len 28] or 0x44215c600000000000000000000000000000000000000000000000000000000
            _1002 = mem[_999]
            u = _999 + 32
            v = mem[64]
            t = mem[_999]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[mem[64] + floor32(mem[_999])] = mem[_999 + floor32(mem[_999]) + -(mem[_999] % 32) + 64 len mem[_999] % 32] or Mask(8 * -(mem[_999] % 32) + 32, -(8 * -(mem[_999] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_999])])
            staticcall stor0.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _1002 + _988 + -mem[64] + 64]
            if not return_data.size:
                if not ext_call.success:
                    s = s + 1
                    idx = idx
                    continue 
                mem[mem[64]] = 0x44215c600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                require ext_code.size(stor0)
                staticcall stor0.token(uint256 arg1) with:
                        gas gas_remaining wei
                       args s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1515 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 160
                _1526 = mem[_1515]
                _1541 = mem[_1515 + 32]
                require mem[_1515 + 32] <= test266151307()
                require _1515 + mem[_1515 + 32] + 31 < _1515 + return_data.size
                _1554 = mem[_1515 + mem[_1515 + 32]]
                require mem[_1515 + mem[_1515 + 32]] <= test266151307()
                require _1515 + ceil32(return_data.size) + ceil32(mem[_1515 + mem[_1515 + 32]]) + 32 <= test266151307() and ceil32(mem[_1515 + mem[_1515 + 32]]) + 32 >= 0
                mem[64] = _1515 + ceil32(return_data.size) + ceil32(mem[_1515 + mem[_1515 + 32]]) + 32
                mem[_1515 + ceil32(return_data.size)] = _1554
                require _1541 + _1554 + 32 <= return_data.size
                t = 0
                while t < _1554:
                    mem[_1515 + ceil32(return_data.size) + t + 32] = mem[_1515 + _1541 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_1554) <= _1554:
                    _1935 = mem[_1515 + 64]
                    _1944 = mem[_1515 + 96]
                    require mem[_1515 + 96] <= test266151307()
                    require _1515 + mem[_1515 + 96] + 31 < _1515 + return_data.size
                    _1961 = mem[_1515 + mem[_1515 + 96]]
                    require mem[_1515 + mem[_1515 + 96]] <= test266151307()
                    _2006 = mem[64]
                    require mem[64] + ceil32(mem[_1515 + mem[_1515 + 96]]) + 32 <= test266151307() and mem[64] + ceil32(mem[_1515 + mem[_1515 + 96]]) + 32 >= mem[64]
                    mem[64] = mem[64] + ceil32(mem[_1515 + mem[_1515 + 96]]) + 32
                    mem[_2006] = _1961
                    require _1944 + _1961 + 32 <= return_data.size
                    t = 0
                    while t < _1961:
                        mem[_2006 + t + 32] = mem[_1515 + _1944 + t + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1961) <= _1961:
                        _2310 = mem[_1515 + 128]
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = s
                        require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                        mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_1526)
                        require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                        mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = _1515 + ceil32(return_data.size)
                        require idx < mem[_500]
                        mem[(32 * idx) + _500 + 32] = _1935
                        require idx < mem[_501]
                        mem[(32 * idx) + _501 + 32] = _2006
                        require idx < mem[_501 + (32 * ext_call.return_data[0]) + 32]
                        mem[(32 * idx) + _501 + (32 * ext_call.return_data[0]) + 64] = address(_2310)
                    else:
                        mem[_2006 + _1961 + 32] = 0
                        _2318 = mem[_1515 + 128]
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = s
                        require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                        mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_1526)
                        require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                        mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = _1515 + ceil32(return_data.size)
                        require idx < mem[_500]
                        mem[(32 * idx) + _500 + 32] = _1935
                        require idx < mem[_501]
                        mem[(32 * idx) + _501 + 32] = _2006
                        require idx < mem[_501 + (32 * ext_call.return_data[0]) + 32]
                        mem[(32 * idx) + _501 + (32 * ext_call.return_data[0]) + 64] = address(_2318)
                else:
                    mem[_1515 + ceil32(return_data.size) + _1554 + 32] = 0
                    _1941 = mem[_1515 + 64]
                    _1948 = mem[_1515 + 96]
                    require mem[_1515 + 96] <= test266151307()
                    require _1515 + mem[_1515 + 96] + 31 < _1515 + return_data.size
                    _1973 = mem[_1515 + mem[_1515 + 96]]
                    require mem[_1515 + mem[_1515 + 96]] <= test266151307()
                    _2020 = mem[64]
                    require mem[64] + ceil32(mem[_1515 + mem[_1515 + 96]]) + 32 <= test266151307() and mem[64] + ceil32(mem[_1515 + mem[_1515 + 96]]) + 32 >= mem[64]
                    mem[64] = mem[64] + ceil32(mem[_1515 + mem[_1515 + 96]]) + 32
                    mem[_2020] = _1973
                    require _1948 + _1973 + 32 <= return_data.size
                    t = 0
                    while t < _1973:
                        mem[_2020 + t + 32] = mem[_1515 + _1948 + t + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1973) <= _1973:
                        _2311 = mem[_1515 + 128]
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = s
                        require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                        mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_1526)
                        require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                        mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = _1515 + ceil32(return_data.size)
                        require idx < mem[_500]
                        mem[(32 * idx) + _500 + 32] = _1941
                        require idx < mem[_501]
                        mem[(32 * idx) + _501 + 32] = _2020
                        require idx < mem[_501 + (32 * ext_call.return_data[0]) + 32]
                        mem[(32 * idx) + _501 + (32 * ext_call.return_data[0]) + 64] = address(_2311)
                    else:
                        mem[_2020 + _1973 + 32] = 0
                        _2319 = mem[_1515 + 128]
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = s
                        require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                        mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_1526)
                        require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                        mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = _1515 + ceil32(return_data.size)
                        require idx < mem[_500]
                        mem[(32 * idx) + _500 + 32] = _1941
                        require idx < mem[_501]
                        mem[(32 * idx) + _501 + 32] = _2020
                        require idx < mem[_501 + (32 * ext_call.return_data[0]) + 32]
                        mem[(32 * idx) + _501 + (32 * ext_call.return_data[0]) + 64] = address(_2319)
            else:
                _1467 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1467] = return_data.size
                mem[_1467 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    s = s + 1
                    idx = idx
                    continue 
                mem[mem[64]] = 0x44215c600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                require ext_code.size(stor0)
                staticcall stor0.token(uint256 arg1) with:
                        gas gas_remaining wei
                       args s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1516 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 160
                _1527 = mem[_1516]
                _1542 = mem[_1516 + 32]
                require mem[_1516 + 32] <= test266151307()
                require _1516 + mem[_1516 + 32] + 31 < _1516 + return_data.size
                _1555 = mem[_1516 + mem[_1516 + 32]]
                require mem[_1516 + mem[_1516 + 32]] <= test266151307()
                require _1516 + ceil32(return_data.size) + ceil32(mem[_1516 + mem[_1516 + 32]]) + 32 <= test266151307() and ceil32(mem[_1516 + mem[_1516 + 32]]) + 32 >= 0
                mem[64] = _1516 + ceil32(return_data.size) + ceil32(mem[_1516 + mem[_1516 + 32]]) + 32
                mem[_1516 + ceil32(return_data.size)] = _1555
                require _1542 + _1555 + 32 <= return_data.size
                t = 0
                while t < _1555:
                    mem[_1516 + ceil32(return_data.size) + t + 32] = mem[_1516 + _1542 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_1555) <= _1555:
                    _1936 = mem[_1516 + 64]
                    _1945 = mem[_1516 + 96]
                    require mem[_1516 + 96] <= test266151307()
                    require _1516 + mem[_1516 + 96] + 31 < _1516 + return_data.size
                    _1962 = mem[_1516 + mem[_1516 + 96]]
                    require mem[_1516 + mem[_1516 + 96]] <= test266151307()
                    _2007 = mem[64]
                    require mem[64] + ceil32(mem[_1516 + mem[_1516 + 96]]) + 32 <= test266151307() and mem[64] + ceil32(mem[_1516 + mem[_1516 + 96]]) + 32 >= mem[64]
                    mem[64] = mem[64] + ceil32(mem[_1516 + mem[_1516 + 96]]) + 32
                    mem[_2007] = _1962
                    require _1945 + _1962 + 32 <= return_data.size
                    t = 0
                    while t < _1962:
                        mem[_2007 + t + 32] = mem[_1516 + _1945 + t + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1962) <= _1962:
                        _2312 = mem[_1516 + 128]
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = s
                        require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                        mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_1527)
                        require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                        mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = _1516 + ceil32(return_data.size)
                        require idx < mem[_500]
                        mem[(32 * idx) + _500 + 32] = _1936
                        require idx < mem[_501]
                        mem[(32 * idx) + _501 + 32] = _2007
                        require idx < mem[_501 + (32 * ext_call.return_data[0]) + 32]
                        mem[(32 * idx) + _501 + (32 * ext_call.return_data[0]) + 64] = address(_2312)
                    else:
                        mem[_2007 + _1962 + 32] = 0
                        _2320 = mem[_1516 + 128]
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = s
                        require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                        mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_1527)
                        require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                        mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = _1516 + ceil32(return_data.size)
                        require idx < mem[_500]
                        mem[(32 * idx) + _500 + 32] = _1936
                        require idx < mem[_501]
                        mem[(32 * idx) + _501 + 32] = _2007
                        require idx < mem[_501 + (32 * ext_call.return_data[0]) + 32]
                        mem[(32 * idx) + _501 + (32 * ext_call.return_data[0]) + 64] = address(_2320)
                else:
                    mem[_1516 + ceil32(return_data.size) + _1555 + 32] = 0
                    _1942 = mem[_1516 + 64]
                    _1949 = mem[_1516 + 96]
                    require mem[_1516 + 96] <= test266151307()
                    require _1516 + mem[_1516 + 96] + 31 < _1516 + return_data.size
                    _1974 = mem[_1516 + mem[_1516 + 96]]
                    require mem[_1516 + mem[_1516 + 96]] <= test266151307()
                    _2021 = mem[64]
                    require mem[64] + ceil32(mem[_1516 + mem[_1516 + 96]]) + 32 <= test266151307() and mem[64] + ceil32(mem[_1516 + mem[_1516 + 96]]) + 32 >= mem[64]
                    mem[64] = mem[64] + ceil32(mem[_1516 + mem[_1516 + 96]]) + 32
                    mem[_2021] = _1974
                    require _1949 + _1974 + 32 <= return_data.size
                    t = 0
                    while t < _1974:
                        mem[_2021 + t + 32] = mem[_1516 + _1949 + t + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1974) <= _1974:
                        _2313 = mem[_1516 + 128]
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = s
                        require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                        mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_1527)
                        require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                        mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = _1516 + ceil32(return_data.size)
                        require idx < mem[_500]
                        mem[(32 * idx) + _500 + 32] = _1942
                        require idx < mem[_501]
                        mem[(32 * idx) + _501 + 32] = _2021
                        require idx < mem[_501 + (32 * ext_call.return_data[0]) + 32]
                        mem[(32 * idx) + _501 + (32 * ext_call.return_data[0]) + 64] = address(_2313)
                    else:
                        mem[_2021 + _1974 + 32] = 0
                        _2321 = mem[_1516 + 128]
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = s
                        require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                        mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_1527)
                        require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                        mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = _1516 + ceil32(return_data.size)
                        require idx < mem[_500]
                        mem[(32 * idx) + _500 + 32] = _1942
                        require idx < mem[_501]
                        mem[(32 * idx) + _501 + 32] = _2021
                        require idx < mem[_501 + (32 * ext_call.return_data[0]) + 32]
                        mem[(32 * idx) + _501 + (32 * ext_call.return_data[0]) + 64] = address(_2321)
            s = s + 1
            idx = idx + 1
            continue 
        _990 = mem[64]
        mem[mem[64]] = 192
        _995 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 192] = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 224 len 32 * _995] = mem[ceil32(return_data.size) + 128 len 32 * _995]
        mem[mem[64] + 32] = (32 * _995) + 224
        _1471 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        mem[mem[64] + (32 * _995) + 224] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        idx = 0
        s = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
        t = mem[64] + (32 * _995) + 256
        while idx < _1471:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 64] = (32 * _995) + (32 * _1471) + 256
        _1924 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
        mem[mem[64] + (32 * _995) + (32 * _1471) + 256] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
        idx = 0
        s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192
        t = mem[64] + (32 * _995) + (32 * _1471) + (32 * _1924) + 288
        u = mem[64] + (32 * _995) + (32 * _1471) + 288
        while idx < _1924:
            mem[u] = t + -_990 + -(32 * _995) + -(32 * _1471) - 288
            _2294 = mem[s]
            _2305 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _2305:
                mem[t + v + 32] = mem[_2294 + v + 32]
                v = v + 32
                continue 
            if ceil32(_2305) > _2305:
                mem[t + _2305 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_2305) + 32
            u = u + 32
            continue 
        mem[_990 + 96] = t - _990
        _2307 = mem[_500]
        mem[t] = mem[_500]
        mem[t + 32 len 32 * _2307] = mem[_500 + 32 len 32 * _2307]
        mem[_990 + 128] = t + (32 * _2307) + -_990 + 32
        _2574 = mem[_501]
        mem[t + (32 * _2307) + 32] = mem[_501]
        idx = 0
        s = _501 + 32
        u = t + (32 * _2307) + (32 * _2574) + 64
        v = t + (32 * _2307) + 64
        while idx < _2574:
            mem[v] = u + -t + -(32 * _2307) - 64
            _2718 = mem[s]
            _2724 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            t = 0
            while t < _2724:
                mem[u + t + 32] = mem[_2718 + t + 32]
                t = t + 32
                continue 
            if ceil32(_2724) > _2724:
                mem[u + _2724 + 32] = 0
            idx = idx + 1
            s = s + 32
            u = u + ceil32(_2724) + 32
            v = v + 32
            continue 
        mem[_990 + 160] = u - _990
        _2725 = mem[_501 + (32 * ext_call.return_data[0]) + 32]
        mem[u] = mem[_501 + (32 * ext_call.return_data[0]) + 32]
        idx = 0
        s = _501 + (32 * ext_call.return_data[0]) + 64
        t = u + 32
        while idx < _2725:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len u + (32 * _2725) + -mem[64] + 32
    mem[mem[64] + 32 len 32 * ext_call.return_data[0]] = code.data[7040 len 32 * ext_call.return_data[0]]
    mem[mem[64] + (32 * ext_call.return_data[0]) + 32] = ext_call.return_data[0]
    mem[64] = mem[64] + (64 * ext_call.return_data[0]) + 64
    mem[_500 + (32 * ext_call.return_data[0]) + 64] = 96
    s = _500 + (32 * ext_call.return_data[0]) + 64
    idx = ext_call.return_data[0]
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    _991 = mem[64]
    mem[mem[64]] = ext_call.return_data[0]
    mem[64] = mem[64] + (32 * ext_call.return_data[0]) + 32
    if not ext_call.return_data[0]:
        s = 0
        idx = 0
        while idx < ext_call.return_data[0]:
            _1465 = mem[64]
            mem[mem[64] + 36] = s
            _1480 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            mem[_1480 + 32] = mem[_1480 + 36 len 28] or 0x44215c600000000000000000000000000000000000000000000000000000000
            _1483 = mem[_1480]
            u = _1480 + 32
            v = _1465 + 68
            t = mem[_1480]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[_1465 + floor32(mem[_1480]) + 68] = mem[_1480 + -(mem[_1480] % 32) + floor32(mem[_1480]) + 64 len mem[_1480] % 32] or Mask(8 * -(mem[_1480] % 32) + 32, -(8 * -(mem[_1480] % 32) + 32) + 256, mem[_1465 + floor32(mem[_1480]) + 68])
            staticcall stor0.mem[_1465 + 68 len 4] with:
                    gas gas_remaining wei
                   args mem[_1465 + 72 len _1483 - 4]
            if not return_data.size:
                if not ext_call.success:
                    s = s + 1
                    idx = idx
                    continue 
                mem[_1465 + 68] = 0x44215c600000000000000000000000000000000000000000000000000000000
                mem[_1465 + 72] = s
                require ext_code.size(stor0)
                staticcall stor0.token(uint256 arg1) with:
                        gas gas_remaining wei
                       args s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1465 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1465 + ceil32(return_data.size) + 68
                require return_data.size >= 160
                _2008 = mem[_1465 + 68 len 4], Mask(224, 32, s) >> 32
                _2036 = uint32(s), mem[_1465 + 104 len 28]
                require uint32(s), mem[_1465 + 104 len 28] <= test266151307()
                require _1465 + uint32(s), mem[_1465 + 104 len 28] + 99 < _1465 + return_data.size + 68
                _2047 = mem[_1465 + uint32(s), mem[_1465 + 104 len 28] + 68]
                require mem[_1465 + uint32(s), mem[_1465 + 104 len 28] + 68] <= test266151307()
                require _1465 + ceil32(return_data.size) + ceil32(mem[_1465 + uint32(s), mem[_1465 + 104 len 28] + 68]) + 100 <= test266151307() and ceil32(mem[_1465 + uint32(s), mem[_1465 + 104 len 28] + 68]) + 32 >= 0
                mem[64] = _1465 + ceil32(return_data.size) + ceil32(mem[_1465 + uint32(s), mem[_1465 + 104 len 28] + 68]) + 100
                mem[_1465 + ceil32(return_data.size) + 68] = _2047
                require _2036 + _2047 + 32 <= return_data.size
                t = 0
                while t < _2047:
                    mem[_1465 + ceil32(return_data.size) + t + 100] = mem[_1465 + _2036 + t + 100]
                    t = t + 32
                    continue 
                if ceil32(_2047) <= _2047:
                    _2314 = mem[_1465 + 132]
                    _2327 = mem[_1465 + 164]
                    require mem[_1465 + 164] <= test266151307()
                    require _1465 + mem[_1465 + 164] + 99 < _1465 + return_data.size + 68
                    _2345 = mem[_1465 + mem[_1465 + 164] + 68]
                    require mem[_1465 + mem[_1465 + 164] + 68] <= test266151307()
                    _2392 = mem[64]
                    require mem[64] + ceil32(mem[_1465 + mem[_1465 + 164] + 68]) + 32 <= test266151307() and mem[64] + ceil32(mem[_1465 + mem[_1465 + 164] + 68]) + 32 >= mem[64]
                    mem[64] = mem[64] + ceil32(mem[_1465 + mem[_1465 + 164] + 68]) + 32
                    mem[_2392] = _2345
                    require _2327 + _2345 + 32 <= return_data.size
                    t = 0
                    while t < _2345:
                        mem[_2392 + t + 32] = mem[_1465 + _2327 + t + 100]
                        t = t + 32
                        continue 
                    if ceil32(_2345) <= _2345:
                        _2577 = mem[_1465 + 196]
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = s
                        require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                        mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_2008)
                        require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                        mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = _1465 + ceil32(return_data.size) + 68
                        require idx < mem[_500]
                        mem[(32 * idx) + _500 + 32] = _2314
                        require idx < mem[_500 + (32 * ext_call.return_data[0]) + 32]
                        mem[(32 * idx) + _500 + (32 * ext_call.return_data[0]) + 64] = _2392
                        require idx < mem[_991]
                        mem[(32 * idx) + _991 + 32] = address(_2577)
                    else:
                        mem[_2392 + _2345 + 32] = 0
                        _2585 = mem[_1465 + 196]
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = s
                        require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                        mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_2008)
                        require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                        mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = _1465 + ceil32(return_data.size) + 68
                        require idx < mem[_500]
                        mem[(32 * idx) + _500 + 32] = _2314
                        require idx < mem[_500 + (32 * ext_call.return_data[0]) + 32]
                        mem[(32 * idx) + _500 + (32 * ext_call.return_data[0]) + 64] = _2392
                        require idx < mem[_991]
                        mem[(32 * idx) + _991 + 32] = address(_2585)
                else:
                    mem[_1465 + ceil32(return_data.size) + _2047 + 100] = 0
                    _2322 = mem[_1465 + 132]
                    _2334 = mem[_1465 + 164]
                    require mem[_1465 + 164] <= test266151307()
                    require _1465 + mem[_1465 + 164] + 99 < _1465 + return_data.size + 68
                    _2361 = mem[_1465 + mem[_1465 + 164] + 68]
                    require mem[_1465 + mem[_1465 + 164] + 68] <= test266151307()
                    _2405 = mem[64]
                    require mem[64] + ceil32(mem[_1465 + mem[_1465 + 164] + 68]) + 32 <= test266151307() and mem[64] + ceil32(mem[_1465 + mem[_1465 + 164] + 68]) + 32 >= mem[64]
                    mem[64] = mem[64] + ceil32(mem[_1465 + mem[_1465 + 164] + 68]) + 32
                    mem[_2405] = _2361
                    require _2334 + _2361 + 32 <= return_data.size
                    t = 0
                    while t < _2361:
                        mem[_2405 + t + 32] = mem[_1465 + _2334 + t + 100]
                        t = t + 32
                        continue 
                    if ceil32(_2361) <= _2361:
                        _2578 = mem[_1465 + 196]
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = s
                        require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                        mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_2008)
                        require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                        mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = _1465 + ceil32(return_data.size) + 68
                        require idx < mem[_500]
                        mem[(32 * idx) + _500 + 32] = _2322
                        require idx < mem[_500 + (32 * ext_call.return_data[0]) + 32]
                        mem[(32 * idx) + _500 + (32 * ext_call.return_data[0]) + 64] = _2405
                        require idx < mem[_991]
                        mem[(32 * idx) + _991 + 32] = address(_2578)
                    else:
                        mem[_2405 + _2361 + 32] = 0
                        _2586 = mem[_1465 + 196]
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = s
                        require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                        mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_2008)
                        require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                        mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = _1465 + ceil32(return_data.size) + 68
                        require idx < mem[_500]
                        mem[(32 * idx) + _500 + 32] = _2322
                        require idx < mem[_500 + (32 * ext_call.return_data[0]) + 32]
                        mem[(32 * idx) + _500 + (32 * ext_call.return_data[0]) + 64] = _2405
                        require idx < mem[_991]
                        mem[(32 * idx) + _991 + 32] = address(_2586)
            else:
                mem[64] = _1465 + ceil32(return_data.size) + 69
                mem[_1465 + 68] = return_data.size
                mem[_1465 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    s = s + 1
                    idx = idx
                    continue 
                mem[_1465 + ceil32(return_data.size) + 69] = 0x44215c600000000000000000000000000000000000000000000000000000000
                mem[_1465 + ceil32(return_data.size) + 73] = s
                require ext_code.size(stor0)
                staticcall stor0.token(uint256 arg1) with:
                        gas gas_remaining wei
                       args s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1465 + ceil32(return_data.size) + 69 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1465 + ceil32(return_data.size) + ceil32(return_data.size) + 69
                require return_data.size >= 160
                _2009 = mem[_1465 + ceil32(return_data.size) + 69 len 4], Mask(224, 32, s) >> 32
                _2037 = uint32(s), mem[_1465 + ceil32(return_data.size) + 105 len 28]
                require uint32(s), mem[_1465 + ceil32(return_data.size) + 105 len 28] <= test266151307()
                require _1465 + ceil32(return_data.size) + uint32(s), mem[_1465 + ceil32(return_data.size) + 105 len 28] + 100 < _1465 + ceil32(return_data.size) + return_data.size + 69
                _2048 = mem[_1465 + ceil32(return_data.size) + uint32(s), mem[_1465 + ceil32(return_data.size) + 105 len 28] + 69]
                require mem[_1465 + ceil32(return_data.size) + uint32(s), mem[_1465 + ceil32(return_data.size) + 105 len 28] + 69] <= test266151307()
                require _1465 + ceil32(return_data.size) + ceil32(return_data.size) + ceil32(mem[_1465 + ceil32(return_data.size) + uint32(s), mem[_1465 + ceil32(return_data.size) + 105 len 28] + 69]) + 101 <= test266151307() and ceil32(mem[_1465 + ceil32(return_data.size) + uint32(s), mem[_1465 + ceil32(return_data.size) + 105 len 28] + 69]) + 32 >= 0
                mem[64] = _1465 + ceil32(return_data.size) + ceil32(return_data.size) + ceil32(mem[_1465 + ceil32(return_data.size) + uint32(s), mem[_1465 + ceil32(return_data.size) + 105 len 28] + 69]) + 101
                mem[_1465 + ceil32(return_data.size) + ceil32(return_data.size) + 69] = _2048
                require _2037 + _2048 + 32 <= return_data.size
                t = 0
                while t < _2048:
                    mem[_1465 + ceil32(return_data.size) + ceil32(return_data.size) + t + 101] = mem[_1465 + ceil32(return_data.size) + _2037 + t + 101]
                    t = t + 32
                    continue 
                if ceil32(_2048) <= _2048:
                    _2315 = mem[_1465 + ceil32(return_data.size) + 133]
                    _2328 = mem[_1465 + ceil32(return_data.size) + 165]
                    require mem[_1465 + ceil32(return_data.size) + 165] <= test266151307()
                    require _1465 + ceil32(return_data.size) + mem[_1465 + ceil32(return_data.size) + 165] + 100 < _1465 + ceil32(return_data.size) + return_data.size + 69
                    _2346 = mem[_1465 + ceil32(return_data.size) + mem[_1465 + ceil32(return_data.size) + 165] + 69]
                    require mem[_1465 + ceil32(return_data.size) + mem[_1465 + ceil32(return_data.size) + 165] + 69] <= test266151307()
                    _2393 = mem[64]
                    require mem[64] + ceil32(mem[_1465 + ceil32(return_data.size) + mem[_1465 + ceil32(return_data.size) + 165] + 69]) + 32 <= test266151307() and mem[64] + ceil32(mem[_1465 + ceil32(return_data.size) + mem[_1465 + ceil32(return_data.size) + 165] + 69]) + 32 >= mem[64]
                    mem[64] = mem[64] + ceil32(mem[_1465 + ceil32(return_data.size) + mem[_1465 + ceil32(return_data.size) + 165] + 69]) + 32
                    mem[_2393] = _2346
                    require _2328 + _2346 + 32 <= return_data.size
                    t = 0
                    while t < _2346:
                        mem[_2393 + t + 32] = mem[_1465 + ceil32(return_data.size) + _2328 + t + 101]
                        t = t + 32
                        continue 
                    if ceil32(_2346) <= _2346:
                        _2579 = mem[_1465 + ceil32(return_data.size) + 197]
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = s
                        require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                        mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_2009)
                        require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                        mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = _1465 + ceil32(return_data.size) + ceil32(return_data.size) + 69
                        require idx < mem[_500]
                        mem[(32 * idx) + _500 + 32] = _2315
                        require idx < mem[_500 + (32 * ext_call.return_data[0]) + 32]
                        mem[(32 * idx) + _500 + (32 * ext_call.return_data[0]) + 64] = _2393
                        require idx < mem[_991]
                        mem[(32 * idx) + _991 + 32] = address(_2579)
                    else:
                        mem[_2393 + _2346 + 32] = 0
                        _2587 = mem[_1465 + ceil32(return_data.size) + 197]
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = s
                        require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                        mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_2009)
                        require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                        mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = _1465 + ceil32(return_data.size) + ceil32(return_data.size) + 69
                        require idx < mem[_500]
                        mem[(32 * idx) + _500 + 32] = _2315
                        require idx < mem[_500 + (32 * ext_call.return_data[0]) + 32]
                        mem[(32 * idx) + _500 + (32 * ext_call.return_data[0]) + 64] = _2393
                        require idx < mem[_991]
                        mem[(32 * idx) + _991 + 32] = address(_2587)
                else:
                    mem[_1465 + ceil32(return_data.size) + ceil32(return_data.size) + _2048 + 101] = 0
                    _2323 = mem[_1465 + ceil32(return_data.size) + 133]
                    _2335 = mem[_1465 + ceil32(return_data.size) + 165]
                    require mem[_1465 + ceil32(return_data.size) + 165] <= test266151307()
                    require _1465 + ceil32(return_data.size) + mem[_1465 + ceil32(return_data.size) + 165] + 100 < _1465 + ceil32(return_data.size) + return_data.size + 69
                    _2362 = mem[_1465 + ceil32(return_data.size) + mem[_1465 + ceil32(return_data.size) + 165] + 69]
                    require mem[_1465 + ceil32(return_data.size) + mem[_1465 + ceil32(return_data.size) + 165] + 69] <= test266151307()
                    _2406 = mem[64]
                    require mem[64] + ceil32(mem[_1465 + ceil32(return_data.size) + mem[_1465 + ceil32(return_data.size) + 165] + 69]) + 32 <= test266151307() and mem[64] + ceil32(mem[_1465 + ceil32(return_data.size) + mem[_1465 + ceil32(return_data.size) + 165] + 69]) + 32 >= mem[64]
                    mem[64] = mem[64] + ceil32(mem[_1465 + ceil32(return_data.size) + mem[_1465 + ceil32(return_data.size) + 165] + 69]) + 32
                    mem[_2406] = _2362
                    require _2335 + _2362 + 32 <= return_data.size
                    t = 0
                    while t < _2362:
                        mem[_2406 + t + 32] = mem[_1465 + ceil32(return_data.size) + _2335 + t + 101]
                        t = t + 32
                        continue 
                    if ceil32(_2362) <= _2362:
                        _2580 = mem[_1465 + ceil32(return_data.size) + 197]
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = s
                        require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                        mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_2009)
                        require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                        mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = _1465 + ceil32(return_data.size) + ceil32(return_data.size) + 69
                        require idx < mem[_500]
                        mem[(32 * idx) + _500 + 32] = _2323
                        require idx < mem[_500 + (32 * ext_call.return_data[0]) + 32]
                        mem[(32 * idx) + _500 + (32 * ext_call.return_data[0]) + 64] = _2406
                        require idx < mem[_991]
                        mem[(32 * idx) + _991 + 32] = address(_2580)
                    else:
                        mem[_2406 + _2362 + 32] = 0
                        _2588 = mem[_1465 + ceil32(return_data.size) + 197]
                        require idx < mem[ceil32(return_data.size) + 96]
                        mem[(32 * idx) + ceil32(return_data.size) + 128] = s
                        require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                        mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_2009)
                        require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                        mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = _1465 + ceil32(return_data.size) + ceil32(return_data.size) + 69
                        require idx < mem[_500]
                        mem[(32 * idx) + _500 + 32] = _2323
                        require idx < mem[_500 + (32 * ext_call.return_data[0]) + 32]
                        mem[(32 * idx) + _500 + (32 * ext_call.return_data[0]) + 64] = _2406
                        require idx < mem[_991]
                        mem[(32 * idx) + _991 + 32] = address(_2588)
            s = s + 1
            idx = idx + 1
            continue 
        _1468 = mem[64]
        mem[mem[64]] = 192
        _1476 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 192] = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 224 len 32 * _1476] = mem[ceil32(return_data.size) + 128 len 32 * _1476]
        mem[mem[64] + 32] = (32 * _1476) + 224
        _1925 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        mem[mem[64] + (32 * _1476) + 224] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        idx = 0
        s = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
        t = mem[64] + (32 * _1476) + 256
        while idx < _1925:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 64] = (32 * _1476) + (32 * _1925) + 256
        _2308 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
        mem[mem[64] + (32 * _1476) + (32 * _1925) + 256] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
        idx = 0
        s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192
        t = mem[64] + (32 * _1476) + (32 * _1925) + (32 * _2308) + 288
        u = mem[64] + (32 * _1476) + (32 * _1925) + 288
        while idx < _2308:
            mem[u] = t + -_1468 + -(32 * _1476) + -(32 * _1925) - 288
            _2560 = mem[s]
            _2571 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _2571:
                mem[t + v + 32] = mem[_2560 + v + 32]
                v = v + 32
                continue 
            if ceil32(_2571) > _2571:
                mem[t + _2571 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_2571) + 32
            u = u + 32
            continue 
        mem[_1468 + 96] = t - _1468
        _2575 = mem[_500]
        mem[t] = mem[_500]
        mem[t + 32 len 32 * _2575] = mem[_500 + 32 len 32 * _2575]
        mem[_1468 + 128] = t + (32 * _2575) + -_1468 + 32
        _2726 = mem[_500 + (32 * ext_call.return_data[0]) + 32]
        mem[t + (32 * _2575) + 32] = mem[_500 + (32 * ext_call.return_data[0]) + 32]
        idx = 0
        s = _500 + (32 * ext_call.return_data[0]) + 64
        u = t + (32 * _2575) + (32 * _2726) + 64
        v = t + (32 * _2575) + 64
        while idx < _2726:
            mem[v] = u + -t + -(32 * _2575) - 64
            _2745 = mem[s]
            _2748 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            t = 0
            while t < _2748:
                mem[u + t + 32] = mem[_2745 + t + 32]
                t = t + 32
                continue 
            if ceil32(_2748) > _2748:
                mem[u + _2748 + 32] = 0
            idx = idx + 1
            s = s + 32
            u = u + ceil32(_2748) + 32
            v = v + 32
            continue 
        mem[_1468 + 160] = u - _1468
        _2750 = mem[_991]
        mem[u] = mem[_991]
        idx = 0
        s = _991 + 32
        t = u + 32
        while idx < _2750:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len u + (32 * _2750) + -mem[64] + 32
    mem[_991 + 32 len 32 * ext_call.return_data[0]] = code.data[7040 len 32 * ext_call.return_data[0]]
    s = 0
    idx = 0
    while idx < ext_call.return_data[0]:
        _1466 = mem[64]
        mem[mem[64] + 36] = s
        _1484 = mem[64]
        mem[mem[64]] = 36
        mem[64] = mem[64] + 68
        mem[_1484 + 32] = mem[_1484 + 36 len 28] or 0x44215c600000000000000000000000000000000000000000000000000000000
        _1487 = mem[_1484]
        u = _1484 + 32
        v = mem[64]
        t = mem[_1484]
        while t >= 32:
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t - 32
            continue 
        mem[mem[64] + floor32(mem[_1484])] = mem[_1484 + floor32(mem[_1484]) + -(mem[_1484] % 32) + 64 len mem[_1484] % 32] or Mask(8 * -(mem[_1484] % 32) + 32, -(8 * -(mem[_1484] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1484])])
        staticcall stor0.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _1487 + _1466 + -mem[64] + 64]
        if not return_data.size:
            if not ext_call.success:
                s = s + 1
                idx = idx
                continue 
            mem[mem[64]] = 0x44215c600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            require ext_code.size(stor0)
            staticcall stor0.token(uint256 arg1) with:
                    gas gas_remaining wei
                   args s
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1979 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            _2010 = mem[_1979]
            _2039 = mem[_1979 + 32]
            require mem[_1979 + 32] <= test266151307()
            require _1979 + mem[_1979 + 32] + 31 < _1979 + return_data.size
            _2050 = mem[_1979 + mem[_1979 + 32]]
            require mem[_1979 + mem[_1979 + 32]] <= test266151307()
            require _1979 + ceil32(return_data.size) + ceil32(mem[_1979 + mem[_1979 + 32]]) + 32 <= test266151307() and ceil32(mem[_1979 + mem[_1979 + 32]]) + 32 >= 0
            mem[64] = _1979 + ceil32(return_data.size) + ceil32(mem[_1979 + mem[_1979 + 32]]) + 32
            mem[_1979 + ceil32(return_data.size)] = _2050
            require _2039 + _2050 + 32 <= return_data.size
            t = 0
            while t < _2050:
                mem[_1979 + ceil32(return_data.size) + t + 32] = mem[_1979 + _2039 + t + 32]
                t = t + 32
                continue 
            if ceil32(_2050) <= _2050:
                _2316 = mem[_1979 + 64]
                _2329 = mem[_1979 + 96]
                require mem[_1979 + 96] <= test266151307()
                require _1979 + mem[_1979 + 96] + 31 < _1979 + return_data.size
                _2348 = mem[_1979 + mem[_1979 + 96]]
                require mem[_1979 + mem[_1979 + 96]] <= test266151307()
                _2395 = mem[64]
                require mem[64] + ceil32(mem[_1979 + mem[_1979 + 96]]) + 32 <= test266151307() and mem[64] + ceil32(mem[_1979 + mem[_1979 + 96]]) + 32 >= mem[64]
                mem[64] = mem[64] + ceil32(mem[_1979 + mem[_1979 + 96]]) + 32
                mem[_2395] = _2348
                require _2329 + _2348 + 32 <= return_data.size
                t = 0
                while t < _2348:
                    mem[_2395 + t + 32] = mem[_1979 + _2329 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_2348) <= _2348:
                    _2581 = mem[_1979 + 128]
                    require idx < mem[ceil32(return_data.size) + 96]
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = s
                    require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_2010)
                    require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                    mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = _1979 + ceil32(return_data.size)
                    require idx < mem[_500]
                    mem[(32 * idx) + _500 + 32] = _2316
                    require idx < mem[_500 + (32 * ext_call.return_data[0]) + 32]
                    mem[(32 * idx) + _500 + (32 * ext_call.return_data[0]) + 64] = _2395
                    require idx < mem[_991]
                    mem[(32 * idx) + _991 + 32] = address(_2581)
                else:
                    mem[_2395 + _2348 + 32] = 0
                    _2589 = mem[_1979 + 128]
                    require idx < mem[ceil32(return_data.size) + 96]
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = s
                    require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_2010)
                    require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                    mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = _1979 + ceil32(return_data.size)
                    require idx < mem[_500]
                    mem[(32 * idx) + _500 + 32] = _2316
                    require idx < mem[_500 + (32 * ext_call.return_data[0]) + 32]
                    mem[(32 * idx) + _500 + (32 * ext_call.return_data[0]) + 64] = _2395
                    require idx < mem[_991]
                    mem[(32 * idx) + _991 + 32] = address(_2589)
            else:
                mem[_1979 + ceil32(return_data.size) + _2050 + 32] = 0
                _2324 = mem[_1979 + 64]
                _2337 = mem[_1979 + 96]
                require mem[_1979 + 96] <= test266151307()
                require _1979 + mem[_1979 + 96] + 31 < _1979 + return_data.size
                _2364 = mem[_1979 + mem[_1979 + 96]]
                require mem[_1979 + mem[_1979 + 96]] <= test266151307()
                _2407 = mem[64]
                require mem[64] + ceil32(mem[_1979 + mem[_1979 + 96]]) + 32 <= test266151307() and mem[64] + ceil32(mem[_1979 + mem[_1979 + 96]]) + 32 >= mem[64]
                mem[64] = mem[64] + ceil32(mem[_1979 + mem[_1979 + 96]]) + 32
                mem[_2407] = _2364
                require _2337 + _2364 + 32 <= return_data.size
                t = 0
                while t < _2364:
                    mem[_2407 + t + 32] = mem[_1979 + _2337 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_2364) <= _2364:
                    _2582 = mem[_1979 + 128]
                    require idx < mem[ceil32(return_data.size) + 96]
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = s
                    require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_2010)
                    require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                    mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = _1979 + ceil32(return_data.size)
                    require idx < mem[_500]
                    mem[(32 * idx) + _500 + 32] = _2324
                    require idx < mem[_500 + (32 * ext_call.return_data[0]) + 32]
                    mem[(32 * idx) + _500 + (32 * ext_call.return_data[0]) + 64] = _2407
                    require idx < mem[_991]
                    mem[(32 * idx) + _991 + 32] = address(_2582)
                else:
                    mem[_2407 + _2364 + 32] = 0
                    _2590 = mem[_1979 + 128]
                    require idx < mem[ceil32(return_data.size) + 96]
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = s
                    require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_2010)
                    require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                    mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = _1979 + ceil32(return_data.size)
                    require idx < mem[_500]
                    mem[(32 * idx) + _500 + 32] = _2324
                    require idx < mem[_500 + (32 * ext_call.return_data[0]) + 32]
                    mem[(32 * idx) + _500 + (32 * ext_call.return_data[0]) + 64] = _2407
                    require idx < mem[_991]
                    mem[(32 * idx) + _991 + 32] = address(_2590)
        else:
            _1921 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1921] = return_data.size
            mem[_1921 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                s = s + 1
                idx = idx
                continue 
            mem[mem[64]] = 0x44215c600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            require ext_code.size(stor0)
            staticcall stor0.token(uint256 arg1) with:
                    gas gas_remaining wei
                   args s
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1980 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            _2011 = mem[_1980]
            _2040 = mem[_1980 + 32]
            require mem[_1980 + 32] <= test266151307()
            require _1980 + mem[_1980 + 32] + 31 < _1980 + return_data.size
            _2051 = mem[_1980 + mem[_1980 + 32]]
            require mem[_1980 + mem[_1980 + 32]] <= test266151307()
            require _1980 + ceil32(return_data.size) + ceil32(mem[_1980 + mem[_1980 + 32]]) + 32 <= test266151307() and ceil32(mem[_1980 + mem[_1980 + 32]]) + 32 >= 0
            mem[64] = _1980 + ceil32(return_data.size) + ceil32(mem[_1980 + mem[_1980 + 32]]) + 32
            mem[_1980 + ceil32(return_data.size)] = _2051
            require _2040 + _2051 + 32 <= return_data.size
            t = 0
            while t < _2051:
                mem[_1980 + ceil32(return_data.size) + t + 32] = mem[_1980 + _2040 + t + 32]
                t = t + 32
                continue 
            if ceil32(_2051) <= _2051:
                _2317 = mem[_1980 + 64]
                _2330 = mem[_1980 + 96]
                require mem[_1980 + 96] <= test266151307()
                require _1980 + mem[_1980 + 96] + 31 < _1980 + return_data.size
                _2349 = mem[_1980 + mem[_1980 + 96]]
                require mem[_1980 + mem[_1980 + 96]] <= test266151307()
                _2396 = mem[64]
                require mem[64] + ceil32(mem[_1980 + mem[_1980 + 96]]) + 32 <= test266151307() and mem[64] + ceil32(mem[_1980 + mem[_1980 + 96]]) + 32 >= mem[64]
                mem[64] = mem[64] + ceil32(mem[_1980 + mem[_1980 + 96]]) + 32
                mem[_2396] = _2349
                require _2330 + _2349 + 32 <= return_data.size
                t = 0
                while t < _2349:
                    mem[_2396 + t + 32] = mem[_1980 + _2330 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_2349) <= _2349:
                    _2583 = mem[_1980 + 128]
                    require idx < mem[ceil32(return_data.size) + 96]
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = s
                    require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_2011)
                    require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                    mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = _1980 + ceil32(return_data.size)
                    require idx < mem[_500]
                    mem[(32 * idx) + _500 + 32] = _2317
                    require idx < mem[_500 + (32 * ext_call.return_data[0]) + 32]
                    mem[(32 * idx) + _500 + (32 * ext_call.return_data[0]) + 64] = _2396
                    require idx < mem[_991]
                    mem[(32 * idx) + _991 + 32] = address(_2583)
                else:
                    mem[_2396 + _2349 + 32] = 0
                    _2591 = mem[_1980 + 128]
                    require idx < mem[ceil32(return_data.size) + 96]
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = s
                    require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_2011)
                    require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                    mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = _1980 + ceil32(return_data.size)
                    require idx < mem[_500]
                    mem[(32 * idx) + _500 + 32] = _2317
                    require idx < mem[_500 + (32 * ext_call.return_data[0]) + 32]
                    mem[(32 * idx) + _500 + (32 * ext_call.return_data[0]) + 64] = _2396
                    require idx < mem[_991]
                    mem[(32 * idx) + _991 + 32] = address(_2591)
            else:
                mem[_1980 + ceil32(return_data.size) + _2051 + 32] = 0
                _2325 = mem[_1980 + 64]
                _2338 = mem[_1980 + 96]
                require mem[_1980 + 96] <= test266151307()
                require _1980 + mem[_1980 + 96] + 31 < _1980 + return_data.size
                _2365 = mem[_1980 + mem[_1980 + 96]]
                require mem[_1980 + mem[_1980 + 96]] <= test266151307()
                _2408 = mem[64]
                require mem[64] + ceil32(mem[_1980 + mem[_1980 + 96]]) + 32 <= test266151307() and mem[64] + ceil32(mem[_1980 + mem[_1980 + 96]]) + 32 >= mem[64]
                mem[64] = mem[64] + ceil32(mem[_1980 + mem[_1980 + 96]]) + 32
                mem[_2408] = _2365
                require _2338 + _2365 + 32 <= return_data.size
                t = 0
                while t < _2365:
                    mem[_2408 + t + 32] = mem[_1980 + _2338 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_2365) <= _2365:
                    _2584 = mem[_1980 + 128]
                    require idx < mem[ceil32(return_data.size) + 96]
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = s
                    require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_2011)
                    require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                    mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = _1980 + ceil32(return_data.size)
                    require idx < mem[_500]
                    mem[(32 * idx) + _500 + 32] = _2325
                    require idx < mem[_500 + (32 * ext_call.return_data[0]) + 32]
                    mem[(32 * idx) + _500 + (32 * ext_call.return_data[0]) + 64] = _2408
                    require idx < mem[_991]
                    mem[(32 * idx) + _991 + 32] = address(_2584)
                else:
                    mem[_2408 + _2365 + 32] = 0
                    _2592 = mem[_1980 + 128]
                    require idx < mem[ceil32(return_data.size) + 96]
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = s
                    require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = address(_2011)
                    require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                    mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = _1980 + ceil32(return_data.size)
                    require idx < mem[_500]
                    mem[(32 * idx) + _500 + 32] = _2325
                    require idx < mem[_500 + (32 * ext_call.return_data[0]) + 32]
                    mem[(32 * idx) + _500 + (32 * ext_call.return_data[0]) + 64] = _2408
                    require idx < mem[_991]
                    mem[(32 * idx) + _991 + 32] = address(_2592)
        s = s + 1
        idx = idx + 1
        continue 
    _1469 = mem[64]
    mem[mem[64]] = 192
    _1477 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 192] = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 224 len 32 * _1477] = mem[ceil32(return_data.size) + 128 len 32 * _1477]
    mem[mem[64] + 32] = (32 * _1477) + 224
    _1928 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
    mem[mem[64] + (32 * _1477) + 224] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
    idx = 0
    s = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
    t = mem[64] + (32 * _1477) + 256
    while idx < _1928:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 64] = (32 * _1477) + (32 * _1928) + 256
    _2309 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
    mem[mem[64] + (32 * _1477) + (32 * _1928) + 256] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
    idx = 0
    s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192
    t = mem[64] + (32 * _1477) + (32 * _1928) + (32 * _2309) + 288
    u = mem[64] + (32 * _1477) + (32 * _1928) + 288
    while idx < _2309:
        mem[u] = t + -_1469 + -(32 * _1477) + -(32 * _1928) - 288
        _2565 = mem[s]
        _2572 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _2572:
            mem[t + v + 32] = mem[_2565 + v + 32]
            v = v + 32
            continue 
        if ceil32(_2572) > _2572:
            mem[t + _2572 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_2572) + 32
        u = u + 32
        continue 
    mem[_1469 + 96] = t - _1469
    _2576 = mem[_500]
    mem[t] = mem[_500]
    mem[t + 32 len 32 * _2576] = mem[_500 + 32 len 32 * _2576]
    mem[_1469 + 128] = t + (32 * _2576) + -_1469 + 32
    _2727 = mem[_500 + (32 * ext_call.return_data[0]) + 32]
    mem[t + (32 * _2576) + 32] = mem[_500 + (32 * ext_call.return_data[0]) + 32]
    idx = 0
    s = _500 + (32 * ext_call.return_data[0]) + 64
    u = t + (32 * _2576) + (32 * _2727) + 64
    v = t + (32 * _2576) + 64
    while idx < _2727:
        mem[v] = u + -t + -(32 * _2576) - 64
        _2746 = mem[s]
        _2749 = mem[mem[s]]
        mem[u] = mem[mem[s]]
        t = 0
        while t < _2749:
            mem[u + t + 32] = mem[_2746 + t + 32]
            t = t + 32
            continue 
        if ceil32(_2749) > _2749:
            mem[u + _2749 + 32] = 0
        idx = idx + 1
        s = s + 32
        u = u + ceil32(_2749) + 32
        v = v + 32
        continue 
    mem[_1469 + 160] = u - _1469
    _2751 = mem[_991]
    mem[u] = mem[_991]
    idx = 0
    s = _991 + 32
    t = u + 32
    while idx < _2751:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len u + (32 * _2751) + -mem[64] + 32
}



}
