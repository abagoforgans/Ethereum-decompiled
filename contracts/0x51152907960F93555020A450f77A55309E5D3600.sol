contract main {




// =====================  Runtime code  =====================


uint256 root;
address tokenAddress;
address stor2;
uint256 sub_50d38cf7;
mapping of uint8 stor4;

function sub_50d38cf7(?) payable {
    return sub_50d38cf7
}

function sent(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function root() payable {
    return root
}

function token() payable {
    return tokenAddress
}

function sub_7bc84332(?) payable {
    if stor2 != msg.sender:
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stor2, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    selfdestruct(stor2)
}

function _fallback() payable {
    revert
}

function setRoot(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender == stor2:
        root = arg1
        emit 0x996dd038: arg1
}

function getTokenBalance() payable {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_e12a1cea(?) payable {
    require calldata.size - 4 >= 64
    mem[96] = 2
    mem[128] = '0x'
    mem[160] = 1
    mem[192] = ' '
    mem[224] = 40
    mem[256 len 40] = code.data[4144 len 40]
    idx = 0
    while idx < 20:
        require 2^(8 * -idx + 19)
        require 2 * idx < 40
        if Mask(4, 4, arg1 / 2^(8 * -idx + 19)) << 244 >= '
':
            mem[(2 * idx) + 256 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 87, ('div', ('mask', 8, 0, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 16))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 87, ('div', ('mask', 8, 0, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 16))), 0) - 256
        else:
            mem[(2 * idx) + 256 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('div', ('mask', 8, 0, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 16))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('div', ('mask', 8, 0, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 16))), 0) - 256
        require (2 * idx) + 1 < 40
        if uint8(arg1 / 2^(8 * -idx + 19)) - Mask(4, 4, arg1 / 2^(8 * -idx + 19)) << 248 >= '
':
            mem[(2 * idx) + 257 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 87, ('mask_shl', 8, 0, 0, ('add', ('mask_shl', 8, 0, 0, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), ('mul', -1, ('mask_shl', 4, 4, 0, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0)))))))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 87, ('mask_shl', 8, 0, 0, ('add', ('mask_shl', 8, 0, 0, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), ('mul', -1, ('mask_shl', 4, 4, 0, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0)))))))))))), 0) - 256
        else:
            mem[(2 * idx) + 257 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('mask_shl', 8, 0, 0, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), ('mul', -1, ('mask_shl', 4, 4, 0, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0)))))))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('mask_shl', 8, 0, 0, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), ('mul', -1, ('mask_shl', 4, 4, 0, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0)))))))))))), 0) - 256
        idx = idx + 1
        continue 
    if not arg2:
        mem[320] = 1
        mem[352] = '0'
        mem[384] = 44
        mem[416 len 44] = code.data[4144 len 44]
        idx = 0
        s = 0
        while uint8(idx) < 2:
            require uint8(idx) < 2
            require s < mem[384]
            mem[s + 416 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = None
        while uint8(idx) < 40:
            require uint8(idx) < 40
            require s < mem[384]
            mem[s + 416 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = 2 * None
        while uint8(idx) < 1:
            require uint8(idx) < 1
            require s < mem[384]
            mem[s + 416 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = 3 * None
        while uint8(idx) < 1:
            require uint8(idx) < 1
            require s < mem[384]
            mem[s + 416 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 352, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 352, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        mem[480] = 32
        mem[512] = mem[384]
        mem[544 len ceil32(mem[384])] = mem[416 len ceil32(mem[384])]
        return Array(len=mem[384], data=mem[544 len mem[384]])
    t = 0
    s = arg2
    while s:
        t = t + 1
        s = s / 10
        continue 
    mem[320] = t
    mem[64] = ceil32(t) + 352
    if not t:
        u = t - 1
        s = arg2
        while s:
            require u < mem[320]
            mem[u + 352 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
            u = u - 1
            s = s / 10
            continue 
        _225 = mem[320]
        _226 = mem[160]
        _227 = mem[224]
        _228 = mem[96]
        _229 = mem[64]
        mem[mem[64]] = mem[96] + mem[224] + mem[160] + mem[320]
        mem[64] = mem[64] + floor32(_228 + _227 + _226 + _225 + 31) + 32
        if not _228 + _227 + _226 + _225:
            _361 = mem[96]
            idx = 0
            s = 0
            while uint8(idx) < _361:
                require uint8(idx) < mem[96]
                require s < mem[_229]
                mem[_229 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) - 256
                idx = idx + 1
                s = s + 1
                continue 
            _483 = mem[224]
            idx = 0
            s = None
            while uint8(idx) < _483:
                require uint8(idx) < mem[224]
                require s < mem[_229]
                mem[_229 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) - 256
                _483 = mem[224]
                idx = idx + 1
                s = s + 1
                continue 
            _581 = mem[160]
            idx = 0
            s = 2 * None
            while uint8(idx) < _581:
                require uint8(idx) < mem[160]
                require s < mem[_229]
                mem[_229 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) - 256
                _581 = mem[160]
                idx = idx + 1
                s = s + 1
                continue 
            _649 = mem[320]
            idx = 0
            s = 3 * None
            while uint8(idx) < _649:
                require uint8(idx) < mem[320]
                require s < mem[_229]
                mem[_229 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 352, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 352, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) - 256
                _649 = mem[320]
                idx = idx + 1
                s = s + 1
                continue 
            _657 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[_229]
            _659 = mem[_229]
            mem[mem[64] + 64 len ceil32(mem[_229])] = mem[_229 + 32 len ceil32(mem[_229])]
            if not _659 % 32:
                return 32, mem[mem[64] + 32 len _659 + 32]
            mem[floor32(_659) + mem[64] + 64] = mem[floor32(_659) + mem[64] + -(_659 % 32) + 96 len _659 % 32]
            return memory
              from mem[64]
               len floor32(_659) + _657 + -mem[64] + 96
        mem[_229 + 32 len _228 + _227 + _226 + _225] = code.data[4144 len _228 + _227 + _226 + _225]
        _362 = mem[96]
        idx = 0
        s = 0
        while uint8(idx) < _362:
            require uint8(idx) < mem[96]
            require s < mem[_229]
            mem[_229 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        _484 = mem[224]
        idx = 0
        s = None
        while uint8(idx) < _484:
            require uint8(idx) < mem[224]
            require s < mem[_229]
            mem[_229 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) - 256
            _484 = mem[224]
            idx = idx + 1
            s = s + 1
            continue 
        _582 = mem[160]
        idx = 0
        s = 2 * None
        while uint8(idx) < _582:
            require uint8(idx) < mem[160]
            require s < mem[_229]
            mem[_229 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) - 256
            _582 = mem[160]
            idx = idx + 1
            s = s + 1
            continue 
        _650 = mem[320]
        idx = 0
        s = 3 * None
        while uint8(idx) < _650:
            require uint8(idx) < mem[320]
            require s < mem[_229]
            mem[_229 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 352, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 352, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) - 256
            _650 = mem[320]
            idx = idx + 1
            s = s + 1
            continue 
        _662 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_229]
        _664 = mem[_229]
        mem[mem[64] + 64 len ceil32(mem[_229])] = mem[_229 + 32 len ceil32(mem[_229])]
        if not _664 % 32:
            return 32, mem[mem[64] + 32 len _664 + 32]
        mem[floor32(_664) + mem[64] + 64] = mem[floor32(_664) + mem[64] + -(_664 % 32) + 96 len _664 % 32]
        return memory
          from mem[64]
           len floor32(_664) + _662 + -mem[64] + 96
    mem[352 len t] = code.data[4144 len t]
    s = t - 1
    idx = arg2
    while idx:
        require s < mem[320]
        mem[s + 352 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        s = s - 1
        idx = idx / 10
        continue 
    _230 = mem[320]
    _231 = mem[160]
    _232 = mem[224]
    _233 = mem[96]
    _234 = mem[64]
    mem[mem[64]] = mem[96] + mem[224] + mem[160] + mem[320]
    mem[64] = mem[64] + floor32(_233 + _232 + _231 + _230 + 31) + 32
    if not _233 + _232 + _231 + _230:
        _363 = mem[96]
        idx = 0
        s = 0
        while uint8(idx) < _363:
            require uint8(idx) < mem[96]
            require s < mem[_234]
            mem[_234 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        _485 = mem[224]
        idx = 0
        s = None
        while uint8(idx) < _485:
            require uint8(idx) < mem[224]
            require s < mem[_234]
            mem[_234 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) - 256
            _485 = mem[224]
            idx = idx + 1
            s = s + 1
            continue 
        _583 = mem[160]
        idx = 0
        s = 2 * None
        while uint8(idx) < _583:
            require uint8(idx) < mem[160]
            require s < mem[_234]
            mem[_234 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) - 256
            _583 = mem[160]
            idx = idx + 1
            s = s + 1
            continue 
        _651 = mem[320]
        idx = 0
        s = 3 * None
        while uint8(idx) < _651:
            require uint8(idx) < mem[320]
            require s < mem[_234]
            mem[_234 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 352, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 352, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) - 256
            _651 = mem[320]
            idx = idx + 1
            s = s + 1
            continue 
        _667 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_234]
        _669 = mem[_234]
        mem[mem[64] + 64 len ceil32(mem[_234])] = mem[_234 + 32 len ceil32(mem[_234])]
        if not _669 % 32:
            return 32, mem[mem[64] + 32 len _669 + 32]
        mem[floor32(_669) + mem[64] + 64] = mem[floor32(_669) + mem[64] + -(_669 % 32) + 96 len _669 % 32]
        return memory
          from mem[64]
           len floor32(_669) + _667 + -mem[64] + 96
    mem[_234 + 32 len _233 + _232 + _231 + _230] = code.data[4144 len _233 + _232 + _231 + _230]
    _364 = mem[96]
    idx = 0
    s = 0
    while uint8(idx) < _364:
        require uint8(idx) < mem[96]
        require s < mem[_234]
        mem[_234 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    _486 = mem[224]
    idx = 0
    s = None
    while uint8(idx) < _486:
        require uint8(idx) < mem[224]
        require s < mem[_234]
        mem[_234 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) - 256
        _486 = mem[224]
        idx = idx + 1
        s = s + 1
        continue 
    _584 = mem[160]
    idx = 0
    s = 2 * None
    while uint8(idx) < _584:
        require uint8(idx) < mem[160]
        require s < mem[_234]
        mem[_234 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) - 256
        _584 = mem[160]
        idx = idx + 1
        s = s + 1
        continue 
    _652 = mem[320]
    idx = 0
    s = 3 * None
    while uint8(idx) < _652:
        require uint8(idx) < mem[320]
        require s < mem[_234]
        mem[_234 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 352, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 352, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) - 256
        _652 = mem[320]
        idx = idx + 1
        s = s + 1
        continue 
    _672 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_234]
    _674 = mem[_234]
    mem[mem[64] + 64 len ceil32(mem[_234])] = mem[_234 + 32 len ceil32(mem[_234])]
    if not _674 % 32:
        return 32, mem[mem[64] + 32 len _674 + 32]
    mem[floor32(_674) + mem[64] + 64] = mem[floor32(_674) + mem[64] + -(_674 % 32) + 96 len _674 % 32]
    return memory
      from mem[64]
       len floor32(_674) + _672 + -mem[64] + 96
}

function sub_d7480fc3(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[0] = arg2
    mem[32] = 4
    require not stor4[address(arg2)]
    require arg3 > 0
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 2
    mem[(32 * arg1.length) + 160] = '0x'
    mem[(32 * arg1.length) + 192] = 1
    mem[(32 * arg1.length) + 224] = ' '
    mem[(32 * arg1.length) + 256] = 40
    mem[(32 * arg1.length) + 288 len 40] = code.data[4144 len 40]
    idx = 0
    while idx < 20:
        require 2^(8 * -idx + 19)
        require 2 * idx < 40
        if Mask(4, 4, arg2 / 2^(8 * -idx + 19)) << 244 >= '
':
            mem[(32 * arg1.length) + (2 * idx) + 288 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 87, ('div', ('mask', 8, 0, ('div', ('param', 'arg2'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 16))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 87, ('div', ('mask', 8, 0, ('div', ('param', 'arg2'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 16))), 0) - 256
        else:
            mem[(32 * arg1.length) + (2 * idx) + 288 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('div', ('mask', 8, 0, ('div', ('param', 'arg2'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 16))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('div', ('mask', 8, 0, ('div', ('param', 'arg2'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 16))), 0) - 256
        require (2 * idx) + 1 < 40
        if uint8(arg2 / 2^(8 * -idx + 19)) - Mask(4, 4, arg2 / 2^(8 * -idx + 19)) << 248 >= '
':
            mem[(32 * arg1.length) + (2 * idx) + 289 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 87, ('mask_shl', 8, 0, 0, ('add', ('mask_shl', 8, 0, 0, ('div', ('param', 'arg2'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), ('mul', -1, ('mask_shl', 4, 4, 0, ('div', ('param', 'arg2'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0)))))))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 87, ('mask_shl', 8, 0, 0, ('add', ('mask_shl', 8, 0, 0, ('div', ('param', 'arg2'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), ('mul', -1, ('mask_shl', 4, 4, 0, ('div', ('param', 'arg2'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0)))))))))))), 0) - 256
        else:
            mem[(32 * arg1.length) + (2 * idx) + 289 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('mask_shl', 8, 0, 0, ('div', ('param', 'arg2'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), ('mul', -1, ('mask_shl', 4, 4, 0, ('div', ('param', 'arg2'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0)))))))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('mask_shl', 8, 0, 0, ('div', ('param', 'arg2'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), ('mul', -1, ('mask_shl', 4, 4, 0, ('div', ('param', 'arg2'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0)))))))))))), 0) - 256
        idx = idx + 1
        continue 
    if not arg3:
        mem[(32 * arg1.length) + 352] = 1
        mem[(32 * arg1.length) + 384] = '0'
        mem[(32 * arg1.length) + 416] = 44
        mem[64] = (32 * arg1.length) + 512
        mem[(32 * arg1.length) + 448 len 44] = code.data[4144 len 44]
        idx = 0
        s = 0
        while uint8(idx) < 2:
            require uint8(idx) < 2
            require s < mem[(32 * arg1.length) + 416]
            mem[(32 * arg1.length) + s + 448 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = None
        while uint8(idx) < 40:
            require uint8(idx) < 40
            require s < mem[(32 * arg1.length) + 416]
            mem[(32 * arg1.length) + s + 448 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = 2 * None
        while uint8(idx) < 1:
            require uint8(idx) < 1
            require s < mem[(32 * arg1.length) + 416]
            mem[(32 * arg1.length) + s + 448 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = 3 * None
        while uint8(idx) < 1:
            require uint8(idx) < 1
            require s < mem[(32 * arg1.length) + 416]
            mem[(32 * arg1.length) + s + 448 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 384, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 384, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = 0
        while idx < arg1.length:
            require idx < mem[96]
            _1102 = mem[(32 * idx) + 128]
            if s + sha3(mem[(32 * arg1.length) + 448 len mem[(32 * arg1.length) + 416]]) >= mem[(32 * idx) + 128]:
                mem[mem[64] + 32] = mem[(32 * idx) + 128]
                mem[mem[64] + 64] = s + sha3(mem[(32 * arg1.length) + 448 len mem[(32 * arg1.length) + 416]])
                _1128 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                idx = idx + 1
                s = sha3(mem[_1128 + 32 len mem[_1128]])
                continue 
            mem[mem[64] + 32] = s + sha3(mem[(32 * arg1.length) + 448 len mem[(32 * arg1.length) + 416]])
            mem[mem[64] + 64] = _1102
            _1132 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            idx = idx + 1
            s = sha3(mem[_1132 + 32 len mem[_1132]])
            continue 
    else:
        t = 0
        s = arg3
        while s:
            t = t + 1
            s = s / 10
            continue 
        mem[(32 * arg1.length) + 352] = t
        if not t:
            u = t - 1
            s = arg3
            while s:
                require u < t
                mem[(32 * arg1.length) + u + 384 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                u = u - 1
                s = s / 10
                continue 
            mem[(32 * arg1.length) + ceil32(t) + 384] = t + 43
            mem[64] = (32 * arg1.length) + ceil32(t) + floor32(t + 74) + 416
            if not t + 43:
                idx = 0
                s = 0
                while uint8(idx) < 2:
                    require uint8(idx) < 2
                    require s < mem[(32 * arg1.length) + ceil32(t) + 384]
                    mem[(32 * arg1.length) + ceil32(t) + s + 416 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) - 256
                    idx = idx + 1
                    s = s + 1
                    continue 
                idx = 0
                s = None
                while uint8(idx) < 40:
                    require uint8(idx) < 40
                    require s < mem[(32 * arg1.length) + ceil32(t) + 384]
                    mem[(32 * arg1.length) + ceil32(t) + s + 416 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) - 256
                    idx = idx + 1
                    s = s + 1
                    continue 
                idx = 0
                s = 2 * None
                while uint8(idx) < 1:
                    require uint8(idx) < 1
                    require s < mem[(32 * arg1.length) + ceil32(t) + 384]
                    mem[(32 * arg1.length) + ceil32(t) + s + 416 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) - 256
                    idx = idx + 1
                    s = s + 1
                    continue 
                s = 0
                u = 3 * None
                while uint8(s) < t:
                    require uint8(s) < t
                    require u < mem[(32 * arg1.length) + ceil32(t) + 384]
                    mem[(32 * arg1.length) + ceil32(t) + u + 416 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 384, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 1))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 384, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 1))), 32))), 0) - 256
                    s = s + 1
                    u = u + 1
                    continue 
                idx = 0
                s = 0
                while idx < arg1.length:
                    require idx < mem[96]
                    _1389 = mem[(32 * idx) + 128]
                    if s + sha3(mem[(32 * arg1.length) + ceil32(t) + 416 len mem[(32 * arg1.length) + ceil32(t) + 384]]) >= mem[(32 * idx) + 128]:
                        mem[mem[64] + 32] = mem[(32 * idx) + 128]
                        mem[mem[64] + 64] = s + sha3(mem[(32 * arg1.length) + ceil32(t) + 416 len mem[(32 * arg1.length) + ceil32(t) + 384]])
                        _1396 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        idx = idx + 1
                        s = sha3(mem[_1396 + 32 len mem[_1396]])
                        continue 
                    mem[mem[64] + 32] = s + sha3(mem[(32 * arg1.length) + ceil32(t) + 416 len mem[(32 * arg1.length) + ceil32(t) + 384]])
                    mem[mem[64] + 64] = _1389
                    _1400 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    idx = idx + 1
                    s = sha3(mem[_1400 + 32 len mem[_1400]])
                    continue 
            else:
                mem[(32 * arg1.length) + ceil32(t) + 416 len t + 43] = code.data[4144 len t + 43]
                idx = 0
                s = 0
                while uint8(idx) < 2:
                    require uint8(idx) < 2
                    require s < mem[(32 * arg1.length) + ceil32(t) + 384]
                    mem[(32 * arg1.length) + ceil32(t) + s + 416 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) - 256
                    idx = idx + 1
                    s = s + 1
                    continue 
                idx = 0
                s = None
                while uint8(idx) < 40:
                    require uint8(idx) < 40
                    require s < mem[(32 * arg1.length) + ceil32(t) + 384]
                    mem[(32 * arg1.length) + ceil32(t) + s + 416 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) - 256
                    idx = idx + 1
                    s = s + 1
                    continue 
                idx = 0
                s = 2 * None
                while uint8(idx) < 1:
                    require uint8(idx) < 1
                    require s < mem[(32 * arg1.length) + ceil32(t) + 384]
                    mem[(32 * arg1.length) + ceil32(t) + s + 416 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) - 256
                    idx = idx + 1
                    s = s + 1
                    continue 
                s = 0
                u = 3 * None
                while uint8(s) < t:
                    require uint8(s) < t
                    require u < mem[(32 * arg1.length) + ceil32(t) + 384]
                    mem[(32 * arg1.length) + ceil32(t) + u + 416 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 384, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 1))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 384, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 1))), 32))), 0) - 256
                    s = s + 1
                    u = u + 1
                    continue 
                idx = 0
                s = 0
                while idx < arg1.length:
                    require idx < mem[96]
                    _1390 = mem[(32 * idx) + 128]
                    if s + sha3(mem[(32 * arg1.length) + ceil32(t) + 416 len mem[(32 * arg1.length) + ceil32(t) + 384]]) >= mem[(32 * idx) + 128]:
                        mem[mem[64] + 32] = mem[(32 * idx) + 128]
                        mem[mem[64] + 64] = s + sha3(mem[(32 * arg1.length) + ceil32(t) + 416 len mem[(32 * arg1.length) + ceil32(t) + 384]])
                        _1406 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        idx = idx + 1
                        s = sha3(mem[_1406 + 32 len mem[_1406]])
                        continue 
                    mem[mem[64] + 32] = s + sha3(mem[(32 * arg1.length) + ceil32(t) + 416 len mem[(32 * arg1.length) + ceil32(t) + 384]])
                    mem[mem[64] + 64] = _1390
                    _1410 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    idx = idx + 1
                    s = sha3(mem[_1410 + 32 len mem[_1410]])
                    continue 
        else:
            mem[(32 * arg1.length) + 384 len t] = code.data[4144 len t]
            s = t - 1
            idx = arg3
            while idx:
                require s < t
                mem[(32 * arg1.length) + s + 384 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                s = s - 1
                idx = idx / 10
                continue 
            mem[(32 * arg1.length) + ceil32(t) + 384] = t + 43
            mem[64] = (32 * arg1.length) + ceil32(t) + floor32(t + 74) + 416
            if not t + 43:
                idx = 0
                s = 0
                while uint8(idx) < 2:
                    require uint8(idx) < 2
                    require s < mem[(32 * arg1.length) + ceil32(t) + 384]
                    mem[(32 * arg1.length) + ceil32(t) + s + 416 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) - 256
                    idx = idx + 1
                    s = s + 1
                    continue 
                idx = 0
                s = None
                while uint8(idx) < 40:
                    require uint8(idx) < 40
                    require s < mem[(32 * arg1.length) + ceil32(t) + 384]
                    mem[(32 * arg1.length) + ceil32(t) + s + 416 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) - 256
                    idx = idx + 1
                    s = s + 1
                    continue 
                idx = 0
                s = 2 * None
                while uint8(idx) < 1:
                    require uint8(idx) < 1
                    require s < mem[(32 * arg1.length) + ceil32(t) + 384]
                    mem[(32 * arg1.length) + ceil32(t) + s + 416 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) - 256
                    idx = idx + 1
                    s = s + 1
                    continue 
                s = 0
                u = 3 * None
                while uint8(s) < t:
                    require uint8(s) < t
                    require u < mem[(32 * arg1.length) + ceil32(t) + 384]
                    mem[(32 * arg1.length) + ceil32(t) + u + 416 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 384, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 1))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 384, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 1))), 32))), 0) - 256
                    s = s + 1
                    u = u + 1
                    continue 
                idx = 0
                s = 0
                while idx < arg1.length:
                    require idx < mem[96]
                    _1391 = mem[(32 * idx) + 128]
                    if s + sha3(mem[(32 * arg1.length) + ceil32(t) + 416 len mem[(32 * arg1.length) + ceil32(t) + 384]]) >= mem[(32 * idx) + 128]:
                        mem[mem[64] + 32] = mem[(32 * idx) + 128]
                        mem[mem[64] + 64] = s + sha3(mem[(32 * arg1.length) + ceil32(t) + 416 len mem[(32 * arg1.length) + ceil32(t) + 384]])
                        _1416 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        idx = idx + 1
                        s = sha3(mem[_1416 + 32 len mem[_1416]])
                        continue 
                    mem[mem[64] + 32] = s + sha3(mem[(32 * arg1.length) + ceil32(t) + 416 len mem[(32 * arg1.length) + ceil32(t) + 384]])
                    mem[mem[64] + 64] = _1391
                    _1420 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    idx = idx + 1
                    s = sha3(mem[_1420 + 32 len mem[_1420]])
                    continue 
            else:
                mem[(32 * arg1.length) + ceil32(t) + 416 len t + 43] = code.data[4144 len t + 43]
                idx = 0
                s = 0
                while uint8(idx) < 2:
                    require uint8(idx) < 2
                    require s < mem[(32 * arg1.length) + ceil32(t) + 384]
                    mem[(32 * arg1.length) + ceil32(t) + s + 416 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) - 256
                    idx = idx + 1
                    s = s + 1
                    continue 
                idx = 0
                s = None
                while uint8(idx) < 40:
                    require uint8(idx) < 40
                    require s < mem[(32 * arg1.length) + ceil32(t) + 384]
                    mem[(32 * arg1.length) + ceil32(t) + s + 416 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) - 256
                    idx = idx + 1
                    s = s + 1
                    continue 
                idx = 0
                s = 2 * None
                while uint8(idx) < 1:
                    require uint8(idx) < 1
                    require s < mem[(32 * arg1.length) + ceil32(t) + 384]
                    mem[(32 * arg1.length) + ceil32(t) + s + 416 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) - 256
                    idx = idx + 1
                    s = s + 1
                    continue 
                s = 0
                u = 3 * None
                while uint8(s) < t:
                    require uint8(s) < t
                    require u < mem[(32 * arg1.length) + ceil32(t) + 384]
                    mem[(32 * arg1.length) + ceil32(t) + u + 416 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 384, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 1))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 384, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 8, 0, 0, ('var', 1))), 32))), 0) - 256
                    s = s + 1
                    u = u + 1
                    continue 
                idx = 0
                s = 0
                while idx < arg1.length:
                    require idx < mem[96]
                    _1392 = mem[(32 * idx) + 128]
                    if s + sha3(mem[(32 * arg1.length) + ceil32(t) + 416 len mem[(32 * arg1.length) + ceil32(t) + 384]]) >= mem[(32 * idx) + 128]:
                        mem[mem[64] + 32] = mem[(32 * idx) + 128]
                        mem[mem[64] + 64] = s + sha3(mem[(32 * arg1.length) + ceil32(t) + 416 len mem[(32 * arg1.length) + ceil32(t) + 384]])
                        _1426 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        idx = idx + 1
                        s = sha3(mem[_1426 + 32 len mem[_1426]])
                        continue 
                    mem[mem[64] + 32] = s + sha3(mem[(32 * arg1.length) + ceil32(t) + 416 len mem[(32 * arg1.length) + ceil32(t) + 384]])
                    mem[mem[64] + 64] = _1392
                    _1430 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    idx = idx + 1
                    s = sha3(mem[_1430 + 32 len mem[_1430]])
                    continue 
    require root == s
    require ext_code.size(tokenAddress)
    call tokenAddress.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor4[address(arg2)] = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3 * 10^ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    sub_50d38cf7 += arg3
    emit 0xa831211c: address(arg2), arg3
    return 1
}



}
