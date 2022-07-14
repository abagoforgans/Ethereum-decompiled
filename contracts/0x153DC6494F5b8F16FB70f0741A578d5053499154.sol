contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function sub_624032d2(?) {
    require calldata.size - 4 >= 192
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    if arg5 == 1:
        mem[(32 * arg3.length) + (32 * arg4.length) + 260 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        require ext_code.size(arg1)
        staticcall arg1.getReturnByPath(address[] arg1, uint256 arg2) with:
                gas gas_remaining wei
               args Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + (32 * arg4.length) + floor32(arg3.length) + 260 len (32 * arg3.length) - floor32(arg3.length)]), arg6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(arg2)
        staticcall arg2.getTokenToEthInputPrice(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
        require arg5 == 2
        require ext_code.size(arg2)
        staticcall arg2.getEthToTokenInputPrice(uint256 arg1) with:
                gas gas_remaining wei
               args arg6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg3.length) + (32 * arg4.length) + 260 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
        require ext_code.size(arg1)
        staticcall arg1.getReturnByPath(address[] arg1, uint256 arg2) with:
                gas gas_remaining wei
               args Array(len=arg4.length, data=call.data[arg4 + 36 len floor32(arg4.length)], mem[(32 * arg3.length) + (32 * arg4.length) + floor32(arg4.length) + 260 len (32 * arg4.length) - floor32(arg4.length)]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0] > 0
    return ext_call.return_data[0], ext_call.return_data[0]
}

function sub_c8442972(?) {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg3.length) + (32 * arg4.length) + 356 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    require ext_code.size(arg1)
    staticcall arg1.getReturnByPath(address[] arg1, uint256 arg2) with:
            gas gas_remaining wei
           args Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + (32 * arg4.length) + floor32(arg3.length) + 356 len (32 * arg3.length) - floor32(arg3.length)]), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(arg2)
    staticcall arg2.getTokenToEthInputPrice(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0] > 0
    require ext_code.size(arg2)
    staticcall arg2.getEthToTokenInputPrice(uint256 arg1) with:
            gas gas_remaining wei
           args arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg3.length) + (32 * arg4.length) + 356 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    require ext_code.size(arg1)
    staticcall arg1.getReturnByPath(address[] arg1, uint256 arg2) with:
            gas gas_remaining wei
           args Array(len=arg4.length, data=call.data[arg4 + 36 len floor32(arg4.length)], mem[(32 * arg3.length) + (32 * arg4.length) + floor32(arg4.length) + 356 len (32 * arg4.length) - floor32(arg4.length)]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0] > 0
    if arg5 < ext_call.return_data[0]:
        return ext_call.return_data[0], ext_call.return_data[0], 1
    if arg5 >= ext_call.return_data[0]:
        return ext_call.return_data[0], ext_call.return_data[0], 0
    return ext_call.return_data[0], ext_call.return_data[0], 2
}

