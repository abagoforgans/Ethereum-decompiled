contract main {




// =====================  Runtime code  =====================


uint8 version;
address _storageAddress; offset 16
mapping of struct sub_1acc050e;
array of struct sub_66cb497d;

function sub_14568e03(?) {
    require calldata.size - 4 >= 32
    return sub_1acc050e[arg1].field_0, 
           sub_1acc050e[arg1].field_256,
           sub_1acc050e[arg1].field_512,
           bool(sub_1acc050e[arg1].field_768),
           bool(sub_1acc050e[arg1].field_776),
           bool(sub_1acc050e[arg1].field_784)
}

function sub_1acc050e(?) {
    require calldata.size - 4 >= 32
    return sub_1acc050e[arg1].field_0, 
           sub_1acc050e[arg1].field_256,
           sub_1acc050e[arg1].field_512,
           bool(sub_1acc050e[arg1].field_768),
           bool(sub_1acc050e[arg1].field_776),
           bool(sub_1acc050e[arg1].field_784)
}

function version() {
    return version
}

function sub_639228b4(?) {
    return sub_66cb497d.length
}

function sub_66cb497d(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_66cb497d.length
    return sub_66cb497d[arg1].field_0
}

function _storage() {
    return _storageAddress
}

function _fallback() payable {
    if msg.value <= 0:
        revert with 0, 'Msg value > 0'
    emit DepositReceived(msg.sender, msg.value, this.address);
}

function sub_c5f93998(?) {
    require calldata.size - 4 >= 32
    if not sub_1acc050e[arg1].field_784:
        return bool(sub_1acc050e[arg1].field_784)
    if sub_1acc050e[arg1].field_768:
        return bool(sub_1acc050e[arg1].field_768)
    return bool(sub_1acc050e[arg1].field_776)
}

function sub_6bde137b(?) {
    require calldata.size - 4 >= 32
    if not sub_1acc050e[arg1].field_784:
        return bool(sub_1acc050e[arg1].field_784)
    if sub_1acc050e[arg1].field_768:
        return not bool(sub_1acc050e[arg1].field_768)
    return not bool(sub_1acc050e[arg1].field_776)
}

function sub_f69903b3(?) {
    require calldata.size - 4 >= 32
    if bool(sub_1acc050e[arg1].field_784) != 1:
        revert with 0, 'Swapping provider must exist.'
    if sub_1acc050e[arg1].field_256 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Swapping provider owner is not valid.'
    if sub_1acc050e[arg1].field_776:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Swapping provider must not be paused by admin.'
    sub_1acc050e[arg1].field_768 = 1
    emit 0x785b13f6: this.address, sub_1acc050e[arg1].field_0
    return 1
}

function sub_3e0a8950(?) {
    require calldata.size - 4 >= 32
    if bool(sub_1acc050e[arg1].field_784) != 1:
        revert with 0, 'Swapping provider must exist.'
    if sub_1acc050e[arg1].field_256 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Swapping provider owner is not valid.'
    if bool(sub_1acc050e[arg1].field_768) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Swapping provider must be paused.'
    if sub_1acc050e[arg1].field_776:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Swapping provider must not be paused by admin.'
    sub_1acc050e[arg1].field_768 = 0
    emit 0x982fcb1c: this.address, sub_1acc050e[arg1].field_0
    return 1
}

function sub_d9697e85(?) {
    require calldata.size - 4 >= 128
    if not sub_1acc050e[arg1].field_784:
        revert with 0, 'Provider must exist and be enabled.'
    if sub_1acc050e[arg1].field_768:
        revert with 0, 'Provider must exist and be enabled.'
    if sub_1acc050e[arg1].field_776:
        revert with 0, 'Provider must exist and be enabled.'
    require ext_code.size(sub_1acc050e[arg1].field_0)
    call sub_1acc050e[arg1].field_0.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return bool(ext_call.return_data[0]), ext_call.return_data[32], ext_call.return_data[64]
}

function sub_c200a4ba(?) {
    require calldata.size - 4 >= 64
    if sub_1acc050e[arg2].field_784:
        if sub_1acc050e[arg2].field_256 != msg.sender:
            if sub_1acc050e[arg2].field_784:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Swapping provider must be new or an update by owner.'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Provider address must not be 0x0.'
    sub_1acc050e[arg2].field_0 = arg1
    sub_1acc050e[arg2].field_256 = msg.sender
    sub_1acc050e[arg2].field_512 = block.timestamp
    sub_1acc050e[arg2].field_768 = 0
    sub_1acc050e[arg2].field_776 = 0
    sub_1acc050e[arg2].field_784 = 1
    if not arg2:
        revert with 0, 'invalid address_'
    sub_66cb497d.length++
    sub_66cb497d[sub_66cb497d.length].field_0 = arg2
    if sub_66cb497d.length:
        idx = 320
        s = 0
        while (32 * sub_66cb497d.length) + 288 > idx:
            mem[idx + 32] = sub_66cb497d[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    emit 0x7b9e8ee0: arg2, sub_1acc050e[arg2].field_0, sub_1acc050e[arg2].field_256, sub_1acc050e[arg2].field_512, this.address
    return 1
}

function sub_0138acf5(?) {
    require calldata.size - 4 >= 32
    if bool(sub_1acc050e[arg1].field_784) != 1:
        revert with 0, 'Swapping provider must exist.'
    if bool(sub_1acc050e[arg1].field_776) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Swapping provider must be paused.'
    mem[256 len 0] = None
    mem[267 len 0] = None
    mem[267 len 27] = mem[267 len 10], Mask(88, 0, 'access.role'), mem[288 len 6]
    require ext_code.size(_storageAddress)
    call _storageAddress.0x7ae1cfca with:
         gas gas_remaining wei
        args sha3(mem[256 len 11], 0, mem[267 len 5], Mask(128, 32, msg.sender) >> 32, mem[324 len 4])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        mem[ceil32(return_data.size) + 452 len 0] = None
        mem[ceil32(return_data.size) + 463 len 0] = None
        mem[ceil32(return_data.size) + 463 len 27] = mem[ceil32(return_data.size) + 463 len 10], Mask(88, 0, 'access.role'), mem[ceil32(return_data.size) + 484 len 6]
        require ext_code.size(_storageAddress)
        call _storageAddress.0x7ae1cfca with:
             gas gas_remaining wei
            args sha3(mem[ceil32(return_data.size) + 452 len 11], 0, mem[ceil32(return_data.size) + 463 len 5], Mask(128, 32, msg.sender) >> 32, mem[ceil32(return_data.size) + 520 len 4])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if bool(ext_call.return_data[0]) != 1:
            revert with 0, 'Msg sender does not have permission.'
    sub_1acc050e[arg1].field_776 = 0
    emit 0x982fcb1c: this.address, sub_1acc050e[arg1].field_0
    return 1
}

function sub_13d60811(?) {
    require calldata.size - 4 >= 32
    if bool(sub_1acc050e[arg1].field_784) != 1:
        revert with 0, 'Swapping provider must exist.'
    if sub_1acc050e[arg1].field_776:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Swapping provider must not be paused by admin.'
    mem[256 len 0] = None
    mem[267 len 0] = None
    mem[267 len 27] = mem[267 len 10], Mask(88, 0, 'access.role'), mem[288 len 6]
    require ext_code.size(_storageAddress)
    call _storageAddress.0x7ae1cfca with:
         gas gas_remaining wei
        args sha3(mem[256 len 11], 0, mem[267 len 5], Mask(128, 32, msg.sender) >> 32, mem[324 len 4])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        mem[ceil32(return_data.size) + 452 len 0] = None
        mem[ceil32(return_data.size) + 463 len 0] = None
        mem[ceil32(return_data.size) + 463 len 27] = mem[ceil32(return_data.size) + 463 len 10], Mask(88, 0, 'access.role'), mem[ceil32(return_data.size) + 484 len 6]
        require ext_code.size(_storageAddress)
        call _storageAddress.0x7ae1cfca with:
             gas gas_remaining wei
            args sha3(mem[ceil32(return_data.size) + 452 len 11], 0, mem[ceil32(return_data.size) + 463 len 5], Mask(128, 32, msg.sender) >> 32, mem[ceil32(return_data.size) + 520 len 4])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if bool(ext_call.return_data[0]) != 1:
            revert with 0, 'Msg sender does not have permission.'
    sub_1acc050e[arg1].field_776 = 1
    emit 0x785b13f6: this.address, sub_1acc050e[arg1].field_0
    return 1
}

function sub_d4e266fb(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    s = 0
    t = 0
    u = 0
    v = 0
    w = 0
    x = 0
    idx = 0
    x = 0
    y = 0
    while idx < sub_66cb497d.length:
        mem[0] = sub_66cb497d[idx].field_0
        mem[32] = 1
        if not sub_1acc050e[stor2[idx].field_0].field_784:
            if idx + 1 >= idx:
                s = s
                t = t
                u = u
                v = v
                w = w
                x = sub_66cb497d[idx].field_0
                idx = idx + 1
                x = x
                y = y
                continue 
        else:
            mem[0] = sub_66cb497d[idx].field_0
            mem[32] = 1
            if sub_1acc050e[stor2[idx].field_0].field_768:
                if idx + 1 >= idx:
                    s = s
                    t = t
                    u = u
                    v = v
                    w = w
                    x = sub_66cb497d[idx].field_0
                    idx = idx + 1
                    x = x
                    y = y
                    continue 
            else:
                mem[0] = sub_66cb497d[idx].field_0
                mem[32] = 1
                if sub_1acc050e[stor2[idx].field_0].field_776:
                    if idx + 1 >= idx:
                        s = s
                        t = t
                        u = u
                        v = v
                        w = w
                        x = sub_66cb497d[idx].field_0
                        idx = idx + 1
                        x = x
                        y = y
                        continue 
                else:
                    mem[0] = sub_66cb497d[idx].field_0
                    mem[32] = 1
                    mem[mem[64] + 68] = arg3
                    require ext_code.size(sub_1acc050e[stor2[idx].field_0].field_0)
                    call sub_1acc050e[stor2[idx].field_0].field_0.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), address(arg2), arg3
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _23 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    if not mem[_23]:
                        if idx + 1 >= idx:
                            s = bool(mem[_23])
                            t = mem[_23 + 64]
                            u = mem[_23 + 32]
                            v = sub_1acc050e[stor2[idx].field_0].field_0
                            w = sha3(sub_66cb497d[idx].field_0, 1)
                            x = sub_66cb497d[idx].field_0
                            idx = idx + 1
                            x = x
                            y = y
                            continue 
                    else:
                        if not y:
                            if not x:
                                if idx + 1 >= idx:
                                    s = bool(mem[_23])
                                    t = mem[_23 + 64]
                                    u = mem[_23 + 32]
                                    v = sub_1acc050e[stor2[idx].field_0].field_0
                                    w = sha3(sub_66cb497d[idx].field_0, 1)
                                    x = sub_66cb497d[idx].field_0
                                    idx = idx + 1
                                    x = mem[_23 + 64]
                                    y = mem[_23 + 32]
                                    continue 
                            else:
                                if mem[_23 + 64] >= x:
                                    if idx + 1 >= idx:
                                        s = bool(mem[_23])
                                        t = mem[_23 + 64]
                                        u = mem[_23 + 32]
                                        v = sub_1acc050e[stor2[idx].field_0].field_0
                                        w = sha3(sub_66cb497d[idx].field_0, 1)
                                        x = sub_66cb497d[idx].field_0
                                        idx = idx + 1
                                        x = x
                                        y = mem[_23 + 32]
                                        continue 
                                else:
                                    if idx + 1 >= idx:
                                        s = bool(mem[_23])
                                        t = mem[_23 + 64]
                                        u = mem[_23 + 32]
                                        v = sub_1acc050e[stor2[idx].field_0].field_0
                                        w = sha3(sub_66cb497d[idx].field_0, 1)
                                        x = sub_66cb497d[idx].field_0
                                        idx = idx + 1
                                        x = mem[_23 + 64]
                                        y = mem[_23 + 32]
                                        continue 
                        else:
                            if mem[_23 + 32] <= y:
                                if not x:
                                    if idx + 1 >= idx:
                                        s = bool(mem[_23])
                                        t = mem[_23 + 64]
                                        u = mem[_23 + 32]
                                        v = sub_1acc050e[stor2[idx].field_0].field_0
                                        w = sha3(sub_66cb497d[idx].field_0, 1)
                                        x = sub_66cb497d[idx].field_0
                                        idx = idx + 1
                                        x = mem[_23 + 64]
                                        y = y
                                        continue 
                                else:
                                    if mem[_23 + 64] >= x:
                                        if idx + 1 >= idx:
                                            s = bool(mem[_23])
                                            t = mem[_23 + 64]
                                            u = mem[_23 + 32]
                                            v = sub_1acc050e[stor2[idx].field_0].field_0
                                            w = sha3(sub_66cb497d[idx].field_0, 1)
                                            x = sub_66cb497d[idx].field_0
                                            idx = idx + 1
                                            x = x
                                            y = y
                                            continue 
                                    else:
                                        if idx + 1 >= idx:
                                            s = bool(mem[_23])
                                            t = mem[_23 + 64]
                                            u = mem[_23 + 32]
                                            v = sub_1acc050e[stor2[idx].field_0].field_0
                                            w = sha3(sub_66cb497d[idx].field_0, 1)
                                            x = sub_66cb497d[idx].field_0
                                            idx = idx + 1
                                            x = mem[_23 + 64]
                                            y = y
                                            continue 
                            else:
                                if not x:
                                    if idx + 1 >= idx:
                                        s = bool(mem[_23])
                                        t = mem[_23 + 64]
                                        u = mem[_23 + 32]
                                        v = sub_1acc050e[stor2[idx].field_0].field_0
                                        w = sha3(sub_66cb497d[idx].field_0, 1)
                                        x = sub_66cb497d[idx].field_0
                                        idx = idx + 1
                                        x = mem[_23 + 64]
                                        y = mem[_23 + 32]
                                        continue 
                                else:
                                    if mem[_23 + 64] >= x:
                                        if idx + 1 >= idx:
                                            s = bool(mem[_23])
                                            t = mem[_23 + 64]
                                            u = mem[_23 + 32]
                                            v = sub_1acc050e[stor2[idx].field_0].field_0
                                            w = sha3(sub_66cb497d[idx].field_0, 1)
                                            x = sub_66cb497d[idx].field_0
                                            idx = idx + 1
                                            x = x
                                            y = mem[_23 + 32]
                                            continue 
                                    else:
                                        if idx + 1 >= idx:
                                            s = bool(mem[_23])
                                            t = mem[_23 + 64]
                                            u = mem[_23 + 32]
                                            v = sub_1acc050e[stor2[idx].field_0].field_0
                                            w = sha3(sub_66cb497d[idx].field_0, 1)
                                            x = sub_66cb497d[idx].field_0
                                            idx = idx + 1
                                            x = mem[_23 + 64]
                                            y = mem[_23 + 32]
                                            continue 
        ('lt', ('add', 1, ('var', 0)), ('var', 0))
        revert
    return y, x
}

function sub_354cbc45(?) {
    require calldata.size - 4 >= 96
    mem[96] = sub_66cb497d.length
    mem[64] = (32 * sub_66cb497d.length) + 128
    if not sub_66cb497d.length:
        s = 0
        t = 0
        u = 0
        v = 0
        w = 0
        x = 0
        idx = 0
        while idx < sub_66cb497d.length:
            mem[0] = sub_66cb497d[idx].field_0
            mem[32] = 1
            if not sub_1acc050e[stor2[idx].field_0].field_784:
                _68 = mem[64]
                mem[64] = mem[64] + 128
                mem[_68] = 0
                mem[_68 + 32] = 0
                mem[_68 + 64] = 0
                mem[_68 + 96] = 0
                if idx < mem[96]:
                    mem[(32 * idx) + 128] = _68
                    if idx + 1 >= idx:
                        s = s
                        t = t
                        u = u
                        v = v
                        w = w
                        x = sub_66cb497d[idx].field_0
                        idx = idx + 1
                        continue 
            else:
                mem[0] = sub_66cb497d[idx].field_0
                mem[32] = 1
                if sub_1acc050e[stor2[idx].field_0].field_768:
                    _72 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_72] = 0
                    mem[_72 + 32] = 0
                    mem[_72 + 64] = 0
                    mem[_72 + 96] = 0
                    if idx < mem[96]:
                        mem[(32 * idx) + 128] = _72
                        if idx + 1 >= idx:
                            s = s
                            t = t
                            u = u
                            v = v
                            w = w
                            x = sub_66cb497d[idx].field_0
                            idx = idx + 1
                            continue 
                else:
                    mem[0] = sub_66cb497d[idx].field_0
                    mem[32] = 1
                    if sub_1acc050e[stor2[idx].field_0].field_776:
                        _75 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_75] = 0
                        mem[_75 + 32] = 0
                        mem[_75 + 64] = 0
                        mem[_75 + 96] = 0
                        if idx < mem[96]:
                            mem[(32 * idx) + 128] = _75
                            if idx + 1 >= idx:
                                s = s
                                t = t
                                u = u
                                v = v
                                w = w
                                x = sub_66cb497d[idx].field_0
                                idx = idx + 1
                                continue 
                    else:
                        mem[0] = sub_66cb497d[idx].field_0
                        mem[32] = 1
                        mem[mem[64] + 68] = arg3
                        require ext_code.size(sub_1acc050e[stor2[idx].field_0].field_0)
                        call sub_1acc050e[stor2[idx].field_0].field_0.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), address(arg2), arg3
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _103 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _104 = mem[_103]
                        _107 = mem[_103 + 32]
                        _109 = mem[_103 + 64]
                        if not mem[_103]:
                            _111 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_111] = sub_66cb497d[idx].field_0
                            mem[_111 + 32] = 0
                            mem[_111 + 64] = 0
                            mem[_111 + 96] = 1
                            if idx < mem[96]:
                                mem[(32 * idx) + 128] = _111
                                if idx + 1 >= idx:
                                    s = bool(_104)
                                    t = _109
                                    u = _107
                                    v = sub_1acc050e[stor2[idx].field_0].field_0
                                    w = sha3(sub_66cb497d[idx].field_0, 1)
                                    x = sub_66cb497d[idx].field_0
                                    idx = idx + 1
                                    continue 
                        else:
                            _113 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_113] = sub_66cb497d[idx].field_0
                            mem[_113 + 32] = _109
                            mem[_113 + 64] = _107
                            mem[_113 + 96] = 1
                            if idx < mem[96]:
                                mem[(32 * idx) + 128] = _113
                                if idx + 1 >= idx:
                                    s = bool(_104)
                                    t = _109
                                    u = _107
                                    v = sub_1acc050e[stor2[idx].field_0].field_0
                                    w = sha3(sub_66cb497d[idx].field_0, 1)
                                    x = sub_66cb497d[idx].field_0
                                    idx = idx + 1
                                    continue 
            revert
        _62 = mem[64]
        mem[mem[64]] = 32
        _66 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _66:
            _121 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_121 + 32]
            mem[t + 64] = mem[_121 + 64]
            mem[t + 96] = bool(mem[_121 + 96])
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _62 + (128 * _66) + -mem[64] + 64
    mem[64] = (32 * sub_66cb497d.length) + 256
    mem[(32 * sub_66cb497d.length) + 128] = 0
    mem[(32 * sub_66cb497d.length) + 160] = 0
    mem[(32 * sub_66cb497d.length) + 192] = 0
    mem[(32 * sub_66cb497d.length) + 224] = 0
    mem[var27001] = (32 * sub_66cb497d.length) + 128
    s = var27001
    idx = var27002
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[(32 * sub_66cb497d.length) + 128] = 0
        mem[(32 * sub_66cb497d.length) + 160] = 0
        mem[(32 * sub_66cb497d.length) + 192] = 0
        mem[(32 * sub_66cb497d.length) + 224] = 0
        mem[s + 32] = (32 * sub_66cb497d.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    s = 0
    t = 0
    u = 0
    v = 0
    w = 0
    x = 0
    idx = 0
    while idx < sub_66cb497d.length:
        mem[0] = sub_66cb497d[idx].field_0
        mem[32] = 1
        if not sub_1acc050e[stor2[idx].field_0].field_784:
            _162 = mem[64]
            mem[64] = mem[64] + 128
            mem[_162] = 0
            mem[_162 + 32] = 0
            mem[_162 + 64] = 0
            mem[_162 + 96] = 0
            if idx < mem[96]:
                mem[(32 * idx) + 128] = _162
                if idx + 1 >= idx:
                    s = s
                    t = t
                    u = u
                    v = v
                    w = w
                    x = sub_66cb497d[idx].field_0
                    idx = idx + 1
                    continue 
        else:
            mem[0] = sub_66cb497d[idx].field_0
            mem[32] = 1
            if sub_1acc050e[stor2[idx].field_0].field_768:
                _164 = mem[64]
                mem[64] = mem[64] + 128
                mem[_164] = 0
                mem[_164 + 32] = 0
                mem[_164 + 64] = 0
                mem[_164 + 96] = 0
                if idx < mem[96]:
                    mem[(32 * idx) + 128] = _164
                    if idx + 1 >= idx:
                        s = s
                        t = t
                        u = u
                        v = v
                        w = w
                        x = sub_66cb497d[idx].field_0
                        idx = idx + 1
                        continue 
            else:
                mem[0] = sub_66cb497d[idx].field_0
                mem[32] = 1
                if sub_1acc050e[stor2[idx].field_0].field_776:
                    _166 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_166] = 0
                    mem[_166 + 32] = 0
                    mem[_166 + 64] = 0
                    mem[_166 + 96] = 0
                    if idx < mem[96]:
                        mem[(32 * idx) + 128] = _166
                        if idx + 1 >= idx:
                            s = s
                            t = t
                            u = u
                            v = v
                            w = w
                            x = sub_66cb497d[idx].field_0
                            idx = idx + 1
                            continue 
                else:
                    mem[0] = sub_66cb497d[idx].field_0
                    mem[32] = 1
                    mem[mem[64] + 68] = arg3
                    require ext_code.size(sub_1acc050e[stor2[idx].field_0].field_0)
                    call sub_1acc050e[stor2[idx].field_0].field_0.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), address(arg2), arg3
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _177 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _178 = mem[_177]
                    _179 = mem[_177 + 32]
                    _180 = mem[_177 + 64]
                    if not mem[_177]:
                        _181 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_181] = sub_66cb497d[idx].field_0
                        mem[_181 + 32] = 0
                        mem[_181 + 64] = 0
                        mem[_181 + 96] = 1
                        if idx < mem[96]:
                            mem[(32 * idx) + 128] = _181
                            if idx + 1 >= idx:
                                s = bool(_178)
                                t = _180
                                u = _179
                                v = sub_1acc050e[stor2[idx].field_0].field_0
                                w = sha3(sub_66cb497d[idx].field_0, 1)
                                x = sub_66cb497d[idx].field_0
                                idx = idx + 1
                                continue 
                    else:
                        _183 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_183] = sub_66cb497d[idx].field_0
                        mem[_183 + 32] = _180
                        mem[_183 + 64] = _179
                        mem[_183 + 96] = 1
                        if idx < mem[96]:
                            mem[(32 * idx) + 128] = _183
                            if idx + 1 >= idx:
                                s = bool(_178)
                                t = _180
                                u = _179
                                v = sub_1acc050e[stor2[idx].field_0].field_0
                                w = sha3(sub_66cb497d[idx].field_0, 1)
                                x = sub_66cb497d[idx].field_0
                                idx = idx + 1
                                continue 
        revert
    _156 = mem[64]
    mem[mem[64]] = 32
    _160 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _160:
        _185 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_185 + 32]
        mem[t + 64] = mem[_185 + 64]
        mem[t + 96] = bool(mem[_185 + 96])
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _156 + (128 * _160) + -mem[64] + 64
}



}
