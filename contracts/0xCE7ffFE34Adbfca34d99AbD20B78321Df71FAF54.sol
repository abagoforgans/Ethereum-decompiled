contract main {


// =======================  Init code  ======================


const _fallback = code.data[24 len 3200]




// =====================  Runtime code  =====================


array of struct stor0;
array of struct sub_ffb0f3b9;
uint256 carsCount;

function carsCount() {
    return carsCount
}

function sub_f980c0bc(?) {
    return sub_f980c0bc[arg1][0 len sub_f980c0bc[arg1].length]
}

function sub_ffb0f3b9(?) {
    require uint8(sub_ffb0f3b9[arg1][arg2].field_0) <= 3
    mem[224] = sub_ffb0f3b9[arg1][arg2][1].field_0
    idx = 224
    s = 0
    while sub_ffb0f3b9[arg1][arg2][1].length + 224 > idx + 32:
        mem[idx + 32] = sub_ffb0f3b9[arg1][arg2][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return uint8(sub_ffb0f3b9[arg1][arg2].field_0), 
           Array(len=sub_ffb0f3b9[arg1][arg2][1].length, data=mem[224 len sub_ffb0f3b9[arg1][arg2][1].length + (floor32(sub_ffb0f3b9[arg1][arg2][1].length - 1) + -sub_ffb0f3b9[arg1][arg2][1].length + 32 % 32)]),
           sub_ffb0f3b9[arg1][arg2].field_512
}

function _fallback() payable {
    revert 
}

function sub_2f4e81c6(?) {
    mem[224] = stor0[arg1].field_0
    idx = 224
    s = 0
    while stor0[arg1].length + 224 > idx + 32:
        mem[idx + 32] = stor0[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor0[arg1].length, data=mem[224 len stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32)]), 
           stor0[arg1].field_256,
           stor0[arg1].field_512
}

function sub_57660608(?) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    idx = 0
    while idx < sub_f980c0bc.length:
        mem[0] = 2
        mem[mem[64] + 32] = 0
        _127 = mem[64]
        mem[mem[64]] = 0x46bdca9a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 64
        mem[mem[64] + 68] = sub_f980c0bc[idx].length
        mem[0] = idx + sha3(2)
        mem[mem[64] + 100] = sub_f980c0bc[idx]
        s = mem[64] + 100
        t = sha3(mem[0])
        while _127 + sub_f980c0bc[idx].length + 100 > s + 32:
            mem[s + 32] = sub_ffb0f3b9[t].field_0
            s = s + 32
            t = t + 1
            continue 
        mem[_127 + 36] = sub_f980c0bc[idx].length + (s + -_127 + -sub_f980c0bc[idx].length - 68 % 32) + 96
        mem[_127 + sub_f980c0bc[idx].length + (s + -_127 + -sub_f980c0bc[idx].length - 68 % 32) + 100] = mem[96]
        mem[_127 + sub_f980c0bc[idx].length + (s + -_127 + -sub_f980c0bc[idx].length - 68 % 32) + 132 len mem[96]] = mem[128 len mem[96]]
        if not mem[96] % 32:
            require ext_code.size(0x7b91bbe1565289d7f0fb2968d2d45c87a18fb58f)
            delegate 0x7b91bbe1565289d7f0fb2968d2d45c87a18fb58f.mem[mem[64] len 4] with:
                 gas gas_remaining - 50 wei
                args mem[mem[64] + 4 len mem[96] + _127 + sub_f980c0bc[idx].length + (s + -_127 + -sub_f980c0bc[idx].length - 68 % 32) + -mem[64] + 128]
            mem[mem[64]] = delegate.return_data[0]
            require delegate.return_code
            if not delegate.return_data[0]:
                idx = idx + 1
                continue 
            _258 = mem[64]
            mem[mem[64]] = 0xcfb5192800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[96]
            _260 = mem[96]
            mem[mem[64] + 68 len mem[96]] = mem[128 len mem[96]]
            if not mem[96] % 32:
                require ext_code.size(0x7b91bbe1565289d7f0fb2968d2d45c87a18fb58f)
                delegate 0x7b91bbe1565289d7f0fb2968d2d45c87a18fb58f.0xcfb51928 with:
                     gas gas_remaining - 50 wei
                    args 32, mem[mem[64] + 36 len mem[96] + 32]
            else:
                mem[floor32(mem[96]) + mem[64] + 68] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 100 len mem[96] % 32]
                require ext_code.size(0x7b91bbe1565289d7f0fb2968d2d45c87a18fb58f)
                delegate 0x7b91bbe1565289d7f0fb2968d2d45c87a18fb58f.0xcfb51928 with:
                     gas gas_remaining - 50 wei
                    args mem[mem[64] + 4 len floor32(_260) + _258 + -mem[64] + 96]
        else:
            mem[floor32(mem[96]) + _127 + sub_f980c0bc[idx].length + (s + -_127 + -sub_f980c0bc[idx].length - 68 % 32) + 132] = mem[floor32(mem[96]) + _127 + sub_f980c0bc[idx].length + (s + -_127 + -sub_f980c0bc[idx].length - 68 % 32) + -(mem[96] % 32) + 164 len mem[96] % 32]
            require ext_code.size(0x7b91bbe1565289d7f0fb2968d2d45c87a18fb58f)
            delegate 0x7b91bbe1565289d7f0fb2968d2d45c87a18fb58f.mem[mem[64] len 4] with:
                 gas gas_remaining - 50 wei
                args mem[mem[64] + 4 len floor32(mem[96]) + _127 + sub_f980c0bc[idx].length + (s + -_127 + -sub_f980c0bc[idx].length - 68 % 32) + -mem[64] + 160]
            mem[mem[64]] = delegate.return_data[0]
            require delegate.return_code
            if not delegate.return_data[0]:
                idx = idx + 1
                continue 
            _264 = mem[64]
            mem[mem[64]] = 0xcfb5192800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[96]
            _266 = mem[96]
            mem[mem[64] + 68 len mem[96]] = mem[128 len mem[96]]
            if not mem[96] % 32:
                require ext_code.size(0x7b91bbe1565289d7f0fb2968d2d45c87a18fb58f)
                delegate 0x7b91bbe1565289d7f0fb2968d2d45c87a18fb58f.0xcfb51928 with:
                     gas gas_remaining - 50 wei
                    args 32, mem[mem[64] + 36 len mem[96] + 32]
            else:
                mem[floor32(mem[96]) + mem[64] + 68] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 100 len mem[96] % 32]
                require ext_code.size(0x7b91bbe1565289d7f0fb2968d2d45c87a18fb58f)
                delegate 0x7b91bbe1565289d7f0fb2968d2d45c87a18fb58f.0xcfb51928 with:
                     gas gas_remaining - 50 wei
                    args mem[mem[64] + 4 len floor32(_266) + _264 + -mem[64] + 96]
        require delegate.return_code
        return delegate.return_data[0]
    return 0
}

