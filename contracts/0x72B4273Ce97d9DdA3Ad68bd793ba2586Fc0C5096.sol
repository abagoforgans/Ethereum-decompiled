contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 6539]




// =====================  Runtime code  =====================


#
#  - sub_51760769(?)
#  - sub_66a2eaff(?)
#
array of uint256 stor1;
array of struct stor10;
array of struct stor2;
array of uint256 stor3;
array of uint256 stor7;
array of uint256 stor8;
array of uint256 stor9;

function _fallback() payable {
    revert 
}

function sub_47eaae48(?) payable {
    require uint8(stor10[arg1].field_0) <= 5
    require uint8(stor10[arg1].field_0) == 1
    uint8(stor10[arg1].field_0) = 3
    stor9[arg1] = block.number
}

function sub_b14efa81(?) payable {
    require uint8(stor10[arg1].field_0) <= 5
    require uint8(stor10[arg1].field_0) == 1
    require arg2 <= 5
    require arg2 <= 5
    if arg2 != 2:
        require arg2 == 3
    uint8(stor10[arg1].field_0) = arg2
    stor9[arg1] = block.number
}

function sub_5d9abc4e(?) payable {
    require uint8(stor10[arg1].field_0) <= 5
    if uint8(stor10[arg1].field_0) != 1:
        require uint8(stor10[arg1].field_0) <= 5
        if uint8(stor10[arg1].field_0) != 5:
            return 1
        else:
            return 0
    else:
        return 0
}

function bestSum(uint8[] arg1) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if mem[(32 * idx) + 159 len 1] <= 21:
            require idx < arg1.length
        else:
            if 50 >= mem[(32 * idx) + 159 len 1]:
                require idx < arg1.length
        idx = idx + 1
        continue 
    return 50
}

function sub_772b36aa(?) payable {
    address(stor[arg1]) = msg.sender
    uint256(stor1[arg1]) = msg.value
    uint256(stor2[arg1].field_0) = 0
    stor7[arg1] = 0
    idx = 0
    while stor7[arg1] + 31 / 32 > idx:
        uint8(stor[idx + sha3(arg1 + 7)]) = 0
        idx = idx + 1
        continue 
    stor8[arg1] = 0
    idx = 0
    while stor8[arg1] + 31 / 32 > idx:
        uint8(stor[idx + sha3(arg1 + 8)]) = 0
        idx = idx + 1
        continue 
    stor9[arg1] = block.number
    uint8(stor10[arg1].field_0) = 0
    uint8(stor10[arg1].field_8) = 0
    Mask(240, 0, stor10[arg1].field_16) = 0
    stor3[arg1] = arg2
    require ext_code.size(0x1650d06aaf2b6b57e53f75dce6965bc19fa824)
    delegate 0x1650d06aaf2b6b57e53f75dce6965bc19fa824.0x187a4b05 with:
         gas gas_remaining - 50 wei
        args arg1 + 4, arg2
    require delegate.return_code
}

function appendArray(uint8[] arg1, uint8 arg2) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160] = 0
    mem[(32 * arg1.length) + 192] = arg1.length + 1
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg1.length
        require uint8(idx) < mem[(32 * arg1.length) + 192]
        mem[(32 * uint8(idx)) + (32 * arg1.length) + 224] = mem[(32 * uint8(idx)) + 159 len 1]
        idx = idx + 1
        continue 
    require arg1.length < mem[(32 * arg1.length) + 192]
    mem[(64 * arg1.length) + 224] = arg2
    mem[(32 * arg1.length) + (32 * arg1.length + 1) + 224] = 32
    mem[(32 * arg1.length) + (32 * arg1.length + 1) + 256] = mem[(32 * arg1.length) + 192]
    if Mask(251, 0, mem[(32 * arg1.length) + 192]):
        mem[(32 * arg1.length) + (32 * arg1.length + 1) + 288] = mem[(32 * arg1.length) + 224]
        mem[(32 * arg1.length) + (32 * arg1.length + 1) + 320 len floor32((32 * mem[(32 * arg1.length) + 192]) - 1)] = mem[(32 * arg1.length) + 256 len floor32((32 * mem[(32 * arg1.length) + 192]) - 1)]
    return 32, mem[(32 * arg1.length) + (32 * arg1.length + 1) + 256 len (32 * mem[(32 * arg1.length) + 192]) + 32]
}