function sub_a48d843d(?) {
    require calldata.size - 4 >= 224
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[(32 * arg4.length) + 128] = arg5.length
    mem[(32 * arg4.length) + 160 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require arg7 <= 4294967296
    require arg7 + 36 <= calldata.size
    require arg7.length <= 4294967296 and arg7 + (32 * arg7.length) + 36 <= calldata.size
    mem[(32 * arg4.length) + (32 * arg5.length) + 160] = arg7.length
    mem[(32 * arg4.length) + (32 * arg5.length) + 192 len 32 * arg7.length] = call.data[arg7 + 36 len 32 * arg7.length]
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg7.length) + 192 len 64] = code.data[3663 len 64]
    require ext_code.size(arg1)
    staticcall arg1.getExchange(address arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[64] = (32 * arg4.length) + (32 * arg5.length) + (32 * arg7.length) + 416
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg7.length) + 352] = 0
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg7.length) + 384] = 0
    require 0 < arg7.length
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg7.length) + 256] = mem[(32 * arg4.length) + (32 * arg5.length) + 192]
    require 1 < arg7.length
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg7.length) + 288] = mem[(32 * arg4.length) + (32 * arg5.length) + 224]
    require 2 < arg7.length
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg7.length) + 320] = mem[(32 * arg4.length) + (32 * arg5.length) + 256]
    _54 = mem[(32 * arg4.length) + (32 * arg5.length) + 256]
    idx = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg7.length) + 256]
    s = 0
    while idx <= _54:
        if arg6 != 1:
            require arg6 == 2
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getEthToTokenInputPrice(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _70 = mem[64]
            mem[mem[64]] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 36] = ext_call.return_data[0]
            mem[mem[64] + 4] = 64
            mem[mem[64] + 68] = mem[(32 * arg4.length) + 128]
            _72 = mem[(32 * arg4.length) + 128]
            s = 0
            while s < 32 * _72:
                mem[s + mem[64] + 100] = mem[s + (32 * arg4.length) + 160]
                s = s + 32
                continue 
            require ext_code.size(arg2)
            staticcall arg2.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len (32 * _72) + _70 + -mem[64] + 96]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
        else:
            _60 = mem[64]
            mem[mem[64]] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 36] = idx
            mem[mem[64] + 4] = 64
            mem[mem[64] + 68] = mem[96]
            _62 = mem[96]
            s = 0
            while s < 32 * _62:
                mem[s + mem[64] + 100] = mem[s + 128]
                s = s + 32
                continue 
            require ext_code.size(arg2)
            staticcall arg2.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len (32 * _62) + _60 + -mem[64] + 96]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[mem[64] + 4] = ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        require ext_call.return_data[0] > 0
        require ext_call.return_data[0] > 0
        require idx + mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg7.length) + 384] >= mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg7.length) + 384]
        require mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg7.length) + 352] + ext_call.return_data[0] >= ext_call.return_data[0]
        if mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg7.length) + 352] + ext_call.return_data[0] > idx + mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg7.length) + 384]:
            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg7.length) + 352] = idx
            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg7.length) + 384] = ext_call.return_data[0]
        require mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg7.length) + 288] + idx >= idx
        idx = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg7.length) + 288] + idx
        s = ext_call.return_data[0]
        continue 
    _55 = mem[64]
    mem[64] = mem[64] + 64
    mem[_55] = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg7.length) + 352]
    mem[_55 + 32] = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg7.length) + 384]
    mem[mem[64]] = mem[_55]
    mem[mem[64] + 32] = mem[_55 + 32]
    return memory
      from mem[64]
       len 64
}

