contract main {




// =====================  Runtime code  =====================


#
#  - sub_32d14a59(?)
#
uint8 version;
uint8 stor0; offset 8
address _storageAddress; offset 16
uint256 stor0; offset 8

function version() {
    return version
}

function _storage() {
    return _storageAddress
}

function _fallback() payable {
    if msg.value <= 0:
        revert with 0, 'Msg value > 0'
    emit DepositReceived(msg.sender, msg.value, this.address);
}

function sub_14568e03(?) {
    require calldata.size - 4 >= 32
    mem[353] = sha3(Mask(232, 0, Mask(80, 152, 'contract.name') >> 152, 'StablePayStorage', 0) or Mask(24, 104, 'StablePayStorage') << 104)
    require ext_code.size(_storageAddress)
    call _storageAddress.0x21f8a721 with:
         gas gas_remaining wei
        args sha3(Mask(232, 0, Mask(80, 152, 'contract.name') >> 152, 'StablePayStorage', 0) or Mask(24, 104, 'StablePayStorage') << 104)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(ext_call.return_data[12 len 20])
    call ext_call.return_data[12 len 20].0x14568e03 with:
         gas gas_remaining wei
        args arg1
    mem[ceil32(return_data.size) + 349 len 192] = ext_call.return_data[0 len 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require bool((2 * ceil32(return_data.size)) + 541 <= test266151307())
    mem[(2 * ceil32(return_data.size)) + 349] = ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 381] = ext_call.return_data[44 len 20]
    mem[(2 * ceil32(return_data.size)) + 541] = mem[(2 * ceil32(return_data.size)) + 361 len 20]
    mem[(2 * ceil32(return_data.size)) + 573] = mem[(2 * ceil32(return_data.size)) + 393 len 20]
    return mem[(2 * ceil32(return_data.size)) + 541 len 64], 
           ext_call.return_data[64],
           bool(ext_call.return_data[96]),
           bool(ext_call.return_data[128]),
           bool(ext_call.return_data[160])
}

function sub_762a2430(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 672
    mem[96] = ('cd', 4).length
    mem[128] = ('cd', 4)[0]
    mem[160] = ('cd', 4)[1]
    mem[192] = ('cd', 4)[2]
    mem[224] = ('cd', 4)[3]
    mem[256] = ('cd', 4)[4]
    mem[288] = ('cd', 4)[5]
    mem[320] = ('cd', 4)[6]
    mem[352] = ('cd', 4)[7]
    mem[384] = ('cd', 4)[8]
    mem[416] = address(('cd', 4)[9])
    mem[448] = address(('cd', 4)[10])
    mem[480] = address(('cd', 4)[11])
    mem[512] = address(('cd', 4)[12])
    mem[544] = address(('cd', 4)[13])
    mem[576] = address(('cd', 4)[14])
    mem[608] = address(('cd', 4)[15])
    require ('cd', 4)[16] <= test266151307()
    require cd[4] + ('cd', 4)[16] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[16] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + 800 <= test266151307() and ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + 800 >= 768
    mem[768] = cd[(cd[4] + ('cd', 4)[16] + 4)]
    require cd[4] + ('cd', 4)[16] + cd[(cd[4] + ('cd', 4)[16] + 4)] + 36 <= calldata.size
    mem[800 len cd[(cd[4] + ('cd', 4)[16] + 4)]] = call.data[cd[4] + ('cd', 4)[16] + 36 len cd[(cd[4] + ('cd', 4)[16] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[16] + 4)] + 800] = 0
    mem[640] = 768
    require ('cd', 4)[17] <= test266151307()
    require cd[4] + ('cd', 4)[17] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[17] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 832 <= test266151307() and ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 832 >= 800
    mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + 800] = cd[(cd[4] + ('cd', 4)[17] + 4)]
    require cd[4] + ('cd', 4)[17] + cd[(cd[4] + ('cd', 4)[17] + 4)] + 36 <= calldata.size
    mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + 832 len cd[(cd[4] + ('cd', 4)[17] + 4)]] = call.data[cd[4] + ('cd', 4)[17] + 36 len cd[(cd[4] + ('cd', 4)[17] + 4)]]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + cd[(cd[4] + ('cd', 4)[17] + 4)] + 832] = 0
    mem[672] = ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + 800
    require ('cd', 4)[18] <= test266151307()
    require cd[4] + ('cd', 4)[18] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[18] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + 864 <= test266151307() and ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + 864 >= 832
    mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 832] = cd[(cd[4] + ('cd', 4)[18] + 4)]
    require cd[4] + ('cd', 4)[18] + cd[(cd[4] + ('cd', 4)[18] + 4)] + 36 <= calldata.size
    mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 864 len cd[(cd[4] + ('cd', 4)[18] + 4)]] = call.data[cd[4] + ('cd', 4)[18] + 36 len cd[(cd[4] + ('cd', 4)[18] + 4)]]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + cd[(cd[4] + ('cd', 4)[18] + 4)] + 864] = 0
    mem[704] = ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 832
    require ('cd', 4)[19] <= test266151307()
    require cd[4] + ('cd', 4)[19] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[19] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896 <= test266151307() and ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896 >= 864
    mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + 864] = cd[(cd[4] + ('cd', 4)[19] + 4)]
    require cd[4] + ('cd', 4)[19] + cd[(cd[4] + ('cd', 4)[19] + 4)] + 36 <= calldata.size
    mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + 896 len cd[(cd[4] + ('cd', 4)[19] + 4)]] = call.data[cd[4] + ('cd', 4)[19] + 36 len cd[(cd[4] + ('cd', 4)[19] + 4)]]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + cd[(cd[4] + ('cd', 4)[19] + 4)] + 896] = 0
    mem[736] = ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + 864
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * ('cd', 36).length) + 928 <= test266151307() and (32 * ('cd', 36).length) + 928 >= 896
    mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 928
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * ('cd', 36).length) + 928] = 12
    mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * ('cd', 36).length) + 960] = 'state.paused'
    mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * ('cd', 36).length) + 1024 len 0] = None
    mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * ('cd', 36).length) + 992] = 12
    mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * ('cd', 36).length) + 1036 len 0] = None
    _395 = sha3(mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * ('cd', 36).length) + 1036 len 8], Mask(32, 64, 'state.paused') >> 64)
    mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * ('cd', 36).length) + 1040] = sha3(mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * ('cd', 36).length) + 1036 len 8], Mask(32, 64, 'state.paused') >> 64)
    require ext_code.size(_storageAddress)
    call _storageAddress.0x7ae1cfca with:
         gas gas_remaining wei
        args _395
    mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * ('cd', 36).length) + 1036] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Platform is paused.'
    if uint8(stor0.field_8):
        revert with 0, 'rentrancy_lock'
    Mask(248, 0, stor0.field_8) = 1
    mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 1068] = 'contract.name'
    mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 1081] = 'Settings'
    mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 1036] = 21
    mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 1089 len 0] = None
    mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 1093] = sha3(Mask(88, 104, 'Settings') >> 104, Mask(80, 88, Mask(16, 152, 'contract.name') >> 152, 'Settings', 0) >> 88)
    require ext_code.size(_storageAddress)
    call _storageAddress.0x21f8a721 with:
         gas gas_remaining wei
        args sha3(Mask(88, 104, 'Settings') >> 104, Mask(80, 88, Mask(16, 152, 'contract.name') >> 152, 'Settings', 0) >> 88)
    mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 1089] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(ext_call.return_data[12 len 20])
    call ext_call.return_data[12 len 20].0x6fb1d79e with:
         gas gas_remaining wei
        args address(('cd', 4)[10])
    mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 1089 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 1089
    require return_data.size >= 96
    if not ext_call.return_data[0]:
        revert with 0, 'Token address is not available.'
    if ('cd', 4)[0] < ext_call.return_data[32]:
        revert with 0, 'Amount >= min amount.'
    if ('cd', 4)[0] > ext_call.return_data[64]:
        revert with 0, 'Amount <= max amount.'
    if ('cd', 4).length <= 0:
        revert with 0, 'Source amount > 0.'
    if ('cd', 4)[0] <= 0:
        revert with 0, 'Target amount > 0.'
    if uint64(('cd', 4)[9]) << 96 != uint64(('cd', 4)[10]) << 96:
        if Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + cd[(cd[4] + ('cd', 4)[19] + 4)] + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + cd[(cd[4] + ('cd', 4)[19] + 4)] + 928 len -cd[(cd[4] + ('cd', 4)[19] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)])] <= 0:
            revert with 0, 'Provider keys must not be empty.'
        _729 = Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + cd[(cd[4] + ('cd', 4)[19] + 4)] + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + cd[(cd[4] + ('cd', 4)[19] + 4)] + 928 len -cd[(cd[4] + ('cd', 4)[19] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)])]
        s = 0
        idx = 0
        while idx < _729:
            require idx < mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
            _734 = mem[(32 * idx) + ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 928]
            _737 = mem[64]
            mem[64] = mem[64] + 192
            mem[_737] = 0
            mem[_737 + 32] = 0
            mem[_737 + 64] = 0
            mem[_737 + 96] = 0
            mem[_737 + 128] = 0
            mem[_737 + 160] = 0
            _740 = mem[64]
            mem[mem[64] + 32] = 'contract.name'
            mem[mem[64] + 45] = 'StablePayStorage'
            _741 = mem[64]
            mem[mem[64]] = 29
            mem[64] = mem[64] + 61
            _743 = mem[_741]
            t = _741 + 32
            u = mem[64]
            s = mem[_741]
            while s >= 32:
                mem[u] = mem[t]
                _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_741])] = mem[_741 + floor32(mem[_741]) + -(mem[_741] % 32) + 64 len mem[_741] % 32] or Mask(8 * -(mem[_741] % 32) + 32, -(8 * -(mem[_741] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_741])])
            _892 = sha3(mem[mem[64] len _743 + _740 + -mem[64] + 61])
            mem[mem[64] + 4] = sha3(mem[mem[64] len _743 + _740 + -mem[64] + 61])
            require ext_code.size(_storageAddress)
            call _storageAddress.0x21f8a721 with:
                 gas gas_remaining wei
                args _892
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _903 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _905 = mem[_903]
            mem[mem[64] + 4] = _734
            require ext_code.size(address(_905))
            call address(_905).0x6bde137b with:
                 gas gas_remaining wei
                args _734
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _911 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_911]:
                require idx + 1 >= idx
                _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                s = _734
                idx = idx + 1
                continue 
            _915 = mem[96]
            _916 = mem[416]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            require ext_code.size(address(_916))
            call address(_916).0xdd62ed3e with:
                 gas gas_remaining wei
                args msg.sender, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _923 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_923] < _915:
                revert with 0, 'Not enough allowed tokens to StablePay.'
            _929 = mem[64]
            mem[64] = mem[64] + 192
            mem[_929] = 0
            mem[_929 + 32] = 0
            mem[_929 + 64] = 0
            mem[_929 + 96] = 0
            mem[_929 + 128] = 0
            mem[_929 + 160] = 0
            _931 = mem[64]
            mem[mem[64] + 32] = 'contract.name'
            mem[mem[64] + 45] = 'StablePayStorage'
            _932 = mem[64]
            mem[mem[64]] = 29
            mem[64] = mem[64] + 61
            _934 = mem[_932]
            t = _932 + 32
            u = mem[64]
            s = mem[_932]
            while s >= 32:
                mem[u] = mem[t]
                _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_932])] = mem[_932 + floor32(mem[_932]) + -(mem[_932] % 32) + 64 len mem[_932] % 32] or Mask(8 * -(mem[_932] % 32) + 32, -(8 * -(mem[_932] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_932])])
            _1036 = sha3(mem[mem[64] len _934 + _931 + -mem[64] + 61])
            mem[mem[64] + 4] = sha3(mem[mem[64] len _934 + _931 + -mem[64] + 61])
            require ext_code.size(_storageAddress)
            call _storageAddress.0x21f8a721 with:
                 gas gas_remaining wei
                args _1036
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1047 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require ext_code.size(mem[_1047 + 12 len 20])
            call mem[_1047 + 12 len 20].0x14568e03 with:
                 gas gas_remaining wei
                args _734
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1055 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _1057 = mem[64]
            require mem[64] + 192 <= test266151307() and mem[64] + 192 >= mem[64]
            mem[64] = mem[64] + 192
            mem[_1057] = mem[_1055 + 12 len 20]
            mem[_1057 + 32] = mem[_1055 + 44 len 20]
            mem[_1057 + 64] = mem[_1055 + 64]
            mem[_1057 + 96] = bool(mem[_1055 + 96])
            mem[_1057 + 128] = bool(mem[_1055 + 128])
            mem[_1057 + 160] = bool(mem[_1055 + 160])
            _1071 = mem[416]
            _1072 = mem[_1057]
            _1073 = mem[96]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = address(_1072)
            mem[mem[64] + 68] = _1073
            require ext_code.size(address(_1071))
            call address(_1071).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(_1072), _1073
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1081 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_1081]:
                revert with 0, 'Transfer from StablePay was not successful.'
            _1085 = mem[448]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_1085))
            call address(_1085).0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1095 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1097 = mem[_1095]
            _1099 = mem[_1057]
            _1100 = mem[64]
            mem[mem[64]] = 0xc811610000000000000000000000000000000000000000000000000000000 * 3600
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[96]
            mem[mem[64] + 68] = mem[128]
            mem[mem[64] + 100] = mem[160]
            mem[mem[64] + 132] = mem[192]
            mem[mem[64] + 164] = mem[224]
            mem[mem[64] + 196] = mem[256]
            mem[mem[64] + 228] = mem[288]
            mem[mem[64] + 260] = mem[320]
            mem[mem[64] + 292] = mem[352]
            mem[mem[64] + 324] = mem[384]
            mem[mem[64] + 356] = mem[428 len 20]
            mem[mem[64] + 388] = mem[460 len 20]
            mem[mem[64] + 420] = mem[492 len 20]
            mem[mem[64] + 452] = mem[524 len 20]
            mem[mem[64] + 484] = mem[556 len 20]
            mem[mem[64] + 516] = mem[588 len 20]
            mem[mem[64] + 548] = mem[620 len 20]
            _1137 = mem[640]
            mem[mem[64] + 580] = 672
            _1139 = mem[mem[640]]
            mem[mem[64] + 708] = mem[mem[640]]
            s = 0
            while s < _1139:
                mem[mem[64] + s + 740] = mem[_1137 + s + 32]
                _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                s = s + 32
                continue 
            if ceil32(_1139) <= _1139:
                _1181 = mem[672]
                mem[_1100 + 612] = ceil32(_1139) + 704
                _1185 = mem[_1181]
                mem[_1100 + ceil32(_1139) + 740] = mem[_1181]
                s = 0
                while s < _1185:
                    mem[_1100 + ceil32(_1139) + s + 772] = mem[_1181 + s + 32]
                    _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                    s = s + 32
                    continue 
                if ceil32(_1185) <= _1185:
                    _4925 = mem[704]
                    mem[_1100 + 644] = ceil32(_1139) + ceil32(_1185) + 736
                    _4933 = mem[_4925]
                    mem[_1100 + ceil32(_1139) + ceil32(_1185) + 772] = mem[_4925]
                    s = 0
                    while s < _4933:
                        mem[_1100 + ceil32(_1139) + ceil32(_1185) + s + 804] = mem[_4925 + s + 32]
                        _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                        s = s + 32
                        continue 
                    if ceil32(_4933) <= _4933:
                        _8957 = mem[736]
                        mem[_1100 + 676] = ceil32(_1139) + ceil32(_1185) + ceil32(_4933) + 768
                        _8973 = mem[_8957]
                        mem[_1100 + ceil32(_1139) + ceil32(_1185) + ceil32(_4933) + 804] = mem[_8957]
                        s = 0
                        while s < _8973:
                            mem[_1100 + ceil32(_1139) + ceil32(_1185) + ceil32(_4933) + s + 836] = mem[_8957 + s + 32]
                            _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                            s = s + 32
                            continue 
                        if ceil32(_8973) <= _8973:
                            require ext_code.size(address(_1099))
                            call address(_1099).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1100 + ceil32(_1139) + ceil32(_1185) + ceil32(_4933) + ceil32(_8973) + -mem[64] + 832]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13637 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_13637]:
                                _13701 = mem[_1057]
                                mem[mem[64]] = _734
                                emit 0x6230081d: _734, this.address, address(_13701)
                                require idx + 1 >= idx
                                _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = _734
                                idx = idx + 1
                                continue 
                            _13702 = mem[416]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_13702))
                            call address(_13702).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13877 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _13925 = mem[_13877]
                            _13957 = mem[416]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _13925
                            require ext_code.size(address(_13957))
                            call address(_13957).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _13925
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14053 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_14053]:
                                revert with 0, 'Transfer to customer failed.'
                            _14117 = mem[448]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_14117))
                            call address(_14117).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14277 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _14309 = mem[_14277]
                            require _1097 <= mem[_14277]
                            if mem[_14277] - _1097 != mem[128]:
                                revert with 0, 'StablePay target balance is not valid.'
                            _14405 = mem[64]
                            mem[mem[64] + 32] = 'contract.name'
                            mem[mem[64] + 45] = 'Settings'
                            _14406 = mem[64]
                            mem[mem[64]] = 21
                            mem[64] = mem[64] + 53
                            _14408 = mem[_14406]
                            s = _14406 + 32
                            t = _14405 + 53
                            idx = mem[_14406]
                            while idx >= 32:
                                mem[t] = mem[s]
                                _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[_14405 + floor32(mem[_14406]) + 53] = mem[_14406 + -(mem[_14406] % 32) + floor32(mem[_14406]) + 64 len mem[_14406] % 32] or Mask(8 * -(mem[_14406] % 32) + 32, -(8 * -(mem[_14406] % 32) + 32) + 256, mem[_14405 + floor32(mem[_14406]) + 53])
                            _18216 = sha3(mem[_14405 + 53 len _14408])
                            mem[_14405 + 57] = sha3(mem[_14405 + 53 len _14408])
                            require ext_code.size(_storageAddress)
                            call _storageAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args _18216
                            mem[_14405 + 53] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x6ea8bc10 with:
                                 gas gas_remaining wei
                            mem[_14405 + ceil32(return_data.size) + 53] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _14405 + (2 * ceil32(return_data.size)) + 53
                            require return_data.size >= 32
                            if not ext_call.return_data[30 len 2]:
                                _18693 = mem[128]
                                _18694 = mem[448]
                                mem[_14405 + (2 * ceil32(return_data.size)) + 85] = 'contract.name'
                                mem[_14405 + (2 * ceil32(return_data.size)) + 98] = 'Vault'
                                mem[_14405 + (2 * ceil32(return_data.size)) + 53] = 18
                                mem[64] = _14405 + (2 * ceil32(return_data.size)) + 103
                                s = _14405 + (2 * ceil32(return_data.size)) + 85
                                t = _14405 + (2 * ceil32(return_data.size)) + 103
                                idx = 18
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[_14405 + (2 * ceil32(return_data.size)) + 103] = mem[_14405 + (2 * ceil32(return_data.size)) + 99 len 18] or Mask(112, 144, mem[_14405 + (2 * ceil32(return_data.size)) + 103])
                                _22452 = sha3(mem[_14405 + (2 * ceil32(return_data.size)) + 103 len 18])
                                mem[_14405 + (2 * ceil32(return_data.size)) + 107] = sha3(mem[_14405 + (2 * ceil32(return_data.size)) + 103 len 18])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22452
                                mem[_14405 + (2 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_14405 + (4 * ceil32(return_data.size)) + 107] = address(ext_call.return_data[0])
                                mem[_14405 + (4 * ceil32(return_data.size)) + 139] = 0
                                require ext_code.size(address(_18694))
                                call address(_18694).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[_14405 + (4 * ceil32(return_data.size)) + 107 len (5 * ceil32(return_data.size)) + 64]
                                mem[_14405 + (4 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    mem[_14405 + (4 * ceil32(return_data.size)) + 103] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14405 + (4 * ceil32(return_data.size)) + 107] = 32
                                    mem[_14405 + (4 * ceil32(return_data.size)) + 139] = 37
                                    mem[_14405 + (4 * ceil32(return_data.size)) + 171] = 'Tokens transfer to vault was inv'
                                    mem[_14405 + (4 * ceil32(return_data.size)) + 203] = 'alid.'
                                    revert with memory
                                      from _14405 + (4 * ceil32(return_data.size)) + 103
                                       len (7 * ceil32(return_data.size)) + 132
                                _23787 = mem[448]
                                mem[_14405 + (4 * ceil32(return_data.size)) + 107] = mem[492 len 20]
                                mem[_14405 + (4 * ceil32(return_data.size)) + 139] = _18693
                                require ext_code.size(address(_23787))
                                call address(_23787).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[_14405 + (4 * ceil32(return_data.size)) + 107 len (7 * ceil32(return_data.size)) + 64]
                                mem[_14405 + (4 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14405 + (8 * ceil32(return_data.size)) + 103
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    mem[_14405 + (8 * ceil32(return_data.size)) + 103] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14405 + (8 * ceil32(return_data.size)) + 107] = 32
                                    mem[_14405 + (8 * ceil32(return_data.size)) + 139] = 28
                                    mem[_14405 + (8 * ceil32(return_data.size)) + 171] = 'Transfer to merchant failed.'
                                    revert with memory
                                      from _14405 + (8 * ceil32(return_data.size)) + 103
                                       len (13 * ceil32(return_data.size)) + 100
                                _24558 = mem[416]
                                _24559 = mem[448]
                                mem[_14405 + (8 * ceil32(return_data.size)) + 103] = mem[492 len 20]
                                mem[_14405 + (8 * ceil32(return_data.size)) + 135] = msg.sender
                                mem[_14405 + (8 * ceil32(return_data.size)) + 167] = address(_24558)
                                mem[_14405 + (8 * ceil32(return_data.size)) + 199] = address(_24559)
                                mem[_14405 + (8 * ceil32(return_data.size)) + 231] = _14309 - _1097
                                emit 0xdcc9f547: mem[_14405 + (8 * ceil32(return_data.size)) + 103 len (13 * ceil32(return_data.size)) + 160], this.address
                                _25127 = mem[_1057]
                                mem[_14405 + (8 * ceil32(return_data.size)) + 103] = _734
                                emit 0xc195856d: mem[_14405 + (8 * ceil32(return_data.size)) + 103 len (13 * ceil32(return_data.size)) + 32], this.address, address(_25127)
                                Mask(248, 0, stor0.field_8) = 0
                                mem[_14405 + (8 * ceil32(return_data.size)) + 103] = 1
                                return memory
                                  from _14405 + (8 * ceil32(return_data.size)) + 103
                                   len (13 * ceil32(return_data.size)) + 32
                            require ext_call.return_data[30 len 2]
                            require 10^14 * ext_call.return_data[30 len 2] / ext_call.return_data[30 len 2] == 10^14
                            _18661 = mem[128]
                            if 10^14 * ext_call.return_data[30 len 2] / 100:
                                require 10^14 * ext_call.return_data[30 len 2] / 100
                                require 10^14 * ext_call.return_data[30 len 2] / 100 * mem[128] / 10^14 * ext_call.return_data[30 len 2] / 100 == mem[128]
                                _18949 = mem[128]
                                _18950 = mem[448]
                                mem[_14405 + (2 * ceil32(return_data.size)) + 85] = 'contract.name'
                                mem[_14405 + (2 * ceil32(return_data.size)) + 98] = 'Vault'
                                mem[_14405 + (2 * ceil32(return_data.size)) + 53] = 18
                                mem[64] = _14405 + (2 * ceil32(return_data.size)) + 103
                                s = _14405 + (2 * ceil32(return_data.size)) + 85
                                t = _14405 + (2 * ceil32(return_data.size)) + 103
                                idx = 18
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[_14405 + (2 * ceil32(return_data.size)) + 103] = mem[_14405 + (2 * ceil32(return_data.size)) + 99 len 18] or Mask(112, 144, mem[_14405 + (2 * ceil32(return_data.size)) + 103])
                                _22440 = sha3(mem[_14405 + (2 * ceil32(return_data.size)) + 103 len 18])
                                mem[_14405 + (2 * ceil32(return_data.size)) + 107] = sha3(mem[_14405 + (2 * ceil32(return_data.size)) + 103 len 18])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22440
                                mem[_14405 + (2 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_14405 + (4 * ceil32(return_data.size)) + 107] = address(ext_call.return_data[0])
                                mem[_14405 + (4 * ceil32(return_data.size)) + 139] = 10^14 * uint16(ext_call.return_data[0]) / 100 * _18661 / 100 / 10^14
                                require ext_code.size(address(_18950))
                                call address(_18950).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[_14405 + (4 * ceil32(return_data.size)) + 107 len (5 * ceil32(return_data.size)) + 64]
                                mem[_14405 + (4 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    mem[_14405 + (4 * ceil32(return_data.size)) + 103] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14405 + (4 * ceil32(return_data.size)) + 107] = 32
                                    mem[_14405 + (4 * ceil32(return_data.size)) + 139] = 37
                                    mem[_14405 + (4 * ceil32(return_data.size)) + 171] = 'Tokens transfer to vault was inv'
                                    mem[_14405 + (4 * ceil32(return_data.size)) + 203] = 'alid.'
                                    revert with memory
                                      from _14405 + (4 * ceil32(return_data.size)) + 103
                                       len (7 * ceil32(return_data.size)) + 132
                                _23781 = mem[448]
                                mem[_14405 + (4 * ceil32(return_data.size)) + 107] = mem[492 len 20]
                                mem[_14405 + (4 * ceil32(return_data.size)) + 139] = _18949 - (10^14 * uint16(ext_call.return_data[0]) / 100 * _18661 / 100 / 10^14)
                                require ext_code.size(address(_23781))
                                call address(_23781).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[_14405 + (4 * ceil32(return_data.size)) + 107 len (7 * ceil32(return_data.size)) + 64]
                                mem[_14405 + (4 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14405 + (8 * ceil32(return_data.size)) + 103
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    mem[_14405 + (8 * ceil32(return_data.size)) + 103] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14405 + (8 * ceil32(return_data.size)) + 107] = 32
                                    mem[_14405 + (8 * ceil32(return_data.size)) + 139] = 28
                                    mem[_14405 + (8 * ceil32(return_data.size)) + 171] = 'Transfer to merchant failed.'
                                    revert with memory
                                      from _14405 + (8 * ceil32(return_data.size)) + 103
                                       len (13 * ceil32(return_data.size)) + 100
                                _24550 = mem[416]
                                _24551 = mem[448]
                                mem[_14405 + (8 * ceil32(return_data.size)) + 103] = mem[492 len 20]
                                mem[_14405 + (8 * ceil32(return_data.size)) + 135] = msg.sender
                                mem[_14405 + (8 * ceil32(return_data.size)) + 167] = address(_24550)
                                mem[_14405 + (8 * ceil32(return_data.size)) + 199] = address(_24551)
                                mem[_14405 + (8 * ceil32(return_data.size)) + 231] = _14309 - _1097
                                emit 0xdcc9f547: mem[_14405 + (8 * ceil32(return_data.size)) + 103 len (13 * ceil32(return_data.size)) + 160], this.address
                                _25125 = mem[_1057]
                                mem[_14405 + (8 * ceil32(return_data.size)) + 103] = _734
                                emit 0xc195856d: mem[_14405 + (8 * ceil32(return_data.size)) + 103 len (13 * ceil32(return_data.size)) + 32], this.address, address(_25125)
                                Mask(248, 0, stor0.field_8) = 0
                                mem[_14405 + (8 * ceil32(return_data.size)) + 103] = 1
                                return memory
                                  from _14405 + (8 * ceil32(return_data.size)) + 103
                                   len (13 * ceil32(return_data.size)) + 32
                            _18757 = mem[128]
                            _18758 = mem[448]
                            mem[_14405 + (2 * ceil32(return_data.size)) + 85] = 'contract.name'
                            mem[_14405 + (2 * ceil32(return_data.size)) + 98] = 'Vault'
                            mem[_14405 + (2 * ceil32(return_data.size)) + 53] = 18
                            mem[64] = _14405 + (2 * ceil32(return_data.size)) + 103
                            s = _14405 + (2 * ceil32(return_data.size)) + 85
                            t = mem[64]
                            idx = mem[_14405 + (2 * ceil32(return_data.size)) + 53]
                            while idx >= 32:
                                mem[t] = mem[s]
                                _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[mem[64] + floor32(mem[_14405 + (2 * ceil32(return_data.size)) + 53])] = mem[_14405 + (2 * ceil32(return_data.size)) + floor32(mem[_14405 + (2 * ceil32(return_data.size)) + 53]) + -(mem[_14405 + (2 * ceil32(return_data.size)) + 53] % 32) + 117 len mem[_14405 + (2 * ceil32(return_data.size)) + 53] % 32] or Mask(8 * -(mem[_14405 + (2 * ceil32(return_data.size)) + 53] % 32) + 32, -(8 * -(mem[_14405 + (2 * ceil32(return_data.size)) + 53] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_14405 + (2 * ceil32(return_data.size)) + 53])])
                            _22446 = sha3(mem[mem[64] len _14405 + (2 * ceil32(return_data.size)) + -mem[64] + 121])
                            mem[mem[64] + 4] = sha3(mem[mem[64] len _14405 + (2 * ceil32(return_data.size)) + -mem[64] + 121])
                            require ext_code.size(_storageAddress)
                            call _storageAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args _22446
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _23110 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[mem[64] + 4] = mem[_23110 + 12 len 20]
                            mem[mem[64] + 36] = 0
                            require ext_code.size(address(_18758))
                            call address(_18758).0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _23494 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_23494]:
                                revert with 0, 'Tokens transfer to vault was invalid.'
                            _23784 = mem[448]
                            mem[mem[64] + 4] = mem[492 len 20]
                            mem[mem[64] + 36] = _18757
                            require ext_code.size(address(_23784))
                            call address(_23784).0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _18757
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _24262 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_24262]:
                                revert with 0, 'Transfer to merchant failed.'
                            _24554 = mem[416]
                            _24555 = mem[448]
                            mem[mem[64]] = mem[492 len 20]
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = address(_24554)
                            mem[mem[64] + 96] = address(_24555)
                            mem[mem[64] + 128] = _14309 - _1097
                            emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24554), address(_24555), _14309 - _1097, this.address
                        else:
                            mem[_1100 + ceil32(_1139) + ceil32(_1185) + ceil32(_4933) + _8973 + 836] = 0
                            require ext_code.size(address(_1099))
                            call address(_1099).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1100 + ceil32(_1139) + ceil32(_1185) + ceil32(_4933) + ceil32(_8973) + -mem[64] + 832]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13653 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_13653]:
                                _13750 = mem[_1057]
                                mem[mem[64]] = _734
                                emit 0x6230081d: _734, this.address, address(_13750)
                                require idx + 1 >= idx
                                _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = _734
                                idx = idx + 1
                                continue 
                            _13751 = mem[416]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_13751))
                            call address(_13751).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13909 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _13941 = mem[_13909]
                            _13989 = mem[416]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _13941
                            require ext_code.size(address(_13989))
                            call address(_13989).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _13941
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14069 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_14069]:
                                revert with 0, 'Transfer to customer failed.'
                            _14165 = mem[448]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_14165))
                            call address(_14165).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14293 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _14325 = mem[_14293]
                            require _1097 <= mem[_14293]
                            if mem[_14293] - _1097 != mem[128]:
                                revert with 0, 'StablePay target balance is not valid.'
                            _14469 = mem[64]
                            mem[mem[64] + 32] = 'contract.name'
                            mem[mem[64] + 45] = 'Settings'
                            _14470 = mem[64]
                            mem[mem[64]] = 21
                            mem[64] = mem[64] + 53
                            _14472 = mem[_14470]
                            s = _14470 + 32
                            t = mem[64]
                            idx = mem[_14470]
                            while idx >= 32:
                                mem[t] = mem[s]
                                _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[mem[64] + floor32(mem[_14470])] = mem[_14470 + floor32(mem[_14470]) + -(mem[_14470] % 32) + 64 len mem[_14470] % 32] or Mask(8 * -(mem[_14470] % 32) + 32, -(8 * -(mem[_14470] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_14470])])
                            _18222 = sha3(mem[mem[64] len _14472 + _14469 + -mem[64] + 53])
                            mem[mem[64] + 4] = sha3(mem[mem[64] len _14472 + _14469 + -mem[64] + 53])
                            require ext_code.size(_storageAddress)
                            call _storageAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args _18222
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18438 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(mem[_18438 + 12 len 20])
                            call mem[_18438 + 12 len 20].0x6ea8bc10 with:
                                 gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18566 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _18598 = mem[_18566]
                            if not mem[_18566 + 30 len 2]:
                                _18695 = mem[128]
                                _18696 = mem[448]
                                _18765 = mem[64]
                                mem[mem[64] + 32] = 'contract.name'
                                mem[mem[64] + 45] = 'Vault'
                                _18766 = mem[64]
                                mem[mem[64]] = 18
                                mem[64] = mem[64] + 50
                                _18768 = mem[_18766]
                                s = _18766 + 32
                                t = mem[64]
                                idx = mem[_18766]
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_18766])] = mem[_18766 + floor32(mem[_18766]) + -(mem[_18766] % 32) + 64 len mem[_18766] % 32] or Mask(8 * -(mem[_18766] % 32) + 32, -(8 * -(mem[_18766] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_18766])])
                                _22470 = sha3(mem[mem[64] len _18768 + _18765 + -mem[64] + 50])
                                mem[mem[64] + 4] = sha3(mem[mem[64] len _18768 + _18765 + -mem[64] + 50])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22470
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23114 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64] + 4] = mem[_23114 + 12 len 20]
                                mem[mem[64] + 36] = 0
                                require ext_code.size(address(_18696))
                                call address(_18696).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23498 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_23498]:
                                    revert with 0, 'Tokens transfer to vault was invalid.'
                                _23796 = mem[448]
                                mem[mem[64] + 4] = mem[492 len 20]
                                mem[mem[64] + 36] = _18695
                                require ext_code.size(address(_23796))
                                call address(_23796).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _18695
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _24266 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_24266]:
                                    revert with 0, 'Transfer to merchant failed.'
                                _24570 = mem[416]
                                _24571 = mem[448]
                                mem[mem[64]] = mem[492 len 20]
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = address(_24570)
                                mem[mem[64] + 96] = address(_24571)
                                mem[mem[64] + 128] = _14325 - _1097
                                emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24570), address(_24571), _14325 - _1097, this.address
                            else:
                                require mem[_18566 + 30 len 2]
                                require 10^14 * mem[_18566 + 30 len 2] / mem[_18566 + 30 len 2] == 10^14
                                _18662 = mem[128]
                                if not 10^14 * mem[_18566 + 30 len 2] / 100:
                                    _18763 = mem[128]
                                    _18764 = mem[448]
                                    _18963 = mem[64]
                                    mem[mem[64] + 32] = 'contract.name'
                                    mem[mem[64] + 45] = 'Vault'
                                    _18964 = mem[64]
                                    mem[mem[64]] = 18
                                    mem[64] = mem[64] + 50
                                    _18966 = mem[_18964]
                                    s = _18964 + 32
                                    t = mem[64]
                                    idx = mem[_18964]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_18964])] = mem[_18964 + floor32(mem[_18964]) + -(mem[_18964] % 32) + 64 len mem[_18964] % 32] or Mask(8 * -(mem[_18964] % 32) + 32, -(8 * -(mem[_18964] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_18964])])
                                    _22464 = sha3(mem[mem[64] len _18966 + _18963 + -mem[64] + 50])
                                    mem[mem[64] + 4] = sha3(mem[mem[64] len _18966 + _18963 + -mem[64] + 50])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22464
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23113 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = mem[_23113 + 12 len 20]
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(address(_18764))
                                    call address(_18764).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23497 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_23497]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _23793 = mem[448]
                                    mem[mem[64] + 4] = mem[492 len 20]
                                    mem[mem[64] + 36] = _18763
                                    require ext_code.size(address(_23793))
                                    call address(_23793).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _18763
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24265 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_24265]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24566 = mem[416]
                                    _24567 = mem[448]
                                    mem[mem[64]] = mem[492 len 20]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = address(_24566)
                                    mem[mem[64] + 96] = address(_24567)
                                    mem[mem[64] + 128] = _14325 - _1097
                                    emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24566), address(_24567), _14325 - _1097, this.address
                                else:
                                    require 10^14 * mem[_18566 + 30 len 2] / 100
                                    require 10^14 * mem[_18566 + 30 len 2] / 100 * mem[128] / 10^14 * mem[_18566 + 30 len 2] / 100 == mem[128]
                                    _18961 = mem[128]
                                    _18962 = mem[448]
                                    _19343 = mem[64]
                                    mem[mem[64] + 32] = 'contract.name'
                                    mem[mem[64] + 45] = 'Vault'
                                    _19344 = mem[64]
                                    mem[mem[64]] = 18
                                    mem[64] = mem[64] + 50
                                    _19346 = mem[_19344]
                                    s = _19344 + 32
                                    t = mem[64]
                                    idx = mem[_19344]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_19344])] = mem[_19344 + floor32(mem[_19344]) + -(mem[_19344] % 32) + 64 len mem[_19344] % 32] or Mask(8 * -(mem[_19344] % 32) + 32, -(8 * -(mem[_19344] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_19344])])
                                    _22458 = sha3(mem[mem[64] len _19346 + _19343 + -mem[64] + 50])
                                    mem[mem[64] + 4] = sha3(mem[mem[64] len _19346 + _19343 + -mem[64] + 50])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22458
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23112 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = mem[_23112 + 12 len 20]
                                    mem[mem[64] + 36] = 10^14 * uint16(_18598) / 100 * _18662 / 100 / 10^14
                                    require ext_code.size(address(_18962))
                                    call address(_18962).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 10^14 * uint16(_18598) / 100 * _18662 / 100 / 10^14
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23496 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_23496]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _23790 = mem[448]
                                    mem[mem[64] + 4] = mem[492 len 20]
                                    mem[mem[64] + 36] = _18961 - (10^14 * uint16(_18598) / 100 * _18662 / 100 / 10^14)
                                    require ext_code.size(address(_23790))
                                    call address(_23790).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _18961 - (10^14 * uint16(_18598) / 100 * _18662 / 100 / 10^14)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24264 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_24264]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24562 = mem[416]
                                    _24563 = mem[448]
                                    mem[mem[64]] = mem[492 len 20]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = address(_24562)
                                    mem[mem[64] + 96] = address(_24563)
                                    mem[mem[64] + 128] = _14325 - _1097
                                    emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24562), address(_24563), _14325 - _1097, this.address
                    else:
                        mem[_1100 + ceil32(_1139) + ceil32(_1185) + _4933 + 804] = 0
                        _8965 = mem[736]
                        mem[_1100 + 676] = ceil32(_1139) + ceil32(_1185) + ceil32(_4933) + 768
                        _8981 = mem[_8965]
                        mem[_1100 + ceil32(_1139) + ceil32(_1185) + ceil32(_4933) + 804] = mem[_8965]
                        s = 0
                        while s < _8981:
                            mem[_1100 + ceil32(_1139) + ceil32(_1185) + ceil32(_4933) + s + 836] = mem[_8965 + s + 32]
                            _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                            s = s + 32
                            continue 
                        if ceil32(_8981) <= _8981:
                            require ext_code.size(address(_1099))
                            call address(_1099).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1100 + ceil32(_1139) + ceil32(_1185) + ceil32(_4933) + ceil32(_8981) + -mem[64] + 832]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13638 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_13638]:
                                _13704 = mem[_1057]
                                mem[mem[64]] = _734
                                emit 0x6230081d: _734, this.address, address(_13704)
                                require idx + 1 >= idx
                                _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = _734
                                idx = idx + 1
                                continue 
                            _13705 = mem[416]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_13705))
                            call address(_13705).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13879 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _13926 = mem[_13879]
                            _13959 = mem[416]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _13926
                            require ext_code.size(address(_13959))
                            call address(_13959).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _13926
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14054 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_14054]:
                                revert with 0, 'Transfer to customer failed.'
                            _14120 = mem[448]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_14120))
                            call address(_14120).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14278 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _14310 = mem[_14278]
                            require _1097 <= mem[_14278]
                            if mem[_14278] - _1097 != mem[128]:
                                revert with 0, 'StablePay target balance is not valid.'
                            _14409 = mem[64]
                            mem[mem[64] + 32] = 'contract.name'
                            mem[mem[64] + 45] = 'Settings'
                            _14410 = mem[64]
                            mem[mem[64]] = 21
                            mem[64] = mem[64] + 53
                            _14412 = mem[_14410]
                            s = _14410 + 32
                            t = mem[64]
                            idx = mem[_14410]
                            while idx >= 32:
                                mem[t] = mem[s]
                                _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[mem[64] + floor32(mem[_14410])] = mem[_14410 + floor32(mem[_14410]) + -(mem[_14410] % 32) + 64 len mem[_14410] % 32] or Mask(8 * -(mem[_14410] % 32) + 32, -(8 * -(mem[_14410] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_14410])])
                            _18228 = sha3(mem[mem[64] len _14412 + _14409 + -mem[64] + 53])
                            mem[mem[64] + 4] = sha3(mem[mem[64] len _14412 + _14409 + -mem[64] + 53])
                            require ext_code.size(_storageAddress)
                            call _storageAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args _18228
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18439 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(mem[_18439 + 12 len 20])
                            call mem[_18439 + 12 len 20].0x6ea8bc10 with:
                                 gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18567 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _18599 = mem[_18567]
                            if not mem[_18567 + 30 len 2]:
                                _18697 = mem[128]
                                _18698 = mem[448]
                                _18771 = mem[64]
                                mem[mem[64] + 32] = 'contract.name'
                                mem[mem[64] + 45] = 'Vault'
                                _18772 = mem[64]
                                mem[mem[64]] = 18
                                mem[64] = mem[64] + 50
                                _18774 = mem[_18772]
                                s = _18772 + 32
                                t = mem[64]
                                idx = mem[_18772]
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_18772])] = mem[_18772 + floor32(mem[_18772]) + -(mem[_18772] % 32) + 64 len mem[_18772] % 32] or Mask(8 * -(mem[_18772] % 32) + 32, -(8 * -(mem[_18772] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_18772])])
                                _22488 = sha3(mem[mem[64] len _18774 + _18771 + -mem[64] + 50])
                                mem[mem[64] + 4] = sha3(mem[mem[64] len _18774 + _18771 + -mem[64] + 50])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22488
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23117 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64] + 4] = mem[_23117 + 12 len 20]
                                mem[mem[64] + 36] = 0
                                require ext_code.size(address(_18698))
                                call address(_18698).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23501 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_23501]:
                                    revert with 0, 'Tokens transfer to vault was invalid.'
                                _23805 = mem[448]
                                mem[mem[64] + 4] = mem[492 len 20]
                                mem[mem[64] + 36] = _18697
                                require ext_code.size(address(_23805))
                                call address(_23805).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _18697
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _24269 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_24269]:
                                    revert with 0, 'Transfer to merchant failed.'
                                _24582 = mem[416]
                                _24583 = mem[448]
                                mem[mem[64]] = mem[492 len 20]
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = address(_24582)
                                mem[mem[64] + 96] = address(_24583)
                                mem[mem[64] + 128] = _14310 - _1097
                                emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24582), address(_24583), _14310 - _1097, this.address
                            else:
                                require mem[_18567 + 30 len 2]
                                require 10^14 * mem[_18567 + 30 len 2] / mem[_18567 + 30 len 2] == 10^14
                                _18663 = mem[128]
                                if not 10^14 * mem[_18567 + 30 len 2] / 100:
                                    _18769 = mem[128]
                                    _18770 = mem[448]
                                    _18975 = mem[64]
                                    mem[mem[64] + 32] = 'contract.name'
                                    mem[mem[64] + 45] = 'Vault'
                                    _18976 = mem[64]
                                    mem[mem[64]] = 18
                                    mem[64] = mem[64] + 50
                                    _18978 = mem[_18976]
                                    s = _18976 + 32
                                    t = mem[64]
                                    idx = mem[_18976]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_18976])] = mem[_18976 + floor32(mem[_18976]) + -(mem[_18976] % 32) + 64 len mem[_18976] % 32] or Mask(8 * -(mem[_18976] % 32) + 32, -(8 * -(mem[_18976] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_18976])])
                                    _22482 = sha3(mem[mem[64] len _18978 + _18975 + -mem[64] + 50])
                                    mem[mem[64] + 4] = sha3(mem[mem[64] len _18978 + _18975 + -mem[64] + 50])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22482
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23116 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = mem[_23116 + 12 len 20]
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(address(_18770))
                                    call address(_18770).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23500 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_23500]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _23802 = mem[448]
                                    mem[mem[64] + 4] = mem[492 len 20]
                                    mem[mem[64] + 36] = _18769
                                    require ext_code.size(address(_23802))
                                    call address(_23802).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _18769
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24268 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_24268]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24578 = mem[416]
                                    _24579 = mem[448]
                                    mem[mem[64]] = mem[492 len 20]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = address(_24578)
                                    mem[mem[64] + 96] = address(_24579)
                                    mem[mem[64] + 128] = _14310 - _1097
                                    emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24578), address(_24579), _14310 - _1097, this.address
                                else:
                                    require 10^14 * mem[_18567 + 30 len 2] / 100
                                    require 10^14 * mem[_18567 + 30 len 2] / 100 * mem[128] / 10^14 * mem[_18567 + 30 len 2] / 100 == mem[128]
                                    _18973 = mem[128]
                                    _18974 = mem[448]
                                    _19353 = mem[64]
                                    mem[mem[64] + 32] = 'contract.name'
                                    mem[mem[64] + 45] = 'Vault'
                                    _19354 = mem[64]
                                    mem[mem[64]] = 18
                                    mem[64] = mem[64] + 50
                                    _19356 = mem[_19354]
                                    s = _19354 + 32
                                    t = mem[64]
                                    idx = mem[_19354]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_19354])] = mem[_19354 + floor32(mem[_19354]) + -(mem[_19354] % 32) + 64 len mem[_19354] % 32] or Mask(8 * -(mem[_19354] % 32) + 32, -(8 * -(mem[_19354] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_19354])])
                                    _22476 = sha3(mem[mem[64] len _19356 + _19353 + -mem[64] + 50])
                                    mem[mem[64] + 4] = sha3(mem[mem[64] len _19356 + _19353 + -mem[64] + 50])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22476
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23115 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = mem[_23115 + 12 len 20]
                                    mem[mem[64] + 36] = 10^14 * uint16(_18599) / 100 * _18663 / 100 / 10^14
                                    require ext_code.size(address(_18974))
                                    call address(_18974).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 10^14 * uint16(_18599) / 100 * _18663 / 100 / 10^14
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23499 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_23499]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _23799 = mem[448]
                                    mem[mem[64] + 4] = mem[492 len 20]
                                    mem[mem[64] + 36] = _18973 - (10^14 * uint16(_18599) / 100 * _18663 / 100 / 10^14)
                                    require ext_code.size(address(_23799))
                                    call address(_23799).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _18973 - (10^14 * uint16(_18599) / 100 * _18663 / 100 / 10^14)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24267 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_24267]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24574 = mem[416]
                                    _24575 = mem[448]
                                    mem[mem[64]] = mem[492 len 20]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = address(_24574)
                                    mem[mem[64] + 96] = address(_24575)
                                    mem[mem[64] + 128] = _14310 - _1097
                                    emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24574), address(_24575), _14310 - _1097, this.address
                        else:
                            mem[_1100 + ceil32(_1139) + ceil32(_1185) + ceil32(_4933) + _8981 + 836] = 0
                            require ext_code.size(address(_1099))
                            call address(_1099).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1100 + ceil32(_1139) + ceil32(_1185) + ceil32(_4933) + ceil32(_8981) + -mem[64] + 832]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13654 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_13654]:
                                _13754 = mem[_1057]
                                mem[mem[64]] = _734
                                emit 0x6230081d: _734, this.address, address(_13754)
                                require idx + 1 >= idx
                                _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = _734
                                idx = idx + 1
                                continue 
                            _13755 = mem[416]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_13755))
                            call address(_13755).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13910 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _13942 = mem[_13910]
                            _13991 = mem[416]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _13942
                            require ext_code.size(address(_13991))
                            call address(_13991).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _13942
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14070 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_14070]:
                                revert with 0, 'Transfer to customer failed.'
                            _14168 = mem[448]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_14168))
                            call address(_14168).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14294 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _14326 = mem[_14294]
                            require _1097 <= mem[_14294]
                            if mem[_14294] - _1097 != mem[128]:
                                revert with 0, 'StablePay target balance is not valid.'
                            _14473 = mem[64]
                            mem[mem[64] + 32] = 'contract.name'
                            mem[mem[64] + 45] = 'Settings'
                            _14474 = mem[64]
                            mem[mem[64]] = 21
                            mem[64] = mem[64] + 53
                            _14476 = mem[_14474]
                            s = _14474 + 32
                            t = mem[64]
                            idx = mem[_14474]
                            while idx >= 32:
                                mem[t] = mem[s]
                                _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[mem[64] + floor32(mem[_14474])] = mem[_14474 + floor32(mem[_14474]) + -(mem[_14474] % 32) + 64 len mem[_14474] % 32] or Mask(8 * -(mem[_14474] % 32) + 32, -(8 * -(mem[_14474] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_14474])])
                            _18234 = sha3(mem[mem[64] len _14476 + _14473 + -mem[64] + 53])
                            mem[mem[64] + 4] = sha3(mem[mem[64] len _14476 + _14473 + -mem[64] + 53])
                            require ext_code.size(_storageAddress)
                            call _storageAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args _18234
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18440 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(mem[_18440 + 12 len 20])
                            call mem[_18440 + 12 len 20].0x6ea8bc10 with:
                                 gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18568 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _18600 = mem[_18568]
                            if not mem[_18568 + 30 len 2]:
                                _18699 = mem[128]
                                _18700 = mem[448]
                                _18777 = mem[64]
                                mem[mem[64] + 32] = 'contract.name'
                                mem[mem[64] + 45] = 'Vault'
                                _18778 = mem[64]
                                mem[mem[64]] = 18
                                mem[64] = mem[64] + 50
                                _18780 = mem[_18778]
                                s = _18778 + 32
                                t = mem[64]
                                idx = mem[_18778]
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_18778])] = mem[_18778 + floor32(mem[_18778]) + -(mem[_18778] % 32) + 64 len mem[_18778] % 32] or Mask(8 * -(mem[_18778] % 32) + 32, -(8 * -(mem[_18778] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_18778])])
                                _22506 = sha3(mem[mem[64] len _18780 + _18777 + -mem[64] + 50])
                                mem[mem[64] + 4] = sha3(mem[mem[64] len _18780 + _18777 + -mem[64] + 50])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22506
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23120 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64] + 4] = mem[_23120 + 12 len 20]
                                mem[mem[64] + 36] = 0
                                require ext_code.size(address(_18700))
                                call address(_18700).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23504 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_23504]:
                                    revert with 0, 'Tokens transfer to vault was invalid.'
                                _23814 = mem[448]
                                mem[mem[64] + 4] = mem[492 len 20]
                                mem[mem[64] + 36] = _18699
                                require ext_code.size(address(_23814))
                                call address(_23814).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _18699
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _24272 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_24272]:
                                    revert with 0, 'Transfer to merchant failed.'
                                _24594 = mem[416]
                                _24595 = mem[448]
                                mem[mem[64]] = mem[492 len 20]
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = address(_24594)
                                mem[mem[64] + 96] = address(_24595)
                                mem[mem[64] + 128] = _14326 - _1097
                                emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24594), address(_24595), _14326 - _1097, this.address
                            else:
                                require mem[_18568 + 30 len 2]
                                require 10^14 * mem[_18568 + 30 len 2] / mem[_18568 + 30 len 2] == 10^14
                                _18664 = mem[128]
                                if not 10^14 * mem[_18568 + 30 len 2] / 100:
                                    _18775 = mem[128]
                                    _18776 = mem[448]
                                    _18987 = mem[64]
                                    mem[mem[64] + 32] = 'contract.name'
                                    mem[mem[64] + 45] = 'Vault'
                                    _18988 = mem[64]
                                    mem[mem[64]] = 18
                                    mem[64] = mem[64] + 50
                                    _18990 = mem[_18988]
                                    s = _18988 + 32
                                    t = mem[64]
                                    idx = mem[_18988]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_18988])] = mem[_18988 + floor32(mem[_18988]) + -(mem[_18988] % 32) + 64 len mem[_18988] % 32] or Mask(8 * -(mem[_18988] % 32) + 32, -(8 * -(mem[_18988] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_18988])])
                                    _22500 = sha3(mem[mem[64] len _18990 + _18987 + -mem[64] + 50])
                                    mem[mem[64] + 4] = sha3(mem[mem[64] len _18990 + _18987 + -mem[64] + 50])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22500
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23119 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = mem[_23119 + 12 len 20]
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(address(_18776))
                                    call address(_18776).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23503 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_23503]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _23811 = mem[448]
                                    mem[mem[64] + 4] = mem[492 len 20]
                                    mem[mem[64] + 36] = _18775
                                    require ext_code.size(address(_23811))
                                    call address(_23811).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _18775
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24271 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_24271]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24590 = mem[416]
                                    _24591 = mem[448]
                                    mem[mem[64]] = mem[492 len 20]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = address(_24590)
                                    mem[mem[64] + 96] = address(_24591)
                                    mem[mem[64] + 128] = _14326 - _1097
                                    emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24590), address(_24591), _14326 - _1097, this.address
                                else:
                                    require 10^14 * mem[_18568 + 30 len 2] / 100
                                    require 10^14 * mem[_18568 + 30 len 2] / 100 * mem[128] / 10^14 * mem[_18568 + 30 len 2] / 100 == mem[128]
                                    _18985 = mem[128]
                                    _18986 = mem[448]
                                    _19363 = mem[64]
                                    mem[mem[64] + 32] = 'contract.name'
                                    mem[mem[64] + 45] = 'Vault'
                                    _19364 = mem[64]
                                    mem[mem[64]] = 18
                                    mem[64] = mem[64] + 50
                                    _19366 = mem[_19364]
                                    s = _19364 + 32
                                    t = mem[64]
                                    idx = mem[_19364]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_19364])] = mem[_19364 + floor32(mem[_19364]) + -(mem[_19364] % 32) + 64 len mem[_19364] % 32] or Mask(8 * -(mem[_19364] % 32) + 32, -(8 * -(mem[_19364] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_19364])])
                                    _22494 = sha3(mem[mem[64] len _19366 + _19363 + -mem[64] + 50])
                                    mem[mem[64] + 4] = sha3(mem[mem[64] len _19366 + _19363 + -mem[64] + 50])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22494
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23118 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = mem[_23118 + 12 len 20]
                                    mem[mem[64] + 36] = 10^14 * uint16(_18600) / 100 * _18664 / 100 / 10^14
                                    require ext_code.size(address(_18986))
                                    call address(_18986).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 10^14 * uint16(_18600) / 100 * _18664 / 100 / 10^14
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23502 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_23502]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _23808 = mem[448]
                                    mem[mem[64] + 4] = mem[492 len 20]
                                    mem[mem[64] + 36] = _18985 - (10^14 * uint16(_18600) / 100 * _18664 / 100 / 10^14)
                                    require ext_code.size(address(_23808))
                                    call address(_23808).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _18985 - (10^14 * uint16(_18600) / 100 * _18664 / 100 / 10^14)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24270 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_24270]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24586 = mem[416]
                                    _24587 = mem[448]
                                    mem[mem[64]] = mem[492 len 20]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = address(_24586)
                                    mem[mem[64] + 96] = address(_24587)
                                    mem[mem[64] + 128] = _14326 - _1097
                                    emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24586), address(_24587), _14326 - _1097, this.address
                else:
                    mem[_1100 + ceil32(_1139) + _1185 + 772] = 0
                    _4929 = mem[704]
                    mem[_1100 + 644] = ceil32(_1139) + ceil32(_1185) + 736
                    _4937 = mem[_4929]
                    mem[_1100 + ceil32(_1139) + ceil32(_1185) + 772] = mem[_4929]
                    s = 0
                    while s < _4937:
                        mem[_1100 + ceil32(_1139) + ceil32(_1185) + s + 804] = mem[_4929 + s + 32]
                        _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                        s = s + 32
                        continue 
                    if ceil32(_4937) <= _4937:
                        _8958 = mem[736]
                        mem[_1100 + 676] = ceil32(_1139) + ceil32(_1185) + ceil32(_4937) + 768
                        _8974 = mem[_8958]
                        mem[_1100 + ceil32(_1139) + ceil32(_1185) + ceil32(_4937) + 804] = mem[_8958]
                        s = 0
                        while s < _8974:
                            mem[_1100 + ceil32(_1139) + ceil32(_1185) + ceil32(_4937) + s + 836] = mem[_8958 + s + 32]
                            _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                            s = s + 32
                            continue 
                        if ceil32(_8974) > _8974:
                            mem[_1100 + ceil32(_1139) + ceil32(_1185) + ceil32(_4937) + _8974 + 836] = 0
                            require ext_code.size(address(_1099))
                            call address(_1099).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1100 + ceil32(_1139) + ceil32(_1185) + ceil32(_4937) + ceil32(_8974) + -mem[64] + 832]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13655 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_13655]:
                                _13758 = mem[_1057]
                                mem[mem[64]] = _734
                                emit 0x6230081d: _734, this.address, address(_13758)
                                require idx + 1 >= idx
                                _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = _734
                                idx = idx + 1
                                continue 
                            _13759 = mem[416]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_13759))
                            call address(_13759).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13911 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _13943 = mem[_13911]
                            _13993 = mem[416]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _13943
                            require ext_code.size(address(_13993))
                            call address(_13993).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _13943
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14071 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_14071]:
                                revert with 0, 'Transfer to customer failed.'
                            _14171 = mem[448]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_14171))
                            call address(_14171).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14295 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _14327 = mem[_14295]
                            require _1097 <= mem[_14295]
                            if mem[_14295] - _1097 != mem[128]:
                                revert with 0, 'StablePay target balance is not valid.'
                            _14477 = mem[64]
                            mem[mem[64] + 32] = 'contract.name'
                            mem[mem[64] + 45] = 'Settings'
                            _14478 = mem[64]
                            mem[mem[64]] = 21
                            mem[64] = mem[64] + 53
                            _14480 = mem[_14478]
                            s = _14478 + 32
                            t = _14477 + 53
                            idx = mem[_14478]
                            while idx >= 32:
                                mem[t] = mem[s]
                                _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[_14477 + floor32(mem[_14478]) + 53] = mem[_14478 + -(mem[_14478] % 32) + floor32(mem[_14478]) + 64 len mem[_14478] % 32] or Mask(8 * -(mem[_14478] % 32) + 32, -(8 * -(mem[_14478] % 32) + 32) + 256, mem[_14477 + floor32(mem[_14478]) + 53])
                            _18246 = sha3(mem[_14477 + 53 len _14480])
                            mem[_14477 + 57] = sha3(mem[_14477 + 53 len _14480])
                            require ext_code.size(_storageAddress)
                            call _storageAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args _18246
                            mem[_14477 + 53] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x6ea8bc10 with:
                                 gas gas_remaining wei
                            mem[_14477 + ceil32(return_data.size) + 53] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _14477 + (2 * ceil32(return_data.size)) + 53
                            require return_data.size >= 32
                            if not ext_call.return_data[30 len 2]:
                                _18703 = mem[128]
                                _18704 = mem[448]
                                mem[_14477 + (2 * ceil32(return_data.size)) + 85] = 'contract.name'
                                mem[_14477 + (2 * ceil32(return_data.size)) + 98] = 'Vault'
                                mem[_14477 + (2 * ceil32(return_data.size)) + 53] = 18
                                mem[64] = _14477 + (2 * ceil32(return_data.size)) + 103
                                s = _14477 + (2 * ceil32(return_data.size)) + 85
                                t = _14477 + (2 * ceil32(return_data.size)) + 103
                                idx = 18
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[_14477 + (2 * ceil32(return_data.size)) + 103] = mem[_14477 + (2 * ceil32(return_data.size)) + 99 len 18] or Mask(112, 144, mem[_14477 + (2 * ceil32(return_data.size)) + 103])
                                _22542 = sha3(mem[_14477 + (2 * ceil32(return_data.size)) + 103 len 18])
                                mem[_14477 + (2 * ceil32(return_data.size)) + 107] = sha3(mem[_14477 + (2 * ceil32(return_data.size)) + 103 len 18])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22542
                                mem[_14477 + (2 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_14477 + (4 * ceil32(return_data.size)) + 107] = ext_call.return_data[12 len 20]
                                mem[_14477 + (4 * ceil32(return_data.size)) + 139] = 0
                                require ext_code.size(address(_18704))
                                call address(_18704).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[12 len 20], 0
                                mem[_14477 + (4 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Tokens transfer to vault was invalid.'
                                _23832 = mem[448]
                                mem[_14477 + (6 * ceil32(return_data.size)) + 107] = mem[492 len 20]
                                mem[_14477 + (6 * ceil32(return_data.size)) + 139] = _18703
                                require ext_code.size(address(_23832))
                                call address(_23832).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[_14477 + (6 * ceil32(return_data.size)) + 107], _18703
                                mem[_14477 + (6 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14477 + (7 * ceil32(return_data.size)) + 103
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Transfer to merchant failed.'
                                _24618 = mem[416]
                                _24619 = mem[448]
                                mem[_14477 + (7 * ceil32(return_data.size)) + 103] = mem[492 len 20]
                                mem[_14477 + (7 * ceil32(return_data.size)) + 135] = msg.sender
                                mem[_14477 + (7 * ceil32(return_data.size)) + 167] = address(_24618)
                                mem[_14477 + (7 * ceil32(return_data.size)) + 199] = address(_24619)
                                mem[_14477 + (7 * ceil32(return_data.size)) + 231] = _14327 - _1097
                                emit 0xdcc9f547: mem[_14477 + (7 * ceil32(return_data.size)) + 103], msg.sender, address(_24618), address(_24619), _14327 - _1097, this.address
                            else:
                                require ext_call.return_data[30 len 2]
                                require 10^14 * ext_call.return_data[30 len 2] / ext_call.return_data[30 len 2] == 10^14
                                _18666 = mem[128]
                                if not 10^14 * ext_call.return_data[30 len 2] / 100:
                                    _18787 = mem[128]
                                    _18788 = mem[448]
                                    mem[_14477 + (2 * ceil32(return_data.size)) + 85] = 'contract.name'
                                    mem[_14477 + (2 * ceil32(return_data.size)) + 98] = 'Vault'
                                    mem[_14477 + (2 * ceil32(return_data.size)) + 53] = 18
                                    mem[64] = _14477 + (2 * ceil32(return_data.size)) + 103
                                    s = _14477 + (2 * ceil32(return_data.size)) + 85
                                    t = _14477 + (2 * ceil32(return_data.size)) + 103
                                    idx = 18
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[_14477 + (2 * ceil32(return_data.size)) + 103] = mem[_14477 + (2 * ceil32(return_data.size)) + 99 len 18] or Mask(112, 144, mem[_14477 + (2 * ceil32(return_data.size)) + 103])
                                    _22536 = sha3(mem[_14477 + (2 * ceil32(return_data.size)) + 103 len 18])
                                    mem[_14477 + (2 * ceil32(return_data.size)) + 107] = sha3(mem[_14477 + (2 * ceil32(return_data.size)) + 103 len 18])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22536
                                    mem[_14477 + (2 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_14477 + (4 * ceil32(return_data.size)) + 107] = ext_call.return_data[12 len 20]
                                    mem[_14477 + (4 * ceil32(return_data.size)) + 139] = 0
                                    require ext_code.size(address(_18788))
                                    call address(_18788).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[12 len 20], 0
                                    mem[_14477 + (4 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _23829 = mem[448]
                                    mem[_14477 + (6 * ceil32(return_data.size)) + 107] = mem[492 len 20]
                                    mem[_14477 + (6 * ceil32(return_data.size)) + 139] = _18787
                                    require ext_code.size(address(_23829))
                                    call address(_23829).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[_14477 + (6 * ceil32(return_data.size)) + 107], _18787
                                    mem[_14477 + (6 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _14477 + (7 * ceil32(return_data.size)) + 103
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24614 = mem[416]
                                    _24615 = mem[448]
                                    mem[_14477 + (7 * ceil32(return_data.size)) + 103] = mem[492 len 20]
                                    mem[_14477 + (7 * ceil32(return_data.size)) + 135] = msg.sender
                                    mem[_14477 + (7 * ceil32(return_data.size)) + 167] = address(_24614)
                                    mem[_14477 + (7 * ceil32(return_data.size)) + 199] = address(_24615)
                                    mem[_14477 + (7 * ceil32(return_data.size)) + 231] = _14327 - _1097
                                    emit 0xdcc9f547: mem[_14477 + (7 * ceil32(return_data.size)) + 103], msg.sender, address(_24614), address(_24615), _14327 - _1097, this.address
                                else:
                                    require 10^14 * ext_call.return_data[30 len 2] / 100
                                    require 10^14 * ext_call.return_data[30 len 2] / 100 * mem[128] / 10^14 * ext_call.return_data[30 len 2] / 100 == mem[128]
                                    _19009 = mem[128]
                                    _19010 = mem[448]
                                    mem[_14477 + (2 * ceil32(return_data.size)) + 85] = 'contract.name'
                                    mem[_14477 + (2 * ceil32(return_data.size)) + 98] = 'Vault'
                                    mem[_14477 + (2 * ceil32(return_data.size)) + 53] = 18
                                    mem[64] = _14477 + (2 * ceil32(return_data.size)) + 103
                                    s = _14477 + (2 * ceil32(return_data.size)) + 85
                                    t = _14477 + (2 * ceil32(return_data.size)) + 103
                                    idx = 18
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[_14477 + (2 * ceil32(return_data.size)) + 103] = mem[_14477 + (2 * ceil32(return_data.size)) + 99 len 18] or Mask(112, 144, mem[_14477 + (2 * ceil32(return_data.size)) + 103])
                                    _22530 = sha3(mem[_14477 + (2 * ceil32(return_data.size)) + 103 len 18])
                                    mem[_14477 + (2 * ceil32(return_data.size)) + 107] = sha3(mem[_14477 + (2 * ceil32(return_data.size)) + 103 len 18])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22530
                                    mem[_14477 + (2 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_14477 + (4 * ceil32(return_data.size)) + 107] = ext_call.return_data[12 len 20]
                                    mem[_14477 + (4 * ceil32(return_data.size)) + 139] = 10^14 * uint16(ext_call.return_data[0]) / 100 * _18666 / 100 / 10^14
                                    require ext_code.size(address(_19010))
                                    call address(_19010).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[12 len 20], 10^14 * uint16(ext_call.return_data[0]) / 100 * _18666 / 100 / 10^14
                                    mem[_14477 + (4 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _23826 = mem[448]
                                    mem[_14477 + (6 * ceil32(return_data.size)) + 107] = mem[492 len 20]
                                    mem[_14477 + (6 * ceil32(return_data.size)) + 139] = _19009 - (10^14 * uint16(ext_call.return_data[0]) / 100 * _18666 / 100 / 10^14)
                                    require ext_code.size(address(_23826))
                                    call address(_23826).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[_14477 + (6 * ceil32(return_data.size)) + 107], _19009 - (10^14 * uint16(ext_call.return_data[0]) / 100 * _18666 / 100 / 10^14)
                                    mem[_14477 + (6 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _14477 + (7 * ceil32(return_data.size)) + 103
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24610 = mem[416]
                                    _24611 = mem[448]
                                    mem[_14477 + (7 * ceil32(return_data.size)) + 103] = mem[492 len 20]
                                    mem[_14477 + (7 * ceil32(return_data.size)) + 135] = msg.sender
                                    mem[_14477 + (7 * ceil32(return_data.size)) + 167] = address(_24610)
                                    mem[_14477 + (7 * ceil32(return_data.size)) + 199] = address(_24611)
                                    mem[_14477 + (7 * ceil32(return_data.size)) + 231] = _14327 - _1097
                                    emit 0xdcc9f547: mem[_14477 + (7 * ceil32(return_data.size)) + 103], msg.sender, address(_24610), address(_24611), _14327 - _1097, this.address
                        else:
                            require ext_code.size(address(_1099))
                            call address(_1099).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1100 + ceil32(_1139) + ceil32(_1185) + ceil32(_4937) + ceil32(_8974) + -mem[64] + 832]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13639 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_13639]:
                                _13707 = mem[_1057]
                                mem[mem[64]] = _734
                                emit 0x6230081d: _734, this.address, address(_13707)
                                require idx + 1 >= idx
                                _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = _734
                                idx = idx + 1
                                continue 
                            _13708 = mem[416]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_13708))
                            call address(_13708).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13881 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _13927 = mem[_13881]
                            _13961 = mem[416]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _13927
                            require ext_code.size(address(_13961))
                            call address(_13961).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _13927
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14055 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_14055]:
                                revert with 0, 'Transfer to customer failed.'
                            _14123 = mem[448]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_14123))
                            call address(_14123).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14279 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _14311 = mem[_14279]
                            require _1097 <= mem[_14279]
                            if mem[_14279] - _1097 != mem[128]:
                                revert with 0, 'StablePay target balance is not valid.'
                            _14413 = mem[64]
                            mem[mem[64] + 32] = 'contract.name'
                            mem[mem[64] + 45] = 'Settings'
                            _14414 = mem[64]
                            mem[mem[64]] = 21
                            mem[64] = mem[64] + 53
                            _14416 = mem[_14414]
                            s = _14414 + 32
                            t = mem[64]
                            idx = mem[_14414]
                            while idx >= 32:
                                mem[t] = mem[s]
                                _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[mem[64] + floor32(mem[_14414])] = mem[_14414 + floor32(mem[_14414]) + -(mem[_14414] % 32) + 64 len mem[_14414] % 32] or Mask(8 * -(mem[_14414] % 32) + 32, -(8 * -(mem[_14414] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_14414])])
                            _18240 = sha3(mem[mem[64] len _14416 + _14413 + -mem[64] + 53])
                            mem[mem[64] + 4] = sha3(mem[mem[64] len _14416 + _14413 + -mem[64] + 53])
                            require ext_code.size(_storageAddress)
                            call _storageAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args _18240
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18441 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(mem[_18441 + 12 len 20])
                            call mem[_18441 + 12 len 20].0x6ea8bc10 with:
                                 gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18569 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _18601 = mem[_18569]
                            if not mem[_18569 + 30 len 2]:
                                _18701 = mem[128]
                                _18702 = mem[448]
                                _18783 = mem[64]
                                mem[mem[64] + 32] = 'contract.name'
                                mem[mem[64] + 45] = 'Vault'
                                _18784 = mem[64]
                                mem[mem[64]] = 18
                                mem[64] = mem[64] + 50
                                _18786 = mem[_18784]
                                s = _18784 + 32
                                t = _18783 + 50
                                idx = mem[_18784]
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[_18783 + floor32(mem[_18784]) + 50] = mem[_18784 + -(mem[_18784] % 32) + floor32(mem[_18784]) + 64 len mem[_18784] % 32] or Mask(8 * -(mem[_18784] % 32) + 32, -(8 * -(mem[_18784] % 32) + 32) + 256, mem[_18783 + floor32(mem[_18784]) + 50])
                                _22524 = sha3(mem[_18783 + 50 len _18786])
                                mem[_18783 + 54] = sha3(mem[_18783 + 50 len _18786])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22524
                                mem[_18783 + 50] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _18783 + ceil32(return_data.size) + 50
                                require return_data.size >= 32
                                mem[_18783 + ceil32(return_data.size) + 54] = address(ext_call.return_data[0])
                                mem[_18783 + ceil32(return_data.size) + 86] = 0
                                require ext_code.size(address(_18702))
                                call address(_18702).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), 0
                                mem[_18783 + ceil32(return_data.size) + 50] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _18783 + (2 * ceil32(return_data.size)) + 50
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Tokens transfer to vault was invalid.'
                                _23823 = mem[448]
                                _23824 = mem[480]
                                mem[_18783 + (2 * ceil32(return_data.size)) + 54] = mem[492 len 20]
                                mem[_18783 + (2 * ceil32(return_data.size)) + 86] = _18701
                                require ext_code.size(address(_23823))
                                call address(_23823).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(_23824), _18701
                                mem[_18783 + (2 * ceil32(return_data.size)) + 50] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _18783 + (4 * ceil32(return_data.size)) + 50
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Transfer to merchant failed.'
                                _24606 = mem[416]
                                _24607 = mem[448]
                                mem[_18783 + (4 * ceil32(return_data.size)) + 50] = mem[492 len 20]
                                mem[_18783 + (4 * ceil32(return_data.size)) + 82] = msg.sender
                                mem[_18783 + (4 * ceil32(return_data.size)) + 114] = address(_24606)
                                mem[_18783 + (4 * ceil32(return_data.size)) + 146] = address(_24607)
                                mem[_18783 + (4 * ceil32(return_data.size)) + 178] = _14311 - _1097
                                emit 0xdcc9f547: mem[_18783 + (4 * ceil32(return_data.size)) + 50], msg.sender, address(_24606), address(_24607), _14311 - _1097, this.address
                            else:
                                require mem[_18569 + 30 len 2]
                                require 10^14 * mem[_18569 + 30 len 2] / mem[_18569 + 30 len 2] == 10^14
                                _18665 = mem[128]
                                if not 10^14 * mem[_18569 + 30 len 2] / 100:
                                    _18781 = mem[128]
                                    _18782 = mem[448]
                                    _18999 = mem[64]
                                    mem[mem[64] + 32] = 'contract.name'
                                    mem[mem[64] + 45] = 'Vault'
                                    _19000 = mem[64]
                                    mem[mem[64]] = 18
                                    mem[64] = mem[64] + 50
                                    _19002 = mem[_19000]
                                    s = _19000 + 32
                                    t = mem[64]
                                    idx = mem[_19000]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_19000])] = mem[_19000 + floor32(mem[_19000]) + -(mem[_19000] % 32) + 64 len mem[_19000] % 32] or Mask(8 * -(mem[_19000] % 32) + 32, -(8 * -(mem[_19000] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_19000])])
                                    _22518 = sha3(mem[mem[64] len _19002 + _18999 + -mem[64] + 50])
                                    mem[mem[64] + 4] = sha3(mem[mem[64] len _19002 + _18999 + -mem[64] + 50])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22518
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23122 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = mem[_23122 + 12 len 20]
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(address(_18782))
                                    call address(_18782).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23506 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_23506]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _23820 = mem[448]
                                    mem[mem[64] + 4] = mem[492 len 20]
                                    mem[mem[64] + 36] = _18781
                                    require ext_code.size(address(_23820))
                                    call address(_23820).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _18781
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24274 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_24274]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24602 = mem[416]
                                    _24603 = mem[448]
                                    mem[mem[64]] = mem[492 len 20]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = address(_24602)
                                    mem[mem[64] + 96] = address(_24603)
                                    mem[mem[64] + 128] = _14311 - _1097
                                    emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24602), address(_24603), _14311 - _1097, this.address
                                else:
                                    require 10^14 * mem[_18569 + 30 len 2] / 100
                                    require 10^14 * mem[_18569 + 30 len 2] / 100 * mem[128] / 10^14 * mem[_18569 + 30 len 2] / 100 == mem[128]
                                    _18997 = mem[128]
                                    _18998 = mem[448]
                                    _19373 = mem[64]
                                    mem[mem[64] + 32] = 'contract.name'
                                    mem[mem[64] + 45] = 'Vault'
                                    _19374 = mem[64]
                                    mem[mem[64]] = 18
                                    mem[64] = mem[64] + 50
                                    _19376 = mem[_19374]
                                    s = _19374 + 32
                                    t = mem[64]
                                    idx = mem[_19374]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_19374])] = mem[_19374 + floor32(mem[_19374]) + -(mem[_19374] % 32) + 64 len mem[_19374] % 32] or Mask(8 * -(mem[_19374] % 32) + 32, -(8 * -(mem[_19374] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_19374])])
                                    _22512 = sha3(mem[mem[64] len _19376 + _19373 + -mem[64] + 50])
                                    mem[mem[64] + 4] = sha3(mem[mem[64] len _19376 + _19373 + -mem[64] + 50])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22512
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23121 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = mem[_23121 + 12 len 20]
                                    mem[mem[64] + 36] = 10^14 * uint16(_18601) / 100 * _18665 / 100 / 10^14
                                    require ext_code.size(address(_18998))
                                    call address(_18998).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 10^14 * uint16(_18601) / 100 * _18665 / 100 / 10^14
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23505 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_23505]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _23817 = mem[448]
                                    mem[mem[64] + 4] = mem[492 len 20]
                                    mem[mem[64] + 36] = _18997 - (10^14 * uint16(_18601) / 100 * _18665 / 100 / 10^14)
                                    require ext_code.size(address(_23817))
                                    call address(_23817).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _18997 - (10^14 * uint16(_18601) / 100 * _18665 / 100 / 10^14)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24273 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_24273]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24598 = mem[416]
                                    _24599 = mem[448]
                                    mem[mem[64]] = mem[492 len 20]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = address(_24598)
                                    mem[mem[64] + 96] = address(_24599)
                                    mem[mem[64] + 128] = _14311 - _1097
                                    emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24598), address(_24599), _14311 - _1097, this.address
                    else:
                        mem[_1100 + ceil32(_1139) + ceil32(_1185) + _4937 + 804] = 0
                        _8966 = mem[736]
                        mem[_1100 + 676] = ceil32(_1139) + ceil32(_1185) + ceil32(_4937) + 768
                        _8982 = mem[_8966]
                        mem[_1100 + ceil32(_1139) + ceil32(_1185) + ceil32(_4937) + 804] = mem[_8966]
                        s = 0
                        while s < _8982:
                            mem[_1100 + ceil32(_1139) + ceil32(_1185) + ceil32(_4937) + s + 836] = mem[_8966 + s + 32]
                            _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                            s = s + 32
                            continue 
                        if ceil32(_8982) <= _8982:
                            require ext_code.size(address(_1099))
                            call address(_1099).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1100 + ceil32(_1139) + ceil32(_1185) + ceil32(_4937) + ceil32(_8982) + -mem[64] + 832]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13640 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_13640]:
                                _13710 = mem[_1057]
                                mem[mem[64]] = _734
                                emit 0x6230081d: _734, this.address, address(_13710)
                                require idx + 1 >= idx
                                _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = _734
                                idx = idx + 1
                                continue 
                            _13711 = mem[416]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_13711))
                            call address(_13711).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13883 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _13928 = mem[_13883]
                            _13963 = mem[416]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _13928
                            require ext_code.size(address(_13963))
                            call address(_13963).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _13928
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14056 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_14056]:
                                revert with 0, 'Transfer to customer failed.'
                            _14126 = mem[448]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_14126))
                            call address(_14126).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14280 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _14312 = mem[_14280]
                            require _1097 <= mem[_14280]
                            if mem[_14280] - _1097 != mem[128]:
                                revert with 0, 'StablePay target balance is not valid.'
                            _14417 = mem[64]
                            mem[mem[64] + 32] = 'contract.name'
                            mem[mem[64] + 45] = 'Settings'
                            _14418 = mem[64]
                            mem[mem[64]] = 21
                            mem[64] = mem[64] + 53
                            _14420 = mem[_14418]
                            s = _14418 + 32
                            t = _14417 + 53
                            idx = mem[_14418]
                            while idx >= 32:
                                mem[t] = mem[s]
                                _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[_14417 + floor32(mem[_14418]) + 53] = mem[_14418 + -(mem[_14418] % 32) + floor32(mem[_14418]) + 64 len mem[_14418] % 32] or Mask(8 * -(mem[_14418] % 32) + 32, -(8 * -(mem[_14418] % 32) + 32) + 256, mem[_14417 + floor32(mem[_14418]) + 53])
                            _18252 = sha3(mem[_14417 + 53 len _14420])
                            mem[_14417 + 57] = sha3(mem[_14417 + 53 len _14420])
                            require ext_code.size(_storageAddress)
                            call _storageAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args _18252
                            mem[_14417 + 53] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x6ea8bc10 with:
                                 gas gas_remaining wei
                            mem[_14417 + ceil32(return_data.size) + 53] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _14417 + (2 * ceil32(return_data.size)) + 53
                            require return_data.size >= 32
                            if not ext_call.return_data[30 len 2]:
                                _18705 = mem[128]
                                _18706 = mem[448]
                                mem[_14417 + (2 * ceil32(return_data.size)) + 85] = 'contract.name'
                                mem[_14417 + (2 * ceil32(return_data.size)) + 98] = 'Vault'
                                mem[_14417 + (2 * ceil32(return_data.size)) + 53] = 18
                                mem[64] = _14417 + (2 * ceil32(return_data.size)) + 103
                                s = _14417 + (2 * ceil32(return_data.size)) + 85
                                t = _14417 + (2 * ceil32(return_data.size)) + 103
                                idx = 18
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[_14417 + (2 * ceil32(return_data.size)) + 103] = mem[_14417 + (2 * ceil32(return_data.size)) + 99 len 18] or Mask(112, 144, mem[_14417 + (2 * ceil32(return_data.size)) + 103])
                                _22560 = sha3(mem[_14417 + (2 * ceil32(return_data.size)) + 103 len 18])
                                mem[_14417 + (2 * ceil32(return_data.size)) + 107] = sha3(mem[_14417 + (2 * ceil32(return_data.size)) + 103 len 18])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22560
                                mem[_14417 + (2 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_14417 + (4 * ceil32(return_data.size)) + 107] = address(ext_call.return_data[0])
                                mem[_14417 + (4 * ceil32(return_data.size)) + 139] = 0
                                require ext_code.size(address(_18706))
                                call address(_18706).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[_14417 + (4 * ceil32(return_data.size)) + 107 len (5 * ceil32(return_data.size)) + 64]
                                mem[_14417 + (4 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    mem[_14417 + (4 * ceil32(return_data.size)) + 103] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14417 + (4 * ceil32(return_data.size)) + 107] = 32
                                    mem[_14417 + (4 * ceil32(return_data.size)) + 139] = 37
                                    mem[_14417 + (4 * ceil32(return_data.size)) + 171] = 'Tokens transfer to vault was inv'
                                    mem[_14417 + (4 * ceil32(return_data.size)) + 203] = 'alid.'
                                    revert with memory
                                      from _14417 + (4 * ceil32(return_data.size)) + 103
                                       len (7 * ceil32(return_data.size)) + 132
                                _23841 = mem[448]
                                mem[_14417 + (4 * ceil32(return_data.size)) + 107] = mem[492 len 20]
                                mem[_14417 + (4 * ceil32(return_data.size)) + 139] = _18705
                                require ext_code.size(address(_23841))
                                call address(_23841).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[_14417 + (4 * ceil32(return_data.size)) + 107 len (7 * ceil32(return_data.size)) + 64]
                                mem[_14417 + (4 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14417 + (8 * ceil32(return_data.size)) + 103
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    mem[_14417 + (8 * ceil32(return_data.size)) + 103] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14417 + (8 * ceil32(return_data.size)) + 107] = 32
                                    mem[_14417 + (8 * ceil32(return_data.size)) + 139] = 28
                                    mem[_14417 + (8 * ceil32(return_data.size)) + 171] = 'Transfer to merchant failed.'
                                    revert with memory
                                      from _14417 + (8 * ceil32(return_data.size)) + 103
                                       len (13 * ceil32(return_data.size)) + 100
                                _24630 = mem[416]
                                _24631 = mem[448]
                                mem[_14417 + (8 * ceil32(return_data.size)) + 103] = mem[492 len 20]
                                mem[_14417 + (8 * ceil32(return_data.size)) + 135] = msg.sender
                                mem[_14417 + (8 * ceil32(return_data.size)) + 167] = address(_24630)
                                mem[_14417 + (8 * ceil32(return_data.size)) + 199] = address(_24631)
                                mem[_14417 + (8 * ceil32(return_data.size)) + 231] = _14312 - _1097
                                emit 0xdcc9f547: mem[_14417 + (8 * ceil32(return_data.size)) + 103 len (13 * ceil32(return_data.size)) + 160], this.address
                                _25145 = mem[_1057]
                                mem[_14417 + (8 * ceil32(return_data.size)) + 103] = _734
                                emit 0xc195856d: mem[_14417 + (8 * ceil32(return_data.size)) + 103 len (13 * ceil32(return_data.size)) + 32], this.address, address(_25145)
                                Mask(248, 0, stor0.field_8) = 0
                                mem[_14417 + (8 * ceil32(return_data.size)) + 103] = 1
                                return memory
                                  from _14417 + (8 * ceil32(return_data.size)) + 103
                                   len (13 * ceil32(return_data.size)) + 32
                            require ext_call.return_data[30 len 2]
                            require 10^14 * ext_call.return_data[30 len 2] / ext_call.return_data[30 len 2] == 10^14
                            _18667 = mem[128]
                            if not 10^14 * ext_call.return_data[30 len 2] / 100:
                                _18793 = mem[128]
                                _18794 = mem[448]
                                mem[_14417 + (2 * ceil32(return_data.size)) + 85] = 'contract.name'
                                mem[_14417 + (2 * ceil32(return_data.size)) + 98] = 'Vault'
                                mem[_14417 + (2 * ceil32(return_data.size)) + 53] = 18
                                mem[64] = _14417 + (2 * ceil32(return_data.size)) + 103
                                s = _14417 + (2 * ceil32(return_data.size)) + 85
                                t = _14417 + (2 * ceil32(return_data.size)) + 103
                                idx = 18
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[_14417 + (2 * ceil32(return_data.size)) + 103] = mem[_14417 + (2 * ceil32(return_data.size)) + 99 len 18] or Mask(112, 144, mem[_14417 + (2 * ceil32(return_data.size)) + 103])
                                _22554 = sha3(mem[_14417 + (2 * ceil32(return_data.size)) + 103 len 18])
                                mem[_14417 + (2 * ceil32(return_data.size)) + 107] = sha3(mem[_14417 + (2 * ceil32(return_data.size)) + 103 len 18])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22554
                                mem[_14417 + (2 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_14417 + (4 * ceil32(return_data.size)) + 107] = address(ext_call.return_data[0])
                                mem[_14417 + (4 * ceil32(return_data.size)) + 139] = 0
                                require ext_code.size(address(_18794))
                                call address(_18794).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[_14417 + (4 * ceil32(return_data.size)) + 107 len (5 * ceil32(return_data.size)) + 64]
                                mem[_14417 + (4 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    mem[_14417 + (4 * ceil32(return_data.size)) + 103] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14417 + (4 * ceil32(return_data.size)) + 107] = 32
                                    mem[_14417 + (4 * ceil32(return_data.size)) + 139] = 37
                                    mem[_14417 + (4 * ceil32(return_data.size)) + 171] = 'Tokens transfer to vault was inv'
                                    mem[_14417 + (4 * ceil32(return_data.size)) + 203] = 'alid.'
                                    revert with memory
                                      from _14417 + (4 * ceil32(return_data.size)) + 103
                                       len (7 * ceil32(return_data.size)) + 132
                                _23838 = mem[448]
                                mem[_14417 + (4 * ceil32(return_data.size)) + 107] = mem[492 len 20]
                                mem[_14417 + (4 * ceil32(return_data.size)) + 139] = _18793
                                require ext_code.size(address(_23838))
                                call address(_23838).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[_14417 + (4 * ceil32(return_data.size)) + 107 len (7 * ceil32(return_data.size)) + 64]
                                mem[_14417 + (4 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14417 + (8 * ceil32(return_data.size)) + 103
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    mem[_14417 + (8 * ceil32(return_data.size)) + 103] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14417 + (8 * ceil32(return_data.size)) + 107] = 32
                                    mem[_14417 + (8 * ceil32(return_data.size)) + 139] = 28
                                    mem[_14417 + (8 * ceil32(return_data.size)) + 171] = 'Transfer to merchant failed.'
                                    revert with memory
                                      from _14417 + (8 * ceil32(return_data.size)) + 103
                                       len (13 * ceil32(return_data.size)) + 100
                                _24626 = mem[416]
                                _24627 = mem[448]
                                mem[_14417 + (8 * ceil32(return_data.size)) + 103] = mem[492 len 20]
                                mem[_14417 + (8 * ceil32(return_data.size)) + 135] = msg.sender
                                mem[_14417 + (8 * ceil32(return_data.size)) + 167] = address(_24626)
                                mem[_14417 + (8 * ceil32(return_data.size)) + 199] = address(_24627)
                                mem[_14417 + (8 * ceil32(return_data.size)) + 231] = _14312 - _1097
                                emit 0xdcc9f547: mem[_14417 + (8 * ceil32(return_data.size)) + 103 len (13 * ceil32(return_data.size)) + 160], this.address
                                _25144 = mem[_1057]
                                mem[_14417 + (8 * ceil32(return_data.size)) + 103] = _734
                                emit 0xc195856d: mem[_14417 + (8 * ceil32(return_data.size)) + 103 len (13 * ceil32(return_data.size)) + 32], this.address, address(_25144)
                                Mask(248, 0, stor0.field_8) = 0
                                mem[_14417 + (8 * ceil32(return_data.size)) + 103] = 1
                                return memory
                                  from _14417 + (8 * ceil32(return_data.size)) + 103
                                   len (13 * ceil32(return_data.size)) + 32
                            require 10^14 * ext_call.return_data[30 len 2] / 100
                            require 10^14 * ext_call.return_data[30 len 2] / 100 * mem[128] / 10^14 * ext_call.return_data[30 len 2] / 100 == mem[128]
                            _19021 = mem[128]
                            _19022 = mem[448]
                            mem[_14417 + (2 * ceil32(return_data.size)) + 85] = 'contract.name'
                            mem[_14417 + (2 * ceil32(return_data.size)) + 98] = 'Vault'
                            mem[_14417 + (2 * ceil32(return_data.size)) + 53] = 18
                            mem[64] = _14417 + (2 * ceil32(return_data.size)) + 103
                            s = _14417 + (2 * ceil32(return_data.size)) + 85
                            t = mem[64]
                            idx = mem[_14417 + (2 * ceil32(return_data.size)) + 53]
                            while idx >= 32:
                                mem[t] = mem[s]
                                _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[mem[64] + floor32(mem[_14417 + (2 * ceil32(return_data.size)) + 53])] = mem[_14417 + (2 * ceil32(return_data.size)) + floor32(mem[_14417 + (2 * ceil32(return_data.size)) + 53]) + -(mem[_14417 + (2 * ceil32(return_data.size)) + 53] % 32) + 117 len mem[_14417 + (2 * ceil32(return_data.size)) + 53] % 32] or Mask(8 * -(mem[_14417 + (2 * ceil32(return_data.size)) + 53] % 32) + 32, -(8 * -(mem[_14417 + (2 * ceil32(return_data.size)) + 53] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_14417 + (2 * ceil32(return_data.size)) + 53])])
                            _22548 = sha3(mem[mem[64] len _14417 + (2 * ceil32(return_data.size)) + -mem[64] + 121])
                            mem[mem[64] + 4] = sha3(mem[mem[64] len _14417 + (2 * ceil32(return_data.size)) + -mem[64] + 121])
                            require ext_code.size(_storageAddress)
                            call _storageAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args _22548
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _23127 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[mem[64] + 4] = mem[_23127 + 12 len 20]
                            mem[mem[64] + 36] = 10^14 * uint16(ext_call.return_data[0]) / 100 * _18667 / 100 / 10^14
                            require ext_code.size(address(_19022))
                            call address(_19022).0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], 10^14 * uint16(ext_call.return_data[0]) / 100 * _18667 / 100 / 10^14
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _23511 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_23511]:
                                revert with 0, 'Tokens transfer to vault was invalid.'
                            _23835 = mem[448]
                            mem[mem[64] + 4] = mem[492 len 20]
                            mem[mem[64] + 36] = _19021 - (10^14 * uint16(ext_call.return_data[0]) / 100 * _18667 / 100 / 10^14)
                            require ext_code.size(address(_23835))
                            call address(_23835).0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _19021 - (10^14 * uint16(ext_call.return_data[0]) / 100 * _18667 / 100 / 10^14)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _24279 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_24279]:
                                revert with 0, 'Transfer to merchant failed.'
                            _24622 = mem[416]
                            _24623 = mem[448]
                            mem[mem[64]] = mem[492 len 20]
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = address(_24622)
                            mem[mem[64] + 96] = address(_24623)
                            mem[mem[64] + 128] = _14312 - _1097
                            emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24622), address(_24623), _14312 - _1097, this.address
                        else:
                            mem[_1100 + ceil32(_1139) + ceil32(_1185) + ceil32(_4937) + _8982 + 836] = 0
                            require ext_code.size(address(_1099))
                            call address(_1099).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1100 + ceil32(_1139) + ceil32(_1185) + ceil32(_4937) + ceil32(_8982) + -mem[64] + 832]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13656 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_13656]:
                                _13762 = mem[_1057]
                                mem[mem[64]] = _734
                                emit 0x6230081d: _734, this.address, address(_13762)
                                require idx + 1 >= idx
                                _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = _734
                                idx = idx + 1
                                continue 
                            _13763 = mem[416]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_13763))
                            call address(_13763).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13912 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _13944 = mem[_13912]
                            _13995 = mem[416]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _13944
                            require ext_code.size(address(_13995))
                            call address(_13995).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _13944
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14072 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_14072]:
                                revert with 0, 'Transfer to customer failed.'
                            _14174 = mem[448]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_14174))
                            call address(_14174).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14296 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _14328 = mem[_14296]
                            require _1097 <= mem[_14296]
                            if mem[_14296] - _1097 != mem[128]:
                                revert with 0, 'StablePay target balance is not valid.'
                            _14481 = mem[64]
                            mem[mem[64] + 32] = 'contract.name'
                            mem[mem[64] + 45] = 'Settings'
                            _14482 = mem[64]
                            mem[mem[64]] = 21
                            mem[64] = mem[64] + 53
                            _14484 = mem[_14482]
                            s = _14482 + 32
                            t = mem[64]
                            idx = mem[_14482]
                            while idx >= 32:
                                mem[t] = mem[s]
                                _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[mem[64] + floor32(mem[_14482])] = mem[_14482 + floor32(mem[_14482]) + -(mem[_14482] % 32) + 64 len mem[_14482] % 32] or Mask(8 * -(mem[_14482] % 32) + 32, -(8 * -(mem[_14482] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_14482])])
                            _18258 = sha3(mem[mem[64] len _14484 + _14481 + -mem[64] + 53])
                            mem[mem[64] + 4] = sha3(mem[mem[64] len _14484 + _14481 + -mem[64] + 53])
                            require ext_code.size(_storageAddress)
                            call _storageAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args _18258
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18444 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(mem[_18444 + 12 len 20])
                            call mem[_18444 + 12 len 20].0x6ea8bc10 with:
                                 gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18572 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _18604 = mem[_18572]
                            if not mem[_18572 + 30 len 2]:
                                _18707 = mem[128]
                                _18708 = mem[448]
                                _18801 = mem[64]
                                mem[mem[64] + 32] = 'contract.name'
                                mem[mem[64] + 45] = 'Vault'
                                _18802 = mem[64]
                                mem[mem[64]] = 18
                                mem[64] = mem[64] + 50
                                _18804 = mem[_18802]
                                s = _18802 + 32
                                t = mem[64]
                                idx = mem[_18802]
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_18802])] = mem[_18802 + floor32(mem[_18802]) + -(mem[_18802] % 32) + 64 len mem[_18802] % 32] or Mask(8 * -(mem[_18802] % 32) + 32, -(8 * -(mem[_18802] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_18802])])
                                _22578 = sha3(mem[mem[64] len _18804 + _18801 + -mem[64] + 50])
                                mem[mem[64] + 4] = sha3(mem[mem[64] len _18804 + _18801 + -mem[64] + 50])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22578
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23132 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64] + 4] = mem[_23132 + 12 len 20]
                                mem[mem[64] + 36] = 0
                                require ext_code.size(address(_18708))
                                call address(_18708).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23516 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_23516]:
                                    revert with 0, 'Tokens transfer to vault was invalid.'
                                _23850 = mem[448]
                                mem[mem[64] + 4] = mem[492 len 20]
                                mem[mem[64] + 36] = _18707
                                require ext_code.size(address(_23850))
                                call address(_23850).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _18707
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _24284 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_24284]:
                                    revert with 0, 'Transfer to merchant failed.'
                                _24642 = mem[416]
                                _24643 = mem[448]
                                mem[mem[64]] = mem[492 len 20]
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = address(_24642)
                                mem[mem[64] + 96] = address(_24643)
                                mem[mem[64] + 128] = _14328 - _1097
                                emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24642), address(_24643), _14328 - _1097, this.address
                            else:
                                require mem[_18572 + 30 len 2]
                                require 10^14 * mem[_18572 + 30 len 2] / mem[_18572 + 30 len 2] == 10^14
                                _18668 = mem[128]
                                if not 10^14 * mem[_18572 + 30 len 2] / 100:
                                    _18799 = mem[128]
                                    _18800 = mem[448]
                                    _19035 = mem[64]
                                    mem[mem[64] + 32] = 'contract.name'
                                    mem[mem[64] + 45] = 'Vault'
                                    _19036 = mem[64]
                                    mem[mem[64]] = 18
                                    mem[64] = mem[64] + 50
                                    _19038 = mem[_19036]
                                    s = _19036 + 32
                                    t = mem[64]
                                    idx = mem[_19036]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_19036])] = mem[_19036 + floor32(mem[_19036]) + -(mem[_19036] % 32) + 64 len mem[_19036] % 32] or Mask(8 * -(mem[_19036] % 32) + 32, -(8 * -(mem[_19036] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_19036])])
                                    _22572 = sha3(mem[mem[64] len _19038 + _19035 + -mem[64] + 50])
                                    mem[mem[64] + 4] = sha3(mem[mem[64] len _19038 + _19035 + -mem[64] + 50])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22572
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23131 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = mem[_23131 + 12 len 20]
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(address(_18800))
                                    call address(_18800).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23515 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_23515]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _23847 = mem[448]
                                    mem[mem[64] + 4] = mem[492 len 20]
                                    mem[mem[64] + 36] = _18799
                                    require ext_code.size(address(_23847))
                                    call address(_23847).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _18799
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24283 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_24283]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24638 = mem[416]
                                    _24639 = mem[448]
                                    mem[mem[64]] = mem[492 len 20]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = address(_24638)
                                    mem[mem[64] + 96] = address(_24639)
                                    mem[mem[64] + 128] = _14328 - _1097
                                    emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24638), address(_24639), _14328 - _1097, this.address
                                else:
                                    require 10^14 * mem[_18572 + 30 len 2] / 100
                                    require 10^14 * mem[_18572 + 30 len 2] / 100 * mem[128] / 10^14 * mem[_18572 + 30 len 2] / 100 == mem[128]
                                    _19033 = mem[128]
                                    _19034 = mem[448]
                                    _19403 = mem[64]
                                    mem[mem[64] + 32] = 'contract.name'
                                    mem[mem[64] + 45] = 'Vault'
                                    _19404 = mem[64]
                                    mem[mem[64]] = 18
                                    mem[64] = mem[64] + 50
                                    _19406 = mem[_19404]
                                    s = _19404 + 32
                                    t = mem[64]
                                    idx = mem[_19404]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_19404])] = mem[_19404 + floor32(mem[_19404]) + -(mem[_19404] % 32) + 64 len mem[_19404] % 32] or Mask(8 * -(mem[_19404] % 32) + 32, -(8 * -(mem[_19404] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_19404])])
                                    _22566 = sha3(mem[mem[64] len _19406 + _19403 + -mem[64] + 50])
                                    mem[mem[64] + 4] = sha3(mem[mem[64] len _19406 + _19403 + -mem[64] + 50])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22566
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23130 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = mem[_23130 + 12 len 20]
                                    mem[mem[64] + 36] = 10^14 * uint16(_18604) / 100 * _18668 / 100 / 10^14
                                    require ext_code.size(address(_19034))
                                    call address(_19034).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 10^14 * uint16(_18604) / 100 * _18668 / 100 / 10^14
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23514 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_23514]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _23844 = mem[448]
                                    mem[mem[64] + 4] = mem[492 len 20]
                                    mem[mem[64] + 36] = _19033 - (10^14 * uint16(_18604) / 100 * _18668 / 100 / 10^14)
                                    require ext_code.size(address(_23844))
                                    call address(_23844).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _19033 - (10^14 * uint16(_18604) / 100 * _18668 / 100 / 10^14)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24282 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_24282]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24634 = mem[416]
                                    _24635 = mem[448]
                                    mem[mem[64]] = mem[492 len 20]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = address(_24634)
                                    mem[mem[64] + 96] = address(_24635)
                                    mem[mem[64] + 128] = _14328 - _1097
                                    emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24634), address(_24635), _14328 - _1097, this.address
            else:
                mem[_1100 + _1139 + 740] = 0
                _1183 = mem[672]
                mem[_1100 + 612] = ceil32(_1139) + 704
                _1187 = mem[_1183]
                mem[_1100 + ceil32(_1139) + 740] = mem[_1183]
                s = 0
                while s < _1187:
                    mem[_1100 + ceil32(_1139) + s + 772] = mem[_1183 + s + 32]
                    _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                    s = s + 32
                    continue 
                if ceil32(_1187) <= _1187:
                    _4926 = mem[704]
                    mem[_1100 + 644] = ceil32(_1139) + ceil32(_1187) + 736
                    _4934 = mem[_4926]
                    mem[_1100 + ceil32(_1139) + ceil32(_1187) + 772] = mem[_4926]
                    s = 0
                    while s < _4934:
                        mem[_1100 + ceil32(_1139) + ceil32(_1187) + s + 804] = mem[_4926 + s + 32]
                        _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                        s = s + 32
                        continue 
                    if ceil32(_4934) <= _4934:
                        _8959 = mem[736]
                        mem[_1100 + 676] = ceil32(_1139) + ceil32(_1187) + ceil32(_4934) + 768
                        _8975 = mem[_8959]
                        mem[_1100 + ceil32(_1139) + ceil32(_1187) + ceil32(_4934) + 804] = mem[_8959]
                        s = 0
                        while s < _8975:
                            mem[_1100 + ceil32(_1139) + ceil32(_1187) + ceil32(_4934) + s + 836] = mem[_8959 + s + 32]
                            _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                            s = s + 32
                            continue 
                        if ceil32(_8975) <= _8975:
                            require ext_code.size(address(_1099))
                            call address(_1099).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1100 + ceil32(_1139) + ceil32(_1187) + ceil32(_4934) + ceil32(_8975) + -mem[64] + 832]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13641 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_13641]:
                                _13713 = mem[_1057]
                                mem[mem[64]] = _734
                                emit 0x6230081d: _734, this.address, address(_13713)
                                require idx + 1 >= idx
                                _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = _734
                                idx = idx + 1
                                continue 
                            _13714 = mem[416]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_13714))
                            call address(_13714).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13885 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _13929 = mem[_13885]
                            _13965 = mem[416]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _13929
                            require ext_code.size(address(_13965))
                            call address(_13965).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _13929
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14057 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_14057]:
                                revert with 0, 'Transfer to customer failed.'
                            _14129 = mem[448]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_14129))
                            call address(_14129).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14281 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _14313 = mem[_14281]
                            require _1097 <= mem[_14281]
                            if mem[_14281] - _1097 != mem[128]:
                                revert with 0, 'StablePay target balance is not valid.'
                            _14421 = mem[64]
                            mem[mem[64] + 32] = 'contract.name'
                            mem[mem[64] + 45] = 'Settings'
                            _14422 = mem[64]
                            mem[mem[64]] = 21
                            mem[64] = mem[64] + 53
                            _14424 = mem[_14422]
                            s = _14422 + 32
                            t = _14421 + 53
                            idx = mem[_14422]
                            while idx >= 32:
                                mem[t] = mem[s]
                                _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[_14421 + floor32(mem[_14422]) + 53] = mem[_14422 + -(mem[_14422] % 32) + floor32(mem[_14422]) + 64 len mem[_14422] % 32] or Mask(8 * -(mem[_14422] % 32) + 32, -(8 * -(mem[_14422] % 32) + 32) + 256, mem[_14421 + floor32(mem[_14422]) + 53])
                            _18264 = sha3(mem[_14421 + 53 len _14424])
                            mem[_14421 + 57] = sha3(mem[_14421 + 53 len _14424])
                            require ext_code.size(_storageAddress)
                            call _storageAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args _18264
                            mem[_14421 + 53] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x6ea8bc10 with:
                                 gas gas_remaining wei
                            mem[_14421 + ceil32(return_data.size) + 53] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _14421 + (2 * ceil32(return_data.size)) + 53
                            require return_data.size >= 32
                            if not ext_call.return_data[30 len 2]:
                                _18709 = mem[128]
                                _18710 = mem[448]
                                mem[_14421 + (2 * ceil32(return_data.size)) + 85] = 'contract.name'
                                mem[_14421 + (2 * ceil32(return_data.size)) + 98] = 'Vault'
                                mem[_14421 + (2 * ceil32(return_data.size)) + 53] = 18
                                mem[64] = _14421 + (2 * ceil32(return_data.size)) + 103
                                s = _14421 + (2 * ceil32(return_data.size)) + 85
                                t = mem[64]
                                idx = mem[_14421 + (2 * ceil32(return_data.size)) + 53]
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_14421 + (2 * ceil32(return_data.size)) + 53])] = mem[_14421 + (2 * ceil32(return_data.size)) + floor32(mem[_14421 + (2 * ceil32(return_data.size)) + 53]) + -(mem[_14421 + (2 * ceil32(return_data.size)) + 53] % 32) + 117 len mem[_14421 + (2 * ceil32(return_data.size)) + 53] % 32] or Mask(8 * -(mem[_14421 + (2 * ceil32(return_data.size)) + 53] % 32) + 32, -(8 * -(mem[_14421 + (2 * ceil32(return_data.size)) + 53] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_14421 + (2 * ceil32(return_data.size)) + 53])])
                                _22596 = sha3(mem[mem[64] len _14421 + (2 * ceil32(return_data.size)) + -mem[64] + 121])
                                mem[mem[64] + 4] = sha3(mem[mem[64] len _14421 + (2 * ceil32(return_data.size)) + -mem[64] + 121])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22596
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23135 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64] + 4] = mem[_23135 + 12 len 20]
                                mem[mem[64] + 36] = 0
                                require ext_code.size(address(_18710))
                                call address(_18710).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23519 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_23519]:
                                    revert with 0, 'Tokens transfer to vault was invalid.'
                                _23859 = mem[448]
                                mem[mem[64] + 4] = mem[492 len 20]
                                mem[mem[64] + 36] = _18709
                                require ext_code.size(address(_23859))
                                call address(_23859).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _18709
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _24287 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_24287]:
                                    revert with 0, 'Transfer to merchant failed.'
                                _24654 = mem[416]
                                _24655 = mem[448]
                                mem[mem[64]] = mem[492 len 20]
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = address(_24654)
                                mem[mem[64] + 96] = address(_24655)
                                mem[mem[64] + 128] = _14313 - _1097
                                emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24654), address(_24655), _14313 - _1097, this.address
                                emit 0xc195856d: _734, this.address, mem[_1057 + 12 len 20]
                                Mask(248, 0, stor0.field_8) = 0
                                return 1
                            require ext_call.return_data[30 len 2]
                            require 10^14 * ext_call.return_data[30 len 2] / ext_call.return_data[30 len 2] == 10^14
                            _18669 = mem[128]
                            if not 10^14 * ext_call.return_data[30 len 2] / 100:
                                _18805 = mem[128]
                                _18806 = mem[448]
                                mem[_14421 + (2 * ceil32(return_data.size)) + 85] = 'contract.name'
                                mem[_14421 + (2 * ceil32(return_data.size)) + 98] = 'Vault'
                                mem[_14421 + (2 * ceil32(return_data.size)) + 53] = 18
                                mem[64] = _14421 + (2 * ceil32(return_data.size)) + 103
                                s = _14421 + (2 * ceil32(return_data.size)) + 85
                                t = _14421 + (2 * ceil32(return_data.size)) + 103
                                idx = 18
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[_14421 + (2 * ceil32(return_data.size)) + 103] = mem[_14421 + (2 * ceil32(return_data.size)) + 99 len 18] or Mask(112, 144, mem[_14421 + (2 * ceil32(return_data.size)) + 103])
                                _22590 = sha3(mem[_14421 + (2 * ceil32(return_data.size)) + 103 len 18])
                                mem[_14421 + (2 * ceil32(return_data.size)) + 107] = sha3(mem[_14421 + (2 * ceil32(return_data.size)) + 103 len 18])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22590
                                mem[_14421 + (2 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_14421 + (4 * ceil32(return_data.size)) + 107] = address(ext_call.return_data[0])
                                mem[_14421 + (4 * ceil32(return_data.size)) + 139] = 0
                                require ext_code.size(address(_18806))
                                call address(_18806).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[_14421 + (4 * ceil32(return_data.size)) + 107 len (5 * ceil32(return_data.size)) + 64]
                                mem[_14421 + (4 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    mem[_14421 + (4 * ceil32(return_data.size)) + 103] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14421 + (4 * ceil32(return_data.size)) + 107] = 32
                                    mem[_14421 + (4 * ceil32(return_data.size)) + 139] = 37
                                    mem[_14421 + (4 * ceil32(return_data.size)) + 171] = 'Tokens transfer to vault was inv'
                                    mem[_14421 + (4 * ceil32(return_data.size)) + 203] = 'alid.'
                                    revert with memory
                                      from _14421 + (4 * ceil32(return_data.size)) + 103
                                       len (7 * ceil32(return_data.size)) + 132
                                _23856 = mem[448]
                                mem[_14421 + (4 * ceil32(return_data.size)) + 107] = mem[492 len 20]
                                mem[_14421 + (4 * ceil32(return_data.size)) + 139] = _18805
                                require ext_code.size(address(_23856))
                                call address(_23856).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[_14421 + (4 * ceil32(return_data.size)) + 107 len (7 * ceil32(return_data.size)) + 64]
                                mem[_14421 + (4 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14421 + (8 * ceil32(return_data.size)) + 103
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    mem[_14421 + (8 * ceil32(return_data.size)) + 103] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14421 + (8 * ceil32(return_data.size)) + 107] = 32
                                    mem[_14421 + (8 * ceil32(return_data.size)) + 139] = 28
                                    mem[_14421 + (8 * ceil32(return_data.size)) + 171] = 'Transfer to merchant failed.'
                                    revert with memory
                                      from _14421 + (8 * ceil32(return_data.size)) + 103
                                       len (13 * ceil32(return_data.size)) + 100
                                _24650 = mem[416]
                                _24651 = mem[448]
                                mem[_14421 + (8 * ceil32(return_data.size)) + 103] = mem[492 len 20]
                                mem[_14421 + (8 * ceil32(return_data.size)) + 135] = msg.sender
                                mem[_14421 + (8 * ceil32(return_data.size)) + 167] = address(_24650)
                                mem[_14421 + (8 * ceil32(return_data.size)) + 199] = address(_24651)
                                mem[_14421 + (8 * ceil32(return_data.size)) + 231] = _14313 - _1097
                                emit 0xdcc9f547: mem[_14421 + (8 * ceil32(return_data.size)) + 103 len (13 * ceil32(return_data.size)) + 160], this.address
                                _25150 = mem[_1057]
                                mem[_14421 + (8 * ceil32(return_data.size)) + 103] = _734
                                emit 0xc195856d: mem[_14421 + (8 * ceil32(return_data.size)) + 103 len (13 * ceil32(return_data.size)) + 32], this.address, address(_25150)
                            else:
                                require 10^14 * ext_call.return_data[30 len 2] / 100
                                require 10^14 * ext_call.return_data[30 len 2] / 100 * mem[128] / 10^14 * ext_call.return_data[30 len 2] / 100 == mem[128]
                                _19045 = mem[128]
                                _19046 = mem[448]
                                mem[_14421 + (2 * ceil32(return_data.size)) + 85] = 'contract.name'
                                mem[_14421 + (2 * ceil32(return_data.size)) + 98] = 'Vault'
                                mem[_14421 + (2 * ceil32(return_data.size)) + 53] = 18
                                mem[64] = _14421 + (2 * ceil32(return_data.size)) + 103
                                s = _14421 + (2 * ceil32(return_data.size)) + 85
                                t = _14421 + (2 * ceil32(return_data.size)) + 103
                                idx = 18
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[_14421 + (2 * ceil32(return_data.size)) + 103] = mem[_14421 + (2 * ceil32(return_data.size)) + 99 len 18] or Mask(112, 144, mem[_14421 + (2 * ceil32(return_data.size)) + 103])
                                _22584 = sha3(mem[_14421 + (2 * ceil32(return_data.size)) + 103 len 18])
                                mem[_14421 + (2 * ceil32(return_data.size)) + 107] = sha3(mem[_14421 + (2 * ceil32(return_data.size)) + 103 len 18])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22584
                                mem[_14421 + (2 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_14421 + (4 * ceil32(return_data.size)) + 107] = address(ext_call.return_data[0])
                                mem[_14421 + (4 * ceil32(return_data.size)) + 139] = 10^14 * uint16(ext_call.return_data[0]) / 100 * _18669 / 100 / 10^14
                                require ext_code.size(address(_19046))
                                call address(_19046).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[_14421 + (4 * ceil32(return_data.size)) + 107 len (5 * ceil32(return_data.size)) + 64]
                                mem[_14421 + (4 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    mem[_14421 + (4 * ceil32(return_data.size)) + 103] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14421 + (4 * ceil32(return_data.size)) + 107] = 32
                                    mem[_14421 + (4 * ceil32(return_data.size)) + 139] = 37
                                    mem[_14421 + (4 * ceil32(return_data.size)) + 171] = 'Tokens transfer to vault was inv'
                                    mem[_14421 + (4 * ceil32(return_data.size)) + 203] = 'alid.'
                                    revert with memory
                                      from _14421 + (4 * ceil32(return_data.size)) + 103
                                       len (7 * ceil32(return_data.size)) + 132
                                _23853 = mem[448]
                                mem[_14421 + (4 * ceil32(return_data.size)) + 107] = mem[492 len 20]
                                mem[_14421 + (4 * ceil32(return_data.size)) + 139] = _19045 - (10^14 * uint16(ext_call.return_data[0]) / 100 * _18669 / 100 / 10^14)
                                require ext_code.size(address(_23853))
                                call address(_23853).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[_14421 + (4 * ceil32(return_data.size)) + 107 len (7 * ceil32(return_data.size)) + 64]
                                mem[_14421 + (4 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14421 + (8 * ceil32(return_data.size)) + 103
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    mem[_14421 + (8 * ceil32(return_data.size)) + 103] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14421 + (8 * ceil32(return_data.size)) + 107] = 32
                                    mem[_14421 + (8 * ceil32(return_data.size)) + 139] = 28
                                    mem[_14421 + (8 * ceil32(return_data.size)) + 171] = 'Transfer to merchant failed.'
                                    revert with memory
                                      from _14421 + (8 * ceil32(return_data.size)) + 103
                                       len (13 * ceil32(return_data.size)) + 100
                                _24646 = mem[416]
                                _24647 = mem[448]
                                mem[_14421 + (8 * ceil32(return_data.size)) + 103] = mem[492 len 20]
                                mem[_14421 + (8 * ceil32(return_data.size)) + 135] = msg.sender
                                mem[_14421 + (8 * ceil32(return_data.size)) + 167] = address(_24646)
                                mem[_14421 + (8 * ceil32(return_data.size)) + 199] = address(_24647)
                                mem[_14421 + (8 * ceil32(return_data.size)) + 231] = _14313 - _1097
                                emit 0xdcc9f547: mem[_14421 + (8 * ceil32(return_data.size)) + 103 len (13 * ceil32(return_data.size)) + 160], this.address
                                _25149 = mem[_1057]
                                mem[_14421 + (8 * ceil32(return_data.size)) + 103] = _734
                                emit 0xc195856d: mem[_14421 + (8 * ceil32(return_data.size)) + 103 len (13 * ceil32(return_data.size)) + 32], this.address, address(_25149)
                            Mask(248, 0, stor0.field_8) = 0
                            mem[_14421 + (8 * ceil32(return_data.size)) + 103] = 1
                            return memory
                              from _14421 + (8 * ceil32(return_data.size)) + 103
                               len (13 * ceil32(return_data.size)) + 32
                        mem[_1100 + ceil32(_1139) + ceil32(_1187) + ceil32(_4934) + _8975 + 836] = 0
                        require ext_code.size(address(_1099))
                        call address(_1099).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1100 + ceil32(_1139) + ceil32(_1187) + ceil32(_4934) + ceil32(_8975) + -mem[64] + 832]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _13657 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_13657]:
                            _13766 = mem[_1057]
                            mem[mem[64]] = _734
                            emit 0x6230081d: _734, this.address, address(_13766)
                            require idx + 1 >= idx
                            _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                            s = _734
                            idx = idx + 1
                            continue 
                        _13767 = mem[416]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_13767))
                        call address(_13767).0x70a08231 with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _13913 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _13945 = mem[_13913]
                        _13997 = mem[416]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _13945
                        require ext_code.size(address(_13997))
                        call address(_13997).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _13945
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14073 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_14073]:
                            revert with 0, 'Transfer to customer failed.'
                        _14177 = mem[448]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_14177))
                        call address(_14177).0x70a08231 with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14297 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _14329 = mem[_14297]
                        require _1097 <= mem[_14297]
                        if mem[_14297] - _1097 != mem[128]:
                            revert with 0, 'StablePay target balance is not valid.'
                        _14485 = mem[64]
                        mem[mem[64] + 32] = 'contract.name'
                        mem[mem[64] + 45] = 'Settings'
                        _14486 = mem[64]
                        mem[mem[64]] = 21
                        mem[64] = mem[64] + 53
                        _14488 = mem[_14486]
                        s = _14486 + 32
                        t = mem[64]
                        idx = mem[_14486]
                        while idx >= 32:
                            mem[t] = mem[s]
                            _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[mem[64] + floor32(mem[_14486])] = mem[_14486 + floor32(mem[_14486]) + -(mem[_14486] % 32) + 64 len mem[_14486] % 32] or Mask(8 * -(mem[_14486] % 32) + 32, -(8 * -(mem[_14486] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_14486])])
                        _18270 = sha3(mem[mem[64] len _14488 + _14485 + -mem[64] + 53])
                        mem[mem[64] + 4] = sha3(mem[mem[64] len _14488 + _14485 + -mem[64] + 53])
                        require ext_code.size(_storageAddress)
                        call _storageAddress.0x21f8a721 with:
                             gas gas_remaining wei
                            args _18270
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18446 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require ext_code.size(mem[_18446 + 12 len 20])
                        call mem[_18446 + 12 len 20].0x6ea8bc10 with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18574 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _18606 = mem[_18574]
                        if not mem[_18574 + 30 len 2]:
                            _18711 = mem[128]
                            _18712 = mem[448]
                            _18813 = mem[64]
                            mem[mem[64] + 32] = 'contract.name'
                            mem[mem[64] + 45] = 'Vault'
                            _18814 = mem[64]
                            mem[mem[64]] = 18
                            mem[64] = mem[64] + 50
                            _18816 = mem[_18814]
                            s = _18814 + 32
                            t = mem[64]
                            idx = mem[_18814]
                            while idx >= 32:
                                mem[t] = mem[s]
                                _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[mem[64] + floor32(mem[_18814])] = mem[_18814 + floor32(mem[_18814]) + -(mem[_18814] % 32) + 64 len mem[_18814] % 32] or Mask(8 * -(mem[_18814] % 32) + 32, -(8 * -(mem[_18814] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_18814])])
                            _22614 = sha3(mem[mem[64] len _18816 + _18813 + -mem[64] + 50])
                            mem[mem[64] + 4] = sha3(mem[mem[64] len _18816 + _18813 + -mem[64] + 50])
                            require ext_code.size(_storageAddress)
                            call _storageAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args _22614
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _23138 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[mem[64] + 4] = mem[_23138 + 12 len 20]
                            mem[mem[64] + 36] = 0
                            require ext_code.size(address(_18712))
                            call address(_18712).0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _23522 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_23522]:
                                revert with 0, 'Tokens transfer to vault was invalid.'
                            _23868 = mem[448]
                            mem[mem[64] + 4] = mem[492 len 20]
                            mem[mem[64] + 36] = _18711
                            require ext_code.size(address(_23868))
                            call address(_23868).0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _18711
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _24290 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_24290]:
                                revert with 0, 'Transfer to merchant failed.'
                            _24666 = mem[416]
                            _24667 = mem[448]
                            mem[mem[64]] = mem[492 len 20]
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = address(_24666)
                            mem[mem[64] + 96] = address(_24667)
                            mem[mem[64] + 128] = _14329 - _1097
                            emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24666), address(_24667), _14329 - _1097, this.address
                        else:
                            require mem[_18574 + 30 len 2]
                            require 10^14 * mem[_18574 + 30 len 2] / mem[_18574 + 30 len 2] == 10^14
                            _18670 = mem[128]
                            if not 10^14 * mem[_18574 + 30 len 2] / 100:
                                _18811 = mem[128]
                                _18812 = mem[448]
                                _19059 = mem[64]
                                mem[mem[64] + 32] = 'contract.name'
                                mem[mem[64] + 45] = 'Vault'
                                _19060 = mem[64]
                                mem[mem[64]] = 18
                                mem[64] = mem[64] + 50
                                _19062 = mem[_19060]
                                s = _19060 + 32
                                t = _19059 + 50
                                idx = mem[_19060]
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[_19059 + floor32(mem[_19060]) + 50] = mem[_19060 + -(mem[_19060] % 32) + floor32(mem[_19060]) + 64 len mem[_19060] % 32] or Mask(8 * -(mem[_19060] % 32) + 32, -(8 * -(mem[_19060] % 32) + 32) + 256, mem[_19059 + floor32(mem[_19060]) + 50])
                                _22608 = sha3(mem[_19059 + 50 len _19062])
                                mem[_19059 + 54] = sha3(mem[_19059 + 50 len _19062])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22608
                                mem[_19059 + 50] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _19059 + ceil32(return_data.size) + 50
                                require return_data.size >= 32
                                mem[_19059 + ceil32(return_data.size) + 54] = address(ext_call.return_data[0])
                                mem[_19059 + ceil32(return_data.size) + 86] = 0
                                require ext_code.size(address(_18812))
                                call address(_18812).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), 0
                                mem[_19059 + ceil32(return_data.size) + 50] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _19059 + (2 * ceil32(return_data.size)) + 50
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Tokens transfer to vault was invalid.'
                                _23865 = mem[448]
                                _23866 = mem[480]
                                mem[_19059 + (2 * ceil32(return_data.size)) + 54] = mem[492 len 20]
                                mem[_19059 + (2 * ceil32(return_data.size)) + 86] = _18811
                                require ext_code.size(address(_23865))
                                call address(_23865).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(_23866), _18811
                                mem[_19059 + (2 * ceil32(return_data.size)) + 50] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _19059 + (4 * ceil32(return_data.size)) + 50
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Transfer to merchant failed.'
                                _24662 = mem[416]
                                _24663 = mem[448]
                                mem[_19059 + (4 * ceil32(return_data.size)) + 50] = mem[492 len 20]
                                mem[_19059 + (4 * ceil32(return_data.size)) + 82] = msg.sender
                                mem[_19059 + (4 * ceil32(return_data.size)) + 114] = address(_24662)
                                mem[_19059 + (4 * ceil32(return_data.size)) + 146] = address(_24663)
                                mem[_19059 + (4 * ceil32(return_data.size)) + 178] = _14329 - _1097
                                emit 0xdcc9f547: mem[_19059 + (4 * ceil32(return_data.size)) + 50], msg.sender, address(_24662), address(_24663), _14329 - _1097, this.address
                            else:
                                require 10^14 * mem[_18574 + 30 len 2] / 100
                                require 10^14 * mem[_18574 + 30 len 2] / 100 * mem[128] / 10^14 * mem[_18574 + 30 len 2] / 100 == mem[128]
                                _19057 = mem[128]
                                _19058 = mem[448]
                                _19423 = mem[64]
                                mem[mem[64] + 32] = 'contract.name'
                                mem[mem[64] + 45] = 'Vault'
                                _19424 = mem[64]
                                mem[mem[64]] = 18
                                mem[64] = mem[64] + 50
                                _19426 = mem[_19424]
                                s = _19424 + 32
                                t = _19423 + 50
                                idx = mem[_19424]
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[_19423 + floor32(mem[_19424]) + 50] = mem[_19424 + -(mem[_19424] % 32) + floor32(mem[_19424]) + 64 len mem[_19424] % 32] or Mask(8 * -(mem[_19424] % 32) + 32, -(8 * -(mem[_19424] % 32) + 32) + 256, mem[_19423 + floor32(mem[_19424]) + 50])
                                _22602 = sha3(mem[_19423 + 50 len _19426])
                                mem[_19423 + 54] = sha3(mem[_19423 + 50 len _19426])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22602
                                mem[_19423 + 50] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _19423 + ceil32(return_data.size) + 50
                                require return_data.size >= 32
                                mem[_19423 + ceil32(return_data.size) + 54] = address(ext_call.return_data[0])
                                mem[_19423 + ceil32(return_data.size) + 86] = 10^14 * uint16(_18606) / 100 * _18670 / 100 / 10^14
                                require ext_code.size(address(_19058))
                                call address(_19058).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), 10^14 * uint16(_18606) / 100 * _18670 / 100 / 10^14
                                mem[_19423 + ceil32(return_data.size) + 50] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _19423 + (2 * ceil32(return_data.size)) + 50
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Tokens transfer to vault was invalid.'
                                _23862 = mem[448]
                                _23863 = mem[480]
                                mem[_19423 + (2 * ceil32(return_data.size)) + 54] = mem[492 len 20]
                                mem[_19423 + (2 * ceil32(return_data.size)) + 86] = _19057 - (10^14 * uint16(_18606) / 100 * _18670 / 100 / 10^14)
                                require ext_code.size(address(_23862))
                                call address(_23862).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(_23863), _19057 - (10^14 * uint16(_18606) / 100 * _18670 / 100 / 10^14)
                                mem[_19423 + (2 * ceil32(return_data.size)) + 50] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _19423 + (4 * ceil32(return_data.size)) + 50
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Transfer to merchant failed.'
                                _24658 = mem[416]
                                _24659 = mem[448]
                                mem[_19423 + (4 * ceil32(return_data.size)) + 50] = mem[492 len 20]
                                mem[_19423 + (4 * ceil32(return_data.size)) + 82] = msg.sender
                                mem[_19423 + (4 * ceil32(return_data.size)) + 114] = address(_24658)
                                mem[_19423 + (4 * ceil32(return_data.size)) + 146] = address(_24659)
                                mem[_19423 + (4 * ceil32(return_data.size)) + 178] = _14329 - _1097
                                emit 0xdcc9f547: mem[_19423 + (4 * ceil32(return_data.size)) + 50], msg.sender, address(_24658), address(_24659), _14329 - _1097, this.address
                    else:
                        mem[_1100 + ceil32(_1139) + ceil32(_1187) + _4934 + 804] = 0
                        _8967 = mem[736]
                        mem[_1100 + 676] = ceil32(_1139) + ceil32(_1187) + ceil32(_4934) + 768
                        _8983 = mem[_8967]
                        mem[_1100 + ceil32(_1139) + ceil32(_1187) + ceil32(_4934) + 804] = mem[_8967]
                        s = 0
                        while s < _8983:
                            mem[_1100 + ceil32(_1139) + ceil32(_1187) + ceil32(_4934) + s + 836] = mem[_8967 + s + 32]
                            _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                            s = s + 32
                            continue 
                        if ceil32(_8983) <= _8983:
                            require ext_code.size(address(_1099))
                            call address(_1099).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1100 + ceil32(_1139) + ceil32(_1187) + ceil32(_4934) + ceil32(_8983) + -mem[64] + 832]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13642 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_13642]:
                                _13716 = mem[_1057]
                                mem[mem[64]] = _734
                                emit 0x6230081d: _734, this.address, address(_13716)
                                require idx + 1 >= idx
                                _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = _734
                                idx = idx + 1
                                continue 
                            _13717 = mem[416]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_13717))
                            call address(_13717).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13887 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _13930 = mem[_13887]
                            _13967 = mem[416]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _13930
                            require ext_code.size(address(_13967))
                            call address(_13967).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _13930
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14058 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_14058]:
                                revert with 0, 'Transfer to customer failed.'
                            _14132 = mem[448]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_14132))
                            call address(_14132).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14282 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _14314 = mem[_14282]
                            require _1097 <= mem[_14282]
                            if mem[_14282] - _1097 != mem[128]:
                                revert with 0, 'StablePay target balance is not valid.'
                            _14425 = mem[64]
                            mem[mem[64] + 32] = 'contract.name'
                            mem[mem[64] + 45] = 'Settings'
                            _14426 = mem[64]
                            mem[mem[64]] = 21
                            mem[64] = mem[64] + 53
                            _14428 = mem[_14426]
                            s = _14426 + 32
                            t = _14425 + 53
                            idx = mem[_14426]
                            while idx >= 32:
                                mem[t] = mem[s]
                                _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[_14425 + floor32(mem[_14426]) + 53] = mem[_14426 + -(mem[_14426] % 32) + floor32(mem[_14426]) + 64 len mem[_14426] % 32] or Mask(8 * -(mem[_14426] % 32) + 32, -(8 * -(mem[_14426] % 32) + 32) + 256, mem[_14425 + floor32(mem[_14426]) + 53])
                            _18276 = sha3(mem[_14425 + 53 len _14428])
                            mem[_14425 + 57] = sha3(mem[_14425 + 53 len _14428])
                            require ext_code.size(_storageAddress)
                            call _storageAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args _18276
                            mem[_14425 + 53] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x6ea8bc10 with:
                                 gas gas_remaining wei
                            mem[_14425 + ceil32(return_data.size) + 53] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _14425 + (2 * ceil32(return_data.size)) + 53
                            require return_data.size >= 32
                            if not ext_call.return_data[30 len 2]:
                                _18713 = mem[128]
                                _18714 = mem[448]
                                mem[_14425 + (2 * ceil32(return_data.size)) + 85] = 'contract.name'
                                mem[_14425 + (2 * ceil32(return_data.size)) + 98] = 'Vault'
                                mem[_14425 + (2 * ceil32(return_data.size)) + 53] = 18
                                mem[64] = _14425 + (2 * ceil32(return_data.size)) + 103
                                s = _14425 + (2 * ceil32(return_data.size)) + 85
                                t = _14425 + (2 * ceil32(return_data.size)) + 103
                                idx = 18
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[_14425 + (2 * ceil32(return_data.size)) + 103] = mem[_14425 + (2 * ceil32(return_data.size)) + 99 len 18] or Mask(112, 144, mem[_14425 + (2 * ceil32(return_data.size)) + 103])
                                _22632 = sha3(mem[_14425 + (2 * ceil32(return_data.size)) + 103 len 18])
                                mem[_14425 + (2 * ceil32(return_data.size)) + 107] = sha3(mem[_14425 + (2 * ceil32(return_data.size)) + 103 len 18])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22632
                                mem[_14425 + (2 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_14425 + (4 * ceil32(return_data.size)) + 107] = ext_call.return_data[12 len 20]
                                mem[_14425 + (4 * ceil32(return_data.size)) + 139] = 0
                                require ext_code.size(address(_18714))
                                call address(_18714).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[12 len 20], 0
                                mem[_14425 + (4 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Tokens transfer to vault was invalid.'
                                _23877 = mem[448]
                                mem[_14425 + (6 * ceil32(return_data.size)) + 107] = mem[492 len 20]
                                mem[_14425 + (6 * ceil32(return_data.size)) + 139] = _18713
                                require ext_code.size(address(_23877))
                                call address(_23877).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[_14425 + (6 * ceil32(return_data.size)) + 107], _18713
                                mem[_14425 + (6 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14425 + (7 * ceil32(return_data.size)) + 103
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Transfer to merchant failed.'
                                _24678 = mem[416]
                                _24679 = mem[448]
                                mem[_14425 + (7 * ceil32(return_data.size)) + 103] = mem[492 len 20]
                                mem[_14425 + (7 * ceil32(return_data.size)) + 135] = msg.sender
                                mem[_14425 + (7 * ceil32(return_data.size)) + 167] = address(_24678)
                                mem[_14425 + (7 * ceil32(return_data.size)) + 199] = address(_24679)
                                mem[_14425 + (7 * ceil32(return_data.size)) + 231] = _14314 - _1097
                                emit 0xdcc9f547: mem[_14425 + (7 * ceil32(return_data.size)) + 103], msg.sender, address(_24678), address(_24679), _14314 - _1097, this.address
                                emit 0xc195856d: _734, this.address, mem[_1057 + 12 len 20]
                                Mask(248, 0, stor0.field_8) = 0
                                return 1
                            require ext_call.return_data[30 len 2]
                            require 10^14 * ext_call.return_data[30 len 2] / ext_call.return_data[30 len 2] == 10^14
                            _18671 = mem[128]
                            if not 10^14 * ext_call.return_data[30 len 2] / 100:
                                _18817 = mem[128]
                                _18818 = mem[448]
                                mem[_14425 + (2 * ceil32(return_data.size)) + 85] = 'contract.name'
                                mem[_14425 + (2 * ceil32(return_data.size)) + 98] = 'Vault'
                                mem[_14425 + (2 * ceil32(return_data.size)) + 53] = 18
                                mem[64] = _14425 + (2 * ceil32(return_data.size)) + 103
                                s = _14425 + (2 * ceil32(return_data.size)) + 85
                                t = _14425 + (2 * ceil32(return_data.size)) + 103
                                idx = 18
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[_14425 + (2 * ceil32(return_data.size)) + 103] = mem[_14425 + (2 * ceil32(return_data.size)) + 99 len 18] or Mask(112, 144, mem[_14425 + (2 * ceil32(return_data.size)) + 103])
                                _22626 = sha3(mem[_14425 + (2 * ceil32(return_data.size)) + 103 len 18])
                                mem[_14425 + (2 * ceil32(return_data.size)) + 107] = sha3(mem[_14425 + (2 * ceil32(return_data.size)) + 103 len 18])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22626
                                mem[_14425 + (2 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_14425 + (4 * ceil32(return_data.size)) + 107] = ext_call.return_data[12 len 20]
                                mem[_14425 + (4 * ceil32(return_data.size)) + 139] = 0
                                require ext_code.size(address(_18818))
                                call address(_18818).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[12 len 20], 0
                                mem[_14425 + (4 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Tokens transfer to vault was invalid.'
                                _23874 = mem[448]
                                mem[_14425 + (6 * ceil32(return_data.size)) + 107] = mem[492 len 20]
                                mem[_14425 + (6 * ceil32(return_data.size)) + 139] = _18817
                                require ext_code.size(address(_23874))
                                call address(_23874).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[_14425 + (6 * ceil32(return_data.size)) + 107], _18817
                                mem[_14425 + (6 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14425 + (7 * ceil32(return_data.size)) + 103
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Transfer to merchant failed.'
                                _24674 = mem[416]
                                _24675 = mem[448]
                                mem[_14425 + (7 * ceil32(return_data.size)) + 103] = mem[492 len 20]
                                mem[_14425 + (7 * ceil32(return_data.size)) + 135] = msg.sender
                                mem[_14425 + (7 * ceil32(return_data.size)) + 167] = address(_24674)
                                mem[_14425 + (7 * ceil32(return_data.size)) + 199] = address(_24675)
                                mem[_14425 + (7 * ceil32(return_data.size)) + 231] = _14314 - _1097
                                emit 0xdcc9f547: mem[_14425 + (7 * ceil32(return_data.size)) + 103], msg.sender, address(_24674), address(_24675), _14314 - _1097, this.address
                                emit 0xc195856d: _734, this.address, mem[_1057 + 12 len 20]
                                Mask(248, 0, stor0.field_8) = 0
                                return 1
                            require 10^14 * ext_call.return_data[30 len 2] / 100
                            require 10^14 * ext_call.return_data[30 len 2] / 100 * mem[128] / 10^14 * ext_call.return_data[30 len 2] / 100 == mem[128]
                            _19069 = mem[128]
                            _19070 = mem[448]
                            mem[_14425 + (2 * ceil32(return_data.size)) + 85] = 'contract.name'
                            mem[_14425 + (2 * ceil32(return_data.size)) + 98] = 'Vault'
                            mem[_14425 + (2 * ceil32(return_data.size)) + 53] = 18
                            mem[64] = _14425 + (2 * ceil32(return_data.size)) + 103
                            s = _14425 + (2 * ceil32(return_data.size)) + 85
                            t = _14425 + (2 * ceil32(return_data.size)) + 103
                            idx = 18
                            while idx >= 32:
                                mem[t] = mem[s]
                                _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[_14425 + (2 * ceil32(return_data.size)) + 103] = mem[_14425 + (2 * ceil32(return_data.size)) + 99 len 18] or Mask(112, 144, mem[_14425 + (2 * ceil32(return_data.size)) + 103])
                            _22620 = sha3(mem[_14425 + (2 * ceil32(return_data.size)) + 103 len 18])
                            mem[_14425 + (2 * ceil32(return_data.size)) + 107] = sha3(mem[_14425 + (2 * ceil32(return_data.size)) + 103 len 18])
                            require ext_code.size(_storageAddress)
                            call _storageAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args _22620
                            mem[_14425 + (2 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_14425 + (4 * ceil32(return_data.size)) + 107] = address(ext_call.return_data[0])
                            mem[_14425 + (4 * ceil32(return_data.size)) + 139] = 10^14 * uint16(ext_call.return_data[0]) / 100 * _18671 / 100 / 10^14
                            require ext_code.size(address(_19070))
                            call address(_19070).0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[_14425 + (4 * ceil32(return_data.size)) + 107 len (5 * ceil32(return_data.size)) + 64]
                            mem[_14425 + (4 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                mem[_14425 + (4 * ceil32(return_data.size)) + 103] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_14425 + (4 * ceil32(return_data.size)) + 107] = 32
                                mem[_14425 + (4 * ceil32(return_data.size)) + 139] = 37
                                mem[_14425 + (4 * ceil32(return_data.size)) + 171] = 'Tokens transfer to vault was inv'
                                mem[_14425 + (4 * ceil32(return_data.size)) + 203] = 'alid.'
                                revert with memory
                                  from _14425 + (4 * ceil32(return_data.size)) + 103
                                   len (7 * ceil32(return_data.size)) + 132
                            _23871 = mem[448]
                            mem[_14425 + (4 * ceil32(return_data.size)) + 107] = mem[492 len 20]
                            mem[_14425 + (4 * ceil32(return_data.size)) + 139] = _19069 - (10^14 * uint16(ext_call.return_data[0]) / 100 * _18671 / 100 / 10^14)
                            require ext_code.size(address(_23871))
                            call address(_23871).0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[_14425 + (4 * ceil32(return_data.size)) + 107 len (7 * ceil32(return_data.size)) + 64]
                            mem[_14425 + (4 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _14425 + (8 * ceil32(return_data.size)) + 103
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                mem[_14425 + (8 * ceil32(return_data.size)) + 103] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_14425 + (8 * ceil32(return_data.size)) + 107] = 32
                                mem[_14425 + (8 * ceil32(return_data.size)) + 139] = 28
                                mem[_14425 + (8 * ceil32(return_data.size)) + 171] = 'Transfer to merchant failed.'
                                revert with memory
                                  from _14425 + (8 * ceil32(return_data.size)) + 103
                                   len (13 * ceil32(return_data.size)) + 100
                            _24670 = mem[416]
                            _24671 = mem[448]
                            mem[_14425 + (8 * ceil32(return_data.size)) + 103] = mem[492 len 20]
                            mem[_14425 + (8 * ceil32(return_data.size)) + 135] = msg.sender
                            mem[_14425 + (8 * ceil32(return_data.size)) + 167] = address(_24670)
                            mem[_14425 + (8 * ceil32(return_data.size)) + 199] = address(_24671)
                            mem[_14425 + (8 * ceil32(return_data.size)) + 231] = _14314 - _1097
                            emit 0xdcc9f547: mem[_14425 + (8 * ceil32(return_data.size)) + 103 len (13 * ceil32(return_data.size)) + 160], this.address
                            _25155 = mem[_1057]
                            mem[_14425 + (8 * ceil32(return_data.size)) + 103] = _734
                            emit 0xc195856d: mem[_14425 + (8 * ceil32(return_data.size)) + 103 len (13 * ceil32(return_data.size)) + 32], this.address, address(_25155)
                            Mask(248, 0, stor0.field_8) = 0
                            mem[_14425 + (8 * ceil32(return_data.size)) + 103] = 1
                            return memory
                              from _14425 + (8 * ceil32(return_data.size)) + 103
                               len (13 * ceil32(return_data.size)) + 32
                        mem[_1100 + ceil32(_1139) + ceil32(_1187) + ceil32(_4934) + _8983 + 836] = 0
                        require ext_code.size(address(_1099))
                        call address(_1099).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1100 + ceil32(_1139) + ceil32(_1187) + ceil32(_4934) + ceil32(_8983) + -mem[64] + 832]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _13658 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_13658]:
                            _13770 = mem[_1057]
                            mem[mem[64]] = _734
                            emit 0x6230081d: _734, this.address, address(_13770)
                            require idx + 1 >= idx
                            _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                            s = _734
                            idx = idx + 1
                            continue 
                        _13771 = mem[416]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_13771))
                        call address(_13771).0x70a08231 with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _13914 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _13946 = mem[_13914]
                        _13999 = mem[416]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _13946
                        require ext_code.size(address(_13999))
                        call address(_13999).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _13946
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14074 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_14074]:
                            revert with 0, 'Transfer to customer failed.'
                        _14180 = mem[448]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_14180))
                        call address(_14180).0x70a08231 with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14298 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _14330 = mem[_14298]
                        require _1097 <= mem[_14298]
                        if mem[_14298] - _1097 != mem[128]:
                            revert with 0, 'StablePay target balance is not valid.'
                        _14489 = mem[64]
                        mem[mem[64] + 32] = 'contract.name'
                        mem[mem[64] + 45] = 'Settings'
                        _14490 = mem[64]
                        mem[mem[64]] = 21
                        mem[64] = mem[64] + 53
                        _14492 = mem[_14490]
                        s = _14490 + 32
                        t = mem[64]
                        idx = mem[_14490]
                        while idx >= 32:
                            mem[t] = mem[s]
                            _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[mem[64] + floor32(mem[_14490])] = mem[_14490 + floor32(mem[_14490]) + -(mem[_14490] % 32) + 64 len mem[_14490] % 32] or Mask(8 * -(mem[_14490] % 32) + 32, -(8 * -(mem[_14490] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_14490])])
                        _18282 = sha3(mem[mem[64] len _14492 + _14489 + -mem[64] + 53])
                        mem[mem[64] + 4] = sha3(mem[mem[64] len _14492 + _14489 + -mem[64] + 53])
                        require ext_code.size(_storageAddress)
                        call _storageAddress.0x21f8a721 with:
                             gas gas_remaining wei
                            args _18282
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18448 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require ext_code.size(mem[_18448 + 12 len 20])
                        call mem[_18448 + 12 len 20].0x6ea8bc10 with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18576 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _18608 = mem[_18576]
                        if not mem[_18576 + 30 len 2]:
                            _18715 = mem[128]
                            _18716 = mem[448]
                            _18825 = mem[64]
                            mem[mem[64] + 32] = 'contract.name'
                            mem[mem[64] + 45] = 'Vault'
                            _18826 = mem[64]
                            mem[mem[64]] = 18
                            mem[64] = mem[64] + 50
                            _18828 = mem[_18826]
                            s = _18826 + 32
                            t = mem[64]
                            idx = mem[_18826]
                            while idx >= 32:
                                mem[t] = mem[s]
                                _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[mem[64] + floor32(mem[_18826])] = mem[_18826 + floor32(mem[_18826]) + -(mem[_18826] % 32) + 64 len mem[_18826] % 32] or Mask(8 * -(mem[_18826] % 32) + 32, -(8 * -(mem[_18826] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_18826])])
                            _22650 = sha3(mem[mem[64] len _18828 + _18825 + -mem[64] + 50])
                            mem[mem[64] + 4] = sha3(mem[mem[64] len _18828 + _18825 + -mem[64] + 50])
                            require ext_code.size(_storageAddress)
                            call _storageAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args _22650
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _23144 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[mem[64] + 4] = mem[_23144 + 12 len 20]
                            mem[mem[64] + 36] = 0
                            require ext_code.size(address(_18716))
                            call address(_18716).0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _23528 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_23528]:
                                revert with 0, 'Tokens transfer to vault was invalid.'
                            _23886 = mem[448]
                            mem[mem[64] + 4] = mem[492 len 20]
                            mem[mem[64] + 36] = _18715
                            require ext_code.size(address(_23886))
                            call address(_23886).0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _18715
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _24296 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_24296]:
                                revert with 0, 'Transfer to merchant failed.'
                            _24690 = mem[416]
                            _24691 = mem[448]
                            mem[mem[64]] = mem[492 len 20]
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = address(_24690)
                            mem[mem[64] + 96] = address(_24691)
                            mem[mem[64] + 128] = _14330 - _1097
                            emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24690), address(_24691), _14330 - _1097, this.address
                        else:
                            require mem[_18576 + 30 len 2]
                            require 10^14 * mem[_18576 + 30 len 2] / mem[_18576 + 30 len 2] == 10^14
                            _18672 = mem[128]
                            if not 10^14 * mem[_18576 + 30 len 2] / 100:
                                _18823 = mem[128]
                                _18824 = mem[448]
                                _19083 = mem[64]
                                mem[mem[64] + 32] = 'contract.name'
                                mem[mem[64] + 45] = 'Vault'
                                _19084 = mem[64]
                                mem[mem[64]] = 18
                                mem[64] = mem[64] + 50
                                _19086 = mem[_19084]
                                s = _19084 + 32
                                t = _19083 + 50
                                idx = mem[_19084]
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[_19083 + floor32(mem[_19084]) + 50] = mem[_19084 + -(mem[_19084] % 32) + floor32(mem[_19084]) + 64 len mem[_19084] % 32] or Mask(8 * -(mem[_19084] % 32) + 32, -(8 * -(mem[_19084] % 32) + 32) + 256, mem[_19083 + floor32(mem[_19084]) + 50])
                                _22644 = sha3(mem[_19083 + 50 len _19086])
                                mem[_19083 + 54] = sha3(mem[_19083 + 50 len _19086])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22644
                                mem[_19083 + 50] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _19083 + ceil32(return_data.size) + 50
                                require return_data.size >= 32
                                mem[_19083 + ceil32(return_data.size) + 54] = address(ext_call.return_data[0])
                                mem[_19083 + ceil32(return_data.size) + 86] = 0
                                require ext_code.size(address(_18824))
                                call address(_18824).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), 0
                                mem[_19083 + ceil32(return_data.size) + 50] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _19083 + (2 * ceil32(return_data.size)) + 50
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Tokens transfer to vault was invalid.'
                                _23883 = mem[448]
                                _23884 = mem[480]
                                mem[_19083 + (2 * ceil32(return_data.size)) + 54] = mem[492 len 20]
                                mem[_19083 + (2 * ceil32(return_data.size)) + 86] = _18823
                                require ext_code.size(address(_23883))
                                call address(_23883).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(_23884), _18823
                                mem[_19083 + (2 * ceil32(return_data.size)) + 50] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _19083 + (4 * ceil32(return_data.size)) + 50
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Transfer to merchant failed.'
                                _24686 = mem[416]
                                _24687 = mem[448]
                                mem[_19083 + (4 * ceil32(return_data.size)) + 50] = mem[492 len 20]
                                mem[_19083 + (4 * ceil32(return_data.size)) + 82] = msg.sender
                                mem[_19083 + (4 * ceil32(return_data.size)) + 114] = address(_24686)
                                mem[_19083 + (4 * ceil32(return_data.size)) + 146] = address(_24687)
                                mem[_19083 + (4 * ceil32(return_data.size)) + 178] = _14330 - _1097
                                emit 0xdcc9f547: mem[_19083 + (4 * ceil32(return_data.size)) + 50], msg.sender, address(_24686), address(_24687), _14330 - _1097, this.address
                            else:
                                require 10^14 * mem[_18576 + 30 len 2] / 100
                                require 10^14 * mem[_18576 + 30 len 2] / 100 * mem[128] / 10^14 * mem[_18576 + 30 len 2] / 100 == mem[128]
                                _19081 = mem[128]
                                _19082 = mem[448]
                                _19443 = mem[64]
                                mem[mem[64] + 32] = 'contract.name'
                                mem[mem[64] + 45] = 'Vault'
                                _19444 = mem[64]
                                mem[mem[64]] = 18
                                mem[64] = mem[64] + 50
                                _19446 = mem[_19444]
                                s = _19444 + 32
                                t = mem[64]
                                idx = mem[_19444]
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_19444])] = mem[_19444 + floor32(mem[_19444]) + -(mem[_19444] % 32) + 64 len mem[_19444] % 32] or Mask(8 * -(mem[_19444] % 32) + 32, -(8 * -(mem[_19444] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_19444])])
                                _22638 = sha3(mem[mem[64] len _19446 + _19443 + -mem[64] + 50])
                                mem[mem[64] + 4] = sha3(mem[mem[64] len _19446 + _19443 + -mem[64] + 50])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22638
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23142 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64] + 4] = mem[_23142 + 12 len 20]
                                mem[mem[64] + 36] = 10^14 * uint16(_18608) / 100 * _18672 / 100 / 10^14
                                require ext_code.size(address(_19082))
                                call address(_19082).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], 10^14 * uint16(_18608) / 100 * _18672 / 100 / 10^14
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23526 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_23526]:
                                    revert with 0, 'Tokens transfer to vault was invalid.'
                                _23880 = mem[448]
                                mem[mem[64] + 4] = mem[492 len 20]
                                mem[mem[64] + 36] = _19081 - (10^14 * uint16(_18608) / 100 * _18672 / 100 / 10^14)
                                require ext_code.size(address(_23880))
                                call address(_23880).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _19081 - (10^14 * uint16(_18608) / 100 * _18672 / 100 / 10^14)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _24294 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_24294]:
                                    revert with 0, 'Transfer to merchant failed.'
                                _24682 = mem[416]
                                _24683 = mem[448]
                                mem[mem[64]] = mem[492 len 20]
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = address(_24682)
                                mem[mem[64] + 96] = address(_24683)
                                mem[mem[64] + 128] = _14330 - _1097
                                emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24682), address(_24683), _14330 - _1097, this.address
                else:
                    mem[_1100 + ceil32(_1139) + _1187 + 772] = 0
                    _4930 = mem[704]
                    mem[_1100 + 644] = ceil32(_1139) + ceil32(_1187) + 736
                    _4938 = mem[_4930]
                    mem[_1100 + ceil32(_1139) + ceil32(_1187) + 772] = mem[_4930]
                    s = 0
                    while s < _4938:
                        mem[_1100 + ceil32(_1139) + ceil32(_1187) + s + 804] = mem[_4930 + s + 32]
                        _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                        s = s + 32
                        continue 
                    if ceil32(_4938) <= _4938:
                        _8960 = mem[736]
                        mem[_1100 + 676] = ceil32(_1139) + ceil32(_1187) + ceil32(_4938) + 768
                        _8976 = mem[_8960]
                        mem[_1100 + ceil32(_1139) + ceil32(_1187) + ceil32(_4938) + 804] = mem[_8960]
                        s = 0
                        while s < _8976:
                            mem[_1100 + ceil32(_1139) + ceil32(_1187) + ceil32(_4938) + s + 836] = mem[_8960 + s + 32]
                            _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                            s = s + 32
                            continue 
                        if ceil32(_8976) <= _8976:
                            require ext_code.size(address(_1099))
                            call address(_1099).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1100 + ceil32(_1139) + ceil32(_1187) + ceil32(_4938) + ceil32(_8976) + -mem[64] + 832]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13643 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_13643]:
                                _13719 = mem[_1057]
                                mem[mem[64]] = _734
                                emit 0x6230081d: _734, this.address, address(_13719)
                                require idx + 1 >= idx
                                _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = _734
                                idx = idx + 1
                                continue 
                            _13720 = mem[416]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_13720))
                            call address(_13720).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13889 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _13931 = mem[_13889]
                            _13969 = mem[416]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _13931
                            require ext_code.size(address(_13969))
                            call address(_13969).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _13931
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14059 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_14059]:
                                revert with 0, 'Transfer to customer failed.'
                            _14135 = mem[448]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_14135))
                            call address(_14135).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14283 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _14315 = mem[_14283]
                            require _1097 <= mem[_14283]
                            if mem[_14283] - _1097 != mem[128]:
                                revert with 0, 'StablePay target balance is not valid.'
                            _14429 = mem[64]
                            mem[mem[64] + 32] = 'contract.name'
                            mem[mem[64] + 45] = 'Settings'
                            _14430 = mem[64]
                            mem[mem[64]] = 21
                            mem[64] = mem[64] + 53
                            _14432 = mem[_14430]
                            s = _14430 + 32
                            t = mem[64]
                            idx = mem[_14430]
                            while idx >= 32:
                                mem[t] = mem[s]
                                _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[mem[64] + floor32(mem[_14430])] = mem[_14430 + floor32(mem[_14430]) + -(mem[_14430] % 32) + 64 len mem[_14430] % 32] or Mask(8 * -(mem[_14430] % 32) + 32, -(8 * -(mem[_14430] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_14430])])
                            _18288 = sha3(mem[mem[64] len _14432 + _14429 + -mem[64] + 53])
                            mem[mem[64] + 4] = sha3(mem[mem[64] len _14432 + _14429 + -mem[64] + 53])
                            require ext_code.size(_storageAddress)
                            call _storageAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args _18288
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18449 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(mem[_18449 + 12 len 20])
                            call mem[_18449 + 12 len 20].0x6ea8bc10 with:
                                 gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18577 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _18609 = mem[_18577]
                            if not mem[_18577 + 30 len 2]:
                                _18717 = mem[128]
                                _18718 = mem[448]
                                _18831 = mem[64]
                                mem[mem[64] + 32] = 'contract.name'
                                mem[mem[64] + 45] = 'Vault'
                                _18832 = mem[64]
                                mem[mem[64]] = 18
                                mem[64] = mem[64] + 50
                                _18834 = mem[_18832]
                                s = _18832 + 32
                                t = _18831 + 50
                                idx = mem[_18832]
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[_18831 + floor32(mem[_18832]) + 50] = mem[_18832 + -(mem[_18832] % 32) + floor32(mem[_18832]) + 64 len mem[_18832] % 32] or Mask(8 * -(mem[_18832] % 32) + 32, -(8 * -(mem[_18832] % 32) + 32) + 256, mem[_18831 + floor32(mem[_18832]) + 50])
                                _22668 = sha3(mem[_18831 + 50 len _18834])
                                mem[_18831 + 54] = sha3(mem[_18831 + 50 len _18834])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22668
                                mem[_18831 + 50] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _18831 + ceil32(return_data.size) + 50
                                require return_data.size >= 32
                                mem[_18831 + ceil32(return_data.size) + 54] = address(ext_call.return_data[0])
                                mem[_18831 + ceil32(return_data.size) + 86] = 0
                                require ext_code.size(address(_18718))
                                call address(_18718).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), 0
                                mem[_18831 + ceil32(return_data.size) + 50] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _18831 + (2 * ceil32(return_data.size)) + 50
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Tokens transfer to vault was invalid.'
                                _23895 = mem[448]
                                _23896 = mem[480]
                                mem[_18831 + (2 * ceil32(return_data.size)) + 54] = mem[492 len 20]
                                mem[_18831 + (2 * ceil32(return_data.size)) + 86] = _18717
                                require ext_code.size(address(_23895))
                                call address(_23895).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(_23896), _18717
                                mem[_18831 + (2 * ceil32(return_data.size)) + 50] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _18831 + (4 * ceil32(return_data.size)) + 50
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Transfer to merchant failed.'
                                _24702 = mem[416]
                                _24703 = mem[448]
                                mem[_18831 + (4 * ceil32(return_data.size)) + 50] = mem[492 len 20]
                                mem[_18831 + (4 * ceil32(return_data.size)) + 82] = msg.sender
                                mem[_18831 + (4 * ceil32(return_data.size)) + 114] = address(_24702)
                                mem[_18831 + (4 * ceil32(return_data.size)) + 146] = address(_24703)
                                mem[_18831 + (4 * ceil32(return_data.size)) + 178] = _14315 - _1097
                                emit 0xdcc9f547: mem[_18831 + (4 * ceil32(return_data.size)) + 50], msg.sender, address(_24702), address(_24703), _14315 - _1097, this.address
                            else:
                                require mem[_18577 + 30 len 2]
                                require 10^14 * mem[_18577 + 30 len 2] / mem[_18577 + 30 len 2] == 10^14
                                _18673 = mem[128]
                                if not 10^14 * mem[_18577 + 30 len 2] / 100:
                                    _18829 = mem[128]
                                    _18830 = mem[448]
                                    _19095 = mem[64]
                                    mem[mem[64] + 32] = 'contract.name'
                                    mem[mem[64] + 45] = 'Vault'
                                    _19096 = mem[64]
                                    mem[mem[64]] = 18
                                    mem[64] = mem[64] + 50
                                    _19098 = mem[_19096]
                                    s = _19096 + 32
                                    t = _19095 + 50
                                    idx = mem[_19096]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[_19095 + floor32(mem[_19096]) + 50] = mem[_19096 + -(mem[_19096] % 32) + floor32(mem[_19096]) + 64 len mem[_19096] % 32] or Mask(8 * -(mem[_19096] % 32) + 32, -(8 * -(mem[_19096] % 32) + 32) + 256, mem[_19095 + floor32(mem[_19096]) + 50])
                                    _22662 = sha3(mem[_19095 + 50 len _19098])
                                    mem[_19095 + 54] = sha3(mem[_19095 + 50 len _19098])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22662
                                    mem[_19095 + 50] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _19095 + ceil32(return_data.size) + 50
                                    require return_data.size >= 32
                                    mem[_19095 + ceil32(return_data.size) + 54] = address(ext_call.return_data[0])
                                    mem[_19095 + ceil32(return_data.size) + 86] = 0
                                    require ext_code.size(address(_18830))
                                    call address(_18830).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), 0
                                    mem[_19095 + ceil32(return_data.size) + 50] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _19095 + (2 * ceil32(return_data.size)) + 50
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _23892 = mem[448]
                                    _23893 = mem[480]
                                    mem[_19095 + (2 * ceil32(return_data.size)) + 54] = mem[492 len 20]
                                    mem[_19095 + (2 * ceil32(return_data.size)) + 86] = _18829
                                    require ext_code.size(address(_23892))
                                    call address(_23892).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(_23893), _18829
                                    mem[_19095 + (2 * ceil32(return_data.size)) + 50] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _19095 + (4 * ceil32(return_data.size)) + 50
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24698 = mem[416]
                                    _24699 = mem[448]
                                    mem[_19095 + (4 * ceil32(return_data.size)) + 50] = mem[492 len 20]
                                    mem[_19095 + (4 * ceil32(return_data.size)) + 82] = msg.sender
                                    mem[_19095 + (4 * ceil32(return_data.size)) + 114] = address(_24698)
                                    mem[_19095 + (4 * ceil32(return_data.size)) + 146] = address(_24699)
                                    mem[_19095 + (4 * ceil32(return_data.size)) + 178] = _14315 - _1097
                                    emit 0xdcc9f547: mem[_19095 + (4 * ceil32(return_data.size)) + 50], msg.sender, address(_24698), address(_24699), _14315 - _1097, this.address
                                else:
                                    require 10^14 * mem[_18577 + 30 len 2] / 100
                                    require 10^14 * mem[_18577 + 30 len 2] / 100 * mem[128] / 10^14 * mem[_18577 + 30 len 2] / 100 == mem[128]
                                    _19093 = mem[128]
                                    _19094 = mem[448]
                                    _19453 = mem[64]
                                    mem[mem[64] + 32] = 'contract.name'
                                    mem[mem[64] + 45] = 'Vault'
                                    _19454 = mem[64]
                                    mem[mem[64]] = 18
                                    mem[64] = mem[64] + 50
                                    _19456 = mem[_19454]
                                    s = _19454 + 32
                                    t = _19453 + 50
                                    idx = mem[_19454]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[_19453 + floor32(mem[_19454]) + 50] = mem[_19454 + -(mem[_19454] % 32) + floor32(mem[_19454]) + 64 len mem[_19454] % 32] or Mask(8 * -(mem[_19454] % 32) + 32, -(8 * -(mem[_19454] % 32) + 32) + 256, mem[_19453 + floor32(mem[_19454]) + 50])
                                    _22656 = sha3(mem[_19453 + 50 len _19456])
                                    mem[_19453 + 54] = sha3(mem[_19453 + 50 len _19456])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22656
                                    mem[_19453 + 50] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _19453 + ceil32(return_data.size) + 50
                                    require return_data.size >= 32
                                    mem[_19453 + ceil32(return_data.size) + 54] = address(ext_call.return_data[0])
                                    mem[_19453 + ceil32(return_data.size) + 86] = 10^14 * uint16(_18609) / 100 * _18673 / 100 / 10^14
                                    require ext_code.size(address(_19094))
                                    call address(_19094).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), 10^14 * uint16(_18609) / 100 * _18673 / 100 / 10^14
                                    mem[_19453 + ceil32(return_data.size) + 50] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _19453 + (2 * ceil32(return_data.size)) + 50
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _23889 = mem[448]
                                    _23890 = mem[480]
                                    mem[_19453 + (2 * ceil32(return_data.size)) + 54] = mem[492 len 20]
                                    mem[_19453 + (2 * ceil32(return_data.size)) + 86] = _19093 - (10^14 * uint16(_18609) / 100 * _18673 / 100 / 10^14)
                                    require ext_code.size(address(_23889))
                                    call address(_23889).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(_23890), _19093 - (10^14 * uint16(_18609) / 100 * _18673 / 100 / 10^14)
                                    mem[_19453 + (2 * ceil32(return_data.size)) + 50] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _19453 + (4 * ceil32(return_data.size)) + 50
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24694 = mem[416]
                                    _24695 = mem[448]
                                    mem[_19453 + (4 * ceil32(return_data.size)) + 50] = mem[492 len 20]
                                    mem[_19453 + (4 * ceil32(return_data.size)) + 82] = msg.sender
                                    mem[_19453 + (4 * ceil32(return_data.size)) + 114] = address(_24694)
                                    mem[_19453 + (4 * ceil32(return_data.size)) + 146] = address(_24695)
                                    mem[_19453 + (4 * ceil32(return_data.size)) + 178] = _14315 - _1097
                                    emit 0xdcc9f547: mem[_19453 + (4 * ceil32(return_data.size)) + 50], msg.sender, address(_24694), address(_24695), _14315 - _1097, this.address
                        else:
                            mem[_1100 + ceil32(_1139) + ceil32(_1187) + ceil32(_4938) + _8976 + 836] = 0
                            require ext_code.size(address(_1099))
                            call address(_1099).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1100 + ceil32(_1139) + ceil32(_1187) + ceil32(_4938) + ceil32(_8976) + -mem[64] + 832]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13659 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_13659]:
                                _13774 = mem[_1057]
                                mem[mem[64]] = _734
                                emit 0x6230081d: _734, this.address, address(_13774)
                                require idx + 1 >= idx
                                _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = _734
                                idx = idx + 1
                                continue 
                            _13775 = mem[416]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_13775))
                            call address(_13775).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13915 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _13947 = mem[_13915]
                            _14001 = mem[416]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _13947
                            require ext_code.size(address(_14001))
                            call address(_14001).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _13947
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14075 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_14075]:
                                revert with 0, 'Transfer to customer failed.'
                            _14183 = mem[448]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_14183))
                            call address(_14183).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14299 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _14331 = mem[_14299]
                            require _1097 <= mem[_14299]
                            if mem[_14299] - _1097 != mem[128]:
                                revert with 0, 'StablePay target balance is not valid.'
                            _14493 = mem[64]
                            mem[mem[64] + 32] = 'contract.name'
                            mem[mem[64] + 45] = 'Settings'
                            _14494 = mem[64]
                            mem[mem[64]] = 21
                            mem[64] = mem[64] + 53
                            _14496 = mem[_14494]
                            s = _14494 + 32
                            t = mem[64]
                            idx = mem[_14494]
                            while idx >= 32:
                                mem[t] = mem[s]
                                _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[mem[64] + floor32(mem[_14494])] = mem[_14494 + floor32(mem[_14494]) + -(mem[_14494] % 32) + 64 len mem[_14494] % 32] or Mask(8 * -(mem[_14494] % 32) + 32, -(8 * -(mem[_14494] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_14494])])
                            _18294 = sha3(mem[mem[64] len _14496 + _14493 + -mem[64] + 53])
                            mem[mem[64] + 4] = sha3(mem[mem[64] len _14496 + _14493 + -mem[64] + 53])
                            require ext_code.size(_storageAddress)
                            call _storageAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args _18294
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18450 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(mem[_18450 + 12 len 20])
                            call mem[_18450 + 12 len 20].0x6ea8bc10 with:
                                 gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18578 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _18610 = mem[_18578]
                            if not mem[_18578 + 30 len 2]:
                                _18719 = mem[128]
                                _18720 = mem[448]
                                _18837 = mem[64]
                                mem[mem[64] + 32] = 'contract.name'
                                mem[mem[64] + 45] = 'Vault'
                                _18838 = mem[64]
                                mem[mem[64]] = 18
                                mem[64] = mem[64] + 50
                                _18840 = mem[_18838]
                                s = _18838 + 32
                                t = mem[64]
                                idx = mem[_18838]
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_18838])] = mem[_18838 + floor32(mem[_18838]) + -(mem[_18838] % 32) + 64 len mem[_18838] % 32] or Mask(8 * -(mem[_18838] % 32) + 32, -(8 * -(mem[_18838] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_18838])])
                                _22686 = sha3(mem[mem[64] len _18840 + _18837 + -mem[64] + 50])
                                mem[mem[64] + 4] = sha3(mem[mem[64] len _18840 + _18837 + -mem[64] + 50])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22686
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23150 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64] + 4] = mem[_23150 + 12 len 20]
                                mem[mem[64] + 36] = 0
                                require ext_code.size(address(_18720))
                                call address(_18720).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23534 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_23534]:
                                    revert with 0, 'Tokens transfer to vault was invalid.'
                                _23904 = mem[448]
                                mem[mem[64] + 4] = mem[492 len 20]
                                mem[mem[64] + 36] = _18719
                                require ext_code.size(address(_23904))
                                call address(_23904).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _18719
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _24302 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_24302]:
                                    revert with 0, 'Transfer to merchant failed.'
                                _24714 = mem[416]
                                _24715 = mem[448]
                                mem[mem[64]] = mem[492 len 20]
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = address(_24714)
                                mem[mem[64] + 96] = address(_24715)
                                mem[mem[64] + 128] = _14331 - _1097
                                emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24714), address(_24715), _14331 - _1097, this.address
                            else:
                                require mem[_18578 + 30 len 2]
                                require 10^14 * mem[_18578 + 30 len 2] / mem[_18578 + 30 len 2] == 10^14
                                _18674 = mem[128]
                                if not 10^14 * mem[_18578 + 30 len 2] / 100:
                                    _18835 = mem[128]
                                    _18836 = mem[448]
                                    _19107 = mem[64]
                                    mem[mem[64] + 32] = 'contract.name'
                                    mem[mem[64] + 45] = 'Vault'
                                    _19108 = mem[64]
                                    mem[mem[64]] = 18
                                    mem[64] = mem[64] + 50
                                    _19110 = mem[_19108]
                                    s = _19108 + 32
                                    t = mem[64]
                                    idx = mem[_19108]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_19108])] = mem[_19108 + floor32(mem[_19108]) + -(mem[_19108] % 32) + 64 len mem[_19108] % 32] or Mask(8 * -(mem[_19108] % 32) + 32, -(8 * -(mem[_19108] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_19108])])
                                    _22680 = sha3(mem[mem[64] len _19110 + _19107 + -mem[64] + 50])
                                    mem[mem[64] + 4] = sha3(mem[mem[64] len _19110 + _19107 + -mem[64] + 50])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22680
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23149 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = mem[_23149 + 12 len 20]
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(address(_18836))
                                    call address(_18836).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23533 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_23533]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _23901 = mem[448]
                                    mem[mem[64] + 4] = mem[492 len 20]
                                    mem[mem[64] + 36] = _18835
                                    require ext_code.size(address(_23901))
                                    call address(_23901).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _18835
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24301 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_24301]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24710 = mem[416]
                                    _24711 = mem[448]
                                    mem[mem[64]] = mem[492 len 20]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = address(_24710)
                                    mem[mem[64] + 96] = address(_24711)
                                    mem[mem[64] + 128] = _14331 - _1097
                                    emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24710), address(_24711), _14331 - _1097, this.address
                                else:
                                    require 10^14 * mem[_18578 + 30 len 2] / 100
                                    require 10^14 * mem[_18578 + 30 len 2] / 100 * mem[128] / 10^14 * mem[_18578 + 30 len 2] / 100 == mem[128]
                                    _19105 = mem[128]
                                    _19106 = mem[448]
                                    _19463 = mem[64]
                                    mem[mem[64] + 32] = 'contract.name'
                                    mem[mem[64] + 45] = 'Vault'
                                    _19464 = mem[64]
                                    mem[mem[64]] = 18
                                    mem[64] = mem[64] + 50
                                    _19466 = mem[_19464]
                                    s = _19464 + 32
                                    t = mem[64]
                                    idx = mem[_19464]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_19464])] = mem[_19464 + floor32(mem[_19464]) + -(mem[_19464] % 32) + 64 len mem[_19464] % 32] or Mask(8 * -(mem[_19464] % 32) + 32, -(8 * -(mem[_19464] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_19464])])
                                    _22674 = sha3(mem[mem[64] len _19466 + _19463 + -mem[64] + 50])
                                    mem[mem[64] + 4] = sha3(mem[mem[64] len _19466 + _19463 + -mem[64] + 50])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22674
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23148 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = mem[_23148 + 12 len 20]
                                    mem[mem[64] + 36] = 10^14 * uint16(_18610) / 100 * _18674 / 100 / 10^14
                                    require ext_code.size(address(_19106))
                                    call address(_19106).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 10^14 * uint16(_18610) / 100 * _18674 / 100 / 10^14
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23532 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_23532]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _23898 = mem[448]
                                    mem[mem[64] + 4] = mem[492 len 20]
                                    mem[mem[64] + 36] = _19105 - (10^14 * uint16(_18610) / 100 * _18674 / 100 / 10^14)
                                    require ext_code.size(address(_23898))
                                    call address(_23898).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _19105 - (10^14 * uint16(_18610) / 100 * _18674 / 100 / 10^14)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24300 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_24300]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24706 = mem[416]
                                    _24707 = mem[448]
                                    mem[mem[64]] = mem[492 len 20]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = address(_24706)
                                    mem[mem[64] + 96] = address(_24707)
                                    mem[mem[64] + 128] = _14331 - _1097
                                    emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24706), address(_24707), _14331 - _1097, this.address
                    else:
                        mem[_1100 + ceil32(_1139) + ceil32(_1187) + _4938 + 804] = 0
                        _8968 = mem[736]
                        mem[_1100 + 676] = ceil32(_1139) + ceil32(_1187) + ceil32(_4938) + 768
                        _8984 = mem[_8968]
                        mem[_1100 + ceil32(_1139) + ceil32(_1187) + ceil32(_4938) + 804] = mem[_8968]
                        s = 0
                        while s < _8984:
                            mem[_1100 + ceil32(_1139) + ceil32(_1187) + ceil32(_4938) + s + 836] = mem[_8968 + s + 32]
                            _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                            s = s + 32
                            continue 
                        if ceil32(_8984) <= _8984:
                            require ext_code.size(address(_1099))
                            call address(_1099).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1100 + ceil32(_1139) + ceil32(_1187) + ceil32(_4938) + ceil32(_8984) + -mem[64] + 832]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13644 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_13644]:
                                _13722 = mem[_1057]
                                mem[mem[64]] = _734
                                emit 0x6230081d: _734, this.address, address(_13722)
                                require idx + 1 >= idx
                                _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = _734
                                idx = idx + 1
                                continue 
                            _13723 = mem[416]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_13723))
                            call address(_13723).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13891 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _13932 = mem[_13891]
                            _13971 = mem[416]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _13932
                            require ext_code.size(address(_13971))
                            call address(_13971).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _13932
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14060 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_14060]:
                                revert with 0, 'Transfer to customer failed.'
                            _14138 = mem[448]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_14138))
                            call address(_14138).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14284 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _14316 = mem[_14284]
                            require _1097 <= mem[_14284]
                            if mem[_14284] - _1097 != mem[128]:
                                revert with 0, 'StablePay target balance is not valid.'
                            _14433 = mem[64]
                            mem[mem[64] + 32] = 'contract.name'
                            mem[mem[64] + 45] = 'Settings'
                            _14434 = mem[64]
                            mem[mem[64]] = 21
                            mem[64] = mem[64] + 53
                            _14436 = mem[_14434]
                            s = _14434 + 32
                            t = _14433 + 53
                            idx = mem[_14434]
                            while idx >= 32:
                                mem[t] = mem[s]
                                _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[_14433 + floor32(mem[_14434]) + 53] = mem[_14434 + -(mem[_14434] % 32) + floor32(mem[_14434]) + 64 len mem[_14434] % 32] or Mask(8 * -(mem[_14434] % 32) + 32, -(8 * -(mem[_14434] % 32) + 32) + 256, mem[_14433 + floor32(mem[_14434]) + 53])
                            _18300 = sha3(mem[_14433 + 53 len _14436])
                            mem[_14433 + 57] = sha3(mem[_14433 + 53 len _14436])
                            require ext_code.size(_storageAddress)
                            call _storageAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args _18300
                            mem[_14433 + 53] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x6ea8bc10 with:
                                 gas gas_remaining wei
                            mem[_14433 + ceil32(return_data.size) + 53] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _14433 + (2 * ceil32(return_data.size)) + 53
                            require return_data.size >= 32
                            if not ext_call.return_data[30 len 2]:
                                _18721 = mem[128]
                                _18722 = mem[448]
                                mem[_14433 + (2 * ceil32(return_data.size)) + 85] = 'contract.name'
                                mem[_14433 + (2 * ceil32(return_data.size)) + 98] = 'Vault'
                                mem[_14433 + (2 * ceil32(return_data.size)) + 53] = 18
                                mem[64] = _14433 + (2 * ceil32(return_data.size)) + 103
                                s = _14433 + (2 * ceil32(return_data.size)) + 85
                                t = mem[64]
                                idx = mem[_14433 + (2 * ceil32(return_data.size)) + 53]
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_14433 + (2 * ceil32(return_data.size)) + 53])] = mem[_14433 + (2 * ceil32(return_data.size)) + floor32(mem[_14433 + (2 * ceil32(return_data.size)) + 53]) + -(mem[_14433 + (2 * ceil32(return_data.size)) + 53] % 32) + 117 len mem[_14433 + (2 * ceil32(return_data.size)) + 53] % 32] or Mask(8 * -(mem[_14433 + (2 * ceil32(return_data.size)) + 53] % 32) + 32, -(8 * -(mem[_14433 + (2 * ceil32(return_data.size)) + 53] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_14433 + (2 * ceil32(return_data.size)) + 53])])
                                _22704 = sha3(mem[mem[64] len _14433 + (2 * ceil32(return_data.size)) + -mem[64] + 121])
                                mem[mem[64] + 4] = sha3(mem[mem[64] len _14433 + (2 * ceil32(return_data.size)) + -mem[64] + 121])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22704
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23153 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64] + 4] = mem[_23153 + 12 len 20]
                                mem[mem[64] + 36] = 0
                                require ext_code.size(address(_18722))
                                call address(_18722).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23537 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_23537]:
                                    revert with 0, 'Tokens transfer to vault was invalid.'
                                _23913 = mem[448]
                                mem[mem[64] + 4] = mem[492 len 20]
                                mem[mem[64] + 36] = _18721
                                require ext_code.size(address(_23913))
                                call address(_23913).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _18721
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _24305 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_24305]:
                                    revert with 0, 'Transfer to merchant failed.'
                                _24726 = mem[416]
                                _24727 = mem[448]
                                mem[mem[64]] = mem[492 len 20]
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = address(_24726)
                                mem[mem[64] + 96] = address(_24727)
                                mem[mem[64] + 128] = _14316 - _1097
                                emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24726), address(_24727), _14316 - _1097, this.address
                            else:
                                require ext_call.return_data[30 len 2]
                                require 10^14 * ext_call.return_data[30 len 2] / ext_call.return_data[30 len 2] == 10^14
                                _18675 = mem[128]
                                if not 10^14 * ext_call.return_data[30 len 2] / 100:
                                    _18841 = mem[128]
                                    _18842 = mem[448]
                                    mem[_14433 + (2 * ceil32(return_data.size)) + 85] = 'contract.name'
                                    mem[_14433 + (2 * ceil32(return_data.size)) + 98] = 'Vault'
                                    mem[_14433 + (2 * ceil32(return_data.size)) + 53] = 18
                                    mem[64] = _14433 + (2 * ceil32(return_data.size)) + 103
                                    s = _14433 + (2 * ceil32(return_data.size)) + 85
                                    t = _14433 + (2 * ceil32(return_data.size)) + 103
                                    idx = 18
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[_14433 + (2 * ceil32(return_data.size)) + 103] = mem[_14433 + (2 * ceil32(return_data.size)) + 99 len 18] or Mask(112, 144, mem[_14433 + (2 * ceil32(return_data.size)) + 103])
                                    _22698 = sha3(mem[_14433 + (2 * ceil32(return_data.size)) + 103 len 18])
                                    mem[_14433 + (2 * ceil32(return_data.size)) + 107] = sha3(mem[_14433 + (2 * ceil32(return_data.size)) + 103 len 18])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22698
                                    mem[_14433 + (2 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_14433 + (4 * ceil32(return_data.size)) + 107] = address(ext_call.return_data[0])
                                    mem[_14433 + (4 * ceil32(return_data.size)) + 139] = 0
                                    require ext_code.size(address(_18842))
                                    call address(_18842).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[_14433 + (4 * ceil32(return_data.size)) + 107 len (5 * ceil32(return_data.size)) + 64]
                                    mem[_14433 + (4 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        mem[_14433 + (4 * ceil32(return_data.size)) + 103] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14433 + (4 * ceil32(return_data.size)) + 107] = 32
                                        mem[_14433 + (4 * ceil32(return_data.size)) + 139] = 37
                                        mem[_14433 + (4 * ceil32(return_data.size)) + 171] = 'Tokens transfer to vault was inv'
                                        mem[_14433 + (4 * ceil32(return_data.size)) + 203] = 'alid.'
                                        revert with memory
                                          from _14433 + (4 * ceil32(return_data.size)) + 103
                                           len (7 * ceil32(return_data.size)) + 132
                                    _23910 = mem[448]
                                    mem[_14433 + (4 * ceil32(return_data.size)) + 107] = mem[492 len 20]
                                    mem[_14433 + (4 * ceil32(return_data.size)) + 139] = _18841
                                    require ext_code.size(address(_23910))
                                    call address(_23910).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[_14433 + (4 * ceil32(return_data.size)) + 107 len (7 * ceil32(return_data.size)) + 64]
                                    mem[_14433 + (4 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _14433 + (8 * ceil32(return_data.size)) + 103
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        mem[_14433 + (8 * ceil32(return_data.size)) + 103] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14433 + (8 * ceil32(return_data.size)) + 107] = 32
                                        mem[_14433 + (8 * ceil32(return_data.size)) + 139] = 28
                                        mem[_14433 + (8 * ceil32(return_data.size)) + 171] = 'Transfer to merchant failed.'
                                        revert with memory
                                          from _14433 + (8 * ceil32(return_data.size)) + 103
                                           len (13 * ceil32(return_data.size)) + 100
                                    _24722 = mem[416]
                                    _24723 = mem[448]
                                    mem[_14433 + (8 * ceil32(return_data.size)) + 103] = mem[492 len 20]
                                    mem[_14433 + (8 * ceil32(return_data.size)) + 135] = msg.sender
                                    mem[_14433 + (8 * ceil32(return_data.size)) + 167] = address(_24722)
                                    mem[_14433 + (8 * ceil32(return_data.size)) + 199] = address(_24723)
                                    mem[_14433 + (8 * ceil32(return_data.size)) + 231] = _14316 - _1097
                                    emit 0xdcc9f547: mem[_14433 + (8 * ceil32(return_data.size)) + 103 len (13 * ceil32(return_data.size)) + 160], this.address
                                    _25168 = mem[_1057]
                                    mem[_14433 + (8 * ceil32(return_data.size)) + 103] = _734
                                    emit 0xc195856d: mem[_14433 + (8 * ceil32(return_data.size)) + 103 len (13 * ceil32(return_data.size)) + 32], this.address, address(_25168)
                                    Mask(248, 0, stor0.field_8) = 0
                                    mem[_14433 + (8 * ceil32(return_data.size)) + 103] = 1
                                    return memory
                                      from _14433 + (8 * ceil32(return_data.size)) + 103
                                       len (13 * ceil32(return_data.size)) + 32
                                require 10^14 * ext_call.return_data[30 len 2] / 100
                                require 10^14 * ext_call.return_data[30 len 2] / 100 * mem[128] / 10^14 * ext_call.return_data[30 len 2] / 100 == mem[128]
                                _19117 = mem[128]
                                _19118 = mem[448]
                                mem[_14433 + (2 * ceil32(return_data.size)) + 85] = 'contract.name'
                                mem[_14433 + (2 * ceil32(return_data.size)) + 98] = 'Vault'
                                mem[_14433 + (2 * ceil32(return_data.size)) + 53] = 18
                                mem[64] = _14433 + (2 * ceil32(return_data.size)) + 103
                                s = _14433 + (2 * ceil32(return_data.size)) + 85
                                t = mem[64]
                                idx = mem[_14433 + (2 * ceil32(return_data.size)) + 53]
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_14433 + (2 * ceil32(return_data.size)) + 53])] = mem[_14433 + (2 * ceil32(return_data.size)) + floor32(mem[_14433 + (2 * ceil32(return_data.size)) + 53]) + -(mem[_14433 + (2 * ceil32(return_data.size)) + 53] % 32) + 117 len mem[_14433 + (2 * ceil32(return_data.size)) + 53] % 32] or Mask(8 * -(mem[_14433 + (2 * ceil32(return_data.size)) + 53] % 32) + 32, -(8 * -(mem[_14433 + (2 * ceil32(return_data.size)) + 53] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_14433 + (2 * ceil32(return_data.size)) + 53])])
                                _22692 = sha3(mem[mem[64] len _14433 + (2 * ceil32(return_data.size)) + -mem[64] + 121])
                                mem[mem[64] + 4] = sha3(mem[mem[64] len _14433 + (2 * ceil32(return_data.size)) + -mem[64] + 121])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22692
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23151 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64] + 4] = mem[_23151 + 12 len 20]
                                mem[mem[64] + 36] = 10^14 * uint16(ext_call.return_data[0]) / 100 * _18675 / 100 / 10^14
                                require ext_code.size(address(_19118))
                                call address(_19118).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], 10^14 * uint16(ext_call.return_data[0]) / 100 * _18675 / 100 / 10^14
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23535 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_23535]:
                                    revert with 0, 'Tokens transfer to vault was invalid.'
                                _23907 = mem[448]
                                mem[mem[64] + 4] = mem[492 len 20]
                                mem[mem[64] + 36] = _19117 - (10^14 * uint16(ext_call.return_data[0]) / 100 * _18675 / 100 / 10^14)
                                require ext_code.size(address(_23907))
                                call address(_23907).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _19117 - (10^14 * uint16(ext_call.return_data[0]) / 100 * _18675 / 100 / 10^14)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _24303 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_24303]:
                                    revert with 0, 'Transfer to merchant failed.'
                                _24718 = mem[416]
                                _24719 = mem[448]
                                mem[mem[64]] = mem[492 len 20]
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = address(_24718)
                                mem[mem[64] + 96] = address(_24719)
                                mem[mem[64] + 128] = _14316 - _1097
                                emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24718), address(_24719), _14316 - _1097, this.address
                        else:
                            mem[_1100 + ceil32(_1139) + ceil32(_1187) + ceil32(_4938) + _8984 + 836] = 0
                            require ext_code.size(address(_1099))
                            call address(_1099).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1100 + ceil32(_1139) + ceil32(_1187) + ceil32(_4938) + ceil32(_8984) + -mem[64] + 832]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13660 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_13660]:
                                _13778 = mem[_1057]
                                mem[mem[64]] = _734
                                emit 0x6230081d: _734, this.address, address(_13778)
                                require idx + 1 >= idx
                                _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = _734
                                idx = idx + 1
                                continue 
                            _13779 = mem[416]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_13779))
                            call address(_13779).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13916 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _13948 = mem[_13916]
                            _14003 = mem[416]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _13948
                            require ext_code.size(address(_14003))
                            call address(_14003).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _13948
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14076 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_14076]:
                                revert with 0, 'Transfer to customer failed.'
                            _14186 = mem[448]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_14186))
                            call address(_14186).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14300 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _14332 = mem[_14300]
                            require _1097 <= mem[_14300]
                            if mem[_14300] - _1097 != mem[128]:
                                revert with 0, 'StablePay target balance is not valid.'
                            _14497 = mem[64]
                            mem[mem[64] + 32] = 'contract.name'
                            mem[mem[64] + 45] = 'Settings'
                            _14498 = mem[64]
                            mem[mem[64]] = 21
                            mem[64] = mem[64] + 53
                            _14500 = mem[_14498]
                            s = _14498 + 32
                            t = mem[64]
                            idx = mem[_14498]
                            while idx >= 32:
                                mem[t] = mem[s]
                                _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[mem[64] + floor32(mem[_14498])] = mem[_14498 + floor32(mem[_14498]) + -(mem[_14498] % 32) + 64 len mem[_14498] % 32] or Mask(8 * -(mem[_14498] % 32) + 32, -(8 * -(mem[_14498] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_14498])])
                            _18306 = sha3(mem[mem[64] len _14500 + _14497 + -mem[64] + 53])
                            mem[mem[64] + 4] = sha3(mem[mem[64] len _14500 + _14497 + -mem[64] + 53])
                            require ext_code.size(_storageAddress)
                            call _storageAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args _18306
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18452 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(mem[_18452 + 12 len 20])
                            call mem[_18452 + 12 len 20].0x6ea8bc10 with:
                                 gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18580 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _18612 = mem[_18580]
                            if not mem[_18580 + 30 len 2]:
                                _18723 = mem[128]
                                _18724 = mem[448]
                                _18849 = mem[64]
                                mem[mem[64] + 32] = 'contract.name'
                                mem[mem[64] + 45] = 'Vault'
                                _18850 = mem[64]
                                mem[mem[64]] = 18
                                mem[64] = mem[64] + 50
                                _18852 = mem[_18850]
                                s = _18850 + 32
                                t = mem[64]
                                idx = mem[_18850]
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_18850])] = mem[_18850 + floor32(mem[_18850]) + -(mem[_18850] % 32) + 64 len mem[_18850] % 32] or Mask(8 * -(mem[_18850] % 32) + 32, -(8 * -(mem[_18850] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_18850])])
                                _22722 = sha3(mem[mem[64] len _18852 + _18849 + -mem[64] + 50])
                                mem[mem[64] + 4] = sha3(mem[mem[64] len _18852 + _18849 + -mem[64] + 50])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22722
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23156 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64] + 4] = mem[_23156 + 12 len 20]
                                mem[mem[64] + 36] = 0
                                require ext_code.size(address(_18724))
                                call address(_18724).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23540 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_23540]:
                                    revert with 0, 'Tokens transfer to vault was invalid.'
                                _23922 = mem[448]
                                mem[mem[64] + 4] = mem[492 len 20]
                                mem[mem[64] + 36] = _18723
                                require ext_code.size(address(_23922))
                                call address(_23922).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _18723
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _24308 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_24308]:
                                    revert with 0, 'Transfer to merchant failed.'
                                _24738 = mem[416]
                                _24739 = mem[448]
                                mem[mem[64]] = mem[492 len 20]
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = address(_24738)
                                mem[mem[64] + 96] = address(_24739)
                                mem[mem[64] + 128] = _14332 - _1097
                                emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24738), address(_24739), _14332 - _1097, this.address
                            else:
                                require mem[_18580 + 30 len 2]
                                require 10^14 * mem[_18580 + 30 len 2] / mem[_18580 + 30 len 2] == 10^14
                                _18676 = mem[128]
                                if not 10^14 * mem[_18580 + 30 len 2] / 100:
                                    _18847 = mem[128]
                                    _18848 = mem[448]
                                    _19131 = mem[64]
                                    mem[mem[64] + 32] = 'contract.name'
                                    mem[mem[64] + 45] = 'Vault'
                                    _19132 = mem[64]
                                    mem[mem[64]] = 18
                                    mem[64] = mem[64] + 50
                                    _19134 = mem[_19132]
                                    s = _19132 + 32
                                    t = mem[64]
                                    idx = mem[_19132]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_19132])] = mem[_19132 + floor32(mem[_19132]) + -(mem[_19132] % 32) + 64 len mem[_19132] % 32] or Mask(8 * -(mem[_19132] % 32) + 32, -(8 * -(mem[_19132] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_19132])])
                                    _22716 = sha3(mem[mem[64] len _19134 + _19131 + -mem[64] + 50])
                                    mem[mem[64] + 4] = sha3(mem[mem[64] len _19134 + _19131 + -mem[64] + 50])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22716
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23155 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = mem[_23155 + 12 len 20]
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(address(_18848))
                                    call address(_18848).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23539 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_23539]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _23919 = mem[448]
                                    mem[mem[64] + 4] = mem[492 len 20]
                                    mem[mem[64] + 36] = _18847
                                    require ext_code.size(address(_23919))
                                    call address(_23919).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _18847
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24307 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_24307]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24734 = mem[416]
                                    _24735 = mem[448]
                                    mem[mem[64]] = mem[492 len 20]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = address(_24734)
                                    mem[mem[64] + 96] = address(_24735)
                                    mem[mem[64] + 128] = _14332 - _1097
                                    emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24734), address(_24735), _14332 - _1097, this.address
                                else:
                                    require 10^14 * mem[_18580 + 30 len 2] / 100
                                    require 10^14 * mem[_18580 + 30 len 2] / 100 * mem[128] / 10^14 * mem[_18580 + 30 len 2] / 100 == mem[128]
                                    _19129 = mem[128]
                                    _19130 = mem[448]
                                    _19483 = mem[64]
                                    mem[mem[64] + 32] = 'contract.name'
                                    mem[mem[64] + 45] = 'Vault'
                                    _19484 = mem[64]
                                    mem[mem[64]] = 18
                                    mem[64] = mem[64] + 50
                                    _19486 = mem[_19484]
                                    s = _19484 + 32
                                    t = mem[64]
                                    idx = mem[_19484]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _729 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_19484])] = mem[_19484 + floor32(mem[_19484]) + -(mem[_19484] % 32) + 64 len mem[_19484] % 32] or Mask(8 * -(mem[_19484] % 32) + 32, -(8 * -(mem[_19484] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_19484])])
                                    _22710 = sha3(mem[mem[64] len _19486 + _19483 + -mem[64] + 50])
                                    mem[mem[64] + 4] = sha3(mem[mem[64] len _19486 + _19483 + -mem[64] + 50])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22710
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23154 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = mem[_23154 + 12 len 20]
                                    mem[mem[64] + 36] = 10^14 * uint16(_18612) / 100 * _18676 / 100 / 10^14
                                    require ext_code.size(address(_19130))
                                    call address(_19130).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 10^14 * uint16(_18612) / 100 * _18676 / 100 / 10^14
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23538 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_23538]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _23916 = mem[448]
                                    mem[mem[64] + 4] = mem[492 len 20]
                                    mem[mem[64] + 36] = _19129 - (10^14 * uint16(_18612) / 100 * _18676 / 100 / 10^14)
                                    require ext_code.size(address(_23916))
                                    call address(_23916).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _19129 - (10^14 * uint16(_18612) / 100 * _18676 / 100 / 10^14)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24306 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_24306]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24730 = mem[416]
                                    _24731 = mem[448]
                                    mem[mem[64]] = mem[492 len 20]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = address(_24730)
                                    mem[mem[64] + 96] = address(_24731)
                                    mem[mem[64] + 128] = _14332 - _1097
                                    emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24730), address(_24731), _14332 - _1097, this.address
            emit 0xc195856d: _734, this.address, mem[_1057 + 12 len 20]
            Mask(248, 0, stor0.field_8) = 0
            return 1
    else:
        mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 1093] = msg.sender
        mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 1125] = this.address
        require ext_code.size(address(('cd', 4)[9]))
        call address(('cd', 4)[9]).0xdd62ed3e with:
             gas gas_remaining wei
            args msg.sender, this.address
        mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 1089] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ('cd', 4)[0]:
            revert with 0, 'Not enough allowed tokens to StablePay.'
        mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 1093] = msg.sender
        mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 1125] = address(('cd', 4)[11])
        mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 1157] = ('cd', 4)[0]
        require ext_code.size(address(('cd', 4)[9]))
        call address(('cd', 4)[9]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(('cd', 4)[11]), ('cd', 4)[0]
        mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 1089] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 1089
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer from StablePay was not successful.'
        mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 1089] = uint64(('cd', 4)[11]) << 96
        mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 1121] = msg.sender
        mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 1153] = address(('cd', 4)[9])
        mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 1185] = address(('cd', 4)[10])
        mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 1217] = ('cd', 4)[0]
        emit 0xdcc9f547: ('cd', 4)[11] << 192, msg.sender, address(('cd', 4)[9]), address(('cd', 4)[10]), ('cd', 4)[0], this.address
        if address(('cd', 4)[9]) == address(('cd', 4)[10]):
            Mask(248, 0, stor0.field_8) = 0
            return 1
        if Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + cd[(cd[4] + ('cd', 4)[19] + 4)] + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + cd[(cd[4] + ('cd', 4)[19] + 4)] + 928 len -cd[(cd[4] + ('cd', 4)[19] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)])] <= 0:
            revert with 0, 'Provider keys must not be empty.'
        _730 = Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + cd[(cd[4] + ('cd', 4)[19] + 4)] + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + cd[(cd[4] + ('cd', 4)[19] + 4)] + 928 len -cd[(cd[4] + ('cd', 4)[19] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)])]
        s = 0
        idx = 0
        while idx < _730:
            require idx < mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
            _736 = mem[(32 * idx) + ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 928]
            _738 = mem[64]
            mem[64] = mem[64] + 192
            mem[_738] = 0
            mem[_738 + 32] = 0
            mem[_738 + 64] = 0
            mem[_738 + 96] = 0
            mem[_738 + 128] = 0
            mem[_738 + 160] = 0
            _745 = mem[64]
            mem[mem[64] + 32] = 'contract.name'
            mem[mem[64] + 45] = 'StablePayStorage'
            _746 = mem[64]
            mem[mem[64]] = 29
            mem[64] = mem[64] + 61
            _748 = mem[_746]
            t = _746 + 32
            u = mem[64]
            s = mem[_746]
            while s >= 32:
                mem[u] = mem[t]
                _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_746])] = mem[_746 + floor32(mem[_746]) + -(mem[_746] % 32) + 64 len mem[_746] % 32] or Mask(8 * -(mem[_746] % 32) + 32, -(8 * -(mem[_746] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_746])])
            _898 = sha3(mem[mem[64] len _748 + _745 + -mem[64] + 61])
            mem[mem[64] + 4] = sha3(mem[mem[64] len _748 + _745 + -mem[64] + 61])
            require ext_code.size(_storageAddress)
            call _storageAddress.0x21f8a721 with:
                 gas gas_remaining wei
                args _898
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _904 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _906 = mem[_904]
            mem[mem[64] + 4] = _736
            require ext_code.size(address(_906))
            call address(_906).0x6bde137b with:
                 gas gas_remaining wei
                args _736
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _912 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_912]:
                require idx + 1 >= idx
                _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                s = _736
                idx = idx + 1
                continue 
            _918 = mem[96]
            _919 = mem[416]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            require ext_code.size(address(_919))
            call address(_919).0xdd62ed3e with:
                 gas gas_remaining wei
                args msg.sender, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _924 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_924] < _918:
                revert with 0, 'Not enough allowed tokens to StablePay.'
            _930 = mem[64]
            mem[64] = mem[64] + 192
            mem[_930] = 0
            mem[_930 + 32] = 0
            mem[_930 + 64] = 0
            mem[_930 + 96] = 0
            mem[_930 + 128] = 0
            mem[_930 + 160] = 0
            _936 = mem[64]
            mem[mem[64] + 32] = 'contract.name'
            mem[mem[64] + 45] = 'StablePayStorage'
            _937 = mem[64]
            mem[mem[64]] = 29
            mem[64] = mem[64] + 61
            _939 = mem[_937]
            t = _937 + 32
            u = mem[64]
            s = mem[_937]
            while s >= 32:
                mem[u] = mem[t]
                _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_937])] = mem[_937 + floor32(mem[_937]) + -(mem[_937] % 32) + 64 len mem[_937] % 32] or Mask(8 * -(mem[_937] % 32) + 32, -(8 * -(mem[_937] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_937])])
            _1042 = sha3(mem[mem[64] len _939 + _936 + -mem[64] + 61])
            mem[mem[64] + 4] = sha3(mem[mem[64] len _939 + _936 + -mem[64] + 61])
            require ext_code.size(_storageAddress)
            call _storageAddress.0x21f8a721 with:
                 gas gas_remaining wei
                args _1042
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1048 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require ext_code.size(mem[_1048 + 12 len 20])
            call mem[_1048 + 12 len 20].0x14568e03 with:
                 gas gas_remaining wei
                args _736
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1056 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _1058 = mem[64]
            require mem[64] + 192 <= test266151307() and mem[64] + 192 >= mem[64]
            mem[64] = mem[64] + 192
            mem[_1058] = mem[_1056 + 12 len 20]
            mem[_1058 + 32] = mem[_1056 + 44 len 20]
            mem[_1058 + 64] = mem[_1056 + 64]
            mem[_1058 + 96] = bool(mem[_1056 + 96])
            mem[_1058 + 128] = bool(mem[_1056 + 128])
            mem[_1058 + 160] = bool(mem[_1056 + 160])
            _1075 = mem[416]
            _1076 = mem[_1058]
            _1077 = mem[96]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = address(_1076)
            mem[mem[64] + 68] = _1077
            require ext_code.size(address(_1075))
            call address(_1075).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(_1076), _1077
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1082 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_1082]:
                revert with 0, 'Transfer from StablePay was not successful.'
            _1088 = mem[448]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_1088))
            call address(_1088).0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1096 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1098 = mem[_1096]
            _1101 = mem[_1058]
            _1102 = mem[64]
            mem[mem[64]] = 0xc811610000000000000000000000000000000000000000000000000000000 * 3600
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[96]
            mem[mem[64] + 68] = mem[128]
            mem[mem[64] + 100] = mem[160]
            mem[mem[64] + 132] = mem[192]
            mem[mem[64] + 164] = mem[224]
            mem[mem[64] + 196] = mem[256]
            mem[mem[64] + 228] = mem[288]
            mem[mem[64] + 260] = mem[320]
            mem[mem[64] + 292] = mem[352]
            mem[mem[64] + 324] = mem[384]
            mem[mem[64] + 356] = mem[428 len 20]
            mem[mem[64] + 388] = mem[460 len 20]
            mem[mem[64] + 420] = mem[492 len 20]
            mem[mem[64] + 452] = mem[524 len 20]
            mem[mem[64] + 484] = mem[556 len 20]
            mem[mem[64] + 516] = mem[588 len 20]
            mem[mem[64] + 548] = mem[620 len 20]
            _1138 = mem[640]
            mem[mem[64] + 580] = 672
            _1140 = mem[mem[640]]
            mem[mem[64] + 708] = mem[mem[640]]
            s = 0
            while s < _1140:
                mem[mem[64] + s + 740] = mem[_1138 + s + 32]
                _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                s = s + 32
                continue 
            if ceil32(_1140) <= _1140:
                _1182 = mem[672]
                mem[_1102 + 612] = ceil32(_1140) + 704
                _1186 = mem[_1182]
                mem[_1102 + ceil32(_1140) + 740] = mem[_1182]
                s = 0
                while s < _1186:
                    mem[_1102 + ceil32(_1140) + s + 772] = mem[_1182 + s + 32]
                    _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                    s = s + 32
                    continue 
                if ceil32(_1186) <= _1186:
                    _4927 = mem[704]
                    mem[_1102 + 644] = ceil32(_1140) + ceil32(_1186) + 736
                    _4935 = mem[_4927]
                    mem[_1102 + ceil32(_1140) + ceil32(_1186) + 772] = mem[_4927]
                    s = 0
                    while s < _4935:
                        mem[_1102 + ceil32(_1140) + ceil32(_1186) + s + 804] = mem[_4927 + s + 32]
                        _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                        s = s + 32
                        continue 
                    if ceil32(_4935) > _4935:
                        mem[_1102 + ceil32(_1140) + ceil32(_1186) + _4935 + 804] = 0
                        _8969 = mem[736]
                        mem[_1102 + 676] = ceil32(_1140) + ceil32(_1186) + ceil32(_4935) + 768
                        _8985 = mem[_8969]
                        mem[_1102 + ceil32(_1140) + ceil32(_1186) + ceil32(_4935) + 804] = mem[_8969]
                        s = 0
                        while s < _8985:
                            mem[_1102 + ceil32(_1140) + ceil32(_1186) + ceil32(_4935) + s + 836] = mem[_8969 + s + 32]
                            _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                            s = s + 32
                            continue 
                        if ceil32(_8985) > _8985:
                            mem[_1102 + ceil32(_1140) + ceil32(_1186) + ceil32(_4935) + _8985 + 836] = 0
                            require ext_code.size(address(_1101))
                            call address(_1101).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1102 + ceil32(_1140) + ceil32(_1186) + ceil32(_4935) + ceil32(_8985) + -mem[64] + 832]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13662 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_13662]:
                                _13786 = mem[_1058]
                                mem[mem[64]] = _736
                                emit 0x6230081d: _736, this.address, address(_13786)
                                require idx + 1 >= idx
                                _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = _736
                                idx = idx + 1
                                continue 
                            _13787 = mem[416]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_13787))
                            call address(_13787).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13918 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _13950 = mem[_13918]
                            _14007 = mem[416]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _13950
                            require ext_code.size(address(_14007))
                            call address(_14007).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _13950
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14078 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_14078]:
                                revert with 0, 'Transfer to customer failed.'
                            _14192 = mem[448]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_14192))
                            call address(_14192).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14302 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _14334 = mem[_14302]
                            require _1098 <= mem[_14302]
                            if mem[_14302] - _1098 != mem[128]:
                                revert with 0, 'StablePay target balance is not valid.'
                            _14505 = mem[64]
                            mem[mem[64] + 32] = 'contract.name'
                            mem[mem[64] + 45] = 'Settings'
                            _14506 = mem[64]
                            mem[mem[64]] = 21
                            mem[64] = mem[64] + 53
                            _14508 = mem[_14506]
                            s = _14506 + 32
                            t = _14505 + 53
                            idx = mem[_14506]
                            while idx >= 32:
                                mem[t] = mem[s]
                                _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[_14505 + floor32(mem[_14506]) + 53] = mem[_14506 + -(mem[_14506] % 32) + floor32(mem[_14506]) + 64 len mem[_14506] % 32] or Mask(8 * -(mem[_14506] % 32) + 32, -(8 * -(mem[_14506] % 32) + 32) + 256, mem[_14505 + floor32(mem[_14506]) + 53])
                            _18330 = sha3(mem[_14505 + 53 len _14508])
                            mem[_14505 + 57] = sha3(mem[_14505 + 53 len _14508])
                            require ext_code.size(_storageAddress)
                            call _storageAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args _18330
                            mem[_14505 + 53] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x6ea8bc10 with:
                                 gas gas_remaining wei
                            mem[_14505 + ceil32(return_data.size) + 53] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _14505 + (2 * ceil32(return_data.size)) + 53
                            require return_data.size >= 32
                            if not ext_call.return_data[30 len 2]:
                                _18731 = mem[128]
                                _18732 = mem[448]
                                mem[_14505 + (2 * ceil32(return_data.size)) + 85] = 'contract.name'
                                mem[_14505 + (2 * ceil32(return_data.size)) + 98] = 'Vault'
                                mem[_14505 + (2 * ceil32(return_data.size)) + 53] = 18
                                mem[64] = _14505 + (2 * ceil32(return_data.size)) + 103
                                s = _14505 + (2 * ceil32(return_data.size)) + 85
                                t = _14505 + (2 * ceil32(return_data.size)) + 103
                                idx = 18
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[_14505 + (2 * ceil32(return_data.size)) + 103] = mem[_14505 + (2 * ceil32(return_data.size)) + 99 len 18] or Mask(112, 144, mem[_14505 + (2 * ceil32(return_data.size)) + 103])
                                _22794 = sha3(mem[_14505 + (2 * ceil32(return_data.size)) + 103 len 18])
                                mem[_14505 + (2 * ceil32(return_data.size)) + 107] = sha3(mem[_14505 + (2 * ceil32(return_data.size)) + 103 len 18])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22794
                                mem[_14505 + (2 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_14505 + (4 * ceil32(return_data.size)) + 107] = address(ext_call.return_data[0])
                                mem[_14505 + (4 * ceil32(return_data.size)) + 139] = 0
                                require ext_code.size(address(_18732))
                                call address(_18732).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[_14505 + (4 * ceil32(return_data.size)) + 107 len (5 * ceil32(return_data.size)) + 64]
                                mem[_14505 + (4 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    mem[_14505 + (4 * ceil32(return_data.size)) + 103] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14505 + (4 * ceil32(return_data.size)) + 107] = 32
                                    mem[_14505 + (4 * ceil32(return_data.size)) + 139] = 37
                                    mem[_14505 + (4 * ceil32(return_data.size)) + 171] = 'Tokens transfer to vault was inv'
                                    mem[_14505 + (4 * ceil32(return_data.size)) + 203] = 'alid.'
                                    revert with memory
                                      from _14505 + (4 * ceil32(return_data.size)) + 103
                                       len (7 * ceil32(return_data.size)) + 132
                                _23958 = mem[448]
                                mem[_14505 + (4 * ceil32(return_data.size)) + 107] = mem[492 len 20]
                                mem[_14505 + (4 * ceil32(return_data.size)) + 139] = _18731
                                require ext_code.size(address(_23958))
                                call address(_23958).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[_14505 + (4 * ceil32(return_data.size)) + 107 len (7 * ceil32(return_data.size)) + 64]
                                mem[_14505 + (4 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14505 + (8 * ceil32(return_data.size)) + 103
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    mem[_14505 + (8 * ceil32(return_data.size)) + 103] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14505 + (8 * ceil32(return_data.size)) + 107] = 32
                                    mem[_14505 + (8 * ceil32(return_data.size)) + 139] = 28
                                    mem[_14505 + (8 * ceil32(return_data.size)) + 171] = 'Transfer to merchant failed.'
                                    revert with memory
                                      from _14505 + (8 * ceil32(return_data.size)) + 103
                                       len (13 * ceil32(return_data.size)) + 100
                                _24786 = mem[416]
                                _24787 = mem[448]
                                mem[_14505 + (8 * ceil32(return_data.size)) + 103] = mem[492 len 20]
                                mem[_14505 + (8 * ceil32(return_data.size)) + 135] = msg.sender
                                mem[_14505 + (8 * ceil32(return_data.size)) + 167] = address(_24786)
                                mem[_14505 + (8 * ceil32(return_data.size)) + 199] = address(_24787)
                                mem[_14505 + (8 * ceil32(return_data.size)) + 231] = _14334 - _1098
                                emit 0xdcc9f547: mem[_14505 + (8 * ceil32(return_data.size)) + 103 len (13 * ceil32(return_data.size)) + 160], this.address
                                _25184 = mem[_1058]
                                mem[_14505 + (8 * ceil32(return_data.size)) + 103] = _736
                                emit 0xc195856d: mem[_14505 + (8 * ceil32(return_data.size)) + 103 len (13 * ceil32(return_data.size)) + 32], this.address, address(_25184)
                                Mask(248, 0, stor0.field_8) = 0
                                mem[_14505 + (8 * ceil32(return_data.size)) + 103] = 1
                                return memory
                                  from _14505 + (8 * ceil32(return_data.size)) + 103
                                   len (13 * ceil32(return_data.size)) + 32
                            require ext_call.return_data[30 len 2]
                            require 10^14 * ext_call.return_data[30 len 2] / ext_call.return_data[30 len 2] == 10^14
                            _18680 = mem[128]
                            if not 10^14 * ext_call.return_data[30 len 2] / 100:
                                _18871 = mem[128]
                                _18872 = mem[448]
                                mem[_14505 + (2 * ceil32(return_data.size)) + 85] = 'contract.name'
                                mem[_14505 + (2 * ceil32(return_data.size)) + 98] = 'Vault'
                                mem[_14505 + (2 * ceil32(return_data.size)) + 53] = 18
                                mem[64] = _14505 + (2 * ceil32(return_data.size)) + 103
                                s = _14505 + (2 * ceil32(return_data.size)) + 85
                                t = _14505 + (2 * ceil32(return_data.size)) + 103
                                idx = 18
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[_14505 + (2 * ceil32(return_data.size)) + 103] = mem[_14505 + (2 * ceil32(return_data.size)) + 99 len 18] or Mask(112, 144, mem[_14505 + (2 * ceil32(return_data.size)) + 103])
                                _22788 = sha3(mem[_14505 + (2 * ceil32(return_data.size)) + 103 len 18])
                                mem[_14505 + (2 * ceil32(return_data.size)) + 107] = sha3(mem[_14505 + (2 * ceil32(return_data.size)) + 103 len 18])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22788
                                mem[_14505 + (2 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_14505 + (4 * ceil32(return_data.size)) + 107] = ext_call.return_data[12 len 20]
                                mem[_14505 + (4 * ceil32(return_data.size)) + 139] = 0
                                require ext_code.size(address(_18872))
                                call address(_18872).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[12 len 20], 0
                                mem[_14505 + (4 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Tokens transfer to vault was invalid.'
                                _23955 = mem[448]
                                mem[_14505 + (6 * ceil32(return_data.size)) + 107] = mem[492 len 20]
                                mem[_14505 + (6 * ceil32(return_data.size)) + 139] = _18871
                                require ext_code.size(address(_23955))
                                call address(_23955).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[_14505 + (6 * ceil32(return_data.size)) + 107], _18871
                                mem[_14505 + (6 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14505 + (7 * ceil32(return_data.size)) + 103
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Transfer to merchant failed.'
                                _24782 = mem[416]
                                _24783 = mem[448]
                                mem[_14505 + (7 * ceil32(return_data.size)) + 103] = mem[492 len 20]
                                mem[_14505 + (7 * ceil32(return_data.size)) + 135] = msg.sender
                                mem[_14505 + (7 * ceil32(return_data.size)) + 167] = address(_24782)
                                mem[_14505 + (7 * ceil32(return_data.size)) + 199] = address(_24783)
                                mem[_14505 + (7 * ceil32(return_data.size)) + 231] = _14334 - _1098
                                emit 0xdcc9f547: mem[_14505 + (7 * ceil32(return_data.size)) + 103], msg.sender, address(_24782), address(_24783), _14334 - _1098, this.address
                            else:
                                require 10^14 * ext_call.return_data[30 len 2] / 100
                                require 10^14 * ext_call.return_data[30 len 2] / 100 * mem[128] / 10^14 * ext_call.return_data[30 len 2] / 100 == mem[128]
                                _19177 = mem[128]
                                _19178 = mem[448]
                                mem[_14505 + (2 * ceil32(return_data.size)) + 85] = 'contract.name'
                                mem[_14505 + (2 * ceil32(return_data.size)) + 98] = 'Vault'
                                mem[_14505 + (2 * ceil32(return_data.size)) + 53] = 18
                                mem[64] = _14505 + (2 * ceil32(return_data.size)) + 103
                                s = _14505 + (2 * ceil32(return_data.size)) + 85
                                t = _14505 + (2 * ceil32(return_data.size)) + 103
                                idx = 18
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[_14505 + (2 * ceil32(return_data.size)) + 103] = mem[_14505 + (2 * ceil32(return_data.size)) + 99 len 18] or Mask(112, 144, mem[_14505 + (2 * ceil32(return_data.size)) + 103])
                                _22782 = sha3(mem[_14505 + (2 * ceil32(return_data.size)) + 103 len 18])
                                mem[_14505 + (2 * ceil32(return_data.size)) + 107] = sha3(mem[_14505 + (2 * ceil32(return_data.size)) + 103 len 18])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22782
                                mem[_14505 + (2 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_14505 + (4 * ceil32(return_data.size)) + 107] = ext_call.return_data[12 len 20]
                                mem[_14505 + (4 * ceil32(return_data.size)) + 139] = 10^14 * uint16(ext_call.return_data[0]) / 100 * _18680 / 100 / 10^14
                                require ext_code.size(address(_19178))
                                call address(_19178).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[12 len 20], 10^14 * uint16(ext_call.return_data[0]) / 100 * _18680 / 100 / 10^14
                                mem[_14505 + (4 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Tokens transfer to vault was invalid.'
                                _23952 = mem[448]
                                mem[_14505 + (6 * ceil32(return_data.size)) + 107] = mem[492 len 20]
                                mem[_14505 + (6 * ceil32(return_data.size)) + 139] = _19177 - (10^14 * uint16(ext_call.return_data[0]) / 100 * _18680 / 100 / 10^14)
                                require ext_code.size(address(_23952))
                                call address(_23952).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[_14505 + (6 * ceil32(return_data.size)) + 107], _19177 - (10^14 * uint16(ext_call.return_data[0]) / 100 * _18680 / 100 / 10^14)
                                mem[_14505 + (6 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14505 + (7 * ceil32(return_data.size)) + 103
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Transfer to merchant failed.'
                                _24778 = mem[416]
                                _24779 = mem[448]
                                mem[_14505 + (7 * ceil32(return_data.size)) + 103] = mem[492 len 20]
                                mem[_14505 + (7 * ceil32(return_data.size)) + 135] = msg.sender
                                mem[_14505 + (7 * ceil32(return_data.size)) + 167] = address(_24778)
                                mem[_14505 + (7 * ceil32(return_data.size)) + 199] = address(_24779)
                                mem[_14505 + (7 * ceil32(return_data.size)) + 231] = _14334 - _1098
                                emit 0xdcc9f547: mem[_14505 + (7 * ceil32(return_data.size)) + 103], msg.sender, address(_24778), address(_24779), _14334 - _1098, this.address
                        else:
                            require ext_code.size(address(_1101))
                            call address(_1101).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1102 + ceil32(_1140) + ceil32(_1186) + ceil32(_4935) + ceil32(_8985) + -mem[64] + 832]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13646 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_13646]:
                                _13728 = mem[_1058]
                                mem[mem[64]] = _736
                                emit 0x6230081d: _736, this.address, address(_13728)
                                require idx + 1 >= idx
                                _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = _736
                                idx = idx + 1
                                continue 
                            _13729 = mem[416]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_13729))
                            call address(_13729).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13895 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _13934 = mem[_13895]
                            _13975 = mem[416]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _13934
                            require ext_code.size(address(_13975))
                            call address(_13975).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _13934
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14062 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_14062]:
                                revert with 0, 'Transfer to customer failed.'
                            _14144 = mem[448]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_14144))
                            call address(_14144).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14286 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _14318 = mem[_14286]
                            require _1098 <= mem[_14286]
                            if mem[_14286] - _1098 != mem[128]:
                                revert with 0, 'StablePay target balance is not valid.'
                            _14441 = mem[64]
                            mem[mem[64] + 32] = 'contract.name'
                            mem[mem[64] + 45] = 'Settings'
                            _14442 = mem[64]
                            mem[mem[64]] = 21
                            mem[64] = mem[64] + 53
                            _14444 = mem[_14442]
                            s = _14442 + 32
                            t = mem[64]
                            idx = mem[_14442]
                            while idx >= 32:
                                mem[t] = mem[s]
                                _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[mem[64] + floor32(mem[_14442])] = mem[_14442 + floor32(mem[_14442]) + -(mem[_14442] % 32) + 64 len mem[_14442] % 32] or Mask(8 * -(mem[_14442] % 32) + 32, -(8 * -(mem[_14442] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_14442])])
                            _18324 = sha3(mem[mem[64] len _14444 + _14441 + -mem[64] + 53])
                            mem[mem[64] + 4] = sha3(mem[mem[64] len _14444 + _14441 + -mem[64] + 53])
                            require ext_code.size(_storageAddress)
                            call _storageAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args _18324
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18455 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(mem[_18455 + 12 len 20])
                            call mem[_18455 + 12 len 20].0x6ea8bc10 with:
                                 gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18583 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _18615 = mem[_18583]
                            if not mem[_18583 + 30 len 2]:
                                _18729 = mem[128]
                                _18730 = mem[448]
                                _18867 = mem[64]
                                mem[mem[64] + 32] = 'contract.name'
                                mem[mem[64] + 45] = 'Vault'
                                _18868 = mem[64]
                                mem[mem[64]] = 18
                                mem[64] = mem[64] + 50
                                _18870 = mem[_18868]
                                s = _18868 + 32
                                t = mem[64]
                                idx = mem[_18868]
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_18868])] = mem[_18868 + floor32(mem[_18868]) + -(mem[_18868] % 32) + 64 len mem[_18868] % 32] or Mask(8 * -(mem[_18868] % 32) + 32, -(8 * -(mem[_18868] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_18868])])
                                _22776 = sha3(mem[mem[64] len _18870 + _18867 + -mem[64] + 50])
                                mem[mem[64] + 4] = sha3(mem[mem[64] len _18870 + _18867 + -mem[64] + 50])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22776
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23165 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64] + 4] = mem[_23165 + 12 len 20]
                                mem[mem[64] + 36] = 0
                                require ext_code.size(address(_18730))
                                call address(_18730).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23549 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_23549]:
                                    revert with 0, 'Tokens transfer to vault was invalid.'
                                _23949 = mem[448]
                                mem[mem[64] + 4] = mem[492 len 20]
                                mem[mem[64] + 36] = _18729
                                require ext_code.size(address(_23949))
                                call address(_23949).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _18729
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _24317 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_24317]:
                                    revert with 0, 'Transfer to merchant failed.'
                                _24774 = mem[416]
                                _24775 = mem[448]
                                mem[mem[64]] = mem[492 len 20]
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = address(_24774)
                                mem[mem[64] + 96] = address(_24775)
                                mem[mem[64] + 128] = _14318 - _1098
                                emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24774), address(_24775), _14318 - _1098, this.address
                            else:
                                require mem[_18583 + 30 len 2]
                                require 10^14 * mem[_18583 + 30 len 2] / mem[_18583 + 30 len 2] == 10^14
                                _18679 = mem[128]
                                if 10^14 * mem[_18583 + 30 len 2] / 100:
                                    require 10^14 * mem[_18583 + 30 len 2] / 100
                                    require 10^14 * mem[_18583 + 30 len 2] / 100 * mem[128] / 10^14 * mem[_18583 + 30 len 2] / 100 == mem[128]
                                    _19165 = mem[128]
                                    _19166 = mem[448]
                                    _19513 = mem[64]
                                    mem[mem[64] + 32] = 'contract.name'
                                    mem[mem[64] + 45] = 'Vault'
                                    _19514 = mem[64]
                                    mem[mem[64]] = 18
                                    mem[64] = mem[64] + 50
                                    _19516 = mem[_19514]
                                    s = _19514 + 32
                                    t = _19513 + 50
                                    idx = mem[_19514]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[_19513 + floor32(mem[_19514]) + 50] = mem[_19514 + -(mem[_19514] % 32) + floor32(mem[_19514]) + 64 len mem[_19514] % 32] or Mask(8 * -(mem[_19514] % 32) + 32, -(8 * -(mem[_19514] % 32) + 32) + 256, mem[_19513 + floor32(mem[_19514]) + 50])
                                    _22764 = sha3(mem[_19513 + 50 len _19516])
                                    mem[_19513 + 54] = sha3(mem[_19513 + 50 len _19516])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22764
                                    mem[_19513 + 50] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _19513 + ceil32(return_data.size) + 50
                                    require return_data.size >= 32
                                    mem[_19513 + ceil32(return_data.size) + 54] = address(ext_call.return_data[0])
                                    mem[_19513 + ceil32(return_data.size) + 86] = 10^14 * uint16(_18615) / 100 * _18679 / 100 / 10^14
                                    require ext_code.size(address(_19166))
                                    call address(_19166).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), 10^14 * uint16(_18615) / 100 * _18679 / 100 / 10^14
                                    mem[_19513 + ceil32(return_data.size) + 50] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _19513 + (2 * ceil32(return_data.size)) + 50
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _23943 = mem[448]
                                    _23944 = mem[480]
                                    mem[_19513 + (2 * ceil32(return_data.size)) + 54] = mem[492 len 20]
                                    mem[_19513 + (2 * ceil32(return_data.size)) + 86] = _19165 - (10^14 * uint16(_18615) / 100 * _18679 / 100 / 10^14)
                                    require ext_code.size(address(_23943))
                                    call address(_23943).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(_23944), _19165 - (10^14 * uint16(_18615) / 100 * _18679 / 100 / 10^14)
                                    mem[_19513 + (2 * ceil32(return_data.size)) + 50] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _19513 + (4 * ceil32(return_data.size)) + 50
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24766 = mem[416]
                                    _24767 = mem[448]
                                    mem[_19513 + (4 * ceil32(return_data.size)) + 50] = mem[492 len 20]
                                    mem[_19513 + (4 * ceil32(return_data.size)) + 82] = msg.sender
                                    mem[_19513 + (4 * ceil32(return_data.size)) + 114] = address(_24766)
                                    mem[_19513 + (4 * ceil32(return_data.size)) + 146] = address(_24767)
                                    mem[_19513 + (4 * ceil32(return_data.size)) + 178] = _14318 - _1098
                                    emit 0xdcc9f547: mem[_19513 + (4 * ceil32(return_data.size)) + 50], msg.sender, address(_24766), address(_24767), _14318 - _1098, this.address
                                else:
                                    _18865 = mem[128]
                                    _18866 = mem[448]
                                    _19167 = mem[64]
                                    mem[mem[64] + 32] = 'contract.name'
                                    mem[mem[64] + 45] = 'Vault'
                                    _19168 = mem[64]
                                    mem[mem[64]] = 18
                                    mem[64] = mem[64] + 50
                                    _19170 = mem[_19168]
                                    s = _19168 + 32
                                    t = mem[64]
                                    idx = mem[_19168]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_19168])] = mem[_19168 + floor32(mem[_19168]) + -(mem[_19168] % 32) + 64 len mem[_19168] % 32] or Mask(8 * -(mem[_19168] % 32) + 32, -(8 * -(mem[_19168] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_19168])])
                                    _22770 = sha3(mem[mem[64] len _19170 + _19167 + -mem[64] + 50])
                                    mem[mem[64] + 4] = sha3(mem[mem[64] len _19170 + _19167 + -mem[64] + 50])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22770
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23164 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = mem[_23164 + 12 len 20]
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(address(_18866))
                                    call address(_18866).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23548 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_23548]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _23946 = mem[448]
                                    mem[mem[64] + 4] = mem[492 len 20]
                                    mem[mem[64] + 36] = _18865
                                    require ext_code.size(address(_23946))
                                    call address(_23946).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _18865
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24316 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_24316]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24770 = mem[416]
                                    _24771 = mem[448]
                                    mem[mem[64]] = mem[492 len 20]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = address(_24770)
                                    mem[mem[64] + 96] = address(_24771)
                                    mem[mem[64] + 128] = _14318 - _1098
                                    emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24770), address(_24771), _14318 - _1098, this.address
                    else:
                        _8961 = mem[736]
                        mem[_1102 + 676] = ceil32(_1140) + ceil32(_1186) + ceil32(_4935) + 768
                        _8977 = mem[_8961]
                        mem[_1102 + ceil32(_1140) + ceil32(_1186) + ceil32(_4935) + 804] = mem[_8961]
                        s = 0
                        while s < _8977:
                            mem[_1102 + ceil32(_1140) + ceil32(_1186) + ceil32(_4935) + s + 836] = mem[_8961 + s + 32]
                            _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                            s = s + 32
                            continue 
                        if ceil32(_8977) <= _8977:
                            require ext_code.size(address(_1101))
                            call address(_1101).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1102 + ceil32(_1140) + ceil32(_1186) + ceil32(_4935) + ceil32(_8977) + -mem[64] + 832]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13645 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_13645]:
                                _13725 = mem[_1058]
                                mem[mem[64]] = _736
                                emit 0x6230081d: _736, this.address, address(_13725)
                                require idx + 1 >= idx
                                _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = _736
                                idx = idx + 1
                                continue 
                            _13726 = mem[416]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_13726))
                            call address(_13726).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13893 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _13933 = mem[_13893]
                            _13973 = mem[416]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _13933
                            require ext_code.size(address(_13973))
                            call address(_13973).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _13933
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14061 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_14061]:
                                revert with 0, 'Transfer to customer failed.'
                            _14141 = mem[448]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_14141))
                            call address(_14141).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14285 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _14317 = mem[_14285]
                            require _1098 <= mem[_14285]
                            if mem[_14285] - _1098 != mem[128]:
                                revert with 0, 'StablePay target balance is not valid.'
                            _14437 = mem[64]
                            mem[mem[64] + 32] = 'contract.name'
                            mem[mem[64] + 45] = 'Settings'
                            _14438 = mem[64]
                            mem[mem[64]] = 21
                            mem[64] = mem[64] + 53
                            _14440 = mem[_14438]
                            s = _14438 + 32
                            t = mem[64]
                            idx = mem[_14438]
                            while idx >= 32:
                                mem[t] = mem[s]
                                _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[mem[64] + floor32(mem[_14438])] = mem[_14438 + floor32(mem[_14438]) + -(mem[_14438] % 32) + 64 len mem[_14438] % 32] or Mask(8 * -(mem[_14438] % 32) + 32, -(8 * -(mem[_14438] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_14438])])
                            _18312 = sha3(mem[mem[64] len _14440 + _14437 + -mem[64] + 53])
                            mem[mem[64] + 4] = sha3(mem[mem[64] len _14440 + _14437 + -mem[64] + 53])
                            require ext_code.size(_storageAddress)
                            call _storageAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args _18312
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18453 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(mem[_18453 + 12 len 20])
                            call mem[_18453 + 12 len 20].0x6ea8bc10 with:
                                 gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18581 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _18613 = mem[_18581]
                            if not mem[_18581 + 30 len 2]:
                                _18725 = mem[128]
                                _18726 = mem[448]
                                _18855 = mem[64]
                                mem[mem[64] + 32] = 'contract.name'
                                mem[mem[64] + 45] = 'Vault'
                                _18856 = mem[64]
                                mem[mem[64]] = 18
                                mem[64] = mem[64] + 50
                                _18858 = mem[_18856]
                                s = _18856 + 32
                                t = mem[64]
                                idx = mem[_18856]
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_18856])] = mem[_18856 + floor32(mem[_18856]) + -(mem[_18856] % 32) + 64 len mem[_18856] % 32] or Mask(8 * -(mem[_18856] % 32) + 32, -(8 * -(mem[_18856] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_18856])])
                                _22740 = sha3(mem[mem[64] len _18858 + _18855 + -mem[64] + 50])
                                mem[mem[64] + 4] = sha3(mem[mem[64] len _18858 + _18855 + -mem[64] + 50])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22740
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23159 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64] + 4] = mem[_23159 + 12 len 20]
                                mem[mem[64] + 36] = 0
                                require ext_code.size(address(_18726))
                                call address(_18726).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23543 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_23543]:
                                    revert with 0, 'Tokens transfer to vault was invalid.'
                                _23931 = mem[448]
                                mem[mem[64] + 4] = mem[492 len 20]
                                mem[mem[64] + 36] = _18725
                                require ext_code.size(address(_23931))
                                call address(_23931).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _18725
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _24311 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_24311]:
                                    revert with 0, 'Transfer to merchant failed.'
                                _24750 = mem[416]
                                _24751 = mem[448]
                                mem[mem[64]] = mem[492 len 20]
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = address(_24750)
                                mem[mem[64] + 96] = address(_24751)
                                mem[mem[64] + 128] = _14317 - _1098
                                emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24750), address(_24751), _14317 - _1098, this.address
                            else:
                                require mem[_18581 + 30 len 2]
                                require 10^14 * mem[_18581 + 30 len 2] / mem[_18581 + 30 len 2] == 10^14
                                _18677 = mem[128]
                                if 10^14 * mem[_18581 + 30 len 2] / 100:
                                    require 10^14 * mem[_18581 + 30 len 2] / 100
                                    require 10^14 * mem[_18581 + 30 len 2] / 100 * mem[128] / 10^14 * mem[_18581 + 30 len 2] / 100 == mem[128]
                                    _19141 = mem[128]
                                    _19142 = mem[448]
                                    _19493 = mem[64]
                                    mem[mem[64] + 32] = 'contract.name'
                                    mem[mem[64] + 45] = 'Vault'
                                    _19494 = mem[64]
                                    mem[mem[64]] = 18
                                    mem[64] = mem[64] + 50
                                    _19496 = mem[_19494]
                                    s = _19494 + 32
                                    t = _19493 + 50
                                    idx = mem[_19494]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[_19493 + floor32(mem[_19494]) + 50] = mem[_19494 + -(mem[_19494] % 32) + floor32(mem[_19494]) + 64 len mem[_19494] % 32] or Mask(8 * -(mem[_19494] % 32) + 32, -(8 * -(mem[_19494] % 32) + 32) + 256, mem[_19493 + floor32(mem[_19494]) + 50])
                                    _22728 = sha3(mem[_19493 + 50 len _19496])
                                    mem[_19493 + 54] = sha3(mem[_19493 + 50 len _19496])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22728
                                    mem[_19493 + 50] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _19493 + ceil32(return_data.size) + 50
                                    require return_data.size >= 32
                                    mem[_19493 + ceil32(return_data.size) + 54] = address(ext_call.return_data[0])
                                    mem[_19493 + ceil32(return_data.size) + 86] = 10^14 * uint16(_18613) / 100 * _18677 / 100 / 10^14
                                    require ext_code.size(address(_19142))
                                    call address(_19142).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), 10^14 * uint16(_18613) / 100 * _18677 / 100 / 10^14
                                    mem[_19493 + ceil32(return_data.size) + 50] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _19493 + (2 * ceil32(return_data.size)) + 50
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _23925 = mem[448]
                                    _23926 = mem[480]
                                    mem[_19493 + (2 * ceil32(return_data.size)) + 54] = mem[492 len 20]
                                    mem[_19493 + (2 * ceil32(return_data.size)) + 86] = _19141 - (10^14 * uint16(_18613) / 100 * _18677 / 100 / 10^14)
                                    require ext_code.size(address(_23925))
                                    call address(_23925).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(_23926), _19141 - (10^14 * uint16(_18613) / 100 * _18677 / 100 / 10^14)
                                    mem[_19493 + (2 * ceil32(return_data.size)) + 50] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _19493 + (4 * ceil32(return_data.size)) + 50
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24742 = mem[416]
                                    _24743 = mem[448]
                                    mem[_19493 + (4 * ceil32(return_data.size)) + 50] = mem[492 len 20]
                                    mem[_19493 + (4 * ceil32(return_data.size)) + 82] = msg.sender
                                    mem[_19493 + (4 * ceil32(return_data.size)) + 114] = address(_24742)
                                    mem[_19493 + (4 * ceil32(return_data.size)) + 146] = address(_24743)
                                    mem[_19493 + (4 * ceil32(return_data.size)) + 178] = _14317 - _1098
                                    emit 0xdcc9f547: mem[_19493 + (4 * ceil32(return_data.size)) + 50], msg.sender, address(_24742), address(_24743), _14317 - _1098, this.address
                                else:
                                    _18853 = mem[128]
                                    _18854 = mem[448]
                                    _19143 = mem[64]
                                    mem[mem[64] + 32] = 'contract.name'
                                    mem[mem[64] + 45] = 'Vault'
                                    _19144 = mem[64]
                                    mem[mem[64]] = 18
                                    mem[64] = mem[64] + 50
                                    _19146 = mem[_19144]
                                    s = _19144 + 32
                                    t = mem[64]
                                    idx = mem[_19144]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_19144])] = mem[_19144 + floor32(mem[_19144]) + -(mem[_19144] % 32) + 64 len mem[_19144] % 32] or Mask(8 * -(mem[_19144] % 32) + 32, -(8 * -(mem[_19144] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_19144])])
                                    _22734 = sha3(mem[mem[64] len _19146 + _19143 + -mem[64] + 50])
                                    mem[mem[64] + 4] = sha3(mem[mem[64] len _19146 + _19143 + -mem[64] + 50])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22734
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23158 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = mem[_23158 + 12 len 20]
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(address(_18854))
                                    call address(_18854).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23542 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_23542]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _23928 = mem[448]
                                    mem[mem[64] + 4] = mem[492 len 20]
                                    mem[mem[64] + 36] = _18853
                                    require ext_code.size(address(_23928))
                                    call address(_23928).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _18853
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24310 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_24310]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24746 = mem[416]
                                    _24747 = mem[448]
                                    mem[mem[64]] = mem[492 len 20]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = address(_24746)
                                    mem[mem[64] + 96] = address(_24747)
                                    mem[mem[64] + 128] = _14317 - _1098
                                    emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24746), address(_24747), _14317 - _1098, this.address
                        else:
                            mem[_1102 + ceil32(_1140) + ceil32(_1186) + ceil32(_4935) + _8977 + 836] = 0
                            require ext_code.size(address(_1101))
                            call address(_1101).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1102 + ceil32(_1140) + ceil32(_1186) + ceil32(_4935) + ceil32(_8977) + -mem[64] + 832]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13661 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_13661]:
                                _13782 = mem[_1058]
                                mem[mem[64]] = _736
                                emit 0x6230081d: _736, this.address, address(_13782)
                                require idx + 1 >= idx
                                _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = _736
                                idx = idx + 1
                                continue 
                            _13783 = mem[416]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_13783))
                            call address(_13783).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13917 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _13949 = mem[_13917]
                            _14005 = mem[416]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _13949
                            require ext_code.size(address(_14005))
                            call address(_14005).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _13949
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14077 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_14077]:
                                revert with 0, 'Transfer to customer failed.'
                            _14189 = mem[448]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_14189))
                            call address(_14189).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14301 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _14333 = mem[_14301]
                            require _1098 <= mem[_14301]
                            if mem[_14301] - _1098 != mem[128]:
                                revert with 0, 'StablePay target balance is not valid.'
                            _14501 = mem[64]
                            mem[mem[64] + 32] = 'contract.name'
                            mem[mem[64] + 45] = 'Settings'
                            _14502 = mem[64]
                            mem[mem[64]] = 21
                            mem[64] = mem[64] + 53
                            _14504 = mem[_14502]
                            s = _14502 + 32
                            t = mem[64]
                            idx = mem[_14502]
                            while idx >= 32:
                                mem[t] = mem[s]
                                _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[mem[64] + floor32(mem[_14502])] = mem[_14502 + floor32(mem[_14502]) + -(mem[_14502] % 32) + 64 len mem[_14502] % 32] or Mask(8 * -(mem[_14502] % 32) + 32, -(8 * -(mem[_14502] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_14502])])
                            _18318 = sha3(mem[mem[64] len _14504 + _14501 + -mem[64] + 53])
                            mem[mem[64] + 4] = sha3(mem[mem[64] len _14504 + _14501 + -mem[64] + 53])
                            require ext_code.size(_storageAddress)
                            call _storageAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args _18318
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18454 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(mem[_18454 + 12 len 20])
                            call mem[_18454 + 12 len 20].0x6ea8bc10 with:
                                 gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18582 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _18614 = mem[_18582]
                            if not mem[_18582 + 30 len 2]:
                                _18727 = mem[128]
                                _18728 = mem[448]
                                _18861 = mem[64]
                                mem[mem[64] + 32] = 'contract.name'
                                mem[mem[64] + 45] = 'Vault'
                                _18862 = mem[64]
                                mem[mem[64]] = 18
                                mem[64] = mem[64] + 50
                                _18864 = mem[_18862]
                                s = _18862 + 32
                                t = mem[64]
                                idx = mem[_18862]
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_18862])] = mem[_18862 + floor32(mem[_18862]) + -(mem[_18862] % 32) + 64 len mem[_18862] % 32] or Mask(8 * -(mem[_18862] % 32) + 32, -(8 * -(mem[_18862] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_18862])])
                                _22758 = sha3(mem[mem[64] len _18864 + _18861 + -mem[64] + 50])
                                mem[mem[64] + 4] = sha3(mem[mem[64] len _18864 + _18861 + -mem[64] + 50])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22758
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23162 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64] + 4] = mem[_23162 + 12 len 20]
                                mem[mem[64] + 36] = 0
                                require ext_code.size(address(_18728))
                                call address(_18728).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23546 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_23546]:
                                    revert with 0, 'Tokens transfer to vault was invalid.'
                                _23940 = mem[448]
                                mem[mem[64] + 4] = mem[492 len 20]
                                mem[mem[64] + 36] = _18727
                                require ext_code.size(address(_23940))
                                call address(_23940).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _18727
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _24314 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_24314]:
                                    revert with 0, 'Transfer to merchant failed.'
                                _24762 = mem[416]
                                _24763 = mem[448]
                                mem[mem[64]] = mem[492 len 20]
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = address(_24762)
                                mem[mem[64] + 96] = address(_24763)
                                mem[mem[64] + 128] = _14333 - _1098
                                emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24762), address(_24763), _14333 - _1098, this.address
                            else:
                                require mem[_18582 + 30 len 2]
                                require 10^14 * mem[_18582 + 30 len 2] / mem[_18582 + 30 len 2] == 10^14
                                _18678 = mem[128]
                                if not 10^14 * mem[_18582 + 30 len 2] / 100:
                                    _18859 = mem[128]
                                    _18860 = mem[448]
                                    _19155 = mem[64]
                                    mem[mem[64] + 32] = 'contract.name'
                                    mem[mem[64] + 45] = 'Vault'
                                    _19156 = mem[64]
                                    mem[mem[64]] = 18
                                    mem[64] = mem[64] + 50
                                    _19158 = mem[_19156]
                                    s = _19156 + 32
                                    t = mem[64]
                                    idx = mem[_19156]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_19156])] = mem[_19156 + floor32(mem[_19156]) + -(mem[_19156] % 32) + 64 len mem[_19156] % 32] or Mask(8 * -(mem[_19156] % 32) + 32, -(8 * -(mem[_19156] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_19156])])
                                    _22752 = sha3(mem[mem[64] len _19158 + _19155 + -mem[64] + 50])
                                    mem[mem[64] + 4] = sha3(mem[mem[64] len _19158 + _19155 + -mem[64] + 50])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22752
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23161 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = mem[_23161 + 12 len 20]
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(address(_18860))
                                    call address(_18860).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23545 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_23545]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _23937 = mem[448]
                                    mem[mem[64] + 4] = mem[492 len 20]
                                    mem[mem[64] + 36] = _18859
                                    require ext_code.size(address(_23937))
                                    call address(_23937).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _18859
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24313 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_24313]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24758 = mem[416]
                                    _24759 = mem[448]
                                    mem[mem[64]] = mem[492 len 20]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = address(_24758)
                                    mem[mem[64] + 96] = address(_24759)
                                    mem[mem[64] + 128] = _14333 - _1098
                                    emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24758), address(_24759), _14333 - _1098, this.address
                                else:
                                    require 10^14 * mem[_18582 + 30 len 2] / 100
                                    require 10^14 * mem[_18582 + 30 len 2] / 100 * mem[128] / 10^14 * mem[_18582 + 30 len 2] / 100 == mem[128]
                                    _19153 = mem[128]
                                    _19154 = mem[448]
                                    _19503 = mem[64]
                                    mem[mem[64] + 32] = 'contract.name'
                                    mem[mem[64] + 45] = 'Vault'
                                    _19504 = mem[64]
                                    mem[mem[64]] = 18
                                    mem[64] = mem[64] + 50
                                    _19506 = mem[_19504]
                                    s = _19504 + 32
                                    t = mem[64]
                                    idx = mem[_19504]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_19504])] = mem[_19504 + floor32(mem[_19504]) + -(mem[_19504] % 32) + 64 len mem[_19504] % 32] or Mask(8 * -(mem[_19504] % 32) + 32, -(8 * -(mem[_19504] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_19504])])
                                    _22746 = sha3(mem[mem[64] len _19506 + _19503 + -mem[64] + 50])
                                    mem[mem[64] + 4] = sha3(mem[mem[64] len _19506 + _19503 + -mem[64] + 50])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22746
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23160 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = mem[_23160 + 12 len 20]
                                    mem[mem[64] + 36] = 10^14 * uint16(_18614) / 100 * _18678 / 100 / 10^14
                                    require ext_code.size(address(_19154))
                                    call address(_19154).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 10^14 * uint16(_18614) / 100 * _18678 / 100 / 10^14
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23544 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_23544]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _23934 = mem[448]
                                    mem[mem[64] + 4] = mem[492 len 20]
                                    mem[mem[64] + 36] = _19153 - (10^14 * uint16(_18614) / 100 * _18678 / 100 / 10^14)
                                    require ext_code.size(address(_23934))
                                    call address(_23934).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _19153 - (10^14 * uint16(_18614) / 100 * _18678 / 100 / 10^14)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24312 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_24312]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24754 = mem[416]
                                    _24755 = mem[448]
                                    mem[mem[64]] = mem[492 len 20]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = address(_24754)
                                    mem[mem[64] + 96] = address(_24755)
                                    mem[mem[64] + 128] = _14333 - _1098
                                    emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24754), address(_24755), _14333 - _1098, this.address
                else:
                    mem[_1102 + ceil32(_1140) + _1186 + 772] = 0
                    _4931 = mem[704]
                    mem[_1102 + 644] = ceil32(_1140) + ceil32(_1186) + 736
                    _4939 = mem[_4931]
                    mem[_1102 + ceil32(_1140) + ceil32(_1186) + 772] = mem[_4931]
                    s = 0
                    while s < _4939:
                        mem[_1102 + ceil32(_1140) + ceil32(_1186) + s + 804] = mem[_4931 + s + 32]
                        _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                        s = s + 32
                        continue 
                    if ceil32(_4939) <= _4939:
                        _8962 = mem[736]
                        mem[_1102 + 676] = ceil32(_1140) + ceil32(_1186) + ceil32(_4939) + 768
                        _8978 = mem[_8962]
                        mem[_1102 + ceil32(_1140) + ceil32(_1186) + ceil32(_4939) + 804] = mem[_8962]
                        s = 0
                        while s < _8978:
                            mem[_1102 + ceil32(_1140) + ceil32(_1186) + ceil32(_4939) + s + 836] = mem[_8962 + s + 32]
                            _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                            s = s + 32
                            continue 
                        if ceil32(_8978) > _8978:
                            mem[_1102 + ceil32(_1140) + ceil32(_1186) + ceil32(_4939) + _8978 + 836] = 0
                            require ext_code.size(address(_1101))
                            call address(_1101).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1102 + ceil32(_1140) + ceil32(_1186) + ceil32(_4939) + ceil32(_8978) + -mem[64] + 832]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13663 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_13663]:
                                _13790 = mem[_1058]
                                mem[mem[64]] = _736
                                emit 0x6230081d: _736, this.address, address(_13790)
                                require idx + 1 >= idx
                                _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = _736
                                idx = idx + 1
                                continue 
                            _13791 = mem[416]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_13791))
                            call address(_13791).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13919 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _13951 = mem[_13919]
                            _14009 = mem[416]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _13951
                            require ext_code.size(address(_14009))
                            call address(_14009).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _13951
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14079 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_14079]:
                                revert with 0, 'Transfer to customer failed.'
                            _14195 = mem[448]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_14195))
                            call address(_14195).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14303 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _14335 = mem[_14303]
                            require _1098 <= mem[_14303]
                            if mem[_14303] - _1098 != mem[128]:
                                revert with 0, 'StablePay target balance is not valid.'
                            _14509 = mem[64]
                            mem[mem[64] + 32] = 'contract.name'
                            mem[mem[64] + 45] = 'Settings'
                            _14510 = mem[64]
                            mem[mem[64]] = 21
                            mem[64] = mem[64] + 53
                            _14512 = mem[_14510]
                            s = _14510 + 32
                            t = _14509 + 53
                            idx = mem[_14510]
                            while idx >= 32:
                                mem[t] = mem[s]
                                _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[_14509 + floor32(mem[_14510]) + 53] = mem[_14510 + -(mem[_14510] % 32) + floor32(mem[_14510]) + 64 len mem[_14510] % 32] or Mask(8 * -(mem[_14510] % 32) + 32, -(8 * -(mem[_14510] % 32) + 32) + 256, mem[_14509 + floor32(mem[_14510]) + 53])
                            _18342 = sha3(mem[_14509 + 53 len _14512])
                            mem[_14509 + 57] = sha3(mem[_14509 + 53 len _14512])
                            require ext_code.size(_storageAddress)
                            call _storageAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args _18342
                            mem[_14509 + 53] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x6ea8bc10 with:
                                 gas gas_remaining wei
                            mem[_14509 + ceil32(return_data.size) + 53] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _14509 + (2 * ceil32(return_data.size)) + 53
                            require return_data.size >= 32
                            if not ext_call.return_data[30 len 2]:
                                _18735 = mem[128]
                                _18736 = mem[448]
                                mem[_14509 + (2 * ceil32(return_data.size)) + 85] = 'contract.name'
                                mem[_14509 + (2 * ceil32(return_data.size)) + 98] = 'Vault'
                                mem[_14509 + (2 * ceil32(return_data.size)) + 53] = 18
                                mem[64] = _14509 + (2 * ceil32(return_data.size)) + 103
                                s = _14509 + (2 * ceil32(return_data.size)) + 85
                                t = _14509 + (2 * ceil32(return_data.size)) + 103
                                idx = 18
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[_14509 + (2 * ceil32(return_data.size)) + 103] = mem[_14509 + (2 * ceil32(return_data.size)) + 99 len 18] or Mask(112, 144, mem[_14509 + (2 * ceil32(return_data.size)) + 103])
                                _22830 = sha3(mem[_14509 + (2 * ceil32(return_data.size)) + 103 len 18])
                                mem[_14509 + (2 * ceil32(return_data.size)) + 107] = sha3(mem[_14509 + (2 * ceil32(return_data.size)) + 103 len 18])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22830
                                mem[_14509 + (2 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_14509 + (4 * ceil32(return_data.size)) + 107] = ext_call.return_data[12 len 20]
                                mem[_14509 + (4 * ceil32(return_data.size)) + 139] = 0
                                require ext_code.size(address(_18736))
                                call address(_18736).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[12 len 20], 0
                                mem[_14509 + (4 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Tokens transfer to vault was invalid.'
                                _23976 = mem[448]
                                mem[_14509 + (6 * ceil32(return_data.size)) + 107] = mem[492 len 20]
                                mem[_14509 + (6 * ceil32(return_data.size)) + 139] = _18735
                                require ext_code.size(address(_23976))
                                call address(_23976).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[_14509 + (6 * ceil32(return_data.size)) + 107], _18735
                                mem[_14509 + (6 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14509 + (7 * ceil32(return_data.size)) + 103
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Transfer to merchant failed.'
                                _24810 = mem[416]
                                _24811 = mem[448]
                                mem[_14509 + (7 * ceil32(return_data.size)) + 103] = mem[492 len 20]
                                mem[_14509 + (7 * ceil32(return_data.size)) + 135] = msg.sender
                                mem[_14509 + (7 * ceil32(return_data.size)) + 167] = address(_24810)
                                mem[_14509 + (7 * ceil32(return_data.size)) + 199] = address(_24811)
                                mem[_14509 + (7 * ceil32(return_data.size)) + 231] = _14335 - _1098
                                emit 0xdcc9f547: mem[_14509 + (7 * ceil32(return_data.size)) + 103], msg.sender, address(_24810), address(_24811), _14335 - _1098, this.address
                            else:
                                require ext_call.return_data[30 len 2]
                                require 10^14 * ext_call.return_data[30 len 2] / ext_call.return_data[30 len 2] == 10^14
                                _18682 = mem[128]
                                if not 10^14 * ext_call.return_data[30 len 2] / 100:
                                    _18883 = mem[128]
                                    _18884 = mem[448]
                                    mem[_14509 + (2 * ceil32(return_data.size)) + 85] = 'contract.name'
                                    mem[_14509 + (2 * ceil32(return_data.size)) + 98] = 'Vault'
                                    mem[_14509 + (2 * ceil32(return_data.size)) + 53] = 18
                                    mem[64] = _14509 + (2 * ceil32(return_data.size)) + 103
                                    s = _14509 + (2 * ceil32(return_data.size)) + 85
                                    t = _14509 + (2 * ceil32(return_data.size)) + 103
                                    idx = 18
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[_14509 + (2 * ceil32(return_data.size)) + 103] = mem[_14509 + (2 * ceil32(return_data.size)) + 99 len 18] or Mask(112, 144, mem[_14509 + (2 * ceil32(return_data.size)) + 103])
                                    _22824 = sha3(mem[_14509 + (2 * ceil32(return_data.size)) + 103 len 18])
                                    mem[_14509 + (2 * ceil32(return_data.size)) + 107] = sha3(mem[_14509 + (2 * ceil32(return_data.size)) + 103 len 18])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22824
                                    mem[_14509 + (2 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_14509 + (4 * ceil32(return_data.size)) + 107] = ext_call.return_data[12 len 20]
                                    mem[_14509 + (4 * ceil32(return_data.size)) + 139] = 0
                                    require ext_code.size(address(_18884))
                                    call address(_18884).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[12 len 20], 0
                                    mem[_14509 + (4 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _23973 = mem[448]
                                    mem[_14509 + (6 * ceil32(return_data.size)) + 107] = mem[492 len 20]
                                    mem[_14509 + (6 * ceil32(return_data.size)) + 139] = _18883
                                    require ext_code.size(address(_23973))
                                    call address(_23973).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[_14509 + (6 * ceil32(return_data.size)) + 107], _18883
                                    mem[_14509 + (6 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _14509 + (7 * ceil32(return_data.size)) + 103
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24806 = mem[416]
                                    _24807 = mem[448]
                                    mem[_14509 + (7 * ceil32(return_data.size)) + 103] = mem[492 len 20]
                                    mem[_14509 + (7 * ceil32(return_data.size)) + 135] = msg.sender
                                    mem[_14509 + (7 * ceil32(return_data.size)) + 167] = address(_24806)
                                    mem[_14509 + (7 * ceil32(return_data.size)) + 199] = address(_24807)
                                    mem[_14509 + (7 * ceil32(return_data.size)) + 231] = _14335 - _1098
                                    emit 0xdcc9f547: mem[_14509 + (7 * ceil32(return_data.size)) + 103], msg.sender, address(_24806), address(_24807), _14335 - _1098, this.address
                                else:
                                    require 10^14 * ext_call.return_data[30 len 2] / 100
                                    require 10^14 * ext_call.return_data[30 len 2] / 100 * mem[128] / 10^14 * ext_call.return_data[30 len 2] / 100 == mem[128]
                                    _19201 = mem[128]
                                    _19202 = mem[448]
                                    mem[_14509 + (2 * ceil32(return_data.size)) + 85] = 'contract.name'
                                    mem[_14509 + (2 * ceil32(return_data.size)) + 98] = 'Vault'
                                    mem[_14509 + (2 * ceil32(return_data.size)) + 53] = 18
                                    mem[64] = _14509 + (2 * ceil32(return_data.size)) + 103
                                    s = _14509 + (2 * ceil32(return_data.size)) + 85
                                    t = _14509 + (2 * ceil32(return_data.size)) + 103
                                    idx = 18
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[_14509 + (2 * ceil32(return_data.size)) + 103] = mem[_14509 + (2 * ceil32(return_data.size)) + 99 len 18] or Mask(112, 144, mem[_14509 + (2 * ceil32(return_data.size)) + 103])
                                    _22818 = sha3(mem[_14509 + (2 * ceil32(return_data.size)) + 103 len 18])
                                    mem[_14509 + (2 * ceil32(return_data.size)) + 107] = sha3(mem[_14509 + (2 * ceil32(return_data.size)) + 103 len 18])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22818
                                    mem[_14509 + (2 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_14509 + (4 * ceil32(return_data.size)) + 107] = ext_call.return_data[12 len 20]
                                    mem[_14509 + (4 * ceil32(return_data.size)) + 139] = 10^14 * uint16(ext_call.return_data[0]) / 100 * _18682 / 100 / 10^14
                                    require ext_code.size(address(_19202))
                                    call address(_19202).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[12 len 20], 10^14 * uint16(ext_call.return_data[0]) / 100 * _18682 / 100 / 10^14
                                    mem[_14509 + (4 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _23970 = mem[448]
                                    mem[_14509 + (6 * ceil32(return_data.size)) + 107] = mem[492 len 20]
                                    mem[_14509 + (6 * ceil32(return_data.size)) + 139] = _19201 - (10^14 * uint16(ext_call.return_data[0]) / 100 * _18682 / 100 / 10^14)
                                    require ext_code.size(address(_23970))
                                    call address(_23970).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[_14509 + (6 * ceil32(return_data.size)) + 107], _19201 - (10^14 * uint16(ext_call.return_data[0]) / 100 * _18682 / 100 / 10^14)
                                    mem[_14509 + (6 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _14509 + (7 * ceil32(return_data.size)) + 103
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24802 = mem[416]
                                    _24803 = mem[448]
                                    mem[_14509 + (7 * ceil32(return_data.size)) + 103] = mem[492 len 20]
                                    mem[_14509 + (7 * ceil32(return_data.size)) + 135] = msg.sender
                                    mem[_14509 + (7 * ceil32(return_data.size)) + 167] = address(_24802)
                                    mem[_14509 + (7 * ceil32(return_data.size)) + 199] = address(_24803)
                                    mem[_14509 + (7 * ceil32(return_data.size)) + 231] = _14335 - _1098
                                    emit 0xdcc9f547: mem[_14509 + (7 * ceil32(return_data.size)) + 103], msg.sender, address(_24802), address(_24803), _14335 - _1098, this.address
                        else:
                            require ext_code.size(address(_1101))
                            call address(_1101).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1102 + ceil32(_1140) + ceil32(_1186) + ceil32(_4939) + ceil32(_8978) + -mem[64] + 832]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13647 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_13647]:
                                _13731 = mem[_1058]
                                mem[mem[64]] = _736
                                emit 0x6230081d: _736, this.address, address(_13731)
                                require idx + 1 >= idx
                                _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = _736
                                idx = idx + 1
                                continue 
                            _13732 = mem[416]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_13732))
                            call address(_13732).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13897 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _13935 = mem[_13897]
                            _13977 = mem[416]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _13935
                            require ext_code.size(address(_13977))
                            call address(_13977).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _13935
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14063 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_14063]:
                                revert with 0, 'Transfer to customer failed.'
                            _14147 = mem[448]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_14147))
                            call address(_14147).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14287 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _14319 = mem[_14287]
                            require _1098 <= mem[_14287]
                            if mem[_14287] - _1098 != mem[128]:
                                revert with 0, 'StablePay target balance is not valid.'
                            _14445 = mem[64]
                            mem[mem[64] + 32] = 'contract.name'
                            mem[mem[64] + 45] = 'Settings'
                            _14446 = mem[64]
                            mem[mem[64]] = 21
                            mem[64] = mem[64] + 53
                            _14448 = mem[_14446]
                            s = _14446 + 32
                            t = mem[64]
                            idx = mem[_14446]
                            while idx >= 32:
                                mem[t] = mem[s]
                                _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[mem[64] + floor32(mem[_14446])] = mem[_14446 + floor32(mem[_14446]) + -(mem[_14446] % 32) + 64 len mem[_14446] % 32] or Mask(8 * -(mem[_14446] % 32) + 32, -(8 * -(mem[_14446] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_14446])])
                            _18336 = sha3(mem[mem[64] len _14448 + _14445 + -mem[64] + 53])
                            mem[mem[64] + 4] = sha3(mem[mem[64] len _14448 + _14445 + -mem[64] + 53])
                            require ext_code.size(_storageAddress)
                            call _storageAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args _18336
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18457 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(mem[_18457 + 12 len 20])
                            call mem[_18457 + 12 len 20].0x6ea8bc10 with:
                                 gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18585 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _18617 = mem[_18585]
                            if not mem[_18585 + 30 len 2]:
                                _18733 = mem[128]
                                _18734 = mem[448]
                                _18879 = mem[64]
                                mem[mem[64] + 32] = 'contract.name'
                                mem[mem[64] + 45] = 'Vault'
                                _18880 = mem[64]
                                mem[mem[64]] = 18
                                mem[64] = mem[64] + 50
                                _18882 = mem[_18880]
                                s = _18880 + 32
                                t = mem[64]
                                idx = mem[_18880]
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_18880])] = mem[_18880 + floor32(mem[_18880]) + -(mem[_18880] % 32) + 64 len mem[_18880] % 32] or Mask(8 * -(mem[_18880] % 32) + 32, -(8 * -(mem[_18880] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_18880])])
                                _22812 = sha3(mem[mem[64] len _18882 + _18879 + -mem[64] + 50])
                                mem[mem[64] + 4] = sha3(mem[mem[64] len _18882 + _18879 + -mem[64] + 50])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22812
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23171 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64] + 4] = mem[_23171 + 12 len 20]
                                mem[mem[64] + 36] = 0
                                require ext_code.size(address(_18734))
                                call address(_18734).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23555 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_23555]:
                                    revert with 0, 'Tokens transfer to vault was invalid.'
                                _23967 = mem[448]
                                mem[mem[64] + 4] = mem[492 len 20]
                                mem[mem[64] + 36] = _18733
                                require ext_code.size(address(_23967))
                                call address(_23967).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _18733
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _24323 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_24323]:
                                    revert with 0, 'Transfer to merchant failed.'
                                _24798 = mem[416]
                                _24799 = mem[448]
                                mem[mem[64]] = mem[492 len 20]
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = address(_24798)
                                mem[mem[64] + 96] = address(_24799)
                                mem[mem[64] + 128] = _14319 - _1098
                                emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24798), address(_24799), _14319 - _1098, this.address
                            else:
                                require mem[_18585 + 30 len 2]
                                require 10^14 * mem[_18585 + 30 len 2] / mem[_18585 + 30 len 2] == 10^14
                                _18681 = mem[128]
                                if not 10^14 * mem[_18585 + 30 len 2] / 100:
                                    _18877 = mem[128]
                                    _18878 = mem[448]
                                    _19191 = mem[64]
                                    mem[mem[64] + 32] = 'contract.name'
                                    mem[mem[64] + 45] = 'Vault'
                                    _19192 = mem[64]
                                    mem[mem[64]] = 18
                                    mem[64] = mem[64] + 50
                                    _19194 = mem[_19192]
                                    s = _19192 + 32
                                    t = mem[64]
                                    idx = mem[_19192]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_19192])] = mem[_19192 + floor32(mem[_19192]) + -(mem[_19192] % 32) + 64 len mem[_19192] % 32] or Mask(8 * -(mem[_19192] % 32) + 32, -(8 * -(mem[_19192] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_19192])])
                                    _22806 = sha3(mem[mem[64] len _19194 + _19191 + -mem[64] + 50])
                                    mem[mem[64] + 4] = sha3(mem[mem[64] len _19194 + _19191 + -mem[64] + 50])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22806
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23170 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = mem[_23170 + 12 len 20]
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(address(_18878))
                                    call address(_18878).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23554 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_23554]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _23964 = mem[448]
                                    mem[mem[64] + 4] = mem[492 len 20]
                                    mem[mem[64] + 36] = _18877
                                    require ext_code.size(address(_23964))
                                    call address(_23964).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _18877
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24322 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_24322]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24794 = mem[416]
                                    _24795 = mem[448]
                                    mem[mem[64]] = mem[492 len 20]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = address(_24794)
                                    mem[mem[64] + 96] = address(_24795)
                                    mem[mem[64] + 128] = _14319 - _1098
                                    emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24794), address(_24795), _14319 - _1098, this.address
                                else:
                                    require 10^14 * mem[_18585 + 30 len 2] / 100
                                    require 10^14 * mem[_18585 + 30 len 2] / 100 * mem[128] / 10^14 * mem[_18585 + 30 len 2] / 100 == mem[128]
                                    _19189 = mem[128]
                                    _19190 = mem[448]
                                    _19533 = mem[64]
                                    mem[mem[64] + 32] = 'contract.name'
                                    mem[mem[64] + 45] = 'Vault'
                                    _19534 = mem[64]
                                    mem[mem[64]] = 18
                                    mem[64] = mem[64] + 50
                                    _19536 = mem[_19534]
                                    s = _19534 + 32
                                    t = mem[64]
                                    idx = mem[_19534]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_19534])] = mem[_19534 + floor32(mem[_19534]) + -(mem[_19534] % 32) + 64 len mem[_19534] % 32] or Mask(8 * -(mem[_19534] % 32) + 32, -(8 * -(mem[_19534] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_19534])])
                                    _22800 = sha3(mem[mem[64] len _19536 + _19533 + -mem[64] + 50])
                                    mem[mem[64] + 4] = sha3(mem[mem[64] len _19536 + _19533 + -mem[64] + 50])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22800
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23169 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = mem[_23169 + 12 len 20]
                                    mem[mem[64] + 36] = 10^14 * uint16(_18617) / 100 * _18681 / 100 / 10^14
                                    require ext_code.size(address(_19190))
                                    call address(_19190).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 10^14 * uint16(_18617) / 100 * _18681 / 100 / 10^14
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23553 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_23553]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _23961 = mem[448]
                                    mem[mem[64] + 4] = mem[492 len 20]
                                    mem[mem[64] + 36] = _19189 - (10^14 * uint16(_18617) / 100 * _18681 / 100 / 10^14)
                                    require ext_code.size(address(_23961))
                                    call address(_23961).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _19189 - (10^14 * uint16(_18617) / 100 * _18681 / 100 / 10^14)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24321 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_24321]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24790 = mem[416]
                                    _24791 = mem[448]
                                    mem[mem[64]] = mem[492 len 20]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = address(_24790)
                                    mem[mem[64] + 96] = address(_24791)
                                    mem[mem[64] + 128] = _14319 - _1098
                                    emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24790), address(_24791), _14319 - _1098, this.address
                    else:
                        mem[_1102 + ceil32(_1140) + ceil32(_1186) + _4939 + 804] = 0
                        _8970 = mem[736]
                        mem[_1102 + 676] = ceil32(_1140) + ceil32(_1186) + ceil32(_4939) + 768
                        _8986 = mem[_8970]
                        mem[_1102 + ceil32(_1140) + ceil32(_1186) + ceil32(_4939) + 804] = mem[_8970]
                        s = 0
                        while s < _8986:
                            mem[_1102 + ceil32(_1140) + ceil32(_1186) + ceil32(_4939) + s + 836] = mem[_8970 + s + 32]
                            _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                            s = s + 32
                            continue 
                        if ceil32(_8986) <= _8986:
                            require ext_code.size(address(_1101))
                            call address(_1101).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1102 + ceil32(_1140) + ceil32(_1186) + ceil32(_4939) + ceil32(_8986) + -mem[64] + 832]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13648 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_13648]:
                                _13734 = mem[_1058]
                                mem[mem[64]] = _736
                                emit 0x6230081d: _736, this.address, address(_13734)
                                require idx + 1 >= idx
                                _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = _736
                                idx = idx + 1
                                continue 
                            _13735 = mem[416]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_13735))
                            call address(_13735).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13899 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _13936 = mem[_13899]
                            _13979 = mem[416]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _13936
                            require ext_code.size(address(_13979))
                            call address(_13979).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _13936
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14064 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_14064]:
                                revert with 0, 'Transfer to customer failed.'
                            _14150 = mem[448]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_14150))
                            call address(_14150).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14288 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _14320 = mem[_14288]
                            require _1098 <= mem[_14288]
                            if mem[_14288] - _1098 != mem[128]:
                                revert with 0, 'StablePay target balance is not valid.'
                            _14449 = mem[64]
                            mem[mem[64] + 32] = 'contract.name'
                            mem[mem[64] + 45] = 'Settings'
                            _14450 = mem[64]
                            mem[mem[64]] = 21
                            mem[64] = mem[64] + 53
                            _14452 = mem[_14450]
                            s = _14450 + 32
                            t = _14449 + 53
                            idx = mem[_14450]
                            while idx >= 32:
                                mem[t] = mem[s]
                                _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[_14449 + floor32(mem[_14450]) + 53] = mem[_14450 + -(mem[_14450] % 32) + floor32(mem[_14450]) + 64 len mem[_14450] % 32] or Mask(8 * -(mem[_14450] % 32) + 32, -(8 * -(mem[_14450] % 32) + 32) + 256, mem[_14449 + floor32(mem[_14450]) + 53])
                            _18348 = sha3(mem[_14449 + 53 len _14452])
                            mem[_14449 + 57] = sha3(mem[_14449 + 53 len _14452])
                            require ext_code.size(_storageAddress)
                            call _storageAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args _18348
                            mem[_14449 + 53] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x6ea8bc10 with:
                                 gas gas_remaining wei
                            mem[_14449 + ceil32(return_data.size) + 53] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _14449 + (2 * ceil32(return_data.size)) + 53
                            require return_data.size >= 32
                            if not ext_call.return_data[30 len 2]:
                                _18737 = mem[128]
                                _18738 = mem[448]
                                mem[_14449 + (2 * ceil32(return_data.size)) + 85] = 'contract.name'
                                mem[_14449 + (2 * ceil32(return_data.size)) + 98] = 'Vault'
                                mem[_14449 + (2 * ceil32(return_data.size)) + 53] = 18
                                mem[64] = _14449 + (2 * ceil32(return_data.size)) + 103
                                s = _14449 + (2 * ceil32(return_data.size)) + 85
                                t = _14449 + (2 * ceil32(return_data.size)) + 103
                                idx = 18
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[_14449 + (2 * ceil32(return_data.size)) + 103] = mem[_14449 + (2 * ceil32(return_data.size)) + 99 len 18] or Mask(112, 144, mem[_14449 + (2 * ceil32(return_data.size)) + 103])
                                _22848 = sha3(mem[_14449 + (2 * ceil32(return_data.size)) + 103 len 18])
                                mem[_14449 + (2 * ceil32(return_data.size)) + 107] = sha3(mem[_14449 + (2 * ceil32(return_data.size)) + 103 len 18])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22848
                                mem[_14449 + (2 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_14449 + (4 * ceil32(return_data.size)) + 107] = address(ext_call.return_data[0])
                                mem[_14449 + (4 * ceil32(return_data.size)) + 139] = 0
                                require ext_code.size(address(_18738))
                                call address(_18738).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[_14449 + (4 * ceil32(return_data.size)) + 107 len (5 * ceil32(return_data.size)) + 64]
                                mem[_14449 + (4 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    mem[_14449 + (4 * ceil32(return_data.size)) + 103] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14449 + (4 * ceil32(return_data.size)) + 107] = 32
                                    mem[_14449 + (4 * ceil32(return_data.size)) + 139] = 37
                                    mem[_14449 + (4 * ceil32(return_data.size)) + 171] = 'Tokens transfer to vault was inv'
                                    mem[_14449 + (4 * ceil32(return_data.size)) + 203] = 'alid.'
                                    revert with memory
                                      from _14449 + (4 * ceil32(return_data.size)) + 103
                                       len (7 * ceil32(return_data.size)) + 132
                                _23985 = mem[448]
                                mem[_14449 + (4 * ceil32(return_data.size)) + 107] = mem[492 len 20]
                                mem[_14449 + (4 * ceil32(return_data.size)) + 139] = _18737
                                require ext_code.size(address(_23985))
                                call address(_23985).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[_14449 + (4 * ceil32(return_data.size)) + 107 len (7 * ceil32(return_data.size)) + 64]
                                mem[_14449 + (4 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14449 + (8 * ceil32(return_data.size)) + 103
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    mem[_14449 + (8 * ceil32(return_data.size)) + 103] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14449 + (8 * ceil32(return_data.size)) + 107] = 32
                                    mem[_14449 + (8 * ceil32(return_data.size)) + 139] = 28
                                    mem[_14449 + (8 * ceil32(return_data.size)) + 171] = 'Transfer to merchant failed.'
                                    revert with memory
                                      from _14449 + (8 * ceil32(return_data.size)) + 103
                                       len (13 * ceil32(return_data.size)) + 100
                                _24822 = mem[416]
                                _24823 = mem[448]
                                mem[_14449 + (8 * ceil32(return_data.size)) + 103] = mem[492 len 20]
                                mem[_14449 + (8 * ceil32(return_data.size)) + 135] = msg.sender
                                mem[_14449 + (8 * ceil32(return_data.size)) + 167] = address(_24822)
                                mem[_14449 + (8 * ceil32(return_data.size)) + 199] = address(_24823)
                                mem[_14449 + (8 * ceil32(return_data.size)) + 231] = _14320 - _1098
                                emit 0xdcc9f547: mem[_14449 + (8 * ceil32(return_data.size)) + 103 len (13 * ceil32(return_data.size)) + 160], this.address
                                _25193 = mem[_1058]
                                mem[_14449 + (8 * ceil32(return_data.size)) + 103] = _736
                                emit 0xc195856d: mem[_14449 + (8 * ceil32(return_data.size)) + 103 len (13 * ceil32(return_data.size)) + 32], this.address, address(_25193)
                                Mask(248, 0, stor0.field_8) = 0
                                mem[_14449 + (8 * ceil32(return_data.size)) + 103] = 1
                                return memory
                                  from _14449 + (8 * ceil32(return_data.size)) + 103
                                   len (13 * ceil32(return_data.size)) + 32
                            require ext_call.return_data[30 len 2]
                            require 10^14 * ext_call.return_data[30 len 2] / ext_call.return_data[30 len 2] == 10^14
                            _18683 = mem[128]
                            if not 10^14 * ext_call.return_data[30 len 2] / 100:
                                _18889 = mem[128]
                                _18890 = mem[448]
                                mem[_14449 + (2 * ceil32(return_data.size)) + 85] = 'contract.name'
                                mem[_14449 + (2 * ceil32(return_data.size)) + 98] = 'Vault'
                                mem[_14449 + (2 * ceil32(return_data.size)) + 53] = 18
                                mem[64] = _14449 + (2 * ceil32(return_data.size)) + 103
                                s = _14449 + (2 * ceil32(return_data.size)) + 85
                                t = _14449 + (2 * ceil32(return_data.size)) + 103
                                idx = 18
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[_14449 + (2 * ceil32(return_data.size)) + 103] = mem[_14449 + (2 * ceil32(return_data.size)) + 99 len 18] or Mask(112, 144, mem[_14449 + (2 * ceil32(return_data.size)) + 103])
                                _22842 = sha3(mem[_14449 + (2 * ceil32(return_data.size)) + 103 len 18])
                                mem[_14449 + (2 * ceil32(return_data.size)) + 107] = sha3(mem[_14449 + (2 * ceil32(return_data.size)) + 103 len 18])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22842
                                mem[_14449 + (2 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_14449 + (4 * ceil32(return_data.size)) + 107] = ext_call.return_data[12 len 20]
                                mem[_14449 + (4 * ceil32(return_data.size)) + 139] = 0
                                require ext_code.size(address(_18890))
                                call address(_18890).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[12 len 20], 0
                                mem[_14449 + (4 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Tokens transfer to vault was invalid.'
                                _23982 = mem[448]
                                mem[_14449 + (6 * ceil32(return_data.size)) + 107] = mem[492 len 20]
                                mem[_14449 + (6 * ceil32(return_data.size)) + 139] = _18889
                                require ext_code.size(address(_23982))
                                call address(_23982).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[_14449 + (6 * ceil32(return_data.size)) + 107], _18889
                                mem[_14449 + (6 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14449 + (7 * ceil32(return_data.size)) + 103
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Transfer to merchant failed.'
                                _24818 = mem[416]
                                _24819 = mem[448]
                                mem[_14449 + (7 * ceil32(return_data.size)) + 103] = mem[492 len 20]
                                mem[_14449 + (7 * ceil32(return_data.size)) + 135] = msg.sender
                                mem[_14449 + (7 * ceil32(return_data.size)) + 167] = address(_24818)
                                mem[_14449 + (7 * ceil32(return_data.size)) + 199] = address(_24819)
                                mem[_14449 + (7 * ceil32(return_data.size)) + 231] = _14320 - _1098
                                emit 0xdcc9f547: mem[_14449 + (7 * ceil32(return_data.size)) + 103], msg.sender, address(_24818), address(_24819), _14320 - _1098, this.address
                            else:
                                require 10^14 * ext_call.return_data[30 len 2] / 100
                                require 10^14 * ext_call.return_data[30 len 2] / 100 * mem[128] / 10^14 * ext_call.return_data[30 len 2] / 100 == mem[128]
                                _19213 = mem[128]
                                _19214 = mem[448]
                                mem[_14449 + (2 * ceil32(return_data.size)) + 85] = 'contract.name'
                                mem[_14449 + (2 * ceil32(return_data.size)) + 98] = 'Vault'
                                mem[_14449 + (2 * ceil32(return_data.size)) + 53] = 18
                                mem[64] = _14449 + (2 * ceil32(return_data.size)) + 103
                                s = _14449 + (2 * ceil32(return_data.size)) + 85
                                t = _14449 + (2 * ceil32(return_data.size)) + 103
                                idx = 18
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[_14449 + (2 * ceil32(return_data.size)) + 103] = mem[_14449 + (2 * ceil32(return_data.size)) + 99 len 18] or Mask(112, 144, mem[_14449 + (2 * ceil32(return_data.size)) + 103])
                                _22836 = sha3(mem[_14449 + (2 * ceil32(return_data.size)) + 103 len 18])
                                mem[_14449 + (2 * ceil32(return_data.size)) + 107] = sha3(mem[_14449 + (2 * ceil32(return_data.size)) + 103 len 18])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22836
                                mem[_14449 + (2 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_14449 + (4 * ceil32(return_data.size)) + 107] = ext_call.return_data[12 len 20]
                                mem[_14449 + (4 * ceil32(return_data.size)) + 139] = 10^14 * uint16(ext_call.return_data[0]) / 100 * _18683 / 100 / 10^14
                                require ext_code.size(address(_19214))
                                call address(_19214).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[12 len 20], 10^14 * uint16(ext_call.return_data[0]) / 100 * _18683 / 100 / 10^14
                                mem[_14449 + (4 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Tokens transfer to vault was invalid.'
                                _23979 = mem[448]
                                mem[_14449 + (6 * ceil32(return_data.size)) + 107] = mem[492 len 20]
                                mem[_14449 + (6 * ceil32(return_data.size)) + 139] = _19213 - (10^14 * uint16(ext_call.return_data[0]) / 100 * _18683 / 100 / 10^14)
                                require ext_code.size(address(_23979))
                                call address(_23979).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[_14449 + (6 * ceil32(return_data.size)) + 107], _19213 - (10^14 * uint16(ext_call.return_data[0]) / 100 * _18683 / 100 / 10^14)
                                mem[_14449 + (6 * ceil32(return_data.size)) + 103] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14449 + (7 * ceil32(return_data.size)) + 103
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Transfer to merchant failed.'
                                _24814 = mem[416]
                                _24815 = mem[448]
                                mem[_14449 + (7 * ceil32(return_data.size)) + 103] = mem[492 len 20]
                                mem[_14449 + (7 * ceil32(return_data.size)) + 135] = msg.sender
                                mem[_14449 + (7 * ceil32(return_data.size)) + 167] = address(_24814)
                                mem[_14449 + (7 * ceil32(return_data.size)) + 199] = address(_24815)
                                mem[_14449 + (7 * ceil32(return_data.size)) + 231] = _14320 - _1098
                                emit 0xdcc9f547: mem[_14449 + (7 * ceil32(return_data.size)) + 103], msg.sender, address(_24814), address(_24815), _14320 - _1098, this.address
                        else:
                            mem[_1102 + ceil32(_1140) + ceil32(_1186) + ceil32(_4939) + _8986 + 836] = 0
                            require ext_code.size(address(_1101))
                            call address(_1101).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1102 + ceil32(_1140) + ceil32(_1186) + ceil32(_4939) + ceil32(_8986) + -mem[64] + 832]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13664 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_13664]:
                                _13794 = mem[_1058]
                                mem[mem[64]] = _736
                                emit 0x6230081d: _736, this.address, address(_13794)
                                require idx + 1 >= idx
                                _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = _736
                                idx = idx + 1
                                continue 
                            _13795 = mem[416]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_13795))
                            call address(_13795).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13920 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _13952 = mem[_13920]
                            _14011 = mem[416]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _13952
                            require ext_code.size(address(_14011))
                            call address(_14011).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _13952
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14080 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_14080]:
                                revert with 0, 'Transfer to customer failed.'
                            _14198 = mem[448]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_14198))
                            call address(_14198).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14304 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _14336 = mem[_14304]
                            require _1098 <= mem[_14304]
                            if mem[_14304] - _1098 != mem[128]:
                                revert with 0, 'StablePay target balance is not valid.'
                            _14513 = mem[64]
                            mem[mem[64] + 32] = 'contract.name'
                            mem[mem[64] + 45] = 'Settings'
                            _14514 = mem[64]
                            mem[mem[64]] = 21
                            mem[64] = mem[64] + 53
                            _14516 = mem[_14514]
                            s = _14514 + 32
                            t = mem[64]
                            idx = mem[_14514]
                            while idx >= 32:
                                mem[t] = mem[s]
                                _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[mem[64] + floor32(mem[_14514])] = mem[_14514 + floor32(mem[_14514]) + -(mem[_14514] % 32) + 64 len mem[_14514] % 32] or Mask(8 * -(mem[_14514] % 32) + 32, -(8 * -(mem[_14514] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_14514])])
                            _18354 = sha3(mem[mem[64] len _14516 + _14513 + -mem[64] + 53])
                            mem[mem[64] + 4] = sha3(mem[mem[64] len _14516 + _14513 + -mem[64] + 53])
                            require ext_code.size(_storageAddress)
                            call _storageAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args _18354
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18460 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(mem[_18460 + 12 len 20])
                            call mem[_18460 + 12 len 20].0x6ea8bc10 with:
                                 gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18588 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _18620 = mem[_18588]
                            if not mem[_18588 + 30 len 2]:
                                _18739 = mem[128]
                                _18740 = mem[448]
                                _18897 = mem[64]
                                mem[mem[64] + 32] = 'contract.name'
                                mem[mem[64] + 45] = 'Vault'
                                _18898 = mem[64]
                                mem[mem[64]] = 18
                                mem[64] = mem[64] + 50
                                _18900 = mem[_18898]
                                s = _18898 + 32
                                t = mem[64]
                                idx = mem[_18898]
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_18898])] = mem[_18898 + floor32(mem[_18898]) + -(mem[_18898] % 32) + 64 len mem[_18898] % 32] or Mask(8 * -(mem[_18898] % 32) + 32, -(8 * -(mem[_18898] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_18898])])
                                _22866 = sha3(mem[mem[64] len _18900 + _18897 + -mem[64] + 50])
                                mem[mem[64] + 4] = sha3(mem[mem[64] len _18900 + _18897 + -mem[64] + 50])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22866
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23180 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64] + 4] = mem[_23180 + 12 len 20]
                                mem[mem[64] + 36] = 0
                                require ext_code.size(address(_18740))
                                call address(_18740).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23564 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_23564]:
                                    revert with 0, 'Tokens transfer to vault was invalid.'
                                _23994 = mem[448]
                                mem[mem[64] + 4] = mem[492 len 20]
                                mem[mem[64] + 36] = _18739
                                require ext_code.size(address(_23994))
                                call address(_23994).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _18739
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _24332 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_24332]:
                                    revert with 0, 'Transfer to merchant failed.'
                                _24834 = mem[416]
                                _24835 = mem[448]
                                mem[mem[64]] = mem[492 len 20]
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = address(_24834)
                                mem[mem[64] + 96] = address(_24835)
                                mem[mem[64] + 128] = _14336 - _1098
                                emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24834), address(_24835), _14336 - _1098, this.address
                            else:
                                require mem[_18588 + 30 len 2]
                                require 10^14 * mem[_18588 + 30 len 2] / mem[_18588 + 30 len 2] == 10^14
                                _18684 = mem[128]
                                if not 10^14 * mem[_18588 + 30 len 2] / 100:
                                    _18895 = mem[128]
                                    _18896 = mem[448]
                                    _19227 = mem[64]
                                    mem[mem[64] + 32] = 'contract.name'
                                    mem[mem[64] + 45] = 'Vault'
                                    _19228 = mem[64]
                                    mem[mem[64]] = 18
                                    mem[64] = mem[64] + 50
                                    _19230 = mem[_19228]
                                    s = _19228 + 32
                                    t = _19227 + 50
                                    idx = mem[_19228]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[_19227 + floor32(mem[_19228]) + 50] = mem[_19228 + -(mem[_19228] % 32) + floor32(mem[_19228]) + 64 len mem[_19228] % 32] or Mask(8 * -(mem[_19228] % 32) + 32, -(8 * -(mem[_19228] % 32) + 32) + 256, mem[_19227 + floor32(mem[_19228]) + 50])
                                    _22860 = sha3(mem[_19227 + 50 len _19230])
                                    mem[_19227 + 54] = sha3(mem[_19227 + 50 len _19230])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22860
                                    mem[_19227 + 50] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _19227 + ceil32(return_data.size) + 50
                                    require return_data.size >= 32
                                    mem[_19227 + ceil32(return_data.size) + 54] = address(ext_call.return_data[0])
                                    mem[_19227 + ceil32(return_data.size) + 86] = 0
                                    require ext_code.size(address(_18896))
                                    call address(_18896).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), 0
                                    mem[_19227 + ceil32(return_data.size) + 50] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _19227 + (2 * ceil32(return_data.size)) + 50
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _23991 = mem[448]
                                    _23992 = mem[480]
                                    mem[_19227 + (2 * ceil32(return_data.size)) + 54] = mem[492 len 20]
                                    mem[_19227 + (2 * ceil32(return_data.size)) + 86] = _18895
                                    require ext_code.size(address(_23991))
                                    call address(_23991).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(_23992), _18895
                                    mem[_19227 + (2 * ceil32(return_data.size)) + 50] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _19227 + (4 * ceil32(return_data.size)) + 50
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24830 = mem[416]
                                    _24831 = mem[448]
                                    mem[_19227 + (4 * ceil32(return_data.size)) + 50] = mem[492 len 20]
                                    mem[_19227 + (4 * ceil32(return_data.size)) + 82] = msg.sender
                                    mem[_19227 + (4 * ceil32(return_data.size)) + 114] = address(_24830)
                                    mem[_19227 + (4 * ceil32(return_data.size)) + 146] = address(_24831)
                                    mem[_19227 + (4 * ceil32(return_data.size)) + 178] = _14336 - _1098
                                    emit 0xdcc9f547: mem[_19227 + (4 * ceil32(return_data.size)) + 50], msg.sender, address(_24830), address(_24831), _14336 - _1098, this.address
                                else:
                                    require 10^14 * mem[_18588 + 30 len 2] / 100
                                    require 10^14 * mem[_18588 + 30 len 2] / 100 * mem[128] / 10^14 * mem[_18588 + 30 len 2] / 100 == mem[128]
                                    _19225 = mem[128]
                                    _19226 = mem[448]
                                    _19563 = mem[64]
                                    mem[mem[64] + 32] = 'contract.name'
                                    mem[mem[64] + 45] = 'Vault'
                                    _19564 = mem[64]
                                    mem[mem[64]] = 18
                                    mem[64] = mem[64] + 50
                                    _19566 = mem[_19564]
                                    s = _19564 + 32
                                    t = mem[64]
                                    idx = mem[_19564]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_19564])] = mem[_19564 + floor32(mem[_19564]) + -(mem[_19564] % 32) + 64 len mem[_19564] % 32] or Mask(8 * -(mem[_19564] % 32) + 32, -(8 * -(mem[_19564] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_19564])])
                                    _22854 = sha3(mem[mem[64] len _19566 + _19563 + -mem[64] + 50])
                                    mem[mem[64] + 4] = sha3(mem[mem[64] len _19566 + _19563 + -mem[64] + 50])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22854
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23178 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = mem[_23178 + 12 len 20]
                                    mem[mem[64] + 36] = 10^14 * uint16(_18620) / 100 * _18684 / 100 / 10^14
                                    require ext_code.size(address(_19226))
                                    call address(_19226).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 10^14 * uint16(_18620) / 100 * _18684 / 100 / 10^14
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23562 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_23562]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _23988 = mem[448]
                                    mem[mem[64] + 4] = mem[492 len 20]
                                    mem[mem[64] + 36] = _19225 - (10^14 * uint16(_18620) / 100 * _18684 / 100 / 10^14)
                                    require ext_code.size(address(_23988))
                                    call address(_23988).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _19225 - (10^14 * uint16(_18620) / 100 * _18684 / 100 / 10^14)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24330 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_24330]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24826 = mem[416]
                                    _24827 = mem[448]
                                    mem[mem[64]] = mem[492 len 20]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = address(_24826)
                                    mem[mem[64] + 96] = address(_24827)
                                    mem[mem[64] + 128] = _14336 - _1098
                                    emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24826), address(_24827), _14336 - _1098, this.address
            else:
                mem[_1102 + _1140 + 740] = 0
                _1184 = mem[672]
                mem[_1102 + 612] = ceil32(_1140) + 704
                _1188 = mem[_1184]
                mem[_1102 + ceil32(_1140) + 740] = mem[_1184]
                s = 0
                while s < _1188:
                    mem[_1102 + ceil32(_1140) + s + 772] = mem[_1184 + s + 32]
                    _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                    s = s + 32
                    continue 
                if ceil32(_1188) <= _1188:
                    _4928 = mem[704]
                    mem[_1102 + 644] = ceil32(_1140) + ceil32(_1188) + 736
                    _4936 = mem[_4928]
                    mem[_1102 + ceil32(_1140) + ceil32(_1188) + 772] = mem[_4928]
                    s = 0
                    while s < _4936:
                        mem[_1102 + ceil32(_1140) + ceil32(_1188) + s + 804] = mem[_4928 + s + 32]
                        _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                        s = s + 32
                        continue 
                    if ceil32(_4936) <= _4936:
                        _8963 = mem[736]
                        mem[_1102 + 676] = ceil32(_1140) + ceil32(_1188) + ceil32(_4936) + 768
                        _8979 = mem[_8963]
                        mem[_1102 + ceil32(_1140) + ceil32(_1188) + ceil32(_4936) + 804] = mem[_8963]
                        s = 0
                        while s < _8979:
                            mem[_1102 + ceil32(_1140) + ceil32(_1188) + ceil32(_4936) + s + 836] = mem[_8963 + s + 32]
                            _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                            s = s + 32
                            continue 
                        if ceil32(_8979) <= _8979:
                            require ext_code.size(address(_1101))
                            call address(_1101).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1102 + ceil32(_1140) + ceil32(_1188) + ceil32(_4936) + ceil32(_8979) + -mem[64] + 832]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13649 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_13649]:
                                _13737 = mem[_1058]
                                mem[mem[64]] = _736
                                emit 0x6230081d: _736, this.address, address(_13737)
                                require idx + 1 >= idx
                                _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = _736
                                idx = idx + 1
                                continue 
                            _13738 = mem[416]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_13738))
                            call address(_13738).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13901 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _13937 = mem[_13901]
                            _13981 = mem[416]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _13937
                            require ext_code.size(address(_13981))
                            call address(_13981).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _13937
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14065 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_14065]:
                                revert with 0, 'Transfer to customer failed.'
                            _14153 = mem[448]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_14153))
                            call address(_14153).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14289 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _14321 = mem[_14289]
                            require _1098 <= mem[_14289]
                            if mem[_14289] - _1098 != mem[128]:
                                revert with 0, 'StablePay target balance is not valid.'
                            _14453 = mem[64]
                            mem[mem[64] + 32] = 'contract.name'
                            mem[mem[64] + 45] = 'Settings'
                            _14454 = mem[64]
                            mem[mem[64]] = 21
                            mem[64] = mem[64] + 53
                            _14456 = mem[_14454]
                            s = _14454 + 32
                            t = mem[64]
                            idx = mem[_14454]
                            while idx >= 32:
                                mem[t] = mem[s]
                                _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[mem[64] + floor32(mem[_14454])] = mem[_14454 + floor32(mem[_14454]) + -(mem[_14454] % 32) + 64 len mem[_14454] % 32] or Mask(8 * -(mem[_14454] % 32) + 32, -(8 * -(mem[_14454] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_14454])])
                            _18360 = sha3(mem[mem[64] len _14456 + _14453 + -mem[64] + 53])
                            mem[mem[64] + 4] = sha3(mem[mem[64] len _14456 + _14453 + -mem[64] + 53])
                            require ext_code.size(_storageAddress)
                            call _storageAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args _18360
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18461 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(mem[_18461 + 12 len 20])
                            call mem[_18461 + 12 len 20].0x6ea8bc10 with:
                                 gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18589 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _18621 = mem[_18589]
                            if not mem[_18589 + 30 len 2]:
                                _18741 = mem[128]
                                _18742 = mem[448]
                                _18903 = mem[64]
                                mem[mem[64] + 32] = 'contract.name'
                                mem[mem[64] + 45] = 'Vault'
                                _18904 = mem[64]
                                mem[mem[64]] = 18
                                mem[64] = mem[64] + 50
                                _18906 = mem[_18904]
                                s = _18904 + 32
                                t = mem[64]
                                idx = mem[_18904]
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_18904])] = mem[_18904 + floor32(mem[_18904]) + -(mem[_18904] % 32) + 64 len mem[_18904] % 32] or Mask(8 * -(mem[_18904] % 32) + 32, -(8 * -(mem[_18904] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_18904])])
                                _22884 = sha3(mem[mem[64] len _18906 + _18903 + -mem[64] + 50])
                                mem[mem[64] + 4] = sha3(mem[mem[64] len _18906 + _18903 + -mem[64] + 50])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22884
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23183 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64] + 4] = mem[_23183 + 12 len 20]
                                mem[mem[64] + 36] = 0
                                require ext_code.size(address(_18742))
                                call address(_18742).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23567 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_23567]:
                                    revert with 0, 'Tokens transfer to vault was invalid.'
                                _24003 = mem[448]
                                mem[mem[64] + 4] = mem[492 len 20]
                                mem[mem[64] + 36] = _18741
                                require ext_code.size(address(_24003))
                                call address(_24003).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _18741
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _24335 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_24335]:
                                    revert with 0, 'Transfer to merchant failed.'
                                _24846 = mem[416]
                                _24847 = mem[448]
                                mem[mem[64]] = mem[492 len 20]
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = address(_24846)
                                mem[mem[64] + 96] = address(_24847)
                                mem[mem[64] + 128] = _14321 - _1098
                                emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24846), address(_24847), _14321 - _1098, this.address
                            else:
                                require mem[_18589 + 30 len 2]
                                require 10^14 * mem[_18589 + 30 len 2] / mem[_18589 + 30 len 2] == 10^14
                                _18685 = mem[128]
                                if not 10^14 * mem[_18589 + 30 len 2] / 100:
                                    _18901 = mem[128]
                                    _18902 = mem[448]
                                    _19239 = mem[64]
                                    mem[mem[64] + 32] = 'contract.name'
                                    mem[mem[64] + 45] = 'Vault'
                                    _19240 = mem[64]
                                    mem[mem[64]] = 18
                                    mem[64] = mem[64] + 50
                                    _19242 = mem[_19240]
                                    s = _19240 + 32
                                    t = mem[64]
                                    idx = mem[_19240]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_19240])] = mem[_19240 + floor32(mem[_19240]) + -(mem[_19240] % 32) + 64 len mem[_19240] % 32] or Mask(8 * -(mem[_19240] % 32) + 32, -(8 * -(mem[_19240] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_19240])])
                                    _22878 = sha3(mem[mem[64] len _19242 + _19239 + -mem[64] + 50])
                                    mem[mem[64] + 4] = sha3(mem[mem[64] len _19242 + _19239 + -mem[64] + 50])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22878
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23182 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = mem[_23182 + 12 len 20]
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(address(_18902))
                                    call address(_18902).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23566 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_23566]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _24000 = mem[448]
                                    mem[mem[64] + 4] = mem[492 len 20]
                                    mem[mem[64] + 36] = _18901
                                    require ext_code.size(address(_24000))
                                    call address(_24000).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _18901
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24334 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_24334]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24842 = mem[416]
                                    _24843 = mem[448]
                                    mem[mem[64]] = mem[492 len 20]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = address(_24842)
                                    mem[mem[64] + 96] = address(_24843)
                                    mem[mem[64] + 128] = _14321 - _1098
                                    emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24842), address(_24843), _14321 - _1098, this.address
                                else:
                                    require 10^14 * mem[_18589 + 30 len 2] / 100
                                    require 10^14 * mem[_18589 + 30 len 2] / 100 * mem[128] / 10^14 * mem[_18589 + 30 len 2] / 100 == mem[128]
                                    _19237 = mem[128]
                                    _19238 = mem[448]
                                    _19573 = mem[64]
                                    mem[mem[64] + 32] = 'contract.name'
                                    mem[mem[64] + 45] = 'Vault'
                                    _19574 = mem[64]
                                    mem[mem[64]] = 18
                                    mem[64] = mem[64] + 50
                                    _19576 = mem[_19574]
                                    s = _19574 + 32
                                    t = mem[64]
                                    idx = mem[_19574]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_19574])] = mem[_19574 + floor32(mem[_19574]) + -(mem[_19574] % 32) + 64 len mem[_19574] % 32] or Mask(8 * -(mem[_19574] % 32) + 32, -(8 * -(mem[_19574] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_19574])])
                                    _22872 = sha3(mem[mem[64] len _19576 + _19573 + -mem[64] + 50])
                                    mem[mem[64] + 4] = sha3(mem[mem[64] len _19576 + _19573 + -mem[64] + 50])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22872
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23181 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = mem[_23181 + 12 len 20]
                                    mem[mem[64] + 36] = 10^14 * uint16(_18621) / 100 * _18685 / 100 / 10^14
                                    require ext_code.size(address(_19238))
                                    call address(_19238).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 10^14 * uint16(_18621) / 100 * _18685 / 100 / 10^14
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23565 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_23565]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _23997 = mem[448]
                                    mem[mem[64] + 4] = mem[492 len 20]
                                    mem[mem[64] + 36] = _19237 - (10^14 * uint16(_18621) / 100 * _18685 / 100 / 10^14)
                                    require ext_code.size(address(_23997))
                                    call address(_23997).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _19237 - (10^14 * uint16(_18621) / 100 * _18685 / 100 / 10^14)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24333 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_24333]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24838 = mem[416]
                                    _24839 = mem[448]
                                    mem[mem[64]] = mem[492 len 20]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = address(_24838)
                                    mem[mem[64] + 96] = address(_24839)
                                    mem[mem[64] + 128] = _14321 - _1098
                                    emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24838), address(_24839), _14321 - _1098, this.address
                        else:
                            mem[_1102 + ceil32(_1140) + ceil32(_1188) + ceil32(_4936) + _8979 + 836] = 0
                            require ext_code.size(address(_1101))
                            call address(_1101).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1102 + ceil32(_1140) + ceil32(_1188) + ceil32(_4936) + ceil32(_8979) + -mem[64] + 832]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13665 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_13665]:
                                _13798 = mem[_1058]
                                mem[mem[64]] = _736
                                emit 0x6230081d: _736, this.address, address(_13798)
                                require idx + 1 >= idx
                                _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = _736
                                idx = idx + 1
                                continue 
                            _13799 = mem[416]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_13799))
                            call address(_13799).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13921 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _13953 = mem[_13921]
                            _14013 = mem[416]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _13953
                            require ext_code.size(address(_14013))
                            call address(_14013).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _13953
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14081 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_14081]:
                                revert with 0, 'Transfer to customer failed.'
                            _14201 = mem[448]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_14201))
                            call address(_14201).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14305 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _14337 = mem[_14305]
                            require _1098 <= mem[_14305]
                            if mem[_14305] - _1098 != mem[128]:
                                revert with 0, 'StablePay target balance is not valid.'
                            _14517 = mem[64]
                            mem[mem[64] + 32] = 'contract.name'
                            mem[mem[64] + 45] = 'Settings'
                            _14518 = mem[64]
                            mem[mem[64]] = 21
                            mem[64] = mem[64] + 53
                            _14520 = mem[_14518]
                            s = _14518 + 32
                            t = mem[64]
                            idx = mem[_14518]
                            while idx >= 32:
                                mem[t] = mem[s]
                                _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[mem[64] + floor32(mem[_14518])] = mem[_14518 + floor32(mem[_14518]) + -(mem[_14518] % 32) + 64 len mem[_14518] % 32] or Mask(8 * -(mem[_14518] % 32) + 32, -(8 * -(mem[_14518] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_14518])])
                            _18366 = sha3(mem[mem[64] len _14520 + _14517 + -mem[64] + 53])
                            mem[mem[64] + 4] = sha3(mem[mem[64] len _14520 + _14517 + -mem[64] + 53])
                            require ext_code.size(_storageAddress)
                            call _storageAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args _18366
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18462 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(mem[_18462 + 12 len 20])
                            call mem[_18462 + 12 len 20].0x6ea8bc10 with:
                                 gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18590 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _18622 = mem[_18590]
                            if not mem[_18590 + 30 len 2]:
                                _18743 = mem[128]
                                _18744 = mem[448]
                                _18909 = mem[64]
                                mem[mem[64] + 32] = 'contract.name'
                                mem[mem[64] + 45] = 'Vault'
                                _18910 = mem[64]
                                mem[mem[64]] = 18
                                mem[64] = mem[64] + 50
                                _18912 = mem[_18910]
                                s = _18910 + 32
                                t = mem[64]
                                idx = mem[_18910]
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_18910])] = mem[_18910 + floor32(mem[_18910]) + -(mem[_18910] % 32) + 64 len mem[_18910] % 32] or Mask(8 * -(mem[_18910] % 32) + 32, -(8 * -(mem[_18910] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_18910])])
                                _22902 = sha3(mem[mem[64] len _18912 + _18909 + -mem[64] + 50])
                                mem[mem[64] + 4] = sha3(mem[mem[64] len _18912 + _18909 + -mem[64] + 50])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22902
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23186 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64] + 4] = mem[_23186 + 12 len 20]
                                mem[mem[64] + 36] = 0
                                require ext_code.size(address(_18744))
                                call address(_18744).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23570 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_23570]:
                                    revert with 0, 'Tokens transfer to vault was invalid.'
                                _24012 = mem[448]
                                mem[mem[64] + 4] = mem[492 len 20]
                                mem[mem[64] + 36] = _18743
                                require ext_code.size(address(_24012))
                                call address(_24012).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _18743
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _24338 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_24338]:
                                    revert with 0, 'Transfer to merchant failed.'
                                _24858 = mem[416]
                                _24859 = mem[448]
                                mem[mem[64]] = mem[492 len 20]
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = address(_24858)
                                mem[mem[64] + 96] = address(_24859)
                                mem[mem[64] + 128] = _14337 - _1098
                                emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24858), address(_24859), _14337 - _1098, this.address
                            else:
                                require mem[_18590 + 30 len 2]
                                require 10^14 * mem[_18590 + 30 len 2] / mem[_18590 + 30 len 2] == 10^14
                                _18686 = mem[128]
                                if not 10^14 * mem[_18590 + 30 len 2] / 100:
                                    _18907 = mem[128]
                                    _18908 = mem[448]
                                    _19251 = mem[64]
                                    mem[mem[64] + 32] = 'contract.name'
                                    mem[mem[64] + 45] = 'Vault'
                                    _19252 = mem[64]
                                    mem[mem[64]] = 18
                                    mem[64] = mem[64] + 50
                                    _19254 = mem[_19252]
                                    s = _19252 + 32
                                    t = mem[64]
                                    idx = mem[_19252]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_19252])] = mem[_19252 + floor32(mem[_19252]) + -(mem[_19252] % 32) + 64 len mem[_19252] % 32] or Mask(8 * -(mem[_19252] % 32) + 32, -(8 * -(mem[_19252] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_19252])])
                                    _22896 = sha3(mem[mem[64] len _19254 + _19251 + -mem[64] + 50])
                                    mem[mem[64] + 4] = sha3(mem[mem[64] len _19254 + _19251 + -mem[64] + 50])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22896
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23185 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = mem[_23185 + 12 len 20]
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(address(_18908))
                                    call address(_18908).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23569 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_23569]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _24009 = mem[448]
                                    mem[mem[64] + 4] = mem[492 len 20]
                                    mem[mem[64] + 36] = _18907
                                    require ext_code.size(address(_24009))
                                    call address(_24009).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _18907
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24337 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_24337]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24854 = mem[416]
                                    _24855 = mem[448]
                                    mem[mem[64]] = mem[492 len 20]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = address(_24854)
                                    mem[mem[64] + 96] = address(_24855)
                                    mem[mem[64] + 128] = _14337 - _1098
                                    emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24854), address(_24855), _14337 - _1098, this.address
                                else:
                                    require 10^14 * mem[_18590 + 30 len 2] / 100
                                    require 10^14 * mem[_18590 + 30 len 2] / 100 * mem[128] / 10^14 * mem[_18590 + 30 len 2] / 100 == mem[128]
                                    _19249 = mem[128]
                                    _19250 = mem[448]
                                    _19583 = mem[64]
                                    mem[mem[64] + 32] = 'contract.name'
                                    mem[mem[64] + 45] = 'Vault'
                                    _19584 = mem[64]
                                    mem[mem[64]] = 18
                                    mem[64] = mem[64] + 50
                                    _19586 = mem[_19584]
                                    s = _19584 + 32
                                    t = mem[64]
                                    idx = mem[_19584]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_19584])] = mem[_19584 + floor32(mem[_19584]) + -(mem[_19584] % 32) + 64 len mem[_19584] % 32] or Mask(8 * -(mem[_19584] % 32) + 32, -(8 * -(mem[_19584] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_19584])])
                                    _22890 = sha3(mem[mem[64] len _19586 + _19583 + -mem[64] + 50])
                                    mem[mem[64] + 4] = sha3(mem[mem[64] len _19586 + _19583 + -mem[64] + 50])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22890
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23184 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = mem[_23184 + 12 len 20]
                                    mem[mem[64] + 36] = 10^14 * uint16(_18622) / 100 * _18686 / 100 / 10^14
                                    require ext_code.size(address(_19250))
                                    call address(_19250).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 10^14 * uint16(_18622) / 100 * _18686 / 100 / 10^14
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23568 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_23568]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _24006 = mem[448]
                                    mem[mem[64] + 4] = mem[492 len 20]
                                    mem[mem[64] + 36] = _19249 - (10^14 * uint16(_18622) / 100 * _18686 / 100 / 10^14)
                                    require ext_code.size(address(_24006))
                                    call address(_24006).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _19249 - (10^14 * uint16(_18622) / 100 * _18686 / 100 / 10^14)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24336 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_24336]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24850 = mem[416]
                                    _24851 = mem[448]
                                    mem[mem[64]] = mem[492 len 20]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = address(_24850)
                                    mem[mem[64] + 96] = address(_24851)
                                    mem[mem[64] + 128] = _14337 - _1098
                                    emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24850), address(_24851), _14337 - _1098, this.address
                    else:
                        mem[_1102 + ceil32(_1140) + ceil32(_1188) + _4936 + 804] = 0
                        _8971 = mem[736]
                        mem[_1102 + 676] = ceil32(_1140) + ceil32(_1188) + ceil32(_4936) + 768
                        _8987 = mem[_8971]
                        mem[_1102 + ceil32(_1140) + ceil32(_1188) + ceil32(_4936) + 804] = mem[_8971]
                        s = 0
                        while s < _8987:
                            mem[_1102 + ceil32(_1140) + ceil32(_1188) + ceil32(_4936) + s + 836] = mem[_8971 + s + 32]
                            _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                            s = s + 32
                            continue 
                        if ceil32(_8987) <= _8987:
                            require ext_code.size(address(_1101))
                            call address(_1101).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1102 + ceil32(_1140) + ceil32(_1188) + ceil32(_4936) + ceil32(_8987) + -mem[64] + 832]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13650 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_13650]:
                                _13740 = mem[_1058]
                                mem[mem[64]] = _736
                                emit 0x6230081d: _736, this.address, address(_13740)
                                require idx + 1 >= idx
                                _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = _736
                                idx = idx + 1
                                continue 
                            _13741 = mem[416]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_13741))
                            call address(_13741).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13903 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _13938 = mem[_13903]
                            _13983 = mem[416]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _13938
                            require ext_code.size(address(_13983))
                            call address(_13983).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _13938
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14066 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_14066]:
                                revert with 0, 'Transfer to customer failed.'
                            _14156 = mem[448]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_14156))
                            call address(_14156).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14290 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _14322 = mem[_14290]
                            require _1098 <= mem[_14290]
                            if mem[_14290] - _1098 != mem[128]:
                                revert with 0, 'StablePay target balance is not valid.'
                            _14457 = mem[64]
                            mem[mem[64] + 32] = 'contract.name'
                            mem[mem[64] + 45] = 'Settings'
                            _14458 = mem[64]
                            mem[mem[64]] = 21
                            mem[64] = mem[64] + 53
                            _14460 = mem[_14458]
                            s = _14458 + 32
                            t = _14457 + 53
                            idx = mem[_14458]
                            while idx >= 32:
                                mem[t] = mem[s]
                                _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[_14457 + floor32(mem[_14458]) + 53] = mem[_14458 + -(mem[_14458] % 32) + floor32(mem[_14458]) + 64 len mem[_14458] % 32] or Mask(8 * -(mem[_14458] % 32) + 32, -(8 * -(mem[_14458] % 32) + 32) + 256, mem[_14457 + floor32(mem[_14458]) + 53])
                            _18372 = sha3(mem[_14457 + 53 len _14460])
                            mem[_14457 + 57] = sha3(mem[_14457 + 53 len _14460])
                            require ext_code.size(_storageAddress)
                            call _storageAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args _18372
                            mem[_14457 + 53] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x6ea8bc10 with:
                                 gas gas_remaining wei
                            mem[_14457 + ceil32(return_data.size) + 53] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _14457 + (2 * ceil32(return_data.size)) + 53
                            require return_data.size >= 32
                            if not ext_call.return_data[30 len 2]:
                                _18745 = mem[128]
                                _18746 = mem[448]
                                mem[_14457 + (2 * ceil32(return_data.size)) + 85] = 'contract.name'
                                mem[_14457 + (2 * ceil32(return_data.size)) + 98] = 'Vault'
                                mem[_14457 + (2 * ceil32(return_data.size)) + 53] = 18
                                mem[64] = _14457 + (2 * ceil32(return_data.size)) + 103
                                s = _14457 + (2 * ceil32(return_data.size)) + 85
                                t = mem[64]
                                idx = mem[_14457 + (2 * ceil32(return_data.size)) + 53]
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_14457 + (2 * ceil32(return_data.size)) + 53])] = mem[_14457 + (2 * ceil32(return_data.size)) + floor32(mem[_14457 + (2 * ceil32(return_data.size)) + 53]) + -(mem[_14457 + (2 * ceil32(return_data.size)) + 53] % 32) + 117 len mem[_14457 + (2 * ceil32(return_data.size)) + 53] % 32] or Mask(8 * -(mem[_14457 + (2 * ceil32(return_data.size)) + 53] % 32) + 32, -(8 * -(mem[_14457 + (2 * ceil32(return_data.size)) + 53] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_14457 + (2 * ceil32(return_data.size)) + 53])])
                                _22920 = sha3(mem[mem[64] len _14457 + (2 * ceil32(return_data.size)) + -mem[64] + 121])
                                mem[mem[64] + 4] = sha3(mem[mem[64] len _14457 + (2 * ceil32(return_data.size)) + -mem[64] + 121])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22920
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23189 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64] + 4] = mem[_23189 + 12 len 20]
                                mem[mem[64] + 36] = 0
                                require ext_code.size(address(_18746))
                                call address(_18746).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23573 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_23573]:
                                    revert with 0, 'Tokens transfer to vault was invalid.'
                                _24021 = mem[448]
                                mem[mem[64] + 4] = mem[492 len 20]
                                mem[mem[64] + 36] = _18745
                                require ext_code.size(address(_24021))
                                call address(_24021).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _18745
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _24341 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_24341]:
                                    revert with 0, 'Transfer to merchant failed.'
                                _24870 = mem[416]
                                _24871 = mem[448]
                                mem[mem[64]] = mem[492 len 20]
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = address(_24870)
                                mem[mem[64] + 96] = address(_24871)
                                mem[mem[64] + 128] = _14322 - _1098
                                emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24870), address(_24871), _14322 - _1098, this.address
                            else:
                                require ext_call.return_data[30 len 2]
                                require 10^14 * ext_call.return_data[30 len 2] / ext_call.return_data[30 len 2] == 10^14
                                _18687 = mem[128]
                                if not 10^14 * ext_call.return_data[30 len 2] / 100:
                                    _18913 = mem[128]
                                    _18914 = mem[448]
                                    mem[_14457 + (2 * ceil32(return_data.size)) + 85] = 'contract.name'
                                    mem[_14457 + (2 * ceil32(return_data.size)) + 98] = 'Vault'
                                    mem[_14457 + (2 * ceil32(return_data.size)) + 53] = 18
                                    mem[64] = _14457 + (2 * ceil32(return_data.size)) + 103
                                    s = _14457 + (2 * ceil32(return_data.size)) + 85
                                    t = mem[64]
                                    idx = mem[_14457 + (2 * ceil32(return_data.size)) + 53]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_14457 + (2 * ceil32(return_data.size)) + 53])] = mem[_14457 + (2 * ceil32(return_data.size)) + floor32(mem[_14457 + (2 * ceil32(return_data.size)) + 53]) + -(mem[_14457 + (2 * ceil32(return_data.size)) + 53] % 32) + 117 len mem[_14457 + (2 * ceil32(return_data.size)) + 53] % 32] or Mask(8 * -(mem[_14457 + (2 * ceil32(return_data.size)) + 53] % 32) + 32, -(8 * -(mem[_14457 + (2 * ceil32(return_data.size)) + 53] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_14457 + (2 * ceil32(return_data.size)) + 53])])
                                    _22914 = sha3(mem[mem[64] len _14457 + (2 * ceil32(return_data.size)) + -mem[64] + 121])
                                    mem[mem[64] + 4] = sha3(mem[mem[64] len _14457 + (2 * ceil32(return_data.size)) + -mem[64] + 121])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22914
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23188 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = mem[_23188 + 12 len 20]
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(address(_18914))
                                    call address(_18914).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23572 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_23572]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _24018 = mem[448]
                                    mem[mem[64] + 4] = mem[492 len 20]
                                    mem[mem[64] + 36] = _18913
                                    require ext_code.size(address(_24018))
                                    call address(_24018).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _18913
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24340 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_24340]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24866 = mem[416]
                                    _24867 = mem[448]
                                    mem[mem[64]] = mem[492 len 20]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = address(_24866)
                                    mem[mem[64] + 96] = address(_24867)
                                    mem[mem[64] + 128] = _14322 - _1098
                                    emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24866), address(_24867), _14322 - _1098, this.address
                                else:
                                    require 10^14 * ext_call.return_data[30 len 2] / 100
                                    require 10^14 * ext_call.return_data[30 len 2] / 100 * mem[128] / 10^14 * ext_call.return_data[30 len 2] / 100 == mem[128]
                                    _19261 = mem[128]
                                    _19262 = mem[448]
                                    mem[_14457 + (2 * ceil32(return_data.size)) + 85] = 'contract.name'
                                    mem[_14457 + (2 * ceil32(return_data.size)) + 98] = 'Vault'
                                    mem[_14457 + (2 * ceil32(return_data.size)) + 53] = 18
                                    mem[64] = _14457 + (2 * ceil32(return_data.size)) + 103
                                    s = _14457 + (2 * ceil32(return_data.size)) + 85
                                    t = mem[64]
                                    idx = mem[_14457 + (2 * ceil32(return_data.size)) + 53]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_14457 + (2 * ceil32(return_data.size)) + 53])] = mem[_14457 + (2 * ceil32(return_data.size)) + floor32(mem[_14457 + (2 * ceil32(return_data.size)) + 53]) + -(mem[_14457 + (2 * ceil32(return_data.size)) + 53] % 32) + 117 len mem[_14457 + (2 * ceil32(return_data.size)) + 53] % 32] or Mask(8 * -(mem[_14457 + (2 * ceil32(return_data.size)) + 53] % 32) + 32, -(8 * -(mem[_14457 + (2 * ceil32(return_data.size)) + 53] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_14457 + (2 * ceil32(return_data.size)) + 53])])
                                    _22908 = sha3(mem[mem[64] len _14457 + (2 * ceil32(return_data.size)) + -mem[64] + 121])
                                    mem[mem[64] + 4] = sha3(mem[mem[64] len _14457 + (2 * ceil32(return_data.size)) + -mem[64] + 121])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22908
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23187 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = mem[_23187 + 12 len 20]
                                    mem[mem[64] + 36] = 10^14 * uint16(ext_call.return_data[0]) / 100 * _18687 / 100 / 10^14
                                    require ext_code.size(address(_19262))
                                    call address(_19262).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 10^14 * uint16(ext_call.return_data[0]) / 100 * _18687 / 100 / 10^14
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23571 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_23571]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _24015 = mem[448]
                                    mem[mem[64] + 4] = mem[492 len 20]
                                    mem[mem[64] + 36] = _19261 - (10^14 * uint16(ext_call.return_data[0]) / 100 * _18687 / 100 / 10^14)
                                    require ext_code.size(address(_24015))
                                    call address(_24015).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _19261 - (10^14 * uint16(ext_call.return_data[0]) / 100 * _18687 / 100 / 10^14)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24339 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_24339]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24862 = mem[416]
                                    _24863 = mem[448]
                                    mem[mem[64]] = mem[492 len 20]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = address(_24862)
                                    mem[mem[64] + 96] = address(_24863)
                                    mem[mem[64] + 128] = _14322 - _1098
                                    emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24862), address(_24863), _14322 - _1098, this.address
                        else:
                            mem[_1102 + ceil32(_1140) + ceil32(_1188) + ceil32(_4936) + _8987 + 836] = 0
                            require ext_code.size(address(_1101))
                            call address(_1101).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1102 + ceil32(_1140) + ceil32(_1188) + ceil32(_4936) + ceil32(_8987) + -mem[64] + 832]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13666 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_13666]:
                                _13802 = mem[_1058]
                                mem[mem[64]] = _736
                                emit 0x6230081d: _736, this.address, address(_13802)
                                require idx + 1 >= idx
                                _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = _736
                                idx = idx + 1
                                continue 
                            _13803 = mem[416]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_13803))
                            call address(_13803).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13922 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _13954 = mem[_13922]
                            _14015 = mem[416]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _13954
                            require ext_code.size(address(_14015))
                            call address(_14015).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _13954
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14082 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_14082]:
                                revert with 0, 'Transfer to customer failed.'
                            _14204 = mem[448]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_14204))
                            call address(_14204).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14306 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _14338 = mem[_14306]
                            require _1098 <= mem[_14306]
                            if mem[_14306] - _1098 != mem[128]:
                                revert with 0, 'StablePay target balance is not valid.'
                            _14521 = mem[64]
                            mem[mem[64] + 32] = 'contract.name'
                            mem[mem[64] + 45] = 'Settings'
                            _14522 = mem[64]
                            mem[mem[64]] = 21
                            mem[64] = mem[64] + 53
                            _14524 = mem[_14522]
                            s = _14522 + 32
                            t = mem[64]
                            idx = mem[_14522]
                            while idx >= 32:
                                mem[t] = mem[s]
                                _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[mem[64] + floor32(mem[_14522])] = mem[_14522 + floor32(mem[_14522]) + -(mem[_14522] % 32) + 64 len mem[_14522] % 32] or Mask(8 * -(mem[_14522] % 32) + 32, -(8 * -(mem[_14522] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_14522])])
                            _18378 = sha3(mem[mem[64] len _14524 + _14521 + -mem[64] + 53])
                            mem[mem[64] + 4] = sha3(mem[mem[64] len _14524 + _14521 + -mem[64] + 53])
                            require ext_code.size(_storageAddress)
                            call _storageAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args _18378
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18464 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(mem[_18464 + 12 len 20])
                            call mem[_18464 + 12 len 20].0x6ea8bc10 with:
                                 gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18592 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _18624 = mem[_18592]
                            if not mem[_18592 + 30 len 2]:
                                _18747 = mem[128]
                                _18748 = mem[448]
                                _18921 = mem[64]
                                mem[mem[64] + 32] = 'contract.name'
                                mem[mem[64] + 45] = 'Vault'
                                _18922 = mem[64]
                                mem[mem[64]] = 18
                                mem[64] = mem[64] + 50
                                _18924 = mem[_18922]
                                s = _18922 + 32
                                t = mem[64]
                                idx = mem[_18922]
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_18922])] = mem[_18922 + floor32(mem[_18922]) + -(mem[_18922] % 32) + 64 len mem[_18922] % 32] or Mask(8 * -(mem[_18922] % 32) + 32, -(8 * -(mem[_18922] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_18922])])
                                _22938 = sha3(mem[mem[64] len _18924 + _18921 + -mem[64] + 50])
                                mem[mem[64] + 4] = sha3(mem[mem[64] len _18924 + _18921 + -mem[64] + 50])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22938
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23192 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64] + 4] = mem[_23192 + 12 len 20]
                                mem[mem[64] + 36] = 0
                                require ext_code.size(address(_18748))
                                call address(_18748).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23576 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_23576]:
                                    revert with 0, 'Tokens transfer to vault was invalid.'
                                _24030 = mem[448]
                                mem[mem[64] + 4] = mem[492 len 20]
                                mem[mem[64] + 36] = _18747
                                require ext_code.size(address(_24030))
                                call address(_24030).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _18747
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _24344 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_24344]:
                                    revert with 0, 'Transfer to merchant failed.'
                                _24882 = mem[416]
                                _24883 = mem[448]
                                mem[mem[64]] = mem[492 len 20]
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = address(_24882)
                                mem[mem[64] + 96] = address(_24883)
                                mem[mem[64] + 128] = _14338 - _1098
                                emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24882), address(_24883), _14338 - _1098, this.address
                            else:
                                require mem[_18592 + 30 len 2]
                                require 10^14 * mem[_18592 + 30 len 2] / mem[_18592 + 30 len 2] == 10^14
                                _18688 = mem[128]
                                if not 10^14 * mem[_18592 + 30 len 2] / 100:
                                    _18919 = mem[128]
                                    _18920 = mem[448]
                                    _19275 = mem[64]
                                    mem[mem[64] + 32] = 'contract.name'
                                    mem[mem[64] + 45] = 'Vault'
                                    _19276 = mem[64]
                                    mem[mem[64]] = 18
                                    mem[64] = mem[64] + 50
                                    _19278 = mem[_19276]
                                    s = _19276 + 32
                                    t = _19275 + 50
                                    idx = mem[_19276]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[_19275 + floor32(mem[_19276]) + 50] = mem[_19276 + -(mem[_19276] % 32) + floor32(mem[_19276]) + 64 len mem[_19276] % 32] or Mask(8 * -(mem[_19276] % 32) + 32, -(8 * -(mem[_19276] % 32) + 32) + 256, mem[_19275 + floor32(mem[_19276]) + 50])
                                    _22932 = sha3(mem[_19275 + 50 len _19278])
                                    mem[_19275 + 54] = sha3(mem[_19275 + 50 len _19278])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22932
                                    mem[_19275 + 50] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _19275 + ceil32(return_data.size) + 50
                                    require return_data.size >= 32
                                    mem[_19275 + ceil32(return_data.size) + 54] = address(ext_call.return_data[0])
                                    mem[_19275 + ceil32(return_data.size) + 86] = 0
                                    require ext_code.size(address(_18920))
                                    call address(_18920).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), 0
                                    mem[_19275 + ceil32(return_data.size) + 50] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _19275 + (2 * ceil32(return_data.size)) + 50
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _24027 = mem[448]
                                    _24028 = mem[480]
                                    mem[_19275 + (2 * ceil32(return_data.size)) + 54] = mem[492 len 20]
                                    mem[_19275 + (2 * ceil32(return_data.size)) + 86] = _18919
                                    require ext_code.size(address(_24027))
                                    call address(_24027).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(_24028), _18919
                                    mem[_19275 + (2 * ceil32(return_data.size)) + 50] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _19275 + (4 * ceil32(return_data.size)) + 50
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24878 = mem[416]
                                    _24879 = mem[448]
                                    mem[_19275 + (4 * ceil32(return_data.size)) + 50] = mem[492 len 20]
                                    mem[_19275 + (4 * ceil32(return_data.size)) + 82] = msg.sender
                                    mem[_19275 + (4 * ceil32(return_data.size)) + 114] = address(_24878)
                                    mem[_19275 + (4 * ceil32(return_data.size)) + 146] = address(_24879)
                                    mem[_19275 + (4 * ceil32(return_data.size)) + 178] = _14338 - _1098
                                    emit 0xdcc9f547: mem[_19275 + (4 * ceil32(return_data.size)) + 50], msg.sender, address(_24878), address(_24879), _14338 - _1098, this.address
                                else:
                                    require 10^14 * mem[_18592 + 30 len 2] / 100
                                    require 10^14 * mem[_18592 + 30 len 2] / 100 * mem[128] / 10^14 * mem[_18592 + 30 len 2] / 100 == mem[128]
                                    _19273 = mem[128]
                                    _19274 = mem[448]
                                    _19603 = mem[64]
                                    mem[mem[64] + 32] = 'contract.name'
                                    mem[mem[64] + 45] = 'Vault'
                                    _19604 = mem[64]
                                    mem[mem[64]] = 18
                                    mem[64] = mem[64] + 50
                                    _19606 = mem[_19604]
                                    s = _19604 + 32
                                    t = mem[64]
                                    idx = mem[_19604]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_19604])] = mem[_19604 + floor32(mem[_19604]) + -(mem[_19604] % 32) + 64 len mem[_19604] % 32] or Mask(8 * -(mem[_19604] % 32) + 32, -(8 * -(mem[_19604] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_19604])])
                                    _22926 = sha3(mem[mem[64] len _19606 + _19603 + -mem[64] + 50])
                                    mem[mem[64] + 4] = sha3(mem[mem[64] len _19606 + _19603 + -mem[64] + 50])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22926
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23190 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = mem[_23190 + 12 len 20]
                                    mem[mem[64] + 36] = 10^14 * uint16(_18624) / 100 * _18688 / 100 / 10^14
                                    require ext_code.size(address(_19274))
                                    call address(_19274).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 10^14 * uint16(_18624) / 100 * _18688 / 100 / 10^14
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23574 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_23574]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _24024 = mem[448]
                                    mem[mem[64] + 4] = mem[492 len 20]
                                    mem[mem[64] + 36] = _19273 - (10^14 * uint16(_18624) / 100 * _18688 / 100 / 10^14)
                                    require ext_code.size(address(_24024))
                                    call address(_24024).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _19273 - (10^14 * uint16(_18624) / 100 * _18688 / 100 / 10^14)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24342 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_24342]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24874 = mem[416]
                                    _24875 = mem[448]
                                    mem[mem[64]] = mem[492 len 20]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = address(_24874)
                                    mem[mem[64] + 96] = address(_24875)
                                    mem[mem[64] + 128] = _14338 - _1098
                                    emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24874), address(_24875), _14338 - _1098, this.address
                else:
                    mem[_1102 + ceil32(_1140) + _1188 + 772] = 0
                    _4932 = mem[704]
                    mem[_1102 + 644] = ceil32(_1140) + ceil32(_1188) + 736
                    _4940 = mem[_4932]
                    mem[_1102 + ceil32(_1140) + ceil32(_1188) + 772] = mem[_4932]
                    s = 0
                    while s < _4940:
                        mem[_1102 + ceil32(_1140) + ceil32(_1188) + s + 804] = mem[_4932 + s + 32]
                        _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                        s = s + 32
                        continue 
                    if ceil32(_4940) > _4940:
                        mem[_1102 + ceil32(_1140) + ceil32(_1188) + _4940 + 804] = 0
                        _8972 = mem[736]
                        mem[_1102 + 676] = ceil32(_1140) + ceil32(_1188) + ceil32(_4940) + 768
                        _8988 = mem[_8972]
                        mem[_1102 + ceil32(_1140) + ceil32(_1188) + ceil32(_4940) + 804] = mem[_8972]
                        s = 0
                        while s < _8988:
                            mem[_1102 + ceil32(_1140) + ceil32(_1188) + ceil32(_4940) + s + 836] = mem[_8972 + s + 32]
                            _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                            s = s + 32
                            continue 
                        if ceil32(_8988) <= _8988:
                            require ext_code.size(address(_1101))
                            call address(_1101).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1102 + ceil32(_1140) + ceil32(_1188) + ceil32(_4940) + ceil32(_8988) + -mem[64] + 832]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13652 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_13652]:
                                _13746 = mem[_1058]
                                mem[mem[64]] = _736
                                emit 0x6230081d: _736, this.address, address(_13746)
                                require idx + 1 >= idx
                                _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = _736
                                idx = idx + 1
                                continue 
                            _13747 = mem[416]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_13747))
                            call address(_13747).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13907 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _13940 = mem[_13907]
                            _13987 = mem[416]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _13940
                            require ext_code.size(address(_13987))
                            call address(_13987).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _13940
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14068 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_14068]:
                                revert with 0, 'Transfer to customer failed.'
                            _14162 = mem[448]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_14162))
                            call address(_14162).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14292 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _14324 = mem[_14292]
                            require _1098 <= mem[_14292]
                            if mem[_14292] - _1098 != mem[128]:
                                revert with 0, 'StablePay target balance is not valid.'
                            _14465 = mem[64]
                            mem[mem[64] + 32] = 'contract.name'
                            mem[mem[64] + 45] = 'Settings'
                            _14466 = mem[64]
                            mem[mem[64]] = 21
                            mem[64] = mem[64] + 53
                            _14468 = mem[_14466]
                            s = _14466 + 32
                            t = _14465 + 53
                            idx = mem[_14466]
                            while idx >= 32:
                                mem[t] = mem[s]
                                _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[_14465 + floor32(mem[_14466]) + 53] = mem[_14466 + -(mem[_14466] % 32) + floor32(mem[_14466]) + 64 len mem[_14466] % 32] or Mask(8 * -(mem[_14466] % 32) + 32, -(8 * -(mem[_14466] % 32) + 32) + 256, mem[_14465 + floor32(mem[_14466]) + 53])
                            _18396 = sha3(mem[_14465 + 53 len _14468])
                            mem[_14465 + 57] = sha3(mem[_14465 + 53 len _14468])
                            require ext_code.size(_storageAddress)
                            call _storageAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args _18396
                            mem[_14465 + 53] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x6ea8bc10 with:
                                 gas gas_remaining wei
                            mem[_14465 + ceil32(return_data.size) + 53] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _14465 + (2 * ceil32(return_data.size)) + 53
                            require return_data.size >= 32
                            if not ext_call.return_data[30 len 2]:
                                _18753 = mem[128]
                                _18754 = mem[448]
                                mem[_14465 + (2 * ceil32(return_data.size)) + 85] = 'contract.name'
                                mem[_14465 + (2 * ceil32(return_data.size)) + 98] = 'Vault'
                                mem[_14465 + (2 * ceil32(return_data.size)) + 53] = 18
                                mem[64] = _14465 + (2 * ceil32(return_data.size)) + 103
                                s = _14465 + (2 * ceil32(return_data.size)) + 85
                                t = mem[64]
                                idx = mem[_14465 + (2 * ceil32(return_data.size)) + 53]
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_14465 + (2 * ceil32(return_data.size)) + 53])] = mem[_14465 + (2 * ceil32(return_data.size)) + floor32(mem[_14465 + (2 * ceil32(return_data.size)) + 53]) + -(mem[_14465 + (2 * ceil32(return_data.size)) + 53] % 32) + 117 len mem[_14465 + (2 * ceil32(return_data.size)) + 53] % 32] or Mask(8 * -(mem[_14465 + (2 * ceil32(return_data.size)) + 53] % 32) + 32, -(8 * -(mem[_14465 + (2 * ceil32(return_data.size)) + 53] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_14465 + (2 * ceil32(return_data.size)) + 53])])
                                _22992 = sha3(mem[mem[64] len _14465 + (2 * ceil32(return_data.size)) + -mem[64] + 121])
                                mem[mem[64] + 4] = sha3(mem[mem[64] len _14465 + (2 * ceil32(return_data.size)) + -mem[64] + 121])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22992
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23201 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64] + 4] = mem[_23201 + 12 len 20]
                                mem[mem[64] + 36] = 0
                                require ext_code.size(address(_18754))
                                call address(_18754).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23585 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_23585]:
                                    revert with 0, 'Tokens transfer to vault was invalid.'
                                _24057 = mem[448]
                                mem[mem[64] + 4] = mem[492 len 20]
                                mem[mem[64] + 36] = _18753
                                require ext_code.size(address(_24057))
                                call address(_24057).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _18753
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _24353 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_24353]:
                                    revert with 0, 'Transfer to merchant failed.'
                                _24918 = mem[416]
                                _24919 = mem[448]
                                mem[mem[64]] = mem[492 len 20]
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = address(_24918)
                                mem[mem[64] + 96] = address(_24919)
                                mem[mem[64] + 128] = _14324 - _1098
                                emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24918), address(_24919), _14324 - _1098, this.address
                            else:
                                require ext_call.return_data[30 len 2]
                                require 10^14 * ext_call.return_data[30 len 2] / ext_call.return_data[30 len 2] == 10^14
                                _18691 = mem[128]
                                if not 10^14 * ext_call.return_data[30 len 2] / 100:
                                    _18937 = mem[128]
                                    _18938 = mem[448]
                                    mem[_14465 + (2 * ceil32(return_data.size)) + 85] = 'contract.name'
                                    mem[_14465 + (2 * ceil32(return_data.size)) + 98] = 'Vault'
                                    mem[_14465 + (2 * ceil32(return_data.size)) + 53] = 18
                                    mem[64] = _14465 + (2 * ceil32(return_data.size)) + 103
                                    s = _14465 + (2 * ceil32(return_data.size)) + 85
                                    t = mem[64]
                                    idx = mem[_14465 + (2 * ceil32(return_data.size)) + 53]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_14465 + (2 * ceil32(return_data.size)) + 53])] = mem[_14465 + (2 * ceil32(return_data.size)) + floor32(mem[_14465 + (2 * ceil32(return_data.size)) + 53]) + -(mem[_14465 + (2 * ceil32(return_data.size)) + 53] % 32) + 117 len mem[_14465 + (2 * ceil32(return_data.size)) + 53] % 32] or Mask(8 * -(mem[_14465 + (2 * ceil32(return_data.size)) + 53] % 32) + 32, -(8 * -(mem[_14465 + (2 * ceil32(return_data.size)) + 53] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_14465 + (2 * ceil32(return_data.size)) + 53])])
                                    _22986 = sha3(mem[mem[64] len _14465 + (2 * ceil32(return_data.size)) + -mem[64] + 121])
                                    mem[mem[64] + 4] = sha3(mem[mem[64] len _14465 + (2 * ceil32(return_data.size)) + -mem[64] + 121])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22986
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23200 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = mem[_23200 + 12 len 20]
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(address(_18938))
                                    call address(_18938).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23584 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_23584]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _24054 = mem[448]
                                    mem[mem[64] + 4] = mem[492 len 20]
                                    mem[mem[64] + 36] = _18937
                                    require ext_code.size(address(_24054))
                                    call address(_24054).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _18937
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24352 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_24352]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24914 = mem[416]
                                    _24915 = mem[448]
                                    mem[mem[64]] = mem[492 len 20]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = address(_24914)
                                    mem[mem[64] + 96] = address(_24915)
                                    mem[mem[64] + 128] = _14324 - _1098
                                    emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24914), address(_24915), _14324 - _1098, this.address
                                else:
                                    require 10^14 * ext_call.return_data[30 len 2] / 100
                                    require 10^14 * ext_call.return_data[30 len 2] / 100 * mem[128] / 10^14 * ext_call.return_data[30 len 2] / 100 == mem[128]
                                    _19309 = mem[128]
                                    _19310 = mem[448]
                                    mem[_14465 + (2 * ceil32(return_data.size)) + 85] = 'contract.name'
                                    mem[_14465 + (2 * ceil32(return_data.size)) + 98] = 'Vault'
                                    mem[_14465 + (2 * ceil32(return_data.size)) + 53] = 18
                                    mem[64] = _14465 + (2 * ceil32(return_data.size)) + 103
                                    s = _14465 + (2 * ceil32(return_data.size)) + 85
                                    t = mem[64]
                                    idx = mem[_14465 + (2 * ceil32(return_data.size)) + 53]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_14465 + (2 * ceil32(return_data.size)) + 53])] = mem[_14465 + (2 * ceil32(return_data.size)) + floor32(mem[_14465 + (2 * ceil32(return_data.size)) + 53]) + -(mem[_14465 + (2 * ceil32(return_data.size)) + 53] % 32) + 117 len mem[_14465 + (2 * ceil32(return_data.size)) + 53] % 32] or Mask(8 * -(mem[_14465 + (2 * ceil32(return_data.size)) + 53] % 32) + 32, -(8 * -(mem[_14465 + (2 * ceil32(return_data.size)) + 53] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_14465 + (2 * ceil32(return_data.size)) + 53])])
                                    _22980 = sha3(mem[mem[64] len _14465 + (2 * ceil32(return_data.size)) + -mem[64] + 121])
                                    mem[mem[64] + 4] = sha3(mem[mem[64] len _14465 + (2 * ceil32(return_data.size)) + -mem[64] + 121])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22980
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23199 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = mem[_23199 + 12 len 20]
                                    mem[mem[64] + 36] = 10^14 * uint16(ext_call.return_data[0]) / 100 * _18691 / 100 / 10^14
                                    require ext_code.size(address(_19310))
                                    call address(_19310).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 10^14 * uint16(ext_call.return_data[0]) / 100 * _18691 / 100 / 10^14
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23583 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_23583]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _24051 = mem[448]
                                    mem[mem[64] + 4] = mem[492 len 20]
                                    mem[mem[64] + 36] = _19309 - (10^14 * uint16(ext_call.return_data[0]) / 100 * _18691 / 100 / 10^14)
                                    require ext_code.size(address(_24051))
                                    call address(_24051).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _19309 - (10^14 * uint16(ext_call.return_data[0]) / 100 * _18691 / 100 / 10^14)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24351 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_24351]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24910 = mem[416]
                                    _24911 = mem[448]
                                    mem[mem[64]] = mem[492 len 20]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = address(_24910)
                                    mem[mem[64] + 96] = address(_24911)
                                    mem[mem[64] + 128] = _14324 - _1098
                                    emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24910), address(_24911), _14324 - _1098, this.address
                        else:
                            mem[_1102 + ceil32(_1140) + ceil32(_1188) + ceil32(_4940) + _8988 + 836] = 0
                            require ext_code.size(address(_1101))
                            call address(_1101).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1102 + ceil32(_1140) + ceil32(_1188) + ceil32(_4940) + ceil32(_8988) + -mem[64] + 832]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13668 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_13668]:
                                _13810 = mem[_1058]
                                mem[mem[64]] = _736
                                emit 0x6230081d: _736, this.address, address(_13810)
                                require idx + 1 >= idx
                                _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = _736
                                idx = idx + 1
                                continue 
                            _13811 = mem[416]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_13811))
                            call address(_13811).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13924 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _13956 = mem[_13924]
                            _14019 = mem[416]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _13956
                            require ext_code.size(address(_14019))
                            call address(_14019).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _13956
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14084 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_14084]:
                                revert with 0, 'Transfer to customer failed.'
                            _14210 = mem[448]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_14210))
                            call address(_14210).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14308 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _14340 = mem[_14308]
                            require _1098 <= mem[_14308]
                            if mem[_14308] - _1098 != mem[128]:
                                revert with 0, 'StablePay target balance is not valid.'
                            _14529 = mem[64]
                            mem[mem[64] + 32] = 'contract.name'
                            mem[mem[64] + 45] = 'Settings'
                            _14530 = mem[64]
                            mem[mem[64]] = 21
                            mem[64] = mem[64] + 53
                            _14532 = mem[_14530]
                            s = _14530 + 32
                            t = _14529 + 53
                            idx = mem[_14530]
                            while idx >= 32:
                                mem[t] = mem[s]
                                _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[_14529 + floor32(mem[_14530]) + 53] = mem[_14530 + -(mem[_14530] % 32) + floor32(mem[_14530]) + 64 len mem[_14530] % 32] or Mask(8 * -(mem[_14530] % 32) + 32, -(8 * -(mem[_14530] % 32) + 32) + 256, mem[_14529 + floor32(mem[_14530]) + 53])
                            _18402 = sha3(mem[_14529 + 53 len _14532])
                            mem[_14529 + 57] = sha3(mem[_14529 + 53 len _14532])
                            require ext_code.size(_storageAddress)
                            call _storageAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args _18402
                            mem[_14529 + 53] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x6ea8bc10 with:
                                 gas gas_remaining wei
                            mem[_14529 + ceil32(return_data.size) + 53] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _14529 + (2 * ceil32(return_data.size)) + 53
                            require return_data.size >= 32
                            if not ext_call.return_data[30 len 2]:
                                _18755 = mem[128]
                                _18756 = mem[448]
                                mem[_14529 + (2 * ceil32(return_data.size)) + 85] = 'contract.name'
                                mem[_14529 + (2 * ceil32(return_data.size)) + 98] = 'Vault'
                                mem[_14529 + (2 * ceil32(return_data.size)) + 53] = 18
                                mem[64] = _14529 + (2 * ceil32(return_data.size)) + 103
                                s = _14529 + (2 * ceil32(return_data.size)) + 85
                                t = mem[64]
                                idx = mem[_14529 + (2 * ceil32(return_data.size)) + 53]
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_14529 + (2 * ceil32(return_data.size)) + 53])] = mem[_14529 + (2 * ceil32(return_data.size)) + floor32(mem[_14529 + (2 * ceil32(return_data.size)) + 53]) + -(mem[_14529 + (2 * ceil32(return_data.size)) + 53] % 32) + 117 len mem[_14529 + (2 * ceil32(return_data.size)) + 53] % 32] or Mask(8 * -(mem[_14529 + (2 * ceil32(return_data.size)) + 53] % 32) + 32, -(8 * -(mem[_14529 + (2 * ceil32(return_data.size)) + 53] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_14529 + (2 * ceil32(return_data.size)) + 53])])
                                _23010 = sha3(mem[mem[64] len _14529 + (2 * ceil32(return_data.size)) + -mem[64] + 121])
                                mem[mem[64] + 4] = sha3(mem[mem[64] len _14529 + (2 * ceil32(return_data.size)) + -mem[64] + 121])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _23010
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23204 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64] + 4] = mem[_23204 + 12 len 20]
                                mem[mem[64] + 36] = 0
                                require ext_code.size(address(_18756))
                                call address(_18756).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23588 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_23588]:
                                    revert with 0, 'Tokens transfer to vault was invalid.'
                                _24066 = mem[448]
                                mem[mem[64] + 4] = mem[492 len 20]
                                mem[mem[64] + 36] = _18755
                                require ext_code.size(address(_24066))
                                call address(_24066).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _18755
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _24356 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_24356]:
                                    revert with 0, 'Transfer to merchant failed.'
                                _24930 = mem[416]
                                _24931 = mem[448]
                                mem[mem[64]] = mem[492 len 20]
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = address(_24930)
                                mem[mem[64] + 96] = address(_24931)
                                mem[mem[64] + 128] = _14340 - _1098
                                emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24930), address(_24931), _14340 - _1098, this.address
                            else:
                                require ext_call.return_data[30 len 2]
                                require 10^14 * ext_call.return_data[30 len 2] / ext_call.return_data[30 len 2] == 10^14
                                _18692 = mem[128]
                                if not 10^14 * ext_call.return_data[30 len 2] / 100:
                                    _18943 = mem[128]
                                    _18944 = mem[448]
                                    mem[_14529 + (2 * ceil32(return_data.size)) + 85] = 'contract.name'
                                    mem[_14529 + (2 * ceil32(return_data.size)) + 98] = 'Vault'
                                    mem[_14529 + (2 * ceil32(return_data.size)) + 53] = 18
                                    mem[64] = _14529 + (2 * ceil32(return_data.size)) + 103
                                    s = _14529 + (2 * ceil32(return_data.size)) + 85
                                    t = mem[64]
                                    idx = mem[_14529 + (2 * ceil32(return_data.size)) + 53]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_14529 + (2 * ceil32(return_data.size)) + 53])] = mem[_14529 + (2 * ceil32(return_data.size)) + floor32(mem[_14529 + (2 * ceil32(return_data.size)) + 53]) + -(mem[_14529 + (2 * ceil32(return_data.size)) + 53] % 32) + 117 len mem[_14529 + (2 * ceil32(return_data.size)) + 53] % 32] or Mask(8 * -(mem[_14529 + (2 * ceil32(return_data.size)) + 53] % 32) + 32, -(8 * -(mem[_14529 + (2 * ceil32(return_data.size)) + 53] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_14529 + (2 * ceil32(return_data.size)) + 53])])
                                    _23004 = sha3(mem[mem[64] len _14529 + (2 * ceil32(return_data.size)) + -mem[64] + 121])
                                    mem[mem[64] + 4] = sha3(mem[mem[64] len _14529 + (2 * ceil32(return_data.size)) + -mem[64] + 121])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _23004
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23203 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = mem[_23203 + 12 len 20]
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(address(_18944))
                                    call address(_18944).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23587 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_23587]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _24063 = mem[448]
                                    mem[mem[64] + 4] = mem[492 len 20]
                                    mem[mem[64] + 36] = _18943
                                    require ext_code.size(address(_24063))
                                    call address(_24063).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _18943
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24355 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_24355]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24926 = mem[416]
                                    _24927 = mem[448]
                                    mem[mem[64]] = mem[492 len 20]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = address(_24926)
                                    mem[mem[64] + 96] = address(_24927)
                                    mem[mem[64] + 128] = _14340 - _1098
                                    emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24926), address(_24927), _14340 - _1098, this.address
                                else:
                                    require 10^14 * ext_call.return_data[30 len 2] / 100
                                    require 10^14 * ext_call.return_data[30 len 2] / 100 * mem[128] / 10^14 * ext_call.return_data[30 len 2] / 100 == mem[128]
                                    _19321 = mem[128]
                                    _19322 = mem[448]
                                    mem[_14529 + (2 * ceil32(return_data.size)) + 85] = 'contract.name'
                                    mem[_14529 + (2 * ceil32(return_data.size)) + 98] = 'Vault'
                                    mem[_14529 + (2 * ceil32(return_data.size)) + 53] = 18
                                    mem[64] = _14529 + (2 * ceil32(return_data.size)) + 103
                                    s = _14529 + (2 * ceil32(return_data.size)) + 85
                                    t = mem[64]
                                    idx = mem[_14529 + (2 * ceil32(return_data.size)) + 53]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_14529 + (2 * ceil32(return_data.size)) + 53])] = mem[_14529 + (2 * ceil32(return_data.size)) + floor32(mem[_14529 + (2 * ceil32(return_data.size)) + 53]) + -(mem[_14529 + (2 * ceil32(return_data.size)) + 53] % 32) + 117 len mem[_14529 + (2 * ceil32(return_data.size)) + 53] % 32] or Mask(8 * -(mem[_14529 + (2 * ceil32(return_data.size)) + 53] % 32) + 32, -(8 * -(mem[_14529 + (2 * ceil32(return_data.size)) + 53] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_14529 + (2 * ceil32(return_data.size)) + 53])])
                                    _22998 = sha3(mem[mem[64] len _14529 + (2 * ceil32(return_data.size)) + -mem[64] + 121])
                                    mem[mem[64] + 4] = sha3(mem[mem[64] len _14529 + (2 * ceil32(return_data.size)) + -mem[64] + 121])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22998
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23202 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = mem[_23202 + 12 len 20]
                                    mem[mem[64] + 36] = 10^14 * uint16(ext_call.return_data[0]) / 100 * _18692 / 100 / 10^14
                                    require ext_code.size(address(_19322))
                                    call address(_19322).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 10^14 * uint16(ext_call.return_data[0]) / 100 * _18692 / 100 / 10^14
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23586 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_23586]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _24060 = mem[448]
                                    mem[mem[64] + 4] = mem[492 len 20]
                                    mem[mem[64] + 36] = _19321 - (10^14 * uint16(ext_call.return_data[0]) / 100 * _18692 / 100 / 10^14)
                                    require ext_code.size(address(_24060))
                                    call address(_24060).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _19321 - (10^14 * uint16(ext_call.return_data[0]) / 100 * _18692 / 100 / 10^14)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24354 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_24354]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24922 = mem[416]
                                    _24923 = mem[448]
                                    mem[mem[64]] = mem[492 len 20]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = address(_24922)
                                    mem[mem[64] + 96] = address(_24923)
                                    mem[mem[64] + 128] = _14340 - _1098
                                    emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24922), address(_24923), _14340 - _1098, this.address
                    else:
                        _8964 = mem[736]
                        mem[_1102 + 676] = ceil32(_1140) + ceil32(_1188) + ceil32(_4940) + 768
                        _8980 = mem[_8964]
                        mem[_1102 + ceil32(_1140) + ceil32(_1188) + ceil32(_4940) + 804] = mem[_8964]
                        s = 0
                        while s < _8980:
                            mem[_1102 + ceil32(_1140) + ceil32(_1188) + ceil32(_4940) + s + 836] = mem[_8964 + s + 32]
                            _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                            s = s + 32
                            continue 
                        if ceil32(_8980) <= _8980:
                            require ext_code.size(address(_1101))
                            call address(_1101).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1102 + ceil32(_1140) + ceil32(_1188) + ceil32(_4940) + ceil32(_8980) + -mem[64] + 832]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13651 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_13651]:
                                _13743 = mem[_1058]
                                mem[mem[64]] = _736
                                emit 0x6230081d: _736, this.address, address(_13743)
                                require idx + 1 >= idx
                                _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = _736
                                idx = idx + 1
                                continue 
                            _13744 = mem[416]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_13744))
                            call address(_13744).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13905 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _13939 = mem[_13905]
                            _13985 = mem[416]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _13939
                            require ext_code.size(address(_13985))
                            call address(_13985).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _13939
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14067 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_14067]:
                                revert with 0, 'Transfer to customer failed.'
                            _14159 = mem[448]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_14159))
                            call address(_14159).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14291 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _14323 = mem[_14291]
                            require _1098 <= mem[_14291]
                            if mem[_14291] - _1098 != mem[128]:
                                revert with 0, 'StablePay target balance is not valid.'
                            _14461 = mem[64]
                            mem[mem[64] + 32] = 'contract.name'
                            mem[mem[64] + 45] = 'Settings'
                            _14462 = mem[64]
                            mem[mem[64]] = 21
                            mem[64] = mem[64] + 53
                            _14464 = mem[_14462]
                            s = _14462 + 32
                            t = mem[64]
                            idx = mem[_14462]
                            while idx >= 32:
                                mem[t] = mem[s]
                                _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[mem[64] + floor32(mem[_14462])] = mem[_14462 + floor32(mem[_14462]) + -(mem[_14462] % 32) + 64 len mem[_14462] % 32] or Mask(8 * -(mem[_14462] % 32) + 32, -(8 * -(mem[_14462] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_14462])])
                            _18384 = sha3(mem[mem[64] len _14464 + _14461 + -mem[64] + 53])
                            mem[mem[64] + 4] = sha3(mem[mem[64] len _14464 + _14461 + -mem[64] + 53])
                            require ext_code.size(_storageAddress)
                            call _storageAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args _18384
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18465 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(mem[_18465 + 12 len 20])
                            call mem[_18465 + 12 len 20].0x6ea8bc10 with:
                                 gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18593 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _18625 = mem[_18593]
                            if not mem[_18593 + 30 len 2]:
                                _18749 = mem[128]
                                _18750 = mem[448]
                                _18927 = mem[64]
                                mem[mem[64] + 32] = 'contract.name'
                                mem[mem[64] + 45] = 'Vault'
                                _18928 = mem[64]
                                mem[mem[64]] = 18
                                mem[64] = mem[64] + 50
                                _18930 = mem[_18928]
                                s = _18928 + 32
                                t = mem[64]
                                idx = mem[_18928]
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_18928])] = mem[_18928 + floor32(mem[_18928]) + -(mem[_18928] % 32) + 64 len mem[_18928] % 32] or Mask(8 * -(mem[_18928] % 32) + 32, -(8 * -(mem[_18928] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_18928])])
                                _22956 = sha3(mem[mem[64] len _18930 + _18927 + -mem[64] + 50])
                                mem[mem[64] + 4] = sha3(mem[mem[64] len _18930 + _18927 + -mem[64] + 50])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22956
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23195 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64] + 4] = mem[_23195 + 12 len 20]
                                mem[mem[64] + 36] = 0
                                require ext_code.size(address(_18750))
                                call address(_18750).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23579 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_23579]:
                                    revert with 0, 'Tokens transfer to vault was invalid.'
                                _24039 = mem[448]
                                mem[mem[64] + 4] = mem[492 len 20]
                                mem[mem[64] + 36] = _18749
                                require ext_code.size(address(_24039))
                                call address(_24039).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _18749
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _24347 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_24347]:
                                    revert with 0, 'Transfer to merchant failed.'
                                _24894 = mem[416]
                                _24895 = mem[448]
                                mem[mem[64]] = mem[492 len 20]
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = address(_24894)
                                mem[mem[64] + 96] = address(_24895)
                                mem[mem[64] + 128] = _14323 - _1098
                                emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24894), address(_24895), _14323 - _1098, this.address
                            else:
                                require mem[_18593 + 30 len 2]
                                require 10^14 * mem[_18593 + 30 len 2] / mem[_18593 + 30 len 2] == 10^14
                                _18689 = mem[128]
                                if not 10^14 * mem[_18593 + 30 len 2] / 100:
                                    _18925 = mem[128]
                                    _18926 = mem[448]
                                    _19287 = mem[64]
                                    mem[mem[64] + 32] = 'contract.name'
                                    mem[mem[64] + 45] = 'Vault'
                                    _19288 = mem[64]
                                    mem[mem[64]] = 18
                                    mem[64] = mem[64] + 50
                                    _19290 = mem[_19288]
                                    s = _19288 + 32
                                    t = _19287 + 50
                                    idx = mem[_19288]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[_19287 + floor32(mem[_19288]) + 50] = mem[_19288 + -(mem[_19288] % 32) + floor32(mem[_19288]) + 64 len mem[_19288] % 32] or Mask(8 * -(mem[_19288] % 32) + 32, -(8 * -(mem[_19288] % 32) + 32) + 256, mem[_19287 + floor32(mem[_19288]) + 50])
                                    _22950 = sha3(mem[_19287 + 50 len _19290])
                                    mem[_19287 + 54] = sha3(mem[_19287 + 50 len _19290])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22950
                                    mem[_19287 + 50] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _19287 + ceil32(return_data.size) + 50
                                    require return_data.size >= 32
                                    mem[_19287 + ceil32(return_data.size) + 54] = address(ext_call.return_data[0])
                                    mem[_19287 + ceil32(return_data.size) + 86] = 0
                                    require ext_code.size(address(_18926))
                                    call address(_18926).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), 0
                                    mem[_19287 + ceil32(return_data.size) + 50] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _19287 + (2 * ceil32(return_data.size)) + 50
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _24036 = mem[448]
                                    _24037 = mem[480]
                                    mem[_19287 + (2 * ceil32(return_data.size)) + 54] = mem[492 len 20]
                                    mem[_19287 + (2 * ceil32(return_data.size)) + 86] = _18925
                                    require ext_code.size(address(_24036))
                                    call address(_24036).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(_24037), _18925
                                    mem[_19287 + (2 * ceil32(return_data.size)) + 50] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _19287 + (4 * ceil32(return_data.size)) + 50
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24890 = mem[416]
                                    _24891 = mem[448]
                                    mem[_19287 + (4 * ceil32(return_data.size)) + 50] = mem[492 len 20]
                                    mem[_19287 + (4 * ceil32(return_data.size)) + 82] = msg.sender
                                    mem[_19287 + (4 * ceil32(return_data.size)) + 114] = address(_24890)
                                    mem[_19287 + (4 * ceil32(return_data.size)) + 146] = address(_24891)
                                    mem[_19287 + (4 * ceil32(return_data.size)) + 178] = _14323 - _1098
                                    emit 0xdcc9f547: mem[_19287 + (4 * ceil32(return_data.size)) + 50], msg.sender, address(_24890), address(_24891), _14323 - _1098, this.address
                                else:
                                    require 10^14 * mem[_18593 + 30 len 2] / 100
                                    require 10^14 * mem[_18593 + 30 len 2] / 100 * mem[128] / 10^14 * mem[_18593 + 30 len 2] / 100 == mem[128]
                                    _19285 = mem[128]
                                    _19286 = mem[448]
                                    _19613 = mem[64]
                                    mem[mem[64] + 32] = 'contract.name'
                                    mem[mem[64] + 45] = 'Vault'
                                    _19614 = mem[64]
                                    mem[mem[64]] = 18
                                    mem[64] = mem[64] + 50
                                    _19616 = mem[_19614]
                                    s = _19614 + 32
                                    t = mem[64]
                                    idx = mem[_19614]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_19614])] = mem[_19614 + floor32(mem[_19614]) + -(mem[_19614] % 32) + 64 len mem[_19614] % 32] or Mask(8 * -(mem[_19614] % 32) + 32, -(8 * -(mem[_19614] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_19614])])
                                    _22944 = sha3(mem[mem[64] len _19616 + _19613 + -mem[64] + 50])
                                    mem[mem[64] + 4] = sha3(mem[mem[64] len _19616 + _19613 + -mem[64] + 50])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22944
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23193 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = mem[_23193 + 12 len 20]
                                    mem[mem[64] + 36] = 10^14 * uint16(_18625) / 100 * _18689 / 100 / 10^14
                                    require ext_code.size(address(_19286))
                                    call address(_19286).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 10^14 * uint16(_18625) / 100 * _18689 / 100 / 10^14
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23577 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_23577]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _24033 = mem[448]
                                    mem[mem[64] + 4] = mem[492 len 20]
                                    mem[mem[64] + 36] = _19285 - (10^14 * uint16(_18625) / 100 * _18689 / 100 / 10^14)
                                    require ext_code.size(address(_24033))
                                    call address(_24033).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _19285 - (10^14 * uint16(_18625) / 100 * _18689 / 100 / 10^14)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24345 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_24345]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24886 = mem[416]
                                    _24887 = mem[448]
                                    mem[mem[64]] = mem[492 len 20]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = address(_24886)
                                    mem[mem[64] + 96] = address(_24887)
                                    mem[mem[64] + 128] = _14323 - _1098
                                    emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24886), address(_24887), _14323 - _1098, this.address
                        else:
                            mem[_1102 + ceil32(_1140) + ceil32(_1188) + ceil32(_4940) + _8980 + 836] = 0
                            require ext_code.size(address(_1101))
                            call address(_1101).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1102 + ceil32(_1140) + ceil32(_1188) + ceil32(_4940) + ceil32(_8980) + -mem[64] + 832]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13667 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_13667]:
                                _13806 = mem[_1058]
                                mem[mem[64]] = _736
                                emit 0x6230081d: _736, this.address, address(_13806)
                                require idx + 1 >= idx
                                _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = _736
                                idx = idx + 1
                                continue 
                            _13807 = mem[416]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_13807))
                            call address(_13807).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13923 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _13955 = mem[_13923]
                            _14017 = mem[416]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _13955
                            require ext_code.size(address(_14017))
                            call address(_14017).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _13955
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14083 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_14083]:
                                revert with 0, 'Transfer to customer failed.'
                            _14207 = mem[448]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_14207))
                            call address(_14207).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14307 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _14339 = mem[_14307]
                            require _1098 <= mem[_14307]
                            if mem[_14307] - _1098 != mem[128]:
                                revert with 0, 'StablePay target balance is not valid.'
                            _14525 = mem[64]
                            mem[mem[64] + 32] = 'contract.name'
                            mem[mem[64] + 45] = 'Settings'
                            _14526 = mem[64]
                            mem[mem[64]] = 21
                            mem[64] = mem[64] + 53
                            _14528 = mem[_14526]
                            s = _14526 + 32
                            t = mem[64]
                            idx = mem[_14526]
                            while idx >= 32:
                                mem[t] = mem[s]
                                _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[mem[64] + floor32(mem[_14526])] = mem[_14526 + floor32(mem[_14526]) + -(mem[_14526] % 32) + 64 len mem[_14526] % 32] or Mask(8 * -(mem[_14526] % 32) + 32, -(8 * -(mem[_14526] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_14526])])
                            _18390 = sha3(mem[mem[64] len _14528 + _14525 + -mem[64] + 53])
                            mem[mem[64] + 4] = sha3(mem[mem[64] len _14528 + _14525 + -mem[64] + 53])
                            require ext_code.size(_storageAddress)
                            call _storageAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args _18390
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18466 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require ext_code.size(mem[_18466 + 12 len 20])
                            call mem[_18466 + 12 len 20].0x6ea8bc10 with:
                                 gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18594 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _18626 = mem[_18594]
                            if not mem[_18594 + 30 len 2]:
                                _18751 = mem[128]
                                _18752 = mem[448]
                                _18933 = mem[64]
                                mem[mem[64] + 32] = 'contract.name'
                                mem[mem[64] + 45] = 'Vault'
                                _18934 = mem[64]
                                mem[mem[64]] = 18
                                mem[64] = mem[64] + 50
                                _18936 = mem[_18934]
                                s = _18934 + 32
                                t = mem[64]
                                idx = mem[_18934]
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_18934])] = mem[_18934 + floor32(mem[_18934]) + -(mem[_18934] % 32) + 64 len mem[_18934] % 32] or Mask(8 * -(mem[_18934] % 32) + 32, -(8 * -(mem[_18934] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_18934])])
                                _22974 = sha3(mem[mem[64] len _18936 + _18933 + -mem[64] + 50])
                                mem[mem[64] + 4] = sha3(mem[mem[64] len _18936 + _18933 + -mem[64] + 50])
                                require ext_code.size(_storageAddress)
                                call _storageAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args _22974
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23198 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64] + 4] = mem[_23198 + 12 len 20]
                                mem[mem[64] + 36] = 0
                                require ext_code.size(address(_18752))
                                call address(_18752).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23582 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_23582]:
                                    revert with 0, 'Tokens transfer to vault was invalid.'
                                _24048 = mem[448]
                                mem[mem[64] + 4] = mem[492 len 20]
                                mem[mem[64] + 36] = _18751
                                require ext_code.size(address(_24048))
                                call address(_24048).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _18751
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _24350 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if not mem[_24350]:
                                    revert with 0, 'Transfer to merchant failed.'
                                _24906 = mem[416]
                                _24907 = mem[448]
                                mem[mem[64]] = mem[492 len 20]
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = address(_24906)
                                mem[mem[64] + 96] = address(_24907)
                                mem[mem[64] + 128] = _14339 - _1098
                                emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24906), address(_24907), _14339 - _1098, this.address
                            else:
                                require mem[_18594 + 30 len 2]
                                require 10^14 * mem[_18594 + 30 len 2] / mem[_18594 + 30 len 2] == 10^14
                                _18690 = mem[128]
                                if not 10^14 * mem[_18594 + 30 len 2] / 100:
                                    _18931 = mem[128]
                                    _18932 = mem[448]
                                    _19299 = mem[64]
                                    mem[mem[64] + 32] = 'contract.name'
                                    mem[mem[64] + 45] = 'Vault'
                                    _19300 = mem[64]
                                    mem[mem[64]] = 18
                                    mem[64] = mem[64] + 50
                                    _19302 = mem[_19300]
                                    s = _19300 + 32
                                    t = mem[64]
                                    idx = mem[_19300]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_19300])] = mem[_19300 + floor32(mem[_19300]) + -(mem[_19300] % 32) + 64 len mem[_19300] % 32] or Mask(8 * -(mem[_19300] % 32) + 32, -(8 * -(mem[_19300] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_19300])])
                                    _22968 = sha3(mem[mem[64] len _19302 + _19299 + -mem[64] + 50])
                                    mem[mem[64] + 4] = sha3(mem[mem[64] len _19302 + _19299 + -mem[64] + 50])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22968
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23197 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = mem[_23197 + 12 len 20]
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(address(_18932))
                                    call address(_18932).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23581 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_23581]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _24045 = mem[448]
                                    mem[mem[64] + 4] = mem[492 len 20]
                                    mem[mem[64] + 36] = _18931
                                    require ext_code.size(address(_24045))
                                    call address(_24045).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _18931
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24349 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_24349]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24902 = mem[416]
                                    _24903 = mem[448]
                                    mem[mem[64]] = mem[492 len 20]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = address(_24902)
                                    mem[mem[64] + 96] = address(_24903)
                                    mem[mem[64] + 128] = _14339 - _1098
                                    emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24902), address(_24903), _14339 - _1098, this.address
                                else:
                                    require 10^14 * mem[_18594 + 30 len 2] / 100
                                    require 10^14 * mem[_18594 + 30 len 2] / 100 * mem[128] / 10^14 * mem[_18594 + 30 len 2] / 100 == mem[128]
                                    _19297 = mem[128]
                                    _19298 = mem[448]
                                    _19623 = mem[64]
                                    mem[mem[64] + 32] = 'contract.name'
                                    mem[mem[64] + 45] = 'Vault'
                                    _19624 = mem[64]
                                    mem[mem[64]] = 18
                                    mem[64] = mem[64] + 50
                                    _19626 = mem[_19624]
                                    s = _19624 + 32
                                    t = mem[64]
                                    idx = mem[_19624]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        _730 = mem[ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_19624])] = mem[_19624 + floor32(mem[_19624]) + -(mem[_19624] % 32) + 64 len mem[_19624] % 32] or Mask(8 * -(mem[_19624] % 32) + 32, -(8 * -(mem[_19624] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_19624])])
                                    _22962 = sha3(mem[mem[64] len _19626 + _19623 + -mem[64] + 50])
                                    mem[mem[64] + 4] = sha3(mem[mem[64] len _19626 + _19623 + -mem[64] + 50])
                                    require ext_code.size(_storageAddress)
                                    call _storageAddress.0x21f8a721 with:
                                         gas gas_remaining wei
                                        args _22962
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23196 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = mem[_23196 + 12 len 20]
                                    mem[mem[64] + 36] = 10^14 * uint16(_18626) / 100 * _18690 / 100 / 10^14
                                    require ext_code.size(address(_19298))
                                    call address(_19298).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 10^14 * uint16(_18626) / 100 * _18690 / 100 / 10^14
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23580 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_23580]:
                                        revert with 0, 'Tokens transfer to vault was invalid.'
                                    _24042 = mem[448]
                                    mem[mem[64] + 4] = mem[492 len 20]
                                    mem[mem[64] + 36] = _19297 - (10^14 * uint16(_18626) / 100 * _18690 / 100 / 10^14)
                                    require ext_code.size(address(_24042))
                                    call address(_24042).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _19297 - (10^14 * uint16(_18626) / 100 * _18690 / 100 / 10^14)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24348 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if not mem[_24348]:
                                        revert with 0, 'Transfer to merchant failed.'
                                    _24898 = mem[416]
                                    _24899 = mem[448]
                                    mem[mem[64]] = mem[492 len 20]
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = address(_24898)
                                    mem[mem[64] + 96] = address(_24899)
                                    mem[mem[64] + 128] = _14339 - _1098
                                    emit 0xdcc9f547: mem[mem[64]], msg.sender, address(_24898), address(_24899), _14339 - _1098, this.address
            emit 0xc195856d: _736, this.address, mem[_1058 + 12 len 20]
            Mask(248, 0, stor0.field_8) = 0
            return 1
    revert with 0, 'Swapping token could not be processed.'
}



}