function compareHands(uint8 arg1, uint8 arg2) payable {
    if arg1 > 21:
        if arg2 <= 21:
            if arg1 > 21:
                return 1
            if arg2 <= 21:
                return 2
        else:
            if arg1 >= arg2:
                if arg1 > arg2:
                    return 1
                if arg1 > 21:
                    return 1
                if arg2 <= 21:
                    return 2
    else:
        if arg2 > 21:
            if arg1 <= 21:
                if arg2 <= 21:
                    return 2
            else:
                if arg2 <= 21:
                    if arg1 > 21:
                        return 1
                    if arg2 <= 21:
                        return 2
                else:
                    if arg1 >= arg2:
                        if arg1 > arg2:
                            return 1
                        if arg1 > 21:
                            return 1
                        if arg2 <= 21:
                            return 2
        else:
            if arg1 <= arg2:
                if arg1 < arg2:
                    return 1
                if arg1 <= 21:
                    if arg2 <= 21:
                        return 2
                else:
                    if arg2 <= 21:
                        if arg1 > 21:
                            return 1
                        if arg2 <= 21:
                            return 2
                    else:
                        if arg1 >= arg2:
                            if arg1 > arg2:
                                return 1
                            if arg1 > 21:
                                return 1
                            if arg2 <= 21:
                                return 2
    return 0
}

function sub_59d3c9a9(?) payable {
    require arg2 <= 4
    uint8(stor10[arg1].field_8) = arg2
    uint8(stor10[arg1].field_0) = 5
    require uint8(stor10[arg1].field_8) <= 4
    if uint8(stor10[arg1].field_8) == 4:
        uint255(stor2[arg1].field_0) = 5 * uint256(stor1[arg1]) / 2
        bool(stor2[arg1].field_255) = 0
        if not uint8(stor10[arg1].field_16):
            if uint8(stor10[arg1].field_0) <= 5:
                if uint8(stor10[arg1].field_0) == 5:
                    Mask(240, 0, stor10[arg1].field_16) = 1
                    if uint256(stor2[arg1].field_0) <= 0:
                    call address(stor[arg1]) with:
                       value uint256(stor2[arg1].field_0) wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
    else:
        if uint8(stor10[arg1].field_8) <= 4:
            if uint8(stor10[arg1].field_8) == 3:
                bool(stor2[arg1].field_0) = 0
                uint255(stor2[arg1].field_1) = uint255(stor1[arg1])
                if not uint8(stor10[arg1].field_16):
                    if uint8(stor10[arg1].field_0) <= 5:
                        if uint8(stor10[arg1].field_0) == 5:
                            Mask(240, 0, stor10[arg1].field_16) = 1
                            if uint256(stor2[arg1].field_0) <= 0:
                            call address(stor[arg1]) with:
                               value uint256(stor2[arg1].field_0) wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
            else:
                if uint8(stor10[arg1].field_8) <= 4:
                    if uint8(stor10[arg1].field_8) != 2:
                        uint256(stor2[arg1].field_0) = 0
                    else:
                        uint256(stor2[arg1].field_0) = uint256(stor1[arg1])
                    if not uint8(stor10[arg1].field_16):
                        if uint8(stor10[arg1].field_0) <= 5:
                            if uint8(stor10[arg1].field_0) == 5:
                                Mask(240, 0, stor10[arg1].field_16) = 1
                                if uint256(stor2[arg1].field_0) <= 0:
                                call address(stor[arg1]) with:
                                   value uint256(stor2[arg1].field_0) wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
    revert 
}