function sub_436dc00f(?) {
    require calldata.size - 4 >= 192
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[(32 * arg4.length) + 128] = arg5.length
    mem[(32 * arg4.length) + 160 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    mem[(32 * arg4.length) + (32 * arg5.length) + 160] = arg6.length
    mem[(32 * arg4.length) + (32 * arg5.length) + 192 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192 len 96] = code.data[3663 len 96]
    require ext_code.size(arg1)
    staticcall arg1.getExchange(address arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < arg6.length
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288] = mem[(32 * arg4.length) + (32 * arg5.length) + 192]
    require 1 < arg6.length
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] = mem[(32 * arg4.length) + (32 * arg5.length) + 224]
    require 2 < arg6.length
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 352] = mem[(32 * arg4.length) + (32 * arg5.length) + 256]
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 448 len 96] = code.data[3663 len 96]
    mem[64] = (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 640
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 740 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    require ext_code.size(arg2)
    staticcall arg2.getReturnByPath(address[] arg1, uint256 arg2) with:
            gas gas_remaining wei
           args Array(len=arg4.length, data=call.data[arg4 + 36 len floor32(arg4.length)], mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + floor32(arg4.length) + 740 len (32 * arg4.length) - floor32(arg4.length)]), mem[(32 * arg4.length) + (32 * arg5.length) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0] > 0
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 544] = ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getEthToTokenInputPrice(uint256 arg1) with:
            gas gas_remaining wei
           args mem[(32 * arg4.length) + (32 * arg5.length) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 676] = ext_call.return_data[0]
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 708] = arg5.length
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 740 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
    require ext_code.size(arg2)
    staticcall arg2.getReturnByPath(address[] arg1, uint256 arg2) with:
            gas gas_remaining wei
           args Array(len=arg5.length, data=call.data[arg5 + 36 len floor32(arg5.length)], mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + floor32(arg5.length) + 740 len (32 * arg5.length) - floor32(arg5.length)]), ext_call.return_data[0]
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 640 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0] > 0
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 576] = ext_call.return_data[0]
    if mem[(32 * arg4.length) + (32 * arg5.length) + 192] < ext_call.return_data[0]:
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 608] = 1
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384] = mem[(32 * arg4.length) + (32 * arg5.length) + 192]
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416] = ext_call.return_data[0]
        require mem[(32 * arg4.length) + (32 * arg5.length) + 224] + mem[(32 * arg4.length) + (32 * arg5.length) + 192] >= mem[(32 * arg4.length) + (32 * arg5.length) + 192]
        _1092 = mem[(32 * arg4.length) + (32 * arg5.length) + 256]
        idx = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] + mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288]
        while idx <= _1092:
            if mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 608] != 1:
                require mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 608] == 2
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getEthToTokenInputPrice(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _1209 = mem[64]
                mem[mem[64]] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 36] = ext_call.return_data[0]
                mem[mem[64] + 4] = 64
                mem[mem[64] + 68] = mem[(32 * arg4.length) + 128]
                _1211 = mem[(32 * arg4.length) + 128]
                s = 0
                while s < 32 * _1211:
                    mem[s + mem[64] + 100] = mem[s + (32 * arg4.length) + 160]
                    s = s + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (32 * _1211) + _1209 + -mem[64] + 96]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0] > 0
                mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 576] = ext_call.return_data[0]
                require idx + mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416] >= mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416]
                require mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384] + ext_call.return_data[0] >= ext_call.return_data[0]
                if mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384] + ext_call.return_data[0] > idx + mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416]:
                    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384] = idx
                    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416] = ext_call.return_data[0]
                    require mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] + idx >= idx
                    idx = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] + idx
                    continue 
                _1551 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1551] = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 608]
                mem[_1551 + 32] = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384]
                mem[_1551 + 64] = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416]
                _1560 = mem[64]
                idx = 0
                while idx < 96:
                    mem[idx + _1560] = mem[idx + _1551]
                    idx = idx + 32
                    continue 
                return memory
                  from mem[64]
                   len _1560 + -mem[64] + 96
            _1144 = mem[64]
            mem[mem[64]] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 36] = idx
            mem[mem[64] + 4] = 64
            mem[mem[64] + 68] = mem[96]
            _1146 = mem[96]
            s = 0
            while s < 32 * _1146:
                mem[s + mem[64] + 100] = mem[s + 128]
                s = s + 32
                continue 
            require ext_code.size(arg2)
            staticcall arg2.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len (32 * _1146) + _1144 + -mem[64] + 96]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[mem[64] + 4] = ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0] > 0
            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 576] = ext_call.return_data[0]
            require idx + mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416] >= mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416]
            require mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384] + ext_call.return_data[0] >= ext_call.return_data[0]
            if mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384] + ext_call.return_data[0] > idx + mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416]:
                mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384] = idx
                mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416] = ext_call.return_data[0]
                require mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] + idx >= idx
                idx = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] + idx
                continue 
            _1599 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1599] = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 608]
            mem[_1599 + 32] = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384]
            mem[_1599 + 64] = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416]
            _1608 = mem[64]
            idx = 0
            while idx < 96:
                mem[idx + _1608] = mem[idx + _1599]
                idx = idx + 32
                continue 
            return memory
              from mem[64]
               len _1608 + -mem[64] + 96
        _1118 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1118] = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 608]
        mem[_1118 + 32] = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384]
        mem[_1118 + 64] = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416]
        mem[mem[64] len 96] = mem[_1118 len 96]
    else:
        require mem[(32 * arg4.length) + (32 * arg5.length) + 192] < ext_call.return_data[0]
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 608] = 2
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384] = mem[(32 * arg4.length) + (32 * arg5.length) + 192]
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416] = ext_call.return_data[0]
        require mem[(32 * arg4.length) + (32 * arg5.length) + 224] + mem[(32 * arg4.length) + (32 * arg5.length) + 192] >= mem[(32 * arg4.length) + (32 * arg5.length) + 192]
        _1089 = mem[(32 * arg4.length) + (32 * arg5.length) + 256]
        idx = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] + mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288]
        while idx <= _1089:
            if mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 608] != 1:
                require mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 608] == 2
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getEthToTokenInputPrice(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64]] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 36] = ext_call.return_data[0]
                mem[mem[64] + 4] = 64
                mem[mem[64] + 68] = mem[(32 * arg4.length) + 128]
                _1196 = mem[(32 * arg4.length) + 128]
                s = 0
                while s < 32 * _1196:
                    mem[s + mem[64] + 100] = mem[s + (32 * arg4.length) + 160]
                    s = s + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.getReturnByPath(address[] arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args 64, ext_call.return_data[0], mem[mem[64] + 68 len (32 * _1196) + 32]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0] > 0
                mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 576] = ext_call.return_data[0]
                require idx + mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416] >= mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416]
                require mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384] + ext_call.return_data[0] >= ext_call.return_data[0]
                if mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384] + ext_call.return_data[0] > idx + mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416]:
                    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384] = idx
                    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416] = ext_call.return_data[0]
                    require mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] + idx >= idx
                    idx = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] + idx
                    continue 
                _1539 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1539] = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 608]
                mem[_1539 + 32] = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384]
                mem[_1539 + 64] = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416]
                _1557 = mem[64]
                idx = 0
                while idx < 96:
                    mem[idx + _1557] = mem[idx + _1539]
                    idx = idx + 32
                    continue 
                return memory
                  from mem[64]
                   len _1557 + -mem[64] + 96
            mem[mem[64]] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 36] = idx
            mem[mem[64] + 4] = 64
            mem[mem[64] + 68] = mem[96]
            s = 0
            while s < 32 * mem[96]:
                mem[s + mem[64] + 100] = mem[s + 128]
                s = s + 32
                continue 
            require ext_code.size(arg2)
            staticcall arg2.getReturnByPath(address[] arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args 64, idx, mem[mem[64] + 68 len (32 * mem[96]) + 32]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[mem[64] + 4] = ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0] > 0
            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 576] = ext_call.return_data[0]
            require idx + mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416] >= mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416]
            require mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384] + ext_call.return_data[0] >= ext_call.return_data[0]
            if mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384] + ext_call.return_data[0] > idx + mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416]:
                mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384] = idx
                mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416] = ext_call.return_data[0]
                require mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] + idx >= idx
                idx = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] + idx
                continue 
            _1584 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1584] = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 608]
            mem[_1584 + 32] = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384]
            mem[_1584 + 64] = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416]
            _1605 = mem[64]
            idx = 0
            while idx < 96:
                mem[idx + _1605] = mem[idx + _1584]
                idx = idx + 32
                continue 
            return memory
              from mem[64]
               len _1605 + -mem[64] + 96
        _1103 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1103] = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 608]
        mem[_1103 + 32] = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384]
        mem[_1103 + 64] = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416]
        mem[mem[64] len 96] = mem[_1103 len 96]
    return memory
      from mem[64]
       len 96
}



}
