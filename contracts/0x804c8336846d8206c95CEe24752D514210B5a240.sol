contract main {




// =====================  Runtime code  =====================


const VERSION = 1


address owner;
uint256 sub_a319ff27;
address sub_1bcbe9a4Address;
array of address stor3;
mapping of uint256 sub_68095af5;

function sub_1bcbe9a4(?) {
    return sub_1bcbe9a4Address
}

function sub_68095af5(?) {
    return sub_68095af5[address(arg1)]
}

function owner() {
    return owner
}

function sub_a319ff27(?) {
    return sub_a319ff27
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function isApproved(address arg1) {
    return (sub_68095af5[address(arg1)] > 0)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function isValidator(address arg1) {
    if sub_68095af5[address(arg1)] <= 0:
        return (sub_68095af5[address(arg1)] > 0)
    require ext_code.size(sub_1bcbe9a4Address)
    call sub_1bcbe9a4Address.0xfacd743b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function approve(address arg1) {
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Address must not be 0!'
    if stor3.length >= sub_a319ff27:
        revert with 0, 'Can't add more members!'
    if sub_68095af5[address(arg1)] > 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Address must not be already approved'
    stor3.length++
    stor3[stor3.length] = arg1
    sub_68095af5[address(arg1)] = block.number
    emit 0x6b872750: arg1
}

function remove(address arg1) {
    require msg.sender == owner
    if sub_68095af5[address(arg1)] <= 0:
        revert with 0, 'Not an approved validator'
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        if stor3[idx] != arg1:
            idx = idx + 1
            continue 
        require stor3.length - 1 < stor3.length
        require idx < stor3.length
        stor3[idx] = stor3[stor3.length]
        stor3.length--
        if stor3.length > stor3.length - 1:
            idx = stor3.length + sha3(3) - 1
            while sha3(3) + stor3.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        sub_68095af5[address(arg1)] = 0
        emit ValidatorRemoved(arg1);
}

function getValidators() {
    if stor3.length:
        mem[128 len 32 * stor3.length] = code.data[3881 len 32 * stor3.length]
    idx = 0
    s = 0
    while idx < stor3.length:
        mem[0] = 3
        mem[(32 * stor3.length) + 132] = stor3[idx]
        require ext_code.size(sub_1bcbe9a4Address)
        call sub_1bcbe9a4Address.0xfacd743b with:
             gas gas_remaining wei
            args stor3[idx]
        mem[(32 * stor3.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            idx = idx + 1
            s = s
            continue 
        require idx < stor3.length
        mem[0] = 3
        require s < stor3.length
        mem[(32 * s) + 128] = stor3[idx]
        idx = idx + 1
        s = s + 1
        continue 
    if s > stor3.length:
        revert with 0, 'sub array must be longer then array'
    mem[(32 * stor3.length) + 128] = s
    if s:
        mem[(32 * stor3.length) + 160 len 32 * s] = code.data[3881 len 32 * s]
    t = 0
    while t < s:
        require t < stor3.length
        require t < s
        mem[(32 * stor3.length) + (32 * t) + 160] = mem[(32 * t) + 140 len 20]
        t = t + 1
        continue 
    mem[(32 * stor3.length) + (32 * s) + 224 len floor32(s)] = mem[(32 * stor3.length) + 160 len floor32(s)]
    return Array(len=s, data=mem[(32 * stor3.length) + 160 len floor32(s)], mem[(32 * stor3.length) + (32 * s) + floor32(s) + 224 len (32 * s) - floor32(s)]), 
}

function sub_f3f6b43e(?) {
    if stor3.length:
        mem[128 len 32 * stor3.length] = code.data[3881 len 32 * stor3.length]
    idx = 0
    s = 0
    while idx < stor3.length:
        mem[0] = 3
        mem[(32 * stor3.length) + 132] = stor3[idx]
        require ext_code.size(sub_1bcbe9a4Address)
        call sub_1bcbe9a4Address.0xfacd743b with:
             gas gas_remaining wei
            args stor3[idx]
        mem[(32 * stor3.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            idx = idx + 1
            s = s
            continue 
        require idx < stor3.length
        mem[0] = 3
        require s < stor3.length
        mem[(32 * s) + 128] = stor3[idx]
        idx = idx + 1
        s = s + 1
        continue 
    if s > stor3.length:
        revert with 0, 'sub array must be longer then array'
    mem[(32 * stor3.length) + 128] = s
    if s:
        mem[(32 * stor3.length) + 160 len 32 * s] = code.data[3881 len 32 * s]
    t = 0
    while t < s:
        require t < stor3.length
        require t < s
        mem[(32 * stor3.length) + (32 * t) + 160] = mem[(32 * t) + 140 len 20]
        t = t + 1
        continue 
    mem[(32 * stor3.length) + (32 * s) + 160] = s
    if s:
        mem[(32 * stor3.length) + (32 * s) + 192 len 32 * s] = code.data[3881 len 32 * s]
    t = 0
    while t < s:
        require t < s
        require t < s
        mem[(32 * stor3.length) + (32 * s) + (32 * t) + 192] = address(mem[(32 * t) + (32 * stor3.length) + 160])
        t = t + 1
        continue 
    mem[(32 * stor3.length) + (64 * s) + 192] = 32
    mem[(32 * stor3.length) + (64 * s) + 224] = s
    mem[(32 * stor3.length) + (64 * s) + 256 len floor32(s)] = mem[(32 * stor3.length) + (32 * s) + 192 len floor32(s)]
    return Array(len=s, data=mem[(32 * stor3.length) + (64 * s) + 256 len 32 * s])
}

function sub_20429673(?) {
    mem[96] = stor3.length
    if not stor3.length:
        idx = 0
        s = 0
        while idx < stor3.length:
            mem[0] = 3
            mem[(32 * stor3.length) + 132] = stor3[idx]
            require ext_code.size(sub_1bcbe9a4Address)
            call sub_1bcbe9a4Address.0xfacd743b with:
                 gas gas_remaining wei
                args stor3[idx]
            mem[(32 * stor3.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                idx = idx + 1
                s = s
                continue 
            require idx < stor3.length
            mem[0] = 3
            require s < stor3.length
            mem[(32 * s) + 128] = stor3[idx]
            idx = idx + 1
            s = s + 1
            continue 
        if s > stor3.length:
            revert with 0, 'sub array must be longer then array'
        mem[(32 * stor3.length) + 128] = s
        if not s:
            t = 0
            while t < s:
                require t < stor3.length
                require t < s
                mem[(32 * stor3.length) + (32 * t) + 160] = mem[(32 * t) + 140 len 20]
                t = t + 1
                continue 
            if not s:
                mem[(32 * stor3.length) + (64 * s) + 192] = s
                mem[64] = (32 * stor3.length) + (98 * s) + 224
                t = 0
                t = 0
                t = 0
                while t < s:
                    require t < mem[(32 * stor3.length) + 128]
                    _541 = mem[(32 * t) + (32 * stor3.length) + 160]
                    mem[mem[64]] = 0x2536f8b500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_541)
                    require ext_code.size(sub_1bcbe9a4Address)
                    call sub_1bcbe9a4Address.0x2536f8b5 with:
                         gas gas_remaining wei
                        args address(_541)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _589 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    require mem[_589] <= 4294967296
                    require mem[_589] + 32 <= return_data.size
                    require return_data.size >= mem[_589 + mem[_589]] + mem[_589] + 32 and mem[_589 + mem[_589]] <= 4294967296
                    _650 = mem[_589 + 32]
                    require mem[_589 + 64] <= 4294967296
                    require mem[_589 + 64] + 32 <= return_data.size
                    require return_data.size >= mem[_589 + mem[_589 + 64]] + mem[_589 + 64] + 32 and mem[_589 + mem[_589 + 64]] <= 4294967296
                    _674 = mem[_589 + 96]
                    require t < mem[(32 * stor3.length) + (32 * s) + 160]
                    mem[(32 * stor3.length) + (32 * s) + (32 * t) + 192] = Mask(160, 96, mem[_589 + 96])
                    require t < mem[(32 * stor3.length) + (64 * s) + 192]
                    mem[(32 * stor3.length) + (64 * s) + (32 * t) + 224] = Mask(32, 224, _650)
                    t = _674
                    t = _650
                    t = t + 1
                    continue 
                _538 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[(32 * stor3.length) + (32 * s) + 160]
                _540 = mem[(32 * stor3.length) + (32 * s) + 160]
                mem[mem[64] + 96 len floor32(mem[(32 * stor3.length) + (32 * s) + 160])] = mem[(32 * stor3.length) + (32 * s) + 192 len floor32(mem[(32 * stor3.length) + (32 * s) + 160])]
                mem[mem[64] + 32] = (32 * _540) + 96
                mem[(32 * _540) + _538 + 96] = mem[(32 * stor3.length) + (64 * s) + 192]
                _699 = mem[(32 * stor3.length) + (64 * s) + 192]
                mem[(32 * _540) + _538 + 128 len floor32(mem[(32 * stor3.length) + (64 * s) + 192])] = mem[(32 * stor3.length) + (64 * s) + 224 len floor32(mem[(32 * stor3.length) + (64 * s) + 192])]
                return memory
                  from mem[64]
                   len (32 * _699) + (32 * _540) + _538 + -mem[64] + 128
            mem[(32 * stor3.length) + (32 * s) + 192 len 32 * s] = code.data[3881 len 32 * s]
            mem[(32 * stor3.length) + (64 * s) + 192] = s
            mem[64] = (32 * stor3.length) + (98 * s) + 224
            mem[(32 * stor3.length) + (64 * s) + 224 len 32 * s] = code.data[3881 len 32 * s]
            t = 0
            t = 0
            t = 0
            while t < s:
                require t < mem[(32 * stor3.length) + 128]
                _547 = mem[(32 * t) + (32 * stor3.length) + 160]
                mem[mem[64]] = 0x2536f8b500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_547)
                require ext_code.size(sub_1bcbe9a4Address)
                call sub_1bcbe9a4Address.0x2536f8b5 with:
                     gas gas_remaining wei
                    args address(_547)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _593 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_593] <= 4294967296
                require mem[_593] + 32 <= return_data.size
                require return_data.size >= mem[_593 + mem[_593]] + mem[_593] + 32 and mem[_593 + mem[_593]] <= 4294967296
                _652 = mem[_593 + 32]
                require mem[_593 + 64] <= 4294967296
                require mem[_593 + 64] + 32 <= return_data.size
                require return_data.size >= mem[_593 + mem[_593 + 64]] + mem[_593 + 64] + 32 and mem[_593 + mem[_593 + 64]] <= 4294967296
                _676 = mem[_593 + 96]
                require t < mem[(32 * stor3.length) + (32 * s) + 160]
                mem[(32 * stor3.length) + (32 * s) + (32 * t) + 192] = Mask(160, 96, mem[_593 + 96])
                require t < mem[(32 * stor3.length) + (64 * s) + 192]
                mem[(32 * stor3.length) + (64 * s) + (32 * t) + 224] = Mask(32, 224, _652)
                t = _676
                t = _652
                t = t + 1
                continue 
            _544 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[(32 * stor3.length) + (32 * s) + 160]
            _546 = mem[(32 * stor3.length) + (32 * s) + 160]
            mem[mem[64] + 96 len floor32(mem[(32 * stor3.length) + (32 * s) + 160])] = mem[(32 * stor3.length) + (32 * s) + 192 len floor32(mem[(32 * stor3.length) + (32 * s) + 160])]
            mem[mem[64] + 32] = (32 * _546) + 96
            mem[(32 * _546) + _544 + 96] = mem[(32 * stor3.length) + (64 * s) + 192]
            _702 = mem[(32 * stor3.length) + (64 * s) + 192]
            mem[(32 * _546) + _544 + 128 len floor32(mem[(32 * stor3.length) + (64 * s) + 192])] = mem[(32 * stor3.length) + (64 * s) + 224 len floor32(mem[(32 * stor3.length) + (64 * s) + 192])]
            return memory
              from mem[64]
               len (32 * _702) + (32 * _546) + _544 + -mem[64] + 128
        mem[(32 * stor3.length) + 160 len 32 * s] = code.data[3881 len 32 * s]
        t = 0
        while t < s:
            require t < stor3.length
            require t < s
            mem[(32 * stor3.length) + (32 * t) + 160] = mem[(32 * t) + 140 len 20]
            t = t + 1
            continue 
        if not s:
            mem[(32 * stor3.length) + (64 * s) + 192] = s
            mem[64] = (32 * stor3.length) + (98 * s) + 224
            t = 0
            t = 0
            t = 0
            while t < s:
                require t < mem[(32 * stor3.length) + 128]
                _553 = mem[(32 * t) + (32 * stor3.length) + 160]
                mem[mem[64]] = 0x2536f8b500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_553)
                require ext_code.size(sub_1bcbe9a4Address)
                call sub_1bcbe9a4Address.0x2536f8b5 with:
                     gas gas_remaining wei
                    args address(_553)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _597 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_597] <= 4294967296
                require mem[_597] + 32 <= return_data.size
                require return_data.size >= mem[_597 + mem[_597]] + mem[_597] + 32 and mem[_597 + mem[_597]] <= 4294967296
                _654 = mem[_597 + 32]
                require mem[_597 + 64] <= 4294967296
                require mem[_597 + 64] + 32 <= return_data.size
                require return_data.size >= mem[_597 + mem[_597 + 64]] + mem[_597 + 64] + 32 and mem[_597 + mem[_597 + 64]] <= 4294967296
                _678 = mem[_597 + 96]
                require t < mem[(32 * stor3.length) + (32 * s) + 160]
                mem[(32 * stor3.length) + (32 * s) + (32 * t) + 192] = Mask(160, 96, mem[_597 + 96])
                require t < mem[(32 * stor3.length) + (64 * s) + 192]
                mem[(32 * stor3.length) + (64 * s) + (32 * t) + 224] = Mask(32, 224, _654)
                t = _678
                t = _654
                t = t + 1
                continue 
            _550 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[(32 * stor3.length) + (32 * s) + 160]
            _552 = mem[(32 * stor3.length) + (32 * s) + 160]
            mem[mem[64] + 96 len floor32(mem[(32 * stor3.length) + (32 * s) + 160])] = mem[(32 * stor3.length) + (32 * s) + 192 len floor32(mem[(32 * stor3.length) + (32 * s) + 160])]
            mem[mem[64] + 32] = (32 * _552) + 96
            mem[(32 * _552) + _550 + 96] = mem[(32 * stor3.length) + (64 * s) + 192]
            _705 = mem[(32 * stor3.length) + (64 * s) + 192]
            mem[(32 * _552) + _550 + 128 len floor32(mem[(32 * stor3.length) + (64 * s) + 192])] = mem[(32 * stor3.length) + (64 * s) + 224 len floor32(mem[(32 * stor3.length) + (64 * s) + 192])]
            return memory
              from mem[64]
               len (32 * _705) + (32 * _552) + _550 + -mem[64] + 128
        mem[(32 * stor3.length) + (32 * s) + 192 len 32 * s] = code.data[3881 len 32 * s]
        mem[(32 * stor3.length) + (64 * s) + 192] = s
        mem[64] = (32 * stor3.length) + (98 * s) + 224
        mem[(32 * stor3.length) + (64 * s) + 224 len 32 * s] = code.data[3881 len 32 * s]
        t = 0
        t = 0
        t = 0
        while t < s:
            require t < mem[(32 * stor3.length) + 128]
            _559 = mem[(32 * t) + (32 * stor3.length) + 160]
            mem[mem[64]] = 0x2536f8b500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_559)
            require ext_code.size(sub_1bcbe9a4Address)
            call sub_1bcbe9a4Address.0x2536f8b5 with:
                 gas gas_remaining wei
                args address(_559)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _601 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_601] <= 4294967296
            require mem[_601] + 32 <= return_data.size
            require return_data.size >= mem[_601 + mem[_601]] + mem[_601] + 32 and mem[_601 + mem[_601]] <= 4294967296
            _656 = mem[_601 + 32]
            require mem[_601 + 64] <= 4294967296
            require mem[_601 + 64] + 32 <= return_data.size
            require return_data.size >= mem[_601 + mem[_601 + 64]] + mem[_601 + 64] + 32 and mem[_601 + mem[_601 + 64]] <= 4294967296
            _680 = mem[_601 + 96]
            require t < mem[(32 * stor3.length) + (32 * s) + 160]
            mem[(32 * stor3.length) + (32 * s) + (32 * t) + 192] = Mask(160, 96, mem[_601 + 96])
            require t < mem[(32 * stor3.length) + (64 * s) + 192]
            mem[(32 * stor3.length) + (64 * s) + (32 * t) + 224] = Mask(32, 224, _656)
            t = _680
            t = _656
            t = t + 1
            continue 
        _556 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[(32 * stor3.length) + (32 * s) + 160]
        _558 = mem[(32 * stor3.length) + (32 * s) + 160]
        mem[mem[64] + 96 len floor32(mem[(32 * stor3.length) + (32 * s) + 160])] = mem[(32 * stor3.length) + (32 * s) + 192 len floor32(mem[(32 * stor3.length) + (32 * s) + 160])]
        mem[mem[64] + 32] = (32 * _558) + 96
        mem[(32 * _558) + _556 + 96] = mem[(32 * stor3.length) + (64 * s) + 192]
        _708 = mem[(32 * stor3.length) + (64 * s) + 192]
        mem[(32 * _558) + _556 + 128 len floor32(mem[(32 * stor3.length) + (64 * s) + 192])] = mem[(32 * stor3.length) + (64 * s) + 224 len floor32(mem[(32 * stor3.length) + (64 * s) + 192])]
        return memory
          from mem[64]
           len (32 * _708) + (32 * _558) + _556 + -mem[64] + 128
    mem[128 len 32 * stor3.length] = code.data[3881 len 32 * stor3.length]
    idx = 0
    s = 0
    while idx < stor3.length:
        mem[0] = 3
        mem[(32 * stor3.length) + 132] = stor3[idx]
        require ext_code.size(sub_1bcbe9a4Address)
        call sub_1bcbe9a4Address.0xfacd743b with:
             gas gas_remaining wei
            args stor3[idx]
        mem[(32 * stor3.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            idx = idx + 1
            s = s
            continue 
        require idx < stor3.length
        mem[0] = 3
        require s < stor3.length
        mem[(32 * s) + 128] = stor3[idx]
        idx = idx + 1
        s = s + 1
        continue 
    if s > stor3.length:
        revert with 0, 'sub array must be longer then array'
    mem[(32 * stor3.length) + 128] = s
    if not s:
        t = 0
        while t < s:
            require t < stor3.length
            require t < s
            mem[(32 * stor3.length) + (32 * t) + 160] = mem[(32 * t) + 140 len 20]
            t = t + 1
            continue 
        if not s:
            mem[(32 * stor3.length) + (64 * s) + 192] = s
            mem[64] = (32 * stor3.length) + (98 * s) + 224
            t = 0
            t = 0
            t = 0
            while t < s:
                require t < mem[(32 * stor3.length) + 128]
                _565 = mem[(32 * t) + (32 * stor3.length) + 160]
                mem[mem[64]] = 0x2536f8b500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_565)
                require ext_code.size(sub_1bcbe9a4Address)
                call sub_1bcbe9a4Address.0x2536f8b5 with:
                     gas gas_remaining wei
                    args address(_565)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _605 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_605] <= 4294967296
                require mem[_605] + 32 <= return_data.size
                require return_data.size >= mem[_605 + mem[_605]] + mem[_605] + 32 and mem[_605 + mem[_605]] <= 4294967296
                _658 = mem[_605 + 32]
                require mem[_605 + 64] <= 4294967296
                require mem[_605 + 64] + 32 <= return_data.size
                require return_data.size >= mem[_605 + mem[_605 + 64]] + mem[_605 + 64] + 32 and mem[_605 + mem[_605 + 64]] <= 4294967296
                _682 = mem[_605 + 96]
                require t < mem[(32 * stor3.length) + (32 * s) + 160]
                mem[(32 * stor3.length) + (32 * s) + (32 * t) + 192] = Mask(160, 96, mem[_605 + 96])
                require t < mem[(32 * stor3.length) + (64 * s) + 192]
                mem[(32 * stor3.length) + (64 * s) + (32 * t) + 224] = Mask(32, 224, _658)
                t = _682
                t = _658
                t = t + 1
                continue 
            _562 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[(32 * stor3.length) + (32 * s) + 160]
            _564 = mem[(32 * stor3.length) + (32 * s) + 160]
            mem[mem[64] + 96 len floor32(mem[(32 * stor3.length) + (32 * s) + 160])] = mem[(32 * stor3.length) + (32 * s) + 192 len floor32(mem[(32 * stor3.length) + (32 * s) + 160])]
            mem[mem[64] + 32] = (32 * _564) + 96
            mem[(32 * _564) + _562 + 96] = mem[(32 * stor3.length) + (64 * s) + 192]
            _711 = mem[(32 * stor3.length) + (64 * s) + 192]
            mem[(32 * _564) + _562 + 128 len floor32(mem[(32 * stor3.length) + (64 * s) + 192])] = mem[(32 * stor3.length) + (64 * s) + 224 len floor32(mem[(32 * stor3.length) + (64 * s) + 192])]
            return memory
              from mem[64]
               len (32 * _711) + (32 * _564) + _562 + -mem[64] + 128
        mem[(32 * stor3.length) + (32 * s) + 192 len 32 * s] = code.data[3881 len 32 * s]
        mem[(32 * stor3.length) + (64 * s) + 192] = s
        mem[64] = (32 * stor3.length) + (98 * s) + 224
        mem[(32 * stor3.length) + (64 * s) + 224 len 32 * s] = code.data[3881 len 32 * s]
        t = 0
        t = 0
        t = 0
        while t < s:
            require t < mem[(32 * stor3.length) + 128]
            _571 = mem[(32 * t) + (32 * stor3.length) + 160]
            mem[mem[64]] = 0x2536f8b500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_571)
            require ext_code.size(sub_1bcbe9a4Address)
            call sub_1bcbe9a4Address.0x2536f8b5 with:
                 gas gas_remaining wei
                args address(_571)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _609 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_609] <= 4294967296
            require mem[_609] + 32 <= return_data.size
            require return_data.size >= mem[_609 + mem[_609]] + mem[_609] + 32 and mem[_609 + mem[_609]] <= 4294967296
            _660 = mem[_609 + 32]
            require mem[_609 + 64] <= 4294967296
            require mem[_609 + 64] + 32 <= return_data.size
            require return_data.size >= mem[_609 + mem[_609 + 64]] + mem[_609 + 64] + 32 and mem[_609 + mem[_609 + 64]] <= 4294967296
            _684 = mem[_609 + 96]
            require t < mem[(32 * stor3.length) + (32 * s) + 160]
            mem[(32 * stor3.length) + (32 * s) + (32 * t) + 192] = Mask(160, 96, mem[_609 + 96])
            require t < mem[(32 * stor3.length) + (64 * s) + 192]
            mem[(32 * stor3.length) + (64 * s) + (32 * t) + 224] = Mask(32, 224, _660)
            t = _684
            t = _660
            t = t + 1
            continue 
        _568 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[(32 * stor3.length) + (32 * s) + 160]
        _570 = mem[(32 * stor3.length) + (32 * s) + 160]
        mem[mem[64] + 96 len floor32(mem[(32 * stor3.length) + (32 * s) + 160])] = mem[(32 * stor3.length) + (32 * s) + 192 len floor32(mem[(32 * stor3.length) + (32 * s) + 160])]
        mem[mem[64] + 32] = (32 * _570) + 96
        mem[(32 * _570) + _568 + 96] = mem[(32 * stor3.length) + (64 * s) + 192]
        _714 = mem[(32 * stor3.length) + (64 * s) + 192]
        mem[(32 * _570) + _568 + 128 len floor32(mem[(32 * stor3.length) + (64 * s) + 192])] = mem[(32 * stor3.length) + (64 * s) + 224 len floor32(mem[(32 * stor3.length) + (64 * s) + 192])]
        return memory
          from mem[64]
           len (32 * _714) + (32 * _570) + _568 + -mem[64] + 128
    mem[(32 * stor3.length) + 160 len 32 * s] = code.data[3881 len 32 * s]
    t = 0
    while t < s:
        require t < stor3.length
        require t < s
        mem[(32 * stor3.length) + (32 * t) + 160] = mem[(32 * t) + 140 len 20]
        t = t + 1
        continue 
    if not s:
        mem[(32 * stor3.length) + (64 * s) + 192] = s
        mem[64] = (32 * stor3.length) + (98 * s) + 224
        t = 0
        t = 0
        t = 0
        while t < s:
            require t < mem[(32 * stor3.length) + 128]
            _577 = mem[(32 * t) + (32 * stor3.length) + 160]
            mem[mem[64]] = 0x2536f8b500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_577)
            require ext_code.size(sub_1bcbe9a4Address)
            call sub_1bcbe9a4Address.0x2536f8b5 with:
                 gas gas_remaining wei
                args address(_577)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _613 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_613] <= 4294967296
            require mem[_613] + 32 <= return_data.size
            require return_data.size >= mem[_613 + mem[_613]] + mem[_613] + 32 and mem[_613 + mem[_613]] <= 4294967296
            _662 = mem[_613 + 32]
            require mem[_613 + 64] <= 4294967296
            require mem[_613 + 64] + 32 <= return_data.size
            require return_data.size >= mem[_613 + mem[_613 + 64]] + mem[_613 + 64] + 32 and mem[_613 + mem[_613 + 64]] <= 4294967296
            _686 = mem[_613 + 96]
            require t < mem[(32 * stor3.length) + (32 * s) + 160]
            mem[(32 * stor3.length) + (32 * s) + (32 * t) + 192] = Mask(160, 96, mem[_613 + 96])
            require t < mem[(32 * stor3.length) + (64 * s) + 192]
            mem[(32 * stor3.length) + (64 * s) + (32 * t) + 224] = Mask(32, 224, _662)
            t = _686
            t = _662
            t = t + 1
            continue 
        _574 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[(32 * stor3.length) + (32 * s) + 160]
        _576 = mem[(32 * stor3.length) + (32 * s) + 160]
        mem[mem[64] + 96 len floor32(mem[(32 * stor3.length) + (32 * s) + 160])] = mem[(32 * stor3.length) + (32 * s) + 192 len floor32(mem[(32 * stor3.length) + (32 * s) + 160])]
        mem[mem[64] + 32] = (32 * _576) + 96
        mem[(32 * _576) + _574 + 96] = mem[(32 * stor3.length) + (64 * s) + 192]
        _717 = mem[(32 * stor3.length) + (64 * s) + 192]
        mem[(32 * _576) + _574 + 128 len floor32(mem[(32 * stor3.length) + (64 * s) + 192])] = mem[(32 * stor3.length) + (64 * s) + 224 len floor32(mem[(32 * stor3.length) + (64 * s) + 192])]
        return memory
          from mem[64]
           len (32 * _717) + (32 * _576) + _574 + -mem[64] + 128
    mem[(32 * stor3.length) + (32 * s) + 192 len 32 * s] = code.data[3881 len 32 * s]
    mem[(32 * stor3.length) + (64 * s) + 192] = s
    mem[64] = (32 * stor3.length) + (98 * s) + 224
    mem[(32 * stor3.length) + (64 * s) + 224 len 32 * s] = code.data[3881 len 32 * s]
    t = 0
    t = 0
    t = 0
    while t < s:
        require t < mem[(32 * stor3.length) + 128]
        _583 = mem[(32 * t) + (32 * stor3.length) + 160]
        mem[mem[64]] = 0x2536f8b500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(_583)
        require ext_code.size(sub_1bcbe9a4Address)
        call sub_1bcbe9a4Address.0x2536f8b5 with:
             gas gas_remaining wei
            args address(_583)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _617 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_617] <= 4294967296
        require mem[_617] + 32 <= return_data.size
        require return_data.size >= mem[_617 + mem[_617]] + mem[_617] + 32 and mem[_617 + mem[_617]] <= 4294967296
        _664 = mem[_617 + 32]
        require mem[_617 + 64] <= 4294967296
        require mem[_617 + 64] + 32 <= return_data.size
        require return_data.size >= mem[_617 + mem[_617 + 64]] + mem[_617 + 64] + 32 and mem[_617 + mem[_617 + 64]] <= 4294967296
        _688 = mem[_617 + 96]
        require t < mem[(32 * stor3.length) + (32 * s) + 160]
        mem[(32 * stor3.length) + (32 * s) + (32 * t) + 192] = Mask(160, 96, mem[_617 + 96])
        require t < mem[(32 * stor3.length) + (64 * s) + 192]
        mem[(32 * stor3.length) + (64 * s) + (32 * t) + 224] = Mask(32, 224, _664)
        t = _688
        t = _664
        t = t + 1
        continue 
    _580 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[(32 * stor3.length) + (32 * s) + 160]
    _582 = mem[(32 * stor3.length) + (32 * s) + 160]
    mem[mem[64] + 96 len floor32(mem[(32 * stor3.length) + (32 * s) + 160])] = mem[(32 * stor3.length) + (32 * s) + 192 len floor32(mem[(32 * stor3.length) + (32 * s) + 160])]
    mem[mem[64] + 32] = (32 * _582) + 96
    mem[(32 * _582) + _580 + 96] = mem[(32 * stor3.length) + (64 * s) + 192]
    _720 = mem[(32 * stor3.length) + (64 * s) + 192]
    mem[(32 * _582) + _580 + 128 len floor32(mem[(32 * stor3.length) + (64 * s) + 192])] = mem[(32 * stor3.length) + (64 * s) + 224 len floor32(mem[(32 * stor3.length) + (64 * s) + 192])]
    return memory
      from mem[64]
       len (32 * _720) + (32 * _582) + _580 + -mem[64] + 128
}



}