function countHand(uint8[] arg1) payable {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160] = 1
    mem[64] = (32 * arg1.length) + 224
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _98 = mem[(32 * idx) + 128]
        mem[mem[64] + 32] = 0
        mem[mem[64] + 4] = uint8(_98)
        require ext_code.size(0x1650d06aaf2b6b57e53f75dce6965bc19fa824)
        delegate 0x1650d06aaf2b6b57e53f75dce6965bc19fa824.0xca949a1d with:
             gas gas_remaining - 50 wei
            args (_98 << 248)
        mem[mem[64]] = delegate.return_data[0]
        require delegate.return_code
        _109 = mem[(32 * arg1.length) + 160]
        s = 0
        t = (32 * arg1.length) + 160
        while s < _109:
            require s < mem[t]
            mem[(32 * s) + t + 32] = uint8(mem[(32 * s) + t + 32] + delegate.return_data[0])
            if uint8(delegate.return_data[0]) != 1:
                s = s + 1
                t = t
                continue 
            require s < mem[t]
            _187 = mem[(32 * s) + t + 32]
            _197 = mem[64]
            mem[64] = mem[64] + 32
            mem[_197] = 0
            _198 = mem[64]
            mem[64] = mem[64] + 32
            mem[_198] = 0
            _199 = mem[t]
            _200 = mem[64]
            if msize < mem[64]:
                mem[mem[64]] = mem[t] + 1
                mem[64] = mem[64] + (32 * _199 + 1) + 32
                _242 = mem[t]
                idx = 0
                while uint8(idx) < _242:
                    require uint8(idx) < mem[t]
                    require uint8(idx) < mem[_200]
                    mem[(32 * uint8(idx)) + _200 + 32] = mem[(32 * uint8(idx)) + t + 63 len 1]
                    idx = idx + 1
                    continue 
                require mem[t] < mem[_200]
                mem[(32 * mem[t]) + _200 + 32] = uint8(_187 + 10)
                s = s + 1
                t = _200
                continue 
            _203 = msize
            mem[msize] = mem[t] + 1
            mem[64] = _203 + (32 * _199 + 1) + 32
            _243 = mem[t]
            idx = 0
            while uint8(idx) < _243:
                require uint8(idx) < mem[t]
                require uint8(idx) < mem[_203]
                mem[(32 * uint8(idx)) + _203 + 32] = mem[(32 * uint8(idx)) + t + 63 len 1]
                idx = idx + 1
                continue 
            require mem[t] < mem[_203]
            mem[(32 * mem[t]) + _203 + 32] = uint8(_187 + 10)
            s = s + 1
            t = _203
            continue 
        s = _109
        s = delegate.return_data[0]
        idx = idx + 1
        continue 
    idx = 0
    while idx < mem[(32 * arg1.length) + 160]:
        require idx < mem[(32 * arg1.length) + 160]
        if mem[(32 * idx) + (32 * arg1.length) + 223 len 1] <= 21:
            require idx < mem[(32 * arg1.length) + 160]
        else:
            if 50 >= mem[(32 * idx) + (32 * arg1.length) + 223 len 1]:
                require idx < mem[(32 * arg1.length) + 160]
        idx = idx + 1
        continue 
    return 50
}

