contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 5162]




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

function sub_b14efa81(?) payable {
    require uint8(stor10[arg1].field_0) <= 4
    require uint8(stor10[arg1].field_0) == 1
    require arg2 <= 4
    require arg2 <= 4
    if arg2 != 2:
        require arg2 == 3
    uint8(stor10[arg1].field_0) = arg2
    stor9[arg1] = block.number
}

function sub_5d9abc4e(?) payable {
    require uint8(stor10[arg1].field_0) <= 4
    if uint8(stor10[arg1].field_0) != 1:
        require uint8(stor10[arg1].field_0) <= 4
        if uint8(stor10[arg1].field_0) != 4:
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
    address(stor[arg1].field_0) = msg.sender
    uint256(stor1[arg1]) = msg.value
    uint256(stor2[arg1].field_0) = 0
    stor7[arg1] = 0
    idx = 0
    while stor7[arg1] + 31 / 32 > idx:
        uint8(stor[idx + sha3(arg1 + 7)].field_0) = 0
        idx = idx + 1
        continue 
    stor8[arg1] = 0
    if sha3(arg1 + 8) + (stor8[arg1] + 31 / 32) > sha3(arg1 + 8):
        uint8(stor[sha3(arg1 + 8)].field_0) = 0
        idx = 1
        while stor8[arg1] + 31 / 32 > idx:
            uint8(stor[idx + sha3(arg1 + 8)].field_0) = 0
            idx = idx + 1
            continue 
    stor9[arg1] = block.number
    stor10[arg1].field_0 % 16777216 = 0
    stor3[arg1] = arg2
    require ext_code.size(0x8afe99cee656b11f514816db8b61ae9324a9f111)
    delegate 0x8afe99cee656b11f514816db8b61ae9324a9f111.0x187a4b05 with:
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
        mem[(32 * arg1.length) + (32 * uint8(idx)) + 224] = mem[(32 * uint8(idx)) + 159 len 1]
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
    uint8(stor10[arg1].field_0) = 4
    require 0 or uint8(stor10[arg1].field_8) <= 4
    if 0 or uint8(stor10[arg1].field_8) == 4:
        uint255(stor2[arg1].field_0) = 5 * uint256(stor1[arg1]) / 2
        bool(stor2[arg1].field_255) = 0
        if not uint8(stor10[arg1].field_16):
            if uint8(stor10[arg1].field_0) <= 4:
                if uint8(stor10[arg1].field_0) == 4:
                    uint8(stor10[arg1].field_16) = 1
                    if uint256(stor2[arg1].field_0) <= 0:
                    call address(stor[arg1].field_0) with:
                       value uint256(stor2[arg1].field_0) wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
    else:
        if 0 or uint8(stor10[arg1].field_8) <= 4:
            if 0 or uint8(stor10[arg1].field_8) == 3:
                bool(stor2[arg1].field_0) = 0
                uint255(stor2[arg1].field_1) = uint255(stor1[arg1])
                if not uint8(stor10[arg1].field_16):
                    if uint8(stor10[arg1].field_0) <= 4:
                        if uint8(stor10[arg1].field_0) == 4:
                            uint8(stor10[arg1].field_16) = 1
                            if uint256(stor2[arg1].field_0) <= 0:
                            call address(stor[arg1].field_0) with:
                               value uint256(stor2[arg1].field_0) wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
            else:
                if 0 or uint8(stor10[arg1].field_8) <= 4:
                    if 0 or uint8(stor10[arg1].field_8) != 2:
                        uint256(stor2[arg1].field_0) = 0
                    else:
                        uint256(stor2[arg1].field_0) = uint256(stor1[arg1])
                    if not uint8(stor10[arg1].field_16):
                        if uint8(stor10[arg1].field_0) <= 4:
                            if uint8(stor10[arg1].field_0) == 4:
                                uint8(stor10[arg1].field_16) = 1
                                if uint256(stor2[arg1].field_0) <= 0:
                                call address(stor[arg1].field_0) with:
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
        require ext_code.size(0x8afe99cee656b11f514816db8b61ae9324a9f111)
        delegate 0x8afe99cee656b11f514816db8b61ae9324a9f111.0xca949a1d with:
             gas gas_remaining - 50 wei
            args (_98 << 248)
        mem[mem[64]] = delegate.return_data[0]
        require delegate.return_code
        _111 = mem[(32 * arg1.length) + 160]
        s = 0
        t = (32 * arg1.length) + 160
        while s < _111:
            require s < mem[t]
            mem[t + (32 * s) + 32] = uint8(delegate.return_data[0] + mem[t + (32 * s) + 32])
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
                    mem[_200 + (32 * uint8(idx)) + 32] = mem[(32 * uint8(idx)) + t + 63 len 1]
                    idx = idx + 1
                    continue 
                require mem[t] < mem[_200]
                mem[_200 + (32 * mem[t]) + 32] = uint8(_187 + 10)
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
                mem[_203 + (32 * uint8(idx)) + 32] = mem[(32 * uint8(idx)) + t + 63 len 1]
                idx = idx + 1
                continue 
            require mem[t] < mem[_203]
            mem[_203 + (32 * mem[t]) + 32] = uint8(_187 + 10)
            s = s + 1
            t = _203
            continue 
        s = _111
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
            _291 = mem[(32 * idx) + 128]
            mem[mem[64] + 32] = 0
            mem[mem[64] + 4] = uint8(_291)
            require ext_code.size(0x8afe99cee656b11f514816db8b61ae9324a9f111)
            delegate 0x8afe99cee656b11f514816db8b61ae9324a9f111.0xca949a1d with:
                 gas gas_remaining - 50 wei
                args (_291 << 248)
            mem[mem[64]] = delegate.return_data[0]
            require delegate.return_code
            _317 = mem[(32 * stor8[arg1]) + 160]
            s = 0
            t = (32 * stor8[arg1]) + 160
            while s < _317:
                require s < mem[t]
                mem[t + (32 * s) + 32] = uint8(delegate.return_data[0] + mem[t + (32 * s) + 32])
                if uint8(delegate.return_data[0]) != 1:
                    s = s + 1
                    t = t
                    continue 
                require s < mem[t]
                _586 = mem[(32 * s) + t + 32]
                _602 = mem[64]
                mem[64] = mem[64] + 32
                mem[_602] = 0
                _603 = mem[64]
                mem[64] = mem[64] + 32
                mem[_603] = 0
                _604 = mem[t]
                _605 = mem[64]
                if msize < mem[64]:
                    mem[mem[64]] = mem[t] + 1
                    mem[64] = mem[64] + (32 * _604 + 1) + 32
                    _777 = mem[t]
                    idx = 0
                    while uint8(idx) < _777:
                        require uint8(idx) < mem[t]
                        require uint8(idx) < mem[_605]
                        mem[_605 + (32 * uint8(idx)) + 32] = mem[(32 * uint8(idx)) + t + 63 len 1]
                        idx = idx + 1
                        continue 
                    require mem[t] < mem[_605]
                    mem[_605 + (32 * mem[t]) + 32] = uint8(_586 + 10)
                    s = s + 1
                    t = _605
                    continue 
                _620 = msize
                mem[msize] = mem[t] + 1
                mem[64] = _620 + (32 * _604 + 1) + 32
                _778 = mem[t]
                idx = 0
                while uint8(idx) < _778:
                    require uint8(idx) < mem[t]
                    require uint8(idx) < mem[_620]
                    mem[_620 + (32 * uint8(idx)) + 32] = mem[(32 * uint8(idx)) + t + 63 len 1]
                    idx = idx + 1
                    continue 
                require mem[t] < mem[_620]
                mem[_620 + (32 * mem[t]) + 32] = uint8(_586 + 10)
                s = s + 1
                t = _620
                continue 
            s = _317
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
        mem[128] = uint8(stor[sha3(arg1 + 8)].field_0)
        if (32 * stor8[arg1]) + 32 <= 64:
            mem[(32 * stor8[arg1]) + 128] = 0
            mem[(32 * stor8[arg1]) + 160] = 1
            mem[64] = (32 * stor8[arg1]) + 224
            s = 0
            s = 0
            idx = 0
            while idx < stor8[arg1]:
                require idx < mem[96]
                _299 = mem[(32 * idx) + 128]
                mem[mem[64] + 32] = 0
                mem[mem[64] + 4] = uint8(_299)
                require ext_code.size(0x8afe99cee656b11f514816db8b61ae9324a9f111)
                delegate 0x8afe99cee656b11f514816db8b61ae9324a9f111.0xca949a1d with:
                     gas gas_remaining - 50 wei
                    args (_299 << 248)
                mem[mem[64]] = delegate.return_data[0]
                require delegate.return_code
                _326 = mem[(32 * stor8[arg1]) + 160]
                s = 0
                t = (32 * stor8[arg1]) + 160
                while s < _326:
                    require s < mem[t]
                    mem[t + (32 * s) + 32] = uint8(delegate.return_data[0] + mem[t + (32 * s) + 32])
                    if uint8(delegate.return_data[0]) != 1:
                        s = s + 1
                        t = t
                        continue 
                    require s < mem[t]
                    _596 = mem[(32 * s) + t + 32]
                    _614 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_614] = 0
                    _615 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_615] = 0
                    _616 = mem[t]
                    _617 = mem[64]
                    if msize < mem[64]:
                        mem[mem[64]] = mem[t] + 1
                        mem[64] = mem[64] + (32 * _616 + 1) + 32
                        _783 = mem[t]
                        idx = 0
                        while uint8(idx) < _783:
                            require uint8(idx) < mem[t]
                            require uint8(idx) < mem[_617]
                            mem[_617 + (32 * uint8(idx)) + 32] = mem[(32 * uint8(idx)) + t + 63 len 1]
                            idx = idx + 1
                            continue 
                        require mem[t] < mem[_617]
                        mem[_617 + (32 * mem[t]) + 32] = uint8(_596 + 10)
                        s = s + 1
                        t = _617
                        continue 
                    _624 = msize
                    mem[msize] = mem[t] + 1
                    mem[64] = _624 + (32 * _616 + 1) + 32
                    _784 = mem[t]
                    idx = 0
                    while uint8(idx) < _784:
                        require uint8(idx) < mem[t]
                        require uint8(idx) < mem[_624]
                        mem[_624 + (32 * uint8(idx)) + 32] = mem[(32 * uint8(idx)) + t + 63 len 1]
                        idx = idx + 1
                        continue 
                    require mem[t] < mem[_624]
                    mem[_624 + (32 * mem[t]) + 32] = uint8(_596 + 10)
                    s = s + 1
                    t = _624
                    continue 
                s = _326
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
            mem[160] = uint8(stor[sha3(arg1 + 8)].field_8)
            idx = 160
            s = 1
            while (32 * stor8[arg1]) + 96 > idx:
                mem[idx + 32] = storsha3(arg1 + 8)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            mem[(32 * stor8[arg1]) + 128] = 0
            _msize = max(64, floor32((32 * stor8[arg1]) - 33) + 64, 32 * stor8[arg1])
            mem[_msize + 160] = 1
            mem[64] = (_msize + 160) + 64
            s = 0
            s = 0
            idx = 0
            while idx < stor8[arg1]:
                require idx < mem[96]
                _571 = mem[(32 * idx) + 128]
                mem[mem[64] + 32] = 0
                mem[mem[64] + 4] = uint8(_571)
                require ext_code.size(0x8afe99cee656b11f514816db8b61ae9324a9f111)
                delegate 0x8afe99cee656b11f514816db8b61ae9324a9f111.0xca949a1d with:
                     gas gas_remaining - 50 wei
                    args (_571 << 248)
                mem[mem[64]] = delegate.return_data[0]
                require delegate.return_code
                _594 = mem[_msize + 160]
                s = 0
                t = _msize + 160
                while s < _594:
                    require s < mem[t]
                    mem[t + (32 * s) + 32] = uint8(delegate.return_data[0] + mem[t + (32 * s) + 32])
                    if uint8(delegate.return_data[0]) != 1:
                        s = s + 1
                        t = t
                        continue 
                    require s < mem[t]
                    _836 = mem[(32 * s) + t + 32]
                    _842 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_842] = 0
                    _843 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_843] = 0
                    _844 = mem[t]
                    _845 = mem[64]
                    if msize < mem[64]:
                        mem[mem[64]] = mem[t] + 1
                        mem[64] = mem[64] + (32 * _844 + 1) + 32
                        _895 = mem[t]
                        idx = 0
                        while uint8(idx) < _895:
                            require uint8(idx) < mem[t]
                            require uint8(idx) < mem[_845]
                            mem[_845 + (32 * uint8(idx)) + 32] = mem[(32 * uint8(idx)) + t + 63 len 1]
                            _895 = mem[t]
                            idx = idx + 1
                            continue 
                        require mem[t] < mem[_845]
                        mem[_845 + (32 * mem[t]) + 32] = uint8(_836 + 10)
                        s = s + 1
                        t = _845
                        continue 
                    _848 = msize
                    mem[msize] = mem[t] + 1
                    mem[64] = _848 + (32 * _844 + 1) + 32
                    _896 = mem[t]
                    idx = 0
                    while uint8(idx) < _896:
                        require uint8(idx) < mem[t]
                        require uint8(idx) < mem[_848]
                        mem[_848 + (32 * uint8(idx)) + 32] = mem[(32 * uint8(idx)) + t + 63 len 1]
                        _896 = mem[t]
                        idx = idx + 1
                        continue 
                    require mem[t] < mem[_848]
                    mem[_848 + (32 * mem[t]) + 32] = uint8(_836 + 10)
                    s = s + 1
                    t = _848
                    continue 
                s = _594
                s = delegate.return_data[0]
                idx = idx + 1
                continue 
            idx = 0
            while idx < mem[_msize + 160]:
                require idx < mem[_msize + 160]
                if mem[(32 * idx) + (_msize + 160) + 63 len 1] <= 21:
                    require idx < mem[_msize + 160]
                else:
                    if 50 >= mem[(32 * idx) + (_msize + 160) + 63 len 1]:
                        require idx < mem[_msize + 160]
                idx = idx + 1
                continue 
    uint8(stor10[arg1].field_8) = 1
    uint8(stor10[arg1].field_0) = 4
    require 0 or uint8(stor10[arg1].field_8) <= 4
    if 0 or uint8(stor10[arg1].field_8) == 4:
        uint255(stor2[arg1].field_0) = 5 * uint256(stor1[arg1]) / 2
        bool(stor2[arg1].field_255) = 0
        if not uint8(stor10[arg1].field_16):
            if uint8(stor10[arg1].field_0) <= 4:
                if uint8(stor10[arg1].field_0) == 4:
                    uint8(stor10[arg1].field_16) = 1
                    if uint256(stor2[arg1].field_0) <= 0:
                    call address(stor[arg1].field_0) with:
                       value uint256(stor2[arg1].field_0) wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
    else:
        if 0 or uint8(stor10[arg1].field_8) <= 4:
            if 0 or uint8(stor10[arg1].field_8) == 3:
                bool(stor2[arg1].field_0) = 0
                uint255(stor2[arg1].field_1) = uint255(stor1[arg1])
                if not uint8(stor10[arg1].field_16):
                    if uint8(stor10[arg1].field_0) <= 4:
                        if uint8(stor10[arg1].field_0) == 4:
                            uint8(stor10[arg1].field_16) = 1
                            if uint256(stor2[arg1].field_0) <= 0:
                            call address(stor[arg1].field_0) with:
                               value uint256(stor2[arg1].field_0) wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
            else:
                if 0 or uint8(stor10[arg1].field_8) <= 4:
                    if 0 or uint8(stor10[arg1].field_8) != 2:
                        uint256(stor2[arg1].field_0) = 0
                    else:
                        uint256(stor2[arg1].field_0) = uint256(stor1[arg1])
                    if not uint8(stor10[arg1].field_16):
                        if uint8(stor10[arg1].field_0) <= 4:
                            if uint8(stor10[arg1].field_0) == 4:
                                uint8(stor10[arg1].field_16) = 1
                                if uint256(stor2[arg1].field_0) <= 0:
                                call address(stor[arg1].field_0) with:
                                   value uint256(stor2[arg1].field_0) wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
    revert 
}



}