function sub_cda2dd16(?) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 160
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    idx = 0
    while idx < sub_f980c0bc.length:
        mem[0] = 2
        mem[mem[64] + 32] = 0
        _527 = mem[64]
        mem[mem[64]] = 0x46bdca9a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 64
        mem[mem[64] + 68] = sub_f980c0bc[idx].length
        mem[0] = idx + sha3(2)
        mem[mem[64] + 100] = sub_f980c0bc[idx]
        s = mem[64] + 100
        t = sha3(mem[0])
        while _527 + sub_f980c0bc[idx].length + 100 > s + 32:
            mem[s + 32] = sub_ffb0f3b9[t].field_0
            s = s + 32
            t = t + 1
            continue 
        mem[_527 + 36] = sub_f980c0bc[idx].length + (s + -_527 + -sub_f980c0bc[idx].length - 68 % 32) + 96
        mem[_527 + sub_f980c0bc[idx].length + (s + -_527 + -sub_f980c0bc[idx].length - 68 % 32) + 100] = mem[ceil32(arg1.length) + 128]
        _1066 = mem[ceil32(arg1.length) + 128]
        mem[_527 + sub_f980c0bc[idx].length + (s + -_527 + -sub_f980c0bc[idx].length - 68 % 32) + 132 len mem[ceil32(arg1.length) + 128]] = mem[ceil32(arg1.length) + 160 len mem[ceil32(arg1.length) + 128]]
        if not _1066 % 32:
            require ext_code.size(0x7b91bbe1565289d7f0fb2968d2d45c87a18fb58f)
            delegate 0x7b91bbe1565289d7f0fb2968d2d45c87a18fb58f.mem[mem[64] len 4] with:
                 gas gas_remaining - 50 wei
                args mem[mem[64] + 4 len _1066 + _527 + sub_f980c0bc[idx].length + (s + -_527 + -sub_f980c0bc[idx].length - 68 % 32) + -mem[64] + 128]
        else:
            mem[floor32(_1066) + _527 + sub_f980c0bc[idx].length + (s + -_527 + -sub_f980c0bc[idx].length - 68 % 32) + 132] = mem[floor32(_1066) + _527 + sub_f980c0bc[idx].length + (s + -_527 + -sub_f980c0bc[idx].length - 68 % 32) + -(_1066 % 32) + 164 len _1066 % 32]
            require ext_code.size(0x7b91bbe1565289d7f0fb2968d2d45c87a18fb58f)
            delegate 0x7b91bbe1565289d7f0fb2968d2d45c87a18fb58f.mem[mem[64] len 4] with:
                 gas gas_remaining - 50 wei
                args mem[mem[64] + 4 len floor32(_1066) + _527 + sub_f980c0bc[idx].length + (s + -_527 + -sub_f980c0bc[idx].length - 68 % 32) + -mem[64] + 160]
        mem[mem[64]] = delegate.return_data[0]
        require delegate.return_code
        if not delegate.return_data[0]:
            idx = idx + 1
            continue 
        return 0
    mem[mem[64] + 32] = 0
    mem[mem[64]] = 0xcfb5192800000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[ceil32(arg1.length) + 128]
    _531 = mem[ceil32(arg1.length) + 128]
    mem[mem[64] + 68 len mem[ceil32(arg1.length) + 128]] = mem[ceil32(arg1.length) + 160 len mem[ceil32(arg1.length) + 128]]
    if not _531 % 32:
        require ext_code.size(0x7b91bbe1565289d7f0fb2968d2d45c87a18fb58f)
        delegate 0x7b91bbe1565289d7f0fb2968d2d45c87a18fb58f.0xcfb51928 with:
             gas gas_remaining - 50 wei
            args 32, mem[mem[64] + 36 len _531 + 32]
        mem[mem[64]] = delegate.return_data[0]
        require delegate.return_code
        _543 = mem[64]
        mem[64] = mem[64] + 96
        mem[_543] = 96
        mem[_543 + 32] = delegate.return_data[0]
        mem[_543 + 64] = 0
    else:
        mem[floor32(_531) + mem[64] + 68] = mem[floor32(_531) + mem[64] + -(_531 % 32) + 100 len _531 % 32]
        require ext_code.size(0x7b91bbe1565289d7f0fb2968d2d45c87a18fb58f)
        delegate 0x7b91bbe1565289d7f0fb2968d2d45c87a18fb58f.0xcfb51928 with:
             gas gas_remaining - 50 wei
            args 32, mem[mem[64] + 36 len floor32(_531) + 64]
        mem[mem[64]] = delegate.return_data[0]
        require delegate.return_code
        _554 = mem[64]
        mem[64] = mem[64] + 96
        mem[_554] = 96
        mem[_554 + 32] = delegate.return_data[0]
        mem[_554 + 64] = 0
    mem[32] = 0
    stor0[delegate.return_data[0]].field_0 = (2 * mem[96]) + 1
    s = 0
    idx = 128
    while mem[96] + 128 > idx:
        stor0[delegate.return_data[0]][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if stor0[delegate.return_data[0]].length + 31 / 32 > Mask(251, 0, mem[96] + 31) >> 5:
        stor0[delegate.return_data[0]][Mask(251, 0, mem[96] + 31) >> 5].field_0 = 0
        idx = (Mask(251, 0, mem[96] + 31) >> 5) + 1
        while stor0[delegate.return_data[0]].length + 31 / 32 > idx:
            stor0[delegate.return_data[0]][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor0[delegate.return_data[0]].field_256 = delegate.return_data[0]
    stor0[delegate.return_data[0]].field_512 = 0
    sub_f980c0bc.length++
    if not sub_f980c0bc.length <= sub_f980c0bc.length + 1:
        mem[0] = 2
        idx = sub_f980c0bc.length + 1
        while sha3(2) + sub_f980c0bc.length > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                if sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > sha3(idx + sha3(mem[0])):
                    stor[sha3(idx + sha3(mem[0]))] = 0
                    s = sha3(idx + sha3(mem[0])) + 1
                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
            idx = idx + 1
            continue 
    mem[0] = sub_f980c0bc.length + sha3(2)
    sub_f980c0bc[sub_f980c0bc.length] = (2 * mem[ceil32(arg1.length) + 128]) + 1
    s = 0
    idx = ceil32(arg1.length) + 160
    while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > idx:
        sub_f980c0bc[sub_f980c0bc.length + s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if sub_f980c0bc[sub_f980c0bc.length].length + 31 / 32 > Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5:
        stor[('array', ('stor', ('length', ('name', 'sub_f980c0bc', 2))), ('name', 'sub_f980c0bc', 2)) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)] = 0
        idx = (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5) + 1
        while sub_f980c0bc[sub_f980c0bc.length].length + 31 / 32 > idx:
            sub_f980c0bc[sub_f980c0bc.length + idx] = 0
            idx = idx + 1
            continue 
    carsCount++
    return 1
}

function sub_4a14e036(?) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[64] = ceil32(arg1.length) + ceil32(arg3.length) + 160
    mem[ceil32(arg1.length) + 128] = arg3.length
    mem[ceil32(arg1.length) + 160 len arg3.length] = arg3[all]
    idx = 0
    while idx < sub_f980c0bc.length:
        mem[0] = 2
        mem[mem[64] + 32] = 0
        _320 = mem[64]
        mem[mem[64]] = 0x46bdca9a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 64
        mem[mem[64] + 68] = sub_f980c0bc[idx].length
        mem[0] = idx + sha3(2)
        mem[mem[64] + 100] = sub_f980c0bc[idx]
        s = mem[64] + 100
        t = sha3(mem[0])
        while _320 + sub_f980c0bc[idx].length + 100 > s + 32:
            mem[s + 32] = sub_ffb0f3b9[t].field_0
            s = s + 32
            t = t + 1
            continue 
        mem[_320 + 36] = sub_f980c0bc[idx].length + (s + -_320 + -sub_f980c0bc[idx].length - 68 % 32) + 96
        mem[_320 + sub_f980c0bc[idx].length + (s + -_320 + -sub_f980c0bc[idx].length - 68 % 32) + 100] = mem[96]
        mem[_320 + sub_f980c0bc[idx].length + (s + -_320 + -sub_f980c0bc[idx].length - 68 % 32) + 132 len mem[96]] = mem[128 len mem[96]]
        if not mem[96] % 32:
            require ext_code.size(0x7b91bbe1565289d7f0fb2968d2d45c87a18fb58f)
            delegate 0x7b91bbe1565289d7f0fb2968d2d45c87a18fb58f.mem[mem[64] len 4] with:
                 gas gas_remaining - 50 wei
                args mem[mem[64] + 4 len mem[96] + _320 + sub_f980c0bc[idx].length + (s + -_320 + -sub_f980c0bc[idx].length - 68 % 32) + -mem[64] + 128]
            mem[mem[64]] = delegate.return_data[0]
            require delegate.return_code
            if not delegate.return_data[0]:
                idx = idx + 1
                continue 
            _723 = mem[64]
            mem[mem[64]] = 0xcfb5192800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[96]
            _725 = mem[96]
            mem[mem[64] + 68 len mem[96]] = mem[128 len mem[96]]
            if not mem[96] % 32:
                require ext_code.size(0x7b91bbe1565289d7f0fb2968d2d45c87a18fb58f)
                delegate 0x7b91bbe1565289d7f0fb2968d2d45c87a18fb58f.0xcfb51928 with:
                     gas gas_remaining - 50 wei
                    args 32, mem[mem[64] + 36 len mem[96] + 32]
                mem[mem[64]] = delegate.return_data[0]
                require delegate.return_code
                _735 = mem[64]
                mem[0] = delegate.return_data[0]
                mem[32] = 0
                mem[64] = mem[64] + 96
                require arg2 <= 3
                mem[_735] = arg2
                mem[_735 + 32] = ceil32(arg1.length) + 128
                mem[_735 + 64] = arg4
            else:
                mem[floor32(mem[96]) + mem[64] + 68] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 100 len mem[96] % 32]
                require ext_code.size(0x7b91bbe1565289d7f0fb2968d2d45c87a18fb58f)
                delegate 0x7b91bbe1565289d7f0fb2968d2d45c87a18fb58f.0xcfb51928 with:
                     gas gas_remaining - 50 wei
                    args mem[mem[64] + 4 len floor32(_725) + _723 + -mem[64] + 96]
                mem[mem[64]] = delegate.return_data[0]
                require delegate.return_code
                _745 = mem[64]
                mem[0] = delegate.return_data[0]
                mem[32] = 0
                mem[64] = mem[64] + 96
                require arg2 <= 3
                mem[_745] = arg2
                mem[_745 + 32] = ceil32(arg1.length) + 128
                mem[_745 + 64] = arg4
        else:
            mem[floor32(mem[96]) + _320 + sub_f980c0bc[idx].length + (s + -_320 + -sub_f980c0bc[idx].length - 68 % 32) + 132] = mem[floor32(mem[96]) + _320 + sub_f980c0bc[idx].length + (s + -_320 + -sub_f980c0bc[idx].length - 68 % 32) + -(mem[96] % 32) + 164 len mem[96] % 32]
            require ext_code.size(0x7b91bbe1565289d7f0fb2968d2d45c87a18fb58f)
            delegate 0x7b91bbe1565289d7f0fb2968d2d45c87a18fb58f.mem[mem[64] len 4] with:
                 gas gas_remaining - 50 wei
                args mem[mem[64] + 4 len floor32(mem[96]) + _320 + sub_f980c0bc[idx].length + (s + -_320 + -sub_f980c0bc[idx].length - 68 % 32) + -mem[64] + 160]
            mem[mem[64]] = delegate.return_data[0]
            require delegate.return_code
            if not delegate.return_data[0]:
                idx = idx + 1
                continue 
            _729 = mem[64]
            mem[mem[64]] = 0xcfb5192800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[96]
            _731 = mem[96]
            mem[mem[64] + 68 len mem[96]] = mem[128 len mem[96]]
            if not mem[96] % 32:
                require ext_code.size(0x7b91bbe1565289d7f0fb2968d2d45c87a18fb58f)
                delegate 0x7b91bbe1565289d7f0fb2968d2d45c87a18fb58f.0xcfb51928 with:
                     gas gas_remaining - 50 wei
                    args 32, mem[mem[64] + 36 len mem[96] + 32]
                mem[mem[64]] = delegate.return_data[0]
                require delegate.return_code
                _748 = mem[64]
                mem[0] = delegate.return_data[0]
                mem[32] = 0
                mem[64] = mem[64] + 96
                require arg2 <= 3
                mem[_748] = arg2
                mem[_748 + 32] = ceil32(arg1.length) + 128
                mem[_748 + 64] = arg4
            else:
                mem[floor32(mem[96]) + mem[64] + 68] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 100 len mem[96] % 32]
                require ext_code.size(0x7b91bbe1565289d7f0fb2968d2d45c87a18fb58f)
                delegate 0x7b91bbe1565289d7f0fb2968d2d45c87a18fb58f.0xcfb51928 with:
                     gas gas_remaining - 50 wei
                    args mem[mem[64] + 4 len floor32(_731) + _729 + -mem[64] + 96]
                mem[mem[64]] = delegate.return_data[0]
                require delegate.return_code
                _764 = mem[64]
                mem[0] = delegate.return_data[0]
                mem[32] = 0
                mem[64] = mem[64] + 96
                require arg2 <= 3
                mem[_764] = arg2
                mem[_764 + 32] = ceil32(arg1.length) + 128
                mem[_764 + 64] = arg4
        stor0[delegate.return_data[0]].field_512++
        mem[32] = sha3(delegate.return_data[0], 1)
        uint8(sub_ffb0f3b9[delegate.return_data[0]][stor0[delegate.return_data[0]].field_512].field_0) = uint8(arg2)
        mem[0] = sha3(stor0[delegate.return_data[0]].field_512, sha3(delegate.return_data[0], 1)) + 1
        sub_ffb0f3b9[delegate.return_data[0]][stor0[delegate.return_data[0]].field_512].field_256 = (2 * mem[ceil32(arg1.length) + 128]) + 1
        s = sha3(sha3(stor0[delegate.return_data[0]].field_512, sha3(delegate.return_data[0], 1)) + 1)
        idx = ceil32(arg1.length) + 160
        while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > idx:
            stor[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = sha3(sha3(stor0[delegate.return_data[0]].field_512, sha3(delegate.return_data[0], 1)) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
        while sha3(sha3(stor0[delegate.return_data[0]].field_512, sha3(delegate.return_data[0], 1)) + 1) + (sub_ffb0f3b9[delegate.return_data[0]][stor0[delegate.return_data[0]].field_512][1].length + 31 / 32) > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
        sub_ffb0f3b9[delegate.return_data[0]][stor0[delegate.return_data[0]].field_512].field_512 = arg4
        return 1
    return 0
}



}