function sub_208f26b8(?) payable {
    if stor8[arg1] <= 2:
        mem[96] = stor8[arg1]
        if not stor8[arg1]:
            mem[(32 * stor8[arg1]) + 128] = 0
            mem[(32 * stor8[arg1]) + 160] = 1
            mem[64] = (32 * stor8[arg1]) + 224
            s = 0
            s = 0
            idx = 0
            while idx < stor8[arg1]:
                require idx < mem[96]
                _189 = mem[(32 * idx) + 128]
                mem[mem[64] + 32] = 0
                mem[mem[64] + 4] = uint8(_189)
                require ext_code.size(0x1650d06aaf2b6b57e53f75dce6965bc19fa824)
                delegate 0x1650d06aaf2b6b57e53f75dce6965bc19fa824.0xca949a1d with:
                     gas gas_remaining - 50 wei
                    args (_189 << 248)
                mem[mem[64]] = delegate.return_data[0]
                require delegate.return_code
                _203 = mem[(32 * stor8[arg1]) + 160]
                s = 0
                t = (32 * stor8[arg1]) + 160
                while s < _203:
                    require s < mem[t]
                    mem[(32 * s) + t + 32] = uint8(mem[(32 * s) + t + 32] + delegate.return_data[0])
                    if uint8(delegate.return_data[0]) != 1:
                        s = s + 1
                        t = t
                        continue 
                    require s < mem[t]
                    _380 = mem[(32 * s) + t + 32]
                    _392 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_392] = 0
                    _393 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_393] = 0
                    _394 = mem[t]
                    _395 = mem[64]
                    if msize < mem[64]:
                        mem[mem[64]] = mem[t] + 1
                        mem[64] = mem[64] + (32 * _394 + 1) + 32
                        _505 = mem[t]
                        idx = 0
                        while uint8(idx) < _505:
                            require uint8(idx) < mem[t]
                            require uint8(idx) < mem[_395]
                            mem[(32 * uint8(idx)) + _395 + 32] = mem[(32 * uint8(idx)) + t + 63 len 1]
                            idx = idx + 1
                            continue 
                        require mem[t] < mem[_395]
                        mem[(32 * mem[t]) + _395 + 32] = uint8(_380 + 10)
                        s = s + 1
                        t = _395
                        continue 
                    _400 = msize
                    mem[msize] = mem[t] + 1
                    mem[64] = _400 + (32 * _394 + 1) + 32
                    _506 = mem[t]
                    idx = 0
                    while uint8(idx) < _506:
                        require uint8(idx) < mem[t]
                        require uint8(idx) < mem[_400]
                        mem[(32 * uint8(idx)) + _400 + 32] = mem[(32 * uint8(idx)) + t + 63 len 1]
                        idx = idx + 1
                        continue 
                    require mem[t] < mem[_400]
                    mem[(32 * mem[t]) + _400 + 32] = uint8(_380 + 10)
                    s = s + 1
                    t = _400
                    continue 
                s = _203
                s = delegate.return_data[0]
                idx = idx + 1
                continue 
            idx = 0
            while idx < mem[(32 * stor8[arg1]) + 160]:
                require idx < mem[(32 * stor8[arg1]) + 160]
                if mem[(32 * idx) + (32 * stor8[arg1]) + 223 len 1] <= 21:
                    require idx < mem[(32 * stor8[arg1]) + 160]
                else:
                    if 50 >= mem[(32 * idx) + (32 * stor8[arg1]) + 223 len 1]:
                        require idx < mem[(32 * stor8[arg1]) + 160]
                idx = idx + 1
                continue 
        else:
            mem[0] = arg1 + 8
            mem[128] = uint8(stor[sha3(arg1 + 8)])
            idx = 128
            s = 0
            while (32 * stor8[arg1]) + 96 > idx:
                mem[idx + 32] = storsha3(arg1 + 8)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            mem[(32 * stor8[arg1]) + 128] = 0
            _msize = max(0, floor32((32 * stor8[arg1]) - 1))
            mem[_msize + 192] = 1
            mem[64] = (_msize + 192) + 64
            s = 0
            s = 0
            idx = 0
            while idx < stor8[arg1]:
                require idx < mem[96]
                _369 = mem[(32 * idx) + 128]
                mem[mem[64] + 32] = 0
                mem[mem[64] + 4] = uint8(_369)
                require ext_code.size(0x1650d06aaf2b6b57e53f75dce6965bc19fa824)
                delegate 0x1650d06aaf2b6b57e53f75dce6965bc19fa824.0xca949a1d with:
                     gas gas_remaining - 50 wei
                    args (_369 << 248)
                mem[mem[64]] = delegate.return_data[0]
                require delegate.return_code
                _386 = mem[_msize + 192]
                s = 0
                t = _msize + 192
                while s < _386:
                    require s < mem[t]
                    mem[(32 * s) + t + 32] = uint8(mem[(32 * s) + t + 32] + delegate.return_data[0])
                    if uint8(delegate.return_data[0]) != 1:
                        s = s + 1
                        t = t
                        continue 
                    require s < mem[t]
                    _540 = mem[(32 * s) + t + 32]
                    _546 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_546] = 0
                    _547 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_547] = 0
                    _548 = mem[t]
                    _549 = mem[64]
                    if msize < mem[64]:
                        mem[mem[64]] = mem[t] + 1
                        mem[64] = mem[64] + (32 * _548 + 1) + 32
                        _595 = mem[t]
                        idx = 0
                        while uint8(idx) < _595:
                            require uint8(idx) < mem[t]
                            require uint8(idx) < mem[_549]
                            mem[(32 * uint8(idx)) + _549 + 32] = mem[(32 * uint8(idx)) + t + 63 len 1]
                            _595 = mem[t]
                            idx = idx + 1
                            continue 
                        require mem[t] < mem[_549]
                        mem[(32 * mem[t]) + _549 + 32] = uint8(_540 + 10)
                        s = s + 1
                        t = _549
                        continue 
                    _552 = msize
                    mem[msize] = mem[t] + 1
                    mem[64] = _552 + (32 * _548 + 1) + 32
                    _596 = mem[t]
                    idx = 0
                    while uint8(idx) < _596:
                        require uint8(idx) < mem[t]
                        require uint8(idx) < mem[_552]
                        mem[(32 * uint8(idx)) + _552 + 32] = mem[(32 * uint8(idx)) + t + 63 len 1]
                        _596 = mem[t]
                        idx = idx + 1
                        continue 
                    require mem[t] < mem[_552]
                    mem[(32 * mem[t]) + _552 + 32] = uint8(_540 + 10)
                    s = s + 1
                    t = _552
                    continue 
                s = _386
                s = delegate.return_data[0]
                idx = idx + 1
                continue 
            idx = 0
            while idx < mem[_msize + 192]:
                require idx < mem[_msize + 192]
                if mem[(32 * idx) + (_msize + 192) + 63 len 1] <= 21:
                    require idx < mem[_msize + 192]
                else:
                    if 50 >= mem[(32 * idx) + (_msize + 192) + 63 len 1]:
                        require idx < mem[_msize + 192]
                idx = idx + 1
                continue 
        return 0
    else:
        return 0
}

