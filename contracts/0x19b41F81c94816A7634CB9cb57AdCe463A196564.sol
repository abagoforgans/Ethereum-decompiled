contract main {




// =====================  Runtime code  =====================


#
#  - sub_3021c717(?)
#
address sub_2cf76f2eAddress;
uint256 stor1;

function sub_2cf76f2e(?) {
    return sub_2cf76f2eAddress
}

function _fallback() payable {
    revert
}

function sub_89f1401b(?) {
    stor1 = arg1
}

function sub_4c416add(?) {
    sub_2cf76f2eAddress = arg1
}

function sub_ca0efecd(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 1
    mem[ceil32(arg1.length) + 160] = code.data[7481 len 32]
    idx = 2
    while idx < 3:
        require idx < arg1.length
        require idx - 2 < 1
        mem[ceil32(arg1.length) + idx + 158 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        continue 
    s = 0
    idx = 0
    s = 0
    while idx < 1:
        require idx < 1
        if mem[ceil32(arg1.length) + idx + 160 len 1] < 48:
            s = mem[ceil32(arg1.length) + idx + 160 len 1]
            idx = idx + 1
            s = s
            continue 
        if mem[ceil32(arg1.length) + idx + 160 len 1] > 57:
            s = mem[ceil32(arg1.length) + idx + 160 len 1]
            idx = idx + 1
            s = s
            continue 
        s = mem[ceil32(arg1.length) + idx + 160 len 1]
        idx = idx + 1
        s = (10 * s) + mem[ceil32(arg1.length) + idx + 160 len 1] - 48
        continue 
    require s < 9
    if not s + 1:
        if 2 < arg1.length:
            return Array(len=arg1.length, data=arg1[all])
    else:
        t = 0
        idx = s + 1
        while idx:
            t = t + 1
            idx = idx / 10
            continue 
        u = t - 1
        idx = s + 1
        while idx:
            require u < t
            mem[ceil32(arg1.length) + u + 224 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            u = u - 1
            idx = idx / 10
            continue 
        if 0 < t:
            if 2 < arg1.length:
                return Array(len=arg1.length, data=arg1[all])
    revert
}

function substring(string arg1, uint256 arg2, uint256 arg3) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg3 - arg2
    mem[64] = ceil32(arg1.length) + floor32(arg3 + -arg2 + 31) + 160
    if not arg3 - arg2:
        idx = arg2
        while idx < arg3:
            require idx < mem[96]
            require idx - arg2 < mem[ceil32(arg1.length) + 128]
            mem[ceil32(arg1.length) + idx + -arg2 + 160 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[ceil32(arg1.length) + 128]
        _27 = mem[ceil32(arg1.length) + 128]
        mem[mem[64] + 64 len ceil32(mem[ceil32(arg1.length) + 128])] = mem[ceil32(arg1.length) + 160 len ceil32(mem[ceil32(arg1.length) + 128])]
        if not _27 % 32:
            return 32, mem[mem[64] + 32 len _27 + 32]
        mem[floor32(_27) + mem[64] + 64] = mem[floor32(_27) + mem[64] + -(_27 % 32) + 96 len _27 % 32]
        return 32, mem[mem[64] + 32 len floor32(_27) + 64]
    mem[ceil32(arg1.length) + 160 len 32 * arg3 - arg2] = code.data[7481 len 32 * arg3 - arg2]
    idx = arg2
    while idx < arg3:
        require idx < mem[96]
        require idx - arg2 < mem[ceil32(arg1.length) + 128]
        mem[ceil32(arg1.length) + idx + -arg2 + 160 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        continue 
    _30 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[ceil32(arg1.length) + 128]
    _32 = mem[ceil32(arg1.length) + 128]
    mem[mem[64] + 64 len ceil32(mem[ceil32(arg1.length) + 128])] = mem[ceil32(arg1.length) + 160 len ceil32(mem[ceil32(arg1.length) + 128])]
    if not _32 % 32:
        return 32, mem[mem[64] + 32 len _32 + 32]
    mem[floor32(_32) + mem[64] + 64] = mem[floor32(_32) + mem[64] + -(_32 % 32) + 96 len _32 % 32]
    return memory
      from mem[64]
       len floor32(_32) + _30 + -mem[64] + 96
}

function sub_3ae8b86c(?) {
    require ext_code.size(sub_2cf76f2eAddress)
    call sub_2cf76f2eAddress.0x3d709ff1 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_2cf76f2eAddress)
    call sub_2cf76f2eAddress.0x65141c20 with:
         gas gas_remaining wei
        args arg1, ext_call.return_data[0] + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_2cf76f2eAddress)
    call sub_2cf76f2eAddress.0x3d709ff1 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[132] = ext_call.return_data[0] + 1
    require ext_code.size(sub_2cf76f2eAddress)
    call sub_2cf76f2eAddress.0x65141c20 with:
         gas gas_remaining wei
        args arg2, ext_call.return_data[0] + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96] = 0x3b011b3000000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(sub_2cf76f2eAddress)
    call sub_2cf76f2eAddress.0x3b011b30 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _16 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = 1
    mem[64] = ceil32(return_data.size) + 160
    mem[ceil32(return_data.size) + 128] = code.data[7481 len 32]
    idx = 2
    while idx < 3:
        require idx < mem[_16 + 96]
        require idx - 2 < 1
        mem[ceil32(return_data.size) + idx + 126 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', '_16'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', '_16'), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        continue 
    s = 0
    idx = 0
    s = 0
    while idx < 1:
        require idx < 1
        if mem[ceil32(return_data.size) + idx + 128 len 1] < 48:
            s = mem[ceil32(return_data.size) + idx + 128 len 1]
            idx = idx + 1
            s = s
            continue 
        if mem[ceil32(return_data.size) + idx + 128 len 1] > 57:
            s = mem[ceil32(return_data.size) + idx + 128 len 1]
            idx = idx + 1
            s = s
            continue 
        s = mem[ceil32(return_data.size) + idx + 128 len 1]
        idx = idx + 1
        s = (10 * s) + mem[ceil32(return_data.size) + idx + 128 len 1] - 48
        continue 
    require s < 9
    if not s + 1:
        mem[ceil32(return_data.size) + 160] = 1
        mem[ceil32(return_data.size) + 192] = '0'
        require 2 < mem[_16 + 96]
        mem[_16 + 130 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'0'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'0'"), 0) - 256
        mem[ceil32(return_data.size) + 224] = 0x831479800000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 228] = arg1
        mem[ceil32(return_data.size) + 260] = 64
        mem[ceil32(return_data.size) + 292] = mem[_16 + 96]
        _37 = mem[_16 + 96]
        mem[ceil32(return_data.size) + 324 len ceil32(mem[_16 + 96])] = mem[_16 + 128 len ceil32(mem[_16 + 96])]
        if not _37 % 32:
            require ext_code.size(sub_2cf76f2eAddress)
            call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                 gas gas_remaining wei
                args arg1, 64, mem[ceil32(return_data.size) + 292 len _37 + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 224] = 0x3b011b3000000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 228] = arg2
            require ext_code.size(sub_2cf76f2eAddress)
            call sub_2cf76f2eAddress.0x3b011b30 with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _76 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
            require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(return_data.size) + 224] <= 4294967296 and mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + mem[mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(return_data.size) + 224] + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 224] = 1
            mem[(2 * ceil32(return_data.size)) + 256] = code.data[7481 len 32]
            idx = 2
            while idx < 3:
                require idx < mem[_76 + ceil32(return_data.size) + 224]
                require idx - 2 < 1
                mem[(2 * ceil32(return_data.size)) + idx + 254 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('var', '_76'), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('var', '_76'), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                continue 
            s = 0
            idx = 0
            s = 0
            while idx < 1:
                require idx < 1
                if mem[(2 * ceil32(return_data.size)) + idx + 256 len 1] < 48:
                    s = mem[(2 * ceil32(return_data.size)) + idx + 256 len 1]
                    idx = idx + 1
                    s = s
                    continue 
                if mem[(2 * ceil32(return_data.size)) + idx + 256 len 1] > 57:
                    s = mem[(2 * ceil32(return_data.size)) + idx + 256 len 1]
                    idx = idx + 1
                    s = s
                    continue 
                s = mem[(2 * ceil32(return_data.size)) + idx + 256 len 1]
                idx = idx + 1
                s = (10 * s) + mem[(2 * ceil32(return_data.size)) + idx + 256 len 1] - 48
                continue 
            require s < 9
            if not s + 1:
                mem[(2 * ceil32(return_data.size)) + 288] = 1
                mem[(2 * ceil32(return_data.size)) + 320] = '0'
                require 2 < mem[_76 + ceil32(return_data.size) + 224]
                mem[_76 + ceil32(return_data.size) + 258 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'0'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'0'"), 0) - 256
                mem[(2 * ceil32(return_data.size)) + 352] = 0x831479800000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 356] = arg2
                mem[(2 * ceil32(return_data.size)) + 388] = 64
                mem[(2 * ceil32(return_data.size)) + 420] = mem[_76 + ceil32(return_data.size) + 224]
                _255 = mem[_76 + ceil32(return_data.size) + 224]
                mem[(2 * ceil32(return_data.size)) + 452 len ceil32(mem[_76 + ceil32(return_data.size) + 224])] = mem[_76 + ceil32(return_data.size) + 256 len ceil32(mem[_76 + ceil32(return_data.size) + 224])]
                if not _255 % 32:
                    require ext_code.size(sub_2cf76f2eAddress)
                    call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                         gas gas_remaining wei
                        args arg2, 64, mem[(2 * ceil32(return_data.size)) + 420 len _255 + 32]
                else:
                    mem[floor32(_255) + (2 * ceil32(return_data.size)) + 452] = mem[floor32(_255) + (2 * ceil32(return_data.size)) + -(_255 % 32) + 484 len _255 % 32]
                    require ext_code.size(sub_2cf76f2eAddress)
                    call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                         gas gas_remaining wei
                        args arg2, 64, mem[(2 * ceil32(return_data.size)) + 420 len floor32(_255) + 64]
            else:
                t = 0
                idx = s + 1
                while idx:
                    t = t + 1
                    idx = idx / 10
                    continue 
                mem[(2 * ceil32(return_data.size)) + 288] = t
                if not t:
                    u = t - 1
                    idx = s + 1
                    while idx:
                        require u < t
                        mem[(2 * ceil32(return_data.size)) + u + 320 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        u = u - 1
                        idx = idx / 10
                        continue 
                    require 0 < t
                    require 2 < mem[_76 + ceil32(return_data.size) + 224]
                    mem[_76 + ceil32(return_data.size) + 258 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize'))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize'))), 32))), 0) - 256
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 320] = 0x831479800000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 324] = arg2
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 356] = 64
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 388] = mem[_76 + ceil32(return_data.size) + 224]
                    _427 = mem[_76 + ceil32(return_data.size) + 224]
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 420 len ceil32(mem[_76 + ceil32(return_data.size) + 224])] = mem[_76 + ceil32(return_data.size) + 256 len ceil32(mem[_76 + ceil32(return_data.size) + 224])]
                    if not _427 % 32:
                        require ext_code.size(sub_2cf76f2eAddress)
                        call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                             gas gas_remaining wei
                            args arg2, 64, mem[(2 * ceil32(return_data.size)) + ceil32(t) + 388 len _427 + 32]
                    else:
                        mem[floor32(_427) + (2 * ceil32(return_data.size)) + ceil32(t) + 420] = mem[floor32(_427) + (2 * ceil32(return_data.size)) + ceil32(t) + -(_427 % 32) + 452 len _427 % 32]
                        require ext_code.size(sub_2cf76f2eAddress)
                        call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                             gas gas_remaining wei
                            args arg2, 64, mem[(2 * ceil32(return_data.size)) + ceil32(t) + 388 len floor32(_427) + 64]
                else:
                    mem[(2 * ceil32(return_data.size)) + 320 len 32 * t] = code.data[7481 len 32 * t]
                    u = t - 1
                    idx = s + 1
                    while idx:
                        require u < t
                        mem[(2 * ceil32(return_data.size)) + u + 320 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        u = u - 1
                        idx = idx / 10
                        continue 
                    require 0 < t
                    require 2 < mem[_76 + ceil32(return_data.size) + 224]
                    mem[_76 + ceil32(return_data.size) + 258 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize'))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize'))), 32))), 0) - 256
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 320] = 0x831479800000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 324] = arg2
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 356] = 64
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 388] = mem[_76 + ceil32(return_data.size) + 224]
                    _430 = mem[_76 + ceil32(return_data.size) + 224]
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 420 len ceil32(mem[_76 + ceil32(return_data.size) + 224])] = mem[_76 + ceil32(return_data.size) + 256 len ceil32(mem[_76 + ceil32(return_data.size) + 224])]
                    if not _430 % 32:
                        require ext_code.size(sub_2cf76f2eAddress)
                        call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                             gas gas_remaining wei
                            args arg2, 64, mem[(2 * ceil32(return_data.size)) + ceil32(t) + 388 len _430 + 32]
                    else:
                        mem[floor32(_430) + (2 * ceil32(return_data.size)) + ceil32(t) + 420] = mem[floor32(_430) + (2 * ceil32(return_data.size)) + ceil32(t) + -(_430 % 32) + 452 len _430 % 32]
                        require ext_code.size(sub_2cf76f2eAddress)
                        call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                             gas gas_remaining wei
                            args arg2, 64, mem[(2 * ceil32(return_data.size)) + ceil32(t) + 388 len floor32(_430) + 64]
        else:
            mem[floor32(_37) + ceil32(return_data.size) + 324] = mem[floor32(_37) + ceil32(return_data.size) + -(_37 % 32) + 356 len _37 % 32]
            require ext_code.size(sub_2cf76f2eAddress)
            call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                 gas gas_remaining wei
                args arg1, 64, mem[ceil32(return_data.size) + 292 len floor32(_37) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 224] = 0x3b011b3000000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 228] = arg2
            require ext_code.size(sub_2cf76f2eAddress)
            call sub_2cf76f2eAddress.0x3b011b30 with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _80 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
            require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(return_data.size) + 224] <= 4294967296 and mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + mem[mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + ceil32(return_data.size) + 224] + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 224] = 1
            mem[(2 * ceil32(return_data.size)) + 256] = code.data[7481 len 32]
            idx = 2
            while idx < 3:
                require idx < mem[_80 + ceil32(return_data.size) + 224]
                require idx - 2 < 1
                mem[(2 * ceil32(return_data.size)) + idx + 254 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('var', '_80'), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('var', '_80'), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                continue 
            s = 0
            idx = 0
            s = 0
            while idx < 1:
                require idx < 1
                if mem[(2 * ceil32(return_data.size)) + idx + 256 len 1] < 48:
                    s = mem[(2 * ceil32(return_data.size)) + idx + 256 len 1]
                    idx = idx + 1
                    s = s
                    continue 
                if mem[(2 * ceil32(return_data.size)) + idx + 256 len 1] > 57:
                    s = mem[(2 * ceil32(return_data.size)) + idx + 256 len 1]
                    idx = idx + 1
                    s = s
                    continue 
                s = mem[(2 * ceil32(return_data.size)) + idx + 256 len 1]
                idx = idx + 1
                s = (10 * s) + mem[(2 * ceil32(return_data.size)) + idx + 256 len 1] - 48
                continue 
            require s < 9
            if not s + 1:
                mem[(2 * ceil32(return_data.size)) + 288] = 1
                mem[(2 * ceil32(return_data.size)) + 320] = '0'
                require 2 < mem[_80 + ceil32(return_data.size) + 224]
                mem[_80 + ceil32(return_data.size) + 258 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'0'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'0'"), 0) - 256
                mem[(2 * ceil32(return_data.size)) + 352] = 0x831479800000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 356] = arg2
                mem[(2 * ceil32(return_data.size)) + 388] = 64
                mem[(2 * ceil32(return_data.size)) + 420] = mem[_80 + ceil32(return_data.size) + 224]
                _258 = mem[_80 + ceil32(return_data.size) + 224]
                mem[(2 * ceil32(return_data.size)) + 452 len ceil32(mem[_80 + ceil32(return_data.size) + 224])] = mem[_80 + ceil32(return_data.size) + 256 len ceil32(mem[_80 + ceil32(return_data.size) + 224])]
                if not _258 % 32:
                    require ext_code.size(sub_2cf76f2eAddress)
                    call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                         gas gas_remaining wei
                        args arg2, 64, mem[(2 * ceil32(return_data.size)) + 420 len _258 + 32]
                else:
                    mem[floor32(_258) + (2 * ceil32(return_data.size)) + 452] = mem[floor32(_258) + (2 * ceil32(return_data.size)) + -(_258 % 32) + 484 len _258 % 32]
                    require ext_code.size(sub_2cf76f2eAddress)
                    call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                         gas gas_remaining wei
                        args arg2, 64, mem[(2 * ceil32(return_data.size)) + 420 len floor32(_258) + 64]
            else:
                t = 0
                idx = s + 1
                while idx:
                    t = t + 1
                    idx = idx / 10
                    continue 
                mem[(2 * ceil32(return_data.size)) + 288] = t
                if not t:
                    u = t - 1
                    idx = s + 1
                    while idx:
                        require u < t
                        mem[(2 * ceil32(return_data.size)) + u + 320 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        u = u - 1
                        idx = idx / 10
                        continue 
                    require 0 < t
                    require 2 < mem[_80 + ceil32(return_data.size) + 224]
                    mem[_80 + ceil32(return_data.size) + 258 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize'))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize'))), 32))), 0) - 256
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 320] = 0x831479800000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 324] = arg2
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 356] = 64
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 388] = mem[_80 + ceil32(return_data.size) + 224]
                    _433 = mem[_80 + ceil32(return_data.size) + 224]
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 420 len ceil32(mem[_80 + ceil32(return_data.size) + 224])] = mem[_80 + ceil32(return_data.size) + 256 len ceil32(mem[_80 + ceil32(return_data.size) + 224])]
                    if not _433 % 32:
                        require ext_code.size(sub_2cf76f2eAddress)
                        call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                             gas gas_remaining wei
                            args arg2, 64, mem[(2 * ceil32(return_data.size)) + ceil32(t) + 388 len _433 + 32]
                    else:
                        mem[floor32(_433) + (2 * ceil32(return_data.size)) + ceil32(t) + 420] = mem[floor32(_433) + (2 * ceil32(return_data.size)) + ceil32(t) + -(_433 % 32) + 452 len _433 % 32]
                        require ext_code.size(sub_2cf76f2eAddress)
                        call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                             gas gas_remaining wei
                            args arg2, 64, mem[(2 * ceil32(return_data.size)) + ceil32(t) + 388 len floor32(_433) + 64]
                else:
                    mem[(2 * ceil32(return_data.size)) + 320 len 32 * t] = code.data[7481 len 32 * t]
                    u = t - 1
                    idx = s + 1
                    while idx:
                        require u < t
                        mem[(2 * ceil32(return_data.size)) + u + 320 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        u = u - 1
                        idx = idx / 10
                        continue 
                    require 0 < t
                    require 2 < mem[_80 + ceil32(return_data.size) + 224]
                    mem[_80 + ceil32(return_data.size) + 258 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize'))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize'))), 32))), 0) - 256
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 320] = 0x831479800000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 324] = arg2
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 356] = 64
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 388] = mem[_80 + ceil32(return_data.size) + 224]
                    _436 = mem[_80 + ceil32(return_data.size) + 224]
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 420 len ceil32(mem[_80 + ceil32(return_data.size) + 224])] = mem[_80 + ceil32(return_data.size) + 256 len ceil32(mem[_80 + ceil32(return_data.size) + 224])]
                    var85001 = ceil32(_436)
                    if not _436 % 32:
                        require ext_code.size(sub_2cf76f2eAddress)
                        call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                             gas gas_remaining wei
                            args arg2, 64, mem[(2 * ceil32(return_data.size)) + ceil32(t) + 388 len _436 + 32]
                    else:
                        mem[floor32(_436) + (2 * ceil32(return_data.size)) + ceil32(t) + 420] = mem[floor32(_436) + (2 * ceil32(return_data.size)) + ceil32(t) + -(_436 % 32) + 452 len _436 % 32]
                        require ext_code.size(sub_2cf76f2eAddress)
                        call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                             gas gas_remaining wei
                            args arg2, 64, mem[(2 * ceil32(return_data.size)) + ceil32(t) + 388 len floor32(_436) + 64]
    else:
        t = 0
        idx = s + 1
        while idx:
            t = t + 1
            idx = idx / 10
            continue 
        mem[ceil32(return_data.size) + 160] = t
        if not t:
            u = t - 1
            idx = s + 1
            while idx:
                require u < t
                mem[ceil32(return_data.size) + u + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                u = u - 1
                idx = idx / 10
                continue 
            require 0 < t
            require 2 < mem[_16 + 96]
            mem[_16 + 130 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), 32))), 0) - 256
            mem[ceil32(return_data.size) + ceil32(t) + 192] = 0x831479800000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + ceil32(t) + 196] = arg1
            mem[ceil32(return_data.size) + ceil32(t) + 228] = 64
            mem[ceil32(return_data.size) + ceil32(t) + 260] = mem[_16 + 96]
            _161 = mem[_16 + 96]
            mem[ceil32(return_data.size) + ceil32(t) + 292 len ceil32(mem[_16 + 96])] = mem[_16 + 128 len ceil32(mem[_16 + 96])]
            if not _161 % 32:
                require ext_code.size(sub_2cf76f2eAddress)
                call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                     gas gas_remaining wei
                    args arg1, 64, mem[ceil32(return_data.size) + ceil32(t) + 260 len _161 + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + ceil32(t) + 192] = 0x3b011b3000000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + ceil32(t) + 196] = arg2
                require ext_code.size(sub_2cf76f2eAddress)
                call sub_2cf76f2eAddress.0x3b011b30 with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + ceil32(t) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(t) + 192
                require return_data.size >= 32
                _237 = mem[ceil32(return_data.size) + ceil32(t) + 192 len 4], Mask(224, 32, arg2) >> 32
                require mem[ceil32(return_data.size) + ceil32(t) + 192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[ceil32(return_data.size) + ceil32(t) + 192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[ceil32(return_data.size) + ceil32(t) + 192 len 4], Mask(224, 32, arg2) >> 32 + ceil32(return_data.size) + ceil32(t) + 192] <= 4294967296 and mem[ceil32(return_data.size) + ceil32(t) + 192 len 4], Mask(224, 32, arg2) >> 32 + mem[mem[ceil32(return_data.size) + ceil32(t) + 192 len 4], Mask(224, 32, arg2) >> 32 + ceil32(return_data.size) + ceil32(t) + 192] + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + ceil32(t) + 192] = 1
                mem[(2 * ceil32(return_data.size)) + ceil32(t) + 224] = code.data[7481 len 32]
                idx = 2
                while idx < 3:
                    require idx < mem[_237 + ceil32(return_data.size) + ceil32(t) + 192]
                    require idx - 2 < 1
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + idx + 222 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', '_237'), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 2))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', '_237'), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 2))), ('var', 0)), 32))), 0) - 256
                    idx = idx + 1
                    continue 
                s = 0
                idx = 0
                s = 0
                while idx < 1:
                    require idx < 1
                    if mem[(2 * ceil32(return_data.size)) + ceil32(t) + idx + 224 len 1] < 48:
                        s = mem[(2 * ceil32(return_data.size)) + ceil32(t) + idx + 224 len 1]
                        idx = idx + 1
                        s = s
                        continue 
                    if mem[(2 * ceil32(return_data.size)) + ceil32(t) + idx + 224 len 1] > 57:
                        s = mem[(2 * ceil32(return_data.size)) + ceil32(t) + idx + 224 len 1]
                        idx = idx + 1
                        s = s
                        continue 
                    s = mem[(2 * ceil32(return_data.size)) + ceil32(t) + idx + 224 len 1]
                    idx = idx + 1
                    s = (10 * s) + mem[(2 * ceil32(return_data.size)) + ceil32(t) + idx + 224 len 1] - 48
                    continue 
                require s < 9
                if not s + 1:
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 256] = 1
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 288] = '0'
                    require 2 < mem[_237 + ceil32(return_data.size) + ceil32(t) + 192]
                    mem[_237 + ceil32(return_data.size) + ceil32(t) + 226 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'0'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'0'"), 0) - 256
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 320] = 0x831479800000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 324] = arg2
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 356] = 64
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 388] = mem[_237 + ceil32(return_data.size) + ceil32(t) + 192]
                    _463 = mem[_237 + ceil32(return_data.size) + ceil32(t) + 192]
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 420 len ceil32(mem[_237 + ceil32(return_data.size) + ceil32(t) + 192])] = mem[_237 + ceil32(return_data.size) + ceil32(t) + 224 len ceil32(mem[_237 + ceil32(return_data.size) + ceil32(t) + 192])]
                    if not _463 % 32:
                        require ext_code.size(sub_2cf76f2eAddress)
                        call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                             gas gas_remaining wei
                            args arg2, 64, mem[(2 * ceil32(return_data.size)) + ceil32(t) + 388 len _463 + 32]
                    else:
                        mem[floor32(_463) + (2 * ceil32(return_data.size)) + ceil32(t) + 420] = mem[floor32(_463) + (2 * ceil32(return_data.size)) + ceil32(t) + -(_463 % 32) + 452 len _463 % 32]
                        require ext_code.size(sub_2cf76f2eAddress)
                        call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                             gas gas_remaining wei
                            args arg2, 64, mem[(2 * ceil32(return_data.size)) + ceil32(t) + 388 len floor32(_463) + 64]
                else:
                    u = 0
                    idx = s + 1
                    while idx:
                        u = u + 1
                        idx = idx / 10
                        continue 
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 256] = u
                    if not u:
                        v = u - 1
                        idx = s + 1
                        while idx:
                            require v < u
                            mem[(2 * ceil32(return_data.size)) + ceil32(t) + v + 288 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            v = v - 1
                            idx = idx / 10
                            continue 
                        require 0 < u
                        require 2 < mem[_237 + ceil32(return_data.size) + ceil32(t) + 192]
                        mem[_237 + ceil32(return_data.size) + ceil32(t) + 226 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 2)))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 2)))), 32))), 0) - 256
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 288] = 0x831479800000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 292] = arg2
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 324] = 64
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 356] = mem[_237 + ceil32(return_data.size) + ceil32(t) + 192]
                        _747 = mem[_237 + ceil32(return_data.size) + ceil32(t) + 192]
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 388 len ceil32(mem[_237 + ceil32(return_data.size) + ceil32(t) + 192])] = mem[_237 + ceil32(return_data.size) + ceil32(t) + 224 len ceil32(mem[_237 + ceil32(return_data.size) + ceil32(t) + 192])]
                        if not _747 % 32:
                            require ext_code.size(sub_2cf76f2eAddress)
                            call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                                 gas gas_remaining wei
                                args arg2, 64, mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 356 len _747 + 32]
                        else:
                            mem[floor32(_747) + (2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 388] = mem[floor32(_747) + (2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + -(_747 % 32) + 420 len _747 % 32]
                            require ext_code.size(sub_2cf76f2eAddress)
                            call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                                 gas gas_remaining wei
                                args arg2, 64, mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 356 len floor32(_747) + 64]
                    else:
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + 288 len 32 * u] = code.data[7481 len 32 * u]
                        v = u - 1
                        idx = s + 1
                        while idx:
                            require v < u
                            mem[(2 * ceil32(return_data.size)) + ceil32(t) + v + 288 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            v = v - 1
                            idx = idx / 10
                            continue 
                        require 0 < u
                        require 2 < mem[_237 + ceil32(return_data.size) + ceil32(t) + 192]
                        mem[_237 + ceil32(return_data.size) + ceil32(t) + 226 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 2)))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 2)))), 32))), 0) - 256
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 288] = 0x831479800000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 292] = arg2
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 324] = 64
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 356] = mem[_237 + ceil32(return_data.size) + ceil32(t) + 192]
                        _750 = mem[_237 + ceil32(return_data.size) + ceil32(t) + 192]
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 388 len ceil32(mem[_237 + ceil32(return_data.size) + ceil32(t) + 192])] = mem[_237 + ceil32(return_data.size) + ceil32(t) + 224 len ceil32(mem[_237 + ceil32(return_data.size) + ceil32(t) + 192])]
                        if not _750 % 32:
                            require ext_code.size(sub_2cf76f2eAddress)
                            call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                                 gas gas_remaining wei
                                args arg2, 64, mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 356 len _750 + 32]
                        else:
                            mem[floor32(_750) + (2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 388] = mem[floor32(_750) + (2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + -(_750 % 32) + 420 len _750 % 32]
                            require ext_code.size(sub_2cf76f2eAddress)
                            call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                                 gas gas_remaining wei
                                args arg2, 64, mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 356 len floor32(_750) + 64]
            else:
                mem[floor32(_161) + ceil32(return_data.size) + ceil32(t) + 292] = mem[floor32(_161) + ceil32(return_data.size) + ceil32(t) + -(_161 % 32) + 324 len _161 % 32]
                require ext_code.size(sub_2cf76f2eAddress)
                call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                     gas gas_remaining wei
                    args arg1, 64, mem[ceil32(return_data.size) + ceil32(t) + 260 len floor32(_161) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + ceil32(t) + 192] = 0x3b011b3000000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + ceil32(t) + 196] = arg2
                require ext_code.size(sub_2cf76f2eAddress)
                call sub_2cf76f2eAddress.0x3b011b30 with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + ceil32(t) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(t) + 192
                require return_data.size >= 32
                _243 = mem[ceil32(return_data.size) + ceil32(t) + 192 len 4], Mask(224, 32, arg2) >> 32
                require mem[ceil32(return_data.size) + ceil32(t) + 192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[ceil32(return_data.size) + ceil32(t) + 192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[ceil32(return_data.size) + ceil32(t) + 192 len 4], Mask(224, 32, arg2) >> 32 + ceil32(return_data.size) + ceil32(t) + 192] <= 4294967296 and mem[ceil32(return_data.size) + ceil32(t) + 192 len 4], Mask(224, 32, arg2) >> 32 + mem[mem[ceil32(return_data.size) + ceil32(t) + 192 len 4], Mask(224, 32, arg2) >> 32 + ceil32(return_data.size) + ceil32(t) + 192] + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + ceil32(t) + 192] = 1
                mem[(2 * ceil32(return_data.size)) + ceil32(t) + 224] = code.data[7481 len 32]
                idx = 2
                while idx < 3:
                    require idx < mem[_243 + ceil32(return_data.size) + ceil32(t) + 192]
                    require idx - 2 < 1
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + idx + 222 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', '_243'), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 2))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', '_243'), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 2))), ('var', 0)), 32))), 0) - 256
                    idx = idx + 1
                    continue 
                s = 0
                idx = 0
                s = 0
                while idx < 1:
                    require idx < 1
                    if mem[(2 * ceil32(return_data.size)) + ceil32(t) + idx + 224 len 1] < 48:
                        s = mem[(2 * ceil32(return_data.size)) + ceil32(t) + idx + 224 len 1]
                        idx = idx + 1
                        s = s
                        continue 
                    if mem[(2 * ceil32(return_data.size)) + ceil32(t) + idx + 224 len 1] > 57:
                        s = mem[(2 * ceil32(return_data.size)) + ceil32(t) + idx + 224 len 1]
                        idx = idx + 1
                        s = s
                        continue 
                    s = mem[(2 * ceil32(return_data.size)) + ceil32(t) + idx + 224 len 1]
                    idx = idx + 1
                    s = (10 * s) + mem[(2 * ceil32(return_data.size)) + ceil32(t) + idx + 224 len 1] - 48
                    continue 
                require s < 9
                if not s + 1:
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 256] = 1
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 288] = '0'
                    require 2 < mem[_243 + ceil32(return_data.size) + ceil32(t) + 192]
                    mem[_243 + ceil32(return_data.size) + ceil32(t) + 226 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'0'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'0'"), 0) - 256
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 320] = 0x831479800000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 324] = arg2
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 356] = 64
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 388] = mem[_243 + ceil32(return_data.size) + ceil32(t) + 192]
                    _466 = mem[_243 + ceil32(return_data.size) + ceil32(t) + 192]
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 420 len ceil32(mem[_243 + ceil32(return_data.size) + ceil32(t) + 192])] = mem[_243 + ceil32(return_data.size) + ceil32(t) + 224 len ceil32(mem[_243 + ceil32(return_data.size) + ceil32(t) + 192])]
                    if not _466 % 32:
                        require ext_code.size(sub_2cf76f2eAddress)
                        call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                             gas gas_remaining wei
                            args arg2, 64, mem[(2 * ceil32(return_data.size)) + ceil32(t) + 388 len _466 + 32]
                    else:
                        mem[floor32(_466) + (2 * ceil32(return_data.size)) + ceil32(t) + 420] = mem[floor32(_466) + (2 * ceil32(return_data.size)) + ceil32(t) + -(_466 % 32) + 452 len _466 % 32]
                        require ext_code.size(sub_2cf76f2eAddress)
                        call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                             gas gas_remaining wei
                            args arg2, 64, mem[(2 * ceil32(return_data.size)) + ceil32(t) + 388 len floor32(_466) + 64]
                else:
                    u = 0
                    idx = s + 1
                    while idx:
                        u = u + 1
                        idx = idx / 10
                        continue 
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 256] = u
                    if not u:
                        v = u - 1
                        idx = s + 1
                        while idx:
                            require v < u
                            mem[(2 * ceil32(return_data.size)) + ceil32(t) + v + 288 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            v = v - 1
                            idx = idx / 10
                            continue 
                        require 0 < u
                        require 2 < mem[_243 + ceil32(return_data.size) + ceil32(t) + 192]
                        mem[_243 + ceil32(return_data.size) + ceil32(t) + 226 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 2)))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 2)))), 32))), 0) - 256
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 288] = 0x831479800000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 292] = arg2
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 324] = 64
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 356] = mem[_243 + ceil32(return_data.size) + ceil32(t) + 192]
                        _753 = mem[_243 + ceil32(return_data.size) + ceil32(t) + 192]
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 388 len ceil32(mem[_243 + ceil32(return_data.size) + ceil32(t) + 192])] = mem[_243 + ceil32(return_data.size) + ceil32(t) + 224 len ceil32(mem[_243 + ceil32(return_data.size) + ceil32(t) + 192])]
                        if not _753 % 32:
                            require ext_code.size(sub_2cf76f2eAddress)
                            call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                                 gas gas_remaining wei
                                args arg2, 64, mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 356 len _753 + 32]
                        else:
                            mem[floor32(_753) + (2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 388] = mem[floor32(_753) + (2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + -(_753 % 32) + 420 len _753 % 32]
                            require ext_code.size(sub_2cf76f2eAddress)
                            call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                                 gas gas_remaining wei
                                args arg2, 64, mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 356 len floor32(_753) + 64]
                    else:
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + 288 len 32 * u] = code.data[7481 len 32 * u]
                        v = u - 1
                        idx = s + 1
                        while idx:
                            require v < u
                            mem[(2 * ceil32(return_data.size)) + ceil32(t) + v + 288 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            v = v - 1
                            idx = idx / 10
                            continue 
                        require 0 < u
                        require 2 < mem[_243 + ceil32(return_data.size) + ceil32(t) + 192]
                        mem[_243 + ceil32(return_data.size) + ceil32(t) + 226 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 2)))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 2)))), 32))), 0) - 256
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 288] = 0x831479800000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 292] = arg2
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 324] = 64
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 356] = mem[_243 + ceil32(return_data.size) + ceil32(t) + 192]
                        _756 = mem[_243 + ceil32(return_data.size) + ceil32(t) + 192]
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 388 len ceil32(mem[_243 + ceil32(return_data.size) + ceil32(t) + 192])] = mem[_243 + ceil32(return_data.size) + ceil32(t) + 224 len ceil32(mem[_243 + ceil32(return_data.size) + ceil32(t) + 192])]
                        if not _756 % 32:
                            require ext_code.size(sub_2cf76f2eAddress)
                            call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                                 gas gas_remaining wei
                                args arg2, 64, mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 356 len _756 + 32]
                        else:
                            mem[floor32(_756) + (2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 388] = mem[floor32(_756) + (2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + -(_756 % 32) + 420 len _756 % 32]
                            require ext_code.size(sub_2cf76f2eAddress)
                            call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                                 gas gas_remaining wei
                                args arg2, 64, mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 356 len floor32(_756) + 64]
        else:
            mem[ceil32(return_data.size) + 192 len 32 * t] = code.data[7481 len 32 * t]
            u = t - 1
            idx = s + 1
            while idx:
                require u < t
                mem[ceil32(return_data.size) + u + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                u = u - 1
                idx = idx / 10
                continue 
            require 0 < t
            require 2 < mem[_16 + 96]
            mem[_16 + 130 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), 32))), 0) - 256
            mem[ceil32(return_data.size) + ceil32(t) + 192] = 0x831479800000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + ceil32(t) + 196] = arg1
            mem[ceil32(return_data.size) + ceil32(t) + 228] = 64
            mem[ceil32(return_data.size) + ceil32(t) + 260] = mem[_16 + 96]
            _164 = mem[_16 + 96]
            mem[ceil32(return_data.size) + ceil32(t) + 292 len ceil32(mem[_16 + 96])] = mem[_16 + 128 len ceil32(mem[_16 + 96])]
            if not _164 % 32:
                require ext_code.size(sub_2cf76f2eAddress)
                call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                     gas gas_remaining wei
                    args arg1, 64, mem[ceil32(return_data.size) + ceil32(t) + 260 len _164 + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + ceil32(t) + 192] = 0x3b011b3000000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + ceil32(t) + 196] = arg2
                require ext_code.size(sub_2cf76f2eAddress)
                call sub_2cf76f2eAddress.0x3b011b30 with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + ceil32(t) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(t) + 192
                require return_data.size >= 32
                _239 = mem[ceil32(return_data.size) + ceil32(t) + 192 len 4], Mask(224, 32, arg2) >> 32
                require mem[ceil32(return_data.size) + ceil32(t) + 192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[ceil32(return_data.size) + ceil32(t) + 192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[ceil32(return_data.size) + ceil32(t) + 192 len 4], Mask(224, 32, arg2) >> 32 + ceil32(return_data.size) + ceil32(t) + 192] <= 4294967296 and mem[ceil32(return_data.size) + ceil32(t) + 192 len 4], Mask(224, 32, arg2) >> 32 + mem[mem[ceil32(return_data.size) + ceil32(t) + 192 len 4], Mask(224, 32, arg2) >> 32 + ceil32(return_data.size) + ceil32(t) + 192] + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + ceil32(t) + 192] = 1
                mem[(2 * ceil32(return_data.size)) + ceil32(t) + 224] = code.data[7481 len 32]
                idx = 2
                while idx < 3:
                    require idx < mem[_239 + ceil32(return_data.size) + ceil32(t) + 192]
                    require idx - 2 < 1
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + idx + 222 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', '_239'), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 2))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', '_239'), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 2))), ('var', 0)), 32))), 0) - 256
                    idx = idx + 1
                    continue 
                s = 0
                idx = 0
                s = 0
                while idx < 1:
                    require idx < 1
                    if mem[(2 * ceil32(return_data.size)) + ceil32(t) + idx + 224 len 1] < 48:
                        s = mem[(2 * ceil32(return_data.size)) + ceil32(t) + idx + 224 len 1]
                        idx = idx + 1
                        s = s
                        continue 
                    if mem[(2 * ceil32(return_data.size)) + ceil32(t) + idx + 224 len 1] > 57:
                        s = mem[(2 * ceil32(return_data.size)) + ceil32(t) + idx + 224 len 1]
                        idx = idx + 1
                        s = s
                        continue 
                    s = mem[(2 * ceil32(return_data.size)) + ceil32(t) + idx + 224 len 1]
                    idx = idx + 1
                    s = (10 * s) + mem[(2 * ceil32(return_data.size)) + ceil32(t) + idx + 224 len 1] - 48
                    continue 
                require s < 9
                if not s + 1:
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 256] = 1
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 288] = '0'
                    require 2 < mem[_239 + ceil32(return_data.size) + ceil32(t) + 192]
                    mem[_239 + ceil32(return_data.size) + ceil32(t) + 226 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'0'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'0'"), 0) - 256
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 320] = 0x831479800000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 324] = arg2
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 356] = 64
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 388] = mem[_239 + ceil32(return_data.size) + ceil32(t) + 192]
                    _469 = mem[_239 + ceil32(return_data.size) + ceil32(t) + 192]
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 420 len ceil32(mem[_239 + ceil32(return_data.size) + ceil32(t) + 192])] = mem[_239 + ceil32(return_data.size) + ceil32(t) + 224 len ceil32(mem[_239 + ceil32(return_data.size) + ceil32(t) + 192])]
                    if not _469 % 32:
                        require ext_code.size(sub_2cf76f2eAddress)
                        call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                             gas gas_remaining wei
                            args arg2, 64, mem[(2 * ceil32(return_data.size)) + ceil32(t) + 388 len _469 + 32]
                    else:
                        mem[floor32(_469) + (2 * ceil32(return_data.size)) + ceil32(t) + 420] = mem[floor32(_469) + (2 * ceil32(return_data.size)) + ceil32(t) + -(_469 % 32) + 452 len _469 % 32]
                        require ext_code.size(sub_2cf76f2eAddress)
                        call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                             gas gas_remaining wei
                            args arg2, 64, mem[(2 * ceil32(return_data.size)) + ceil32(t) + 388 len floor32(_469) + 64]
                else:
                    u = 0
                    idx = s + 1
                    while idx:
                        u = u + 1
                        idx = idx / 10
                        continue 
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 256] = u
                    if not u:
                        v = u - 1
                        idx = s + 1
                        while idx:
                            require v < u
                            mem[(2 * ceil32(return_data.size)) + ceil32(t) + v + 288 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            v = v - 1
                            idx = idx / 10
                            continue 
                        require 0 < u
                        require 2 < mem[_239 + ceil32(return_data.size) + ceil32(t) + 192]
                        mem[_239 + ceil32(return_data.size) + ceil32(t) + 226 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 2)))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 2)))), 32))), 0) - 256
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 288] = 0x831479800000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 292] = arg2
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 324] = 64
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 356] = mem[_239 + ceil32(return_data.size) + ceil32(t) + 192]
                        _759 = mem[_239 + ceil32(return_data.size) + ceil32(t) + 192]
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 388 len ceil32(mem[_239 + ceil32(return_data.size) + ceil32(t) + 192])] = mem[_239 + ceil32(return_data.size) + ceil32(t) + 224 len ceil32(mem[_239 + ceil32(return_data.size) + ceil32(t) + 192])]
                        if not _759 % 32:
                            require ext_code.size(sub_2cf76f2eAddress)
                            call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                                 gas gas_remaining wei
                                args arg2, 64, mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 356 len _759 + 32]
                        else:
                            mem[floor32(_759) + (2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 388] = mem[floor32(_759) + (2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + -(_759 % 32) + 420 len _759 % 32]
                            require ext_code.size(sub_2cf76f2eAddress)
                            call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                                 gas gas_remaining wei
                                args arg2, 64, mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 356 len floor32(_759) + 64]
                    else:
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + 288 len 32 * u] = code.data[7481 len 32 * u]
                        v = u - 1
                        idx = s + 1
                        while idx:
                            require v < u
                            mem[(2 * ceil32(return_data.size)) + ceil32(t) + v + 288 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            v = v - 1
                            idx = idx / 10
                            continue 
                        require 0 < u
                        require 2 < mem[_239 + ceil32(return_data.size) + ceil32(t) + 192]
                        mem[_239 + ceil32(return_data.size) + ceil32(t) + 226 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 2)))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 2)))), 32))), 0) - 256
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 288] = 0x831479800000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 292] = arg2
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 324] = 64
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 356] = mem[_239 + ceil32(return_data.size) + ceil32(t) + 192]
                        _762 = mem[_239 + ceil32(return_data.size) + ceil32(t) + 192]
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 388 len ceil32(mem[_239 + ceil32(return_data.size) + ceil32(t) + 192])] = mem[_239 + ceil32(return_data.size) + ceil32(t) + 224 len ceil32(mem[_239 + ceil32(return_data.size) + ceil32(t) + 192])]
                        if not _762 % 32:
                            require ext_code.size(sub_2cf76f2eAddress)
                            call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                                 gas gas_remaining wei
                                args arg2, 64, mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 356 len _762 + 32]
                        else:
                            mem[floor32(_762) + (2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 388] = mem[floor32(_762) + (2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + -(_762 % 32) + 420 len _762 % 32]
                            require ext_code.size(sub_2cf76f2eAddress)
                            call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                                 gas gas_remaining wei
                                args arg2, 64, mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 356 len floor32(_762) + 64]
            else:
                mem[floor32(_164) + ceil32(return_data.size) + ceil32(t) + 292] = mem[floor32(_164) + ceil32(return_data.size) + ceil32(t) + -(_164 % 32) + 324 len _164 % 32]
                require ext_code.size(sub_2cf76f2eAddress)
                call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                     gas gas_remaining wei
                    args arg1, 64, mem[ceil32(return_data.size) + ceil32(t) + 260 len floor32(_164) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + ceil32(t) + 192] = 0x3b011b3000000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + ceil32(t) + 196] = arg2
                require ext_code.size(sub_2cf76f2eAddress)
                call sub_2cf76f2eAddress.0x3b011b30 with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + ceil32(t) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(t) + 192
                require return_data.size >= 32
                _244 = mem[ceil32(return_data.size) + ceil32(t) + 192 len 4], Mask(224, 32, arg2) >> 32
                require mem[ceil32(return_data.size) + ceil32(t) + 192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[ceil32(return_data.size) + ceil32(t) + 192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[ceil32(return_data.size) + ceil32(t) + 192 len 4], Mask(224, 32, arg2) >> 32 + ceil32(return_data.size) + ceil32(t) + 192] <= 4294967296 and mem[ceil32(return_data.size) + ceil32(t) + 192 len 4], Mask(224, 32, arg2) >> 32 + mem[mem[ceil32(return_data.size) + ceil32(t) + 192 len 4], Mask(224, 32, arg2) >> 32 + ceil32(return_data.size) + ceil32(t) + 192] + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + ceil32(t) + 192] = 1
                mem[(2 * ceil32(return_data.size)) + ceil32(t) + 224] = code.data[7481 len 32]
                idx = 2
                while idx < 3:
                    require idx < mem[_244 + ceil32(return_data.size) + ceil32(t) + 192]
                    require idx - 2 < 1
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + idx + 222 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', '_244'), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 2))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', '_244'), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 2))), ('var', 0)), 32))), 0) - 256
                    idx = idx + 1
                    continue 
                s = 0
                idx = 0
                s = 0
                while idx < 1:
                    require idx < 1
                    if mem[(2 * ceil32(return_data.size)) + ceil32(t) + idx + 224 len 1] < 48:
                        s = mem[(2 * ceil32(return_data.size)) + ceil32(t) + idx + 224 len 1]
                        idx = idx + 1
                        s = s
                        continue 
                    if mem[(2 * ceil32(return_data.size)) + ceil32(t) + idx + 224 len 1] > 57:
                        s = mem[(2 * ceil32(return_data.size)) + ceil32(t) + idx + 224 len 1]
                        idx = idx + 1
                        s = s
                        continue 
                    s = mem[(2 * ceil32(return_data.size)) + ceil32(t) + idx + 224 len 1]
                    idx = idx + 1
                    s = (10 * s) + mem[(2 * ceil32(return_data.size)) + ceil32(t) + idx + 224 len 1] - 48
                    continue 
                require s < 9
                if not s + 1:
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 256] = 1
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 288] = '0'
                    require 2 < mem[_244 + ceil32(return_data.size) + ceil32(t) + 192]
                    mem[_244 + ceil32(return_data.size) + ceil32(t) + 226 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'0'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'0'"), 0) - 256
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 320] = 0x831479800000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 324] = arg2
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 356] = 64
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 388] = mem[_244 + ceil32(return_data.size) + ceil32(t) + 192]
                    _472 = mem[_244 + ceil32(return_data.size) + ceil32(t) + 192]
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 420 len ceil32(mem[_244 + ceil32(return_data.size) + ceil32(t) + 192])] = mem[_244 + ceil32(return_data.size) + ceil32(t) + 224 len ceil32(mem[_244 + ceil32(return_data.size) + ceil32(t) + 192])]
                    var85001 = ceil32(_472)
                    if not _472 % 32:
                        require ext_code.size(sub_2cf76f2eAddress)
                        call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                             gas gas_remaining wei
                            args arg2, 64, mem[(2 * ceil32(return_data.size)) + ceil32(t) + 388 len _472 + 32]
                    else:
                        mem[floor32(_472) + (2 * ceil32(return_data.size)) + ceil32(t) + 420] = mem[floor32(_472) + (2 * ceil32(return_data.size)) + ceil32(t) + -(_472 % 32) + 452 len _472 % 32]
                        require ext_code.size(sub_2cf76f2eAddress)
                        call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                             gas gas_remaining wei
                            args arg2, 64, mem[(2 * ceil32(return_data.size)) + ceil32(t) + 388 len floor32(_472) + 64]
                else:
                    u = 0
                    idx = s + 1
                    while idx:
                        u = u + 1
                        idx = idx / 10
                        continue 
                    mem[(2 * ceil32(return_data.size)) + ceil32(t) + 256] = u
                    if not u:
                        v = u - 1
                        idx = s + 1
                        while idx:
                            require v < u
                            mem[(2 * ceil32(return_data.size)) + ceil32(t) + v + 288 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            v = v - 1
                            idx = idx / 10
                            continue 
                        require 0 < u
                        require 2 < mem[_244 + ceil32(return_data.size) + ceil32(t) + 192]
                        mem[_244 + ceil32(return_data.size) + ceil32(t) + 226 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 2)))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 2)))), 32))), 0) - 256
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 288] = 0x831479800000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 292] = arg2
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 324] = 64
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 356] = mem[_244 + ceil32(return_data.size) + ceil32(t) + 192]
                        _765 = mem[_244 + ceil32(return_data.size) + ceil32(t) + 192]
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 388 len ceil32(mem[_244 + ceil32(return_data.size) + ceil32(t) + 192])] = mem[_244 + ceil32(return_data.size) + ceil32(t) + 224 len ceil32(mem[_244 + ceil32(return_data.size) + ceil32(t) + 192])]
                        if not _765 % 32:
                            require ext_code.size(sub_2cf76f2eAddress)
                            call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                                 gas gas_remaining wei
                                args arg2, 64, mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 356 len _765 + 32]
                        else:
                            mem[floor32(_765) + (2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 388] = mem[floor32(_765) + (2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + -(_765 % 32) + 420 len _765 % 32]
                            require ext_code.size(sub_2cf76f2eAddress)
                            call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                                 gas gas_remaining wei
                                args arg2, 64, mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 356 len floor32(_765) + 64]
                    else:
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + 288 len 32 * u] = code.data[7481 len 32 * u]
                        v = u - 1
                        idx = s + 1
                        while idx:
                            require v < u
                            mem[(2 * ceil32(return_data.size)) + ceil32(t) + v + 288 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            v = v - 1
                            idx = idx / 10
                            continue 
                        require 0 < u
                        require 2 < mem[_244 + ceil32(return_data.size) + ceil32(t) + 192]
                        mem[_244 + ceil32(return_data.size) + ceil32(t) + 226 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 2)))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 2)))), 32))), 0) - 256
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 288] = 0x831479800000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 292] = arg2
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 324] = 64
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 356] = mem[_244 + ceil32(return_data.size) + ceil32(t) + 192]
                        _768 = mem[_244 + ceil32(return_data.size) + ceil32(t) + 192]
                        mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 388 len ceil32(mem[_244 + ceil32(return_data.size) + ceil32(t) + 192])] = mem[_244 + ceil32(return_data.size) + ceil32(t) + 224 len ceil32(mem[_244 + ceil32(return_data.size) + ceil32(t) + 192])]
                        if not _768 % 32:
                            require ext_code.size(sub_2cf76f2eAddress)
                            call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                                 gas gas_remaining wei
                                args arg2, 64, mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 356 len _768 + 32]
                        else:
                            mem[floor32(_768) + (2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 388] = mem[floor32(_768) + (2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + -(_768 % 32) + 420 len _768 % 32]
                            require ext_code.size(sub_2cf76f2eAddress)
                            call sub_2cf76f2eAddress.setTokenSeed(uint256 arg1, string arg2) with:
                                 gas gas_remaining wei
                                args arg2, 64, mem[(2 * ceil32(return_data.size)) + ceil32(t) + ceil32(u) + 356 len floor32(_768) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_2cf76f2eAddress)
    call sub_2cf76f2eAddress.0x2a952b4b with:
         gas gas_remaining wei
        args arg3, arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