function sub_8d010393(?) payable {
    mem[96] = stor8[arg1]
    if not stor8[arg1]:
        mem[(32 * stor8[arg1]) + 128] = 0
        mem[(32 * stor8[arg1]) + 160] = 1
        mem[64] = (32 * stor8[arg1]) + 224
        s = 0
        s = 0
        idx = 0
        while idx < stor8[arg1]:
            require idx < mem[96]
            _211 = mem[(32 * idx) + 128]
            mem[mem[64] + 32] = 0
            mem[mem[64] + 4] = uint8(_211)
            require ext_code.size(0x1650d06aaf2b6b57e53f75dce6965bc19fa824)
            delegate 0x1650d06aaf2b6b57e53f75dce6965bc19fa824.0xca949a1d with:
                 gas gas_remaining - 50 wei
                args (_211 << 248)
            mem[mem[64]] = delegate.return_data[0]
            require delegate.return_code
            _225 = mem[(32 * stor8[arg1]) + 160]
            s = 0
            t = (32 * stor8[arg1]) + 160
            while s < _225:
                require s < mem[t]
                mem[(32 * s) + t + 32] = uint8(mem[(32 * s) + t + 32] + delegate.return_data[0])
                if uint8(delegate.return_data[0]) != 1:
                    s = s + 1
                    t = t
                    continue 
                require s < mem[t]
                _426 = mem[(32 * s) + t + 32]
                _438 = mem[64]
                mem[64] = mem[64] + 32
                mem[_438] = 0
                _439 = mem[64]
                mem[64] = mem[64] + 32
                mem[_439] = 0
                _440 = mem[t]
                _441 = mem[64]
                if msize < mem[64]:
                    mem[mem[64]] = mem[t] + 1
                    mem[64] = mem[64] + (32 * _440 + 1) + 32
                    _575 = mem[t]
                    idx = 0
                    while uint8(idx) < _575:
                        require uint8(idx) < mem[t]
                        require uint8(idx) < mem[_441]
                        mem[(32 * uint8(idx)) + _441 + 32] = mem[(32 * uint8(idx)) + t + 63 len 1]
                        idx = idx + 1
                        continue 
                    require mem[t] < mem[_441]
                    mem[(32 * mem[t]) + _441 + 32] = uint8(_426 + 10)
                    s = s + 1
                    t = _441
                    continue 
                _446 = msize
                mem[msize] = mem[t] + 1
                mem[64] = _446 + (32 * _440 + 1) + 32
                _576 = mem[t]
                idx = 0
                while uint8(idx) < _576:
                    require uint8(idx) < mem[t]
                    require uint8(idx) < mem[_446]
                    mem[(32 * uint8(idx)) + _446 + 32] = mem[(32 * uint8(idx)) + t + 63 len 1]
                    idx = idx + 1
                    continue 
                require mem[t] < mem[_446]
                mem[(32 * mem[t]) + _446 + 32] = uint8(_426 + 10)
                s = s + 1
                t = _446
                continue 
            s = _225
            s = delegate.return_data[0]
            idx = idx + 1
            continue 
        idx = 0
        while idx < mem[(32 * stor8[arg1]) + 160]:
            require idx < mem[(32 * stor8[arg1]) + 160]
            if mem[(32 * idx) + (32 * stor8[arg1]) + 223 len 1] <= 21:
                require idx < mem[(32 * stor8[arg1]) + 160]
            else:
                if 50 >= mem[(32 * idx) + (32 * stor8[arg1]) + 223 len 1]:
                    require idx < mem[(32 * stor8[arg1]) + 160]
            idx = idx + 1
            continue 
    else:
        mem[0] = arg1 + 8
        mem[128] = uint8(stor[sha3(arg1 + 8)])
        idx = 128
        s = 0
        while (32 * stor8[arg1]) + 96 > idx:
            mem[idx + 32] = storsha3(arg1 + 8)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        mem[(32 * stor8[arg1]) + 128] = 0
        _msize = max(0, floor32((32 * stor8[arg1]) - 1))
        mem[_msize + 192] = 1
        mem[64] = (_msize + 192) + 64
        s = 0
        s = 0
        idx = 0
        while idx < stor8[arg1]:
            require idx < mem[96]
            _415 = mem[(32 * idx) + 128]
            mem[mem[64] + 32] = 0
            mem[mem[64] + 4] = uint8(_415)
            require ext_code.size(0x1650d06aaf2b6b57e53f75dce6965bc19fa824)
            delegate 0x1650d06aaf2b6b57e53f75dce6965bc19fa824.0xca949a1d with:
                 gas gas_remaining - 50 wei
                args (_415 << 248)
            mem[mem[64]] = delegate.return_data[0]
            require delegate.return_code
            _432 = mem[_msize + 192]
            s = 0
            t = _msize + 192
            while s < _432:
                require s < mem[t]
                mem[(32 * s) + t + 32] = uint8(mem[(32 * s) + t + 32] + delegate.return_data[0])
                if uint8(delegate.return_data[0]) != 1:
                    s = s + 1
                    t = t
                    continue 
                require s < mem[t]
                _610 = mem[(32 * s) + t + 32]
                _616 = mem[64]
                mem[64] = mem[64] + 32
                mem[_616] = 0
                _617 = mem[64]
                mem[64] = mem[64] + 32
                mem[_617] = 0
                _618 = mem[t]
                _619 = mem[64]
                if msize < mem[64]:
                    mem[mem[64]] = mem[t] + 1
                    mem[64] = mem[64] + (32 * _618 + 1) + 32
                    _677 = mem[t]
                    idx = 0
                    while uint8(idx) < _677:
                        require uint8(idx) < mem[t]
                        require uint8(idx) < mem[_619]
                        mem[(32 * uint8(idx)) + _619 + 32] = mem[(32 * uint8(idx)) + t + 63 len 1]
                        _677 = mem[t]
                        idx = idx + 1
                        continue 
                    require mem[t] < mem[_619]
                    mem[(32 * mem[t]) + _619 + 32] = uint8(_610 + 10)
                    s = s + 1
                    t = _619
                    continue 
                _622 = msize
                mem[msize] = mem[t] + 1
                mem[64] = _622 + (32 * _618 + 1) + 32
                _678 = mem[t]
                idx = 0
                while uint8(idx) < _678:
                    require uint8(idx) < mem[t]
                    require uint8(idx) < mem[_622]
                    mem[(32 * uint8(idx)) + _622 + 32] = mem[(32 * uint8(idx)) + t + 63 len 1]
                    _678 = mem[t]
                    idx = idx + 1
                    continue 
                require mem[t] < mem[_622]
                mem[(32 * mem[t]) + _622 + 32] = uint8(_610 + 10)
                s = s + 1
                t = _622
                continue 
            s = _432
            s = delegate.return_data[0]
            idx = idx + 1
            continue 
        idx = 0
        while idx < mem[_msize + 192]:
            require idx < mem[_msize + 192]
            if mem[(32 * idx) + (_msize + 192) + 63 len 1] <= 21:
                require idx < mem[_msize + 192]
            else:
                if 50 >= mem[(32 * idx) + (_msize + 192) + 63 len 1]:
                    require idx < mem[_msize + 192]
            idx = idx + 1
            continue 
    uint8(stor10[arg1].field_8) = 1
    uint8(stor10[arg1].field_0) = 5
    require uint8(stor10[arg1].field_8) <= 4
    if uint8(stor10[arg1].field_8) == 4:
        uint255(stor2[arg1].field_0) = 5 * uint256(stor1[arg1]) / 2
        bool(stor2[arg1].field_255) = 0
        if not uint8(stor10[arg1].field_16):
            if uint8(stor10[arg1].field_0) <= 5:
                if uint8(stor10[arg1].field_0) == 5:
                    Mask(240, 0, stor10[arg1].field_16) = 1
                    if uint256(stor2[arg1].field_0) <= 0:
                    call address(stor[arg1]) with:
                       value uint256(stor2[arg1].field_0) wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
    else:
        if uint8(stor10[arg1].field_8) <= 4:
            if uint8(stor10[arg1].field_8) == 3:
                bool(stor2[arg1].field_0) = 0
                uint255(stor2[arg1].field_1) = uint255(stor1[arg1])
                if not uint8(stor10[arg1].field_16):
                    if uint8(stor10[arg1].field_0) <= 5:
                        if uint8(stor10[arg1].field_0) == 5:
                            Mask(240, 0, stor10[arg1].field_16) = 1
                            if uint256(stor2[arg1].field_0) <= 0:
                            call address(stor[arg1]) with:
                               value uint256(stor2[arg1].field_0) wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
            else:
                if uint8(stor10[arg1].field_8) <= 4:
                    if uint8(stor10[arg1].field_8) != 2:
                        uint256(stor2[arg1].field_0) = 0
                    else:
                        uint256(stor2[arg1].field_0) = uint256(stor1[arg1])
                    if not uint8(stor10[arg1].field_16):
                        if uint8(stor10[arg1].field_0) <= 5:
                            if uint8(stor10[arg1].field_0) == 5:
                                Mask(240, 0, stor10[arg1].field_16) = 1
                                if uint256(stor2[arg1].field_0) <= 0:
                                call address(stor[arg1]) with:
                                   value uint256(stor2[arg1].field_0) wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
    revert 
}



}
