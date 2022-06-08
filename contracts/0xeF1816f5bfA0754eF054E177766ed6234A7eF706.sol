contract main {




// =====================  Runtime code  =====================


#
#  - sub_04ad1e53(?)
#  - sub_4b95de13(?)
#  - sub_690d3114(?)
#  - sub_f241ffb0(?)
#
address stor0;

function _fallback() payable {
    revert
}

function getERC721TokenOwner(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    staticcall arg1.0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        return 0
    return ext_call.return_data[12 len 20]
}

function sub_2cd0fc73(?) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if arg2.length < 4:
        revert with 0, 'GREATER_OR_EQUAL_TO_4_LENGTH_REQUIRED'
    _3 = mem[128]
    if arg2.length < 36:
        revert with 0, 'GREATER_OR_EQUAL_TO_20_LENGTH_REQUIRED'
    _6 = mem[132]
    mem[ceil32(arg2.length) + 132] = Mask(32, 224, mem[128])
    require ext_code.size(stor0)
    call stor0.0x60704108 with:
         gas gas_remaining wei
        args Mask(32, 224, _3)
    mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(32, 224, sha3('ERC20Token(address)')) == Mask(32, 224, _3):
        require ext_code.size(address(_6))
        call address(_6).0x70a08231 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(_6))
        call address(_6).0xdd62ed3e with:
             gas gas_remaining wei
            args address(arg1), address(ext_call.return_data[4 len 28])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0], ext_call.return_data[0]
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] = 'ERC721Token(address,uint256)'
    if Mask(32, 224, sha3('ERC721Token(address,uint256)')) != Mask(32, 224, _3):
        revert with 0, 'UNSUPPORTED_ASSET_PROXY'
    if arg2.length < 68:
        revert with 0, 'GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
    staticcall address(_6).0x6352211e with:
            gas gas_remaining wei
           args mem[164]
    if not ext_call.success:
        if not arg1:
            require ext_code.size(address(_6))
            call address(_6).0xe985e9c5 with:
                 gas gas_remaining wei
                args address(arg1), address(ext_call.return_data[4 len 28])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                return 1, 1
            return 1, 0
    else:
        if arg1 == address(ext_call.return_data[0]):
            require ext_code.size(address(_6))
            call address(_6).0xe985e9c5 with:
                 gas gas_remaining wei
                args address(arg1), address(ext_call.return_data[4 len 28])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                return 1, 1
            return 1, 0
    require ext_code.size(address(_6))
    call address(_6).0xe985e9c5 with:
         gas gas_remaining wei
        args address(arg1), address(ext_call.return_data[4 len 28])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        return 0, 1
    else:
        return 0
}

function sub_c6b7f4ee(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 36).length) + 128
    mem[96] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require calldata.size > cd[36] + cd[s] + 67
        require cd[(cd[36] + cd[s] + 36)] <= test266151307()
        _163 = mem[64]
        require mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_163] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_163 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[cd[(cd[36] + cd[s] + 36)] + _163 + 32] = 0
        mem[t] = _163
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _159 = mem[96]
    _160 = mem[64]
    if not mem[96]:
        _161 = mem[64] + (32 * mem[96]) + 32
        mem[mem[64] + (32 * mem[96]) + 32] = mem[96]
        mem[64] = _161 + (32 * _159) + 32
        idx = 0
        while _159 != idx:
            require idx < mem[96]
            _319 = mem[(32 * idx) + 128]
            if mem[mem[(32 * idx) + 128]] < 4:
                revert with 0, 'GREATER_OR_EQUAL_TO_4_LENGTH_REQUIRED'
            _325 = mem[mem[(32 * idx) + 128] + 32]
            if mem[mem[(32 * idx) + 128]] < 36:
                revert with 0, 'GREATER_OR_EQUAL_TO_20_LENGTH_REQUIRED'
            _332 = mem[mem[(32 * idx) + 128] + 36]
            mem[mem[64] + 4] = Mask(32, 224, mem[mem[(32 * idx) + 128] + 32])
            require ext_code.size(stor0)
            call stor0.0x60704108 with:
                 gas gas_remaining wei
                args Mask(32, 224, _325)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _348 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _353 = mem[_348]
            if Mask(32, 224, sha3('ERC20Token(address)')) != Mask(32, 224, _325):
                mem[mem[64]] = 'ERC721Token(address,uint256)'
                if Mask(32, 224, sha3('ERC721Token(address,uint256)')) != Mask(32, 224, _325):
                    revert with 0, 'UNSUPPORTED_ASSET_PROXY'
                if mem[_319] < 68:
                    revert with 0, 'GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
                staticcall address(_332).0x6352211e with:
                        gas gas_remaining wei
                       args mem[_319 + 68]
                mem[mem[64] + 4] = address(cd[4])
                mem[mem[64] + 36] = address(_353)
                require ext_code.size(address(_332))
                call address(_332).0xe985e9c5 with:
                     gas gas_remaining wei
                    args address(cd[4]), address(_353)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if not address(cd[4]):
                        _410 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require idx < mem[_160]
                        require idx < mem[_161]
                        if mem[_410]:
                            mem[_161 + (32 * idx) + 32] = 1
                        else:
                            mem[_161 + (32 * idx) + 32] = 0
                        mem[(32 * idx) + _160 + 32] = 1
                    else:
                        _411 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require idx < mem[_160]
                        require idx < mem[_161]
                        if mem[_411]:
                            mem[_161 + (32 * idx) + 32] = 1
                        else:
                            mem[_161 + (32 * idx) + 32] = 0
                        mem[(32 * idx) + _160 + 32] = 0
                else:
                    if address(cd[4]) == address(ext_call.return_data[0]):
                        _414 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require idx < mem[_160]
                        require idx < mem[_161]
                        if mem[_414]:
                            mem[_161 + (32 * idx) + 32] = 1
                        else:
                            mem[_161 + (32 * idx) + 32] = 0
                        mem[(32 * idx) + _160 + 32] = 1
                    else:
                        _415 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require idx < mem[_160]
                        require idx < mem[_161]
                        if mem[_415]:
                            mem[_161 + (32 * idx) + 32] = 1
                        else:
                            mem[_161 + (32 * idx) + 32] = 0
                        mem[(32 * idx) + _160 + 32] = 0
            else:
                mem[mem[64] + 4] = address(cd[4])
                require ext_code.size(address(_332))
                call address(_332).0x70a08231 with:
                     gas gas_remaining wei
                    args address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _386 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _390 = mem[_386]
                mem[mem[64] + 4] = address(cd[4])
                mem[mem[64] + 36] = address(_353)
                require ext_code.size(address(_332))
                call address(_332).0xdd62ed3e with:
                     gas gas_remaining wei
                    args address(cd[4]), address(_353)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _422 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require idx < mem[_160]
                require idx < mem[_161]
                mem[_161 + (32 * idx) + 32] = mem[_422]
                mem[(32 * idx) + _160 + 32] = _390
            idx = idx + 1
            continue 
        _318 = mem[64]
        mem[mem[64]] = 64
        _324 = mem[_160]
        mem[mem[64] + 64] = mem[_160]
        mem[mem[64] + 96 len 32 * _324] = mem[_160 + 32 len 32 * _324]
        mem[mem[64] + 32] = (32 * _324) + 96
        _470 = mem[_161]
        mem[_318 + (32 * _324) + 96] = mem[_161]
        mem[_318 + (32 * _324) + 128 len 32 * _470] = mem[_161 + 32 len 32 * _470]
        return memory
          from mem[64]
           len _318 + (32 * _324) + (32 * _470) + -mem[64] + 128
    mem[mem[64] + 32 len 32 * mem[96]] = code.data[6773 len 32 * mem[96]]
    mem[mem[64] + (32 * mem[96]) + 32] = mem[96]
    mem[64] = _160 + (64 * _159) + 64
    mem[_160 + (32 * _159) + 64 len 32 * _159] = code.data[6773 len 32 * _159]
    idx = 0
    while _159 != idx:
        require idx < mem[96]
        _321 = mem[(32 * idx) + 128]
        if mem[mem[(32 * idx) + 128]] < 4:
            revert with 0, 'GREATER_OR_EQUAL_TO_4_LENGTH_REQUIRED'
        _328 = mem[mem[(32 * idx) + 128] + 32]
        if mem[mem[(32 * idx) + 128]] < 36:
            revert with 0, 'GREATER_OR_EQUAL_TO_20_LENGTH_REQUIRED'
        _334 = mem[mem[(32 * idx) + 128] + 36]
        mem[mem[64] + 4] = Mask(32, 224, mem[mem[(32 * idx) + 128] + 32])
        require ext_code.size(stor0)
        call stor0.0x60704108 with:
             gas gas_remaining wei
            args Mask(32, 224, _328)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _349 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _355 = mem[_349]
        if Mask(32, 224, sha3('ERC20Token(address)')) != Mask(32, 224, _328):
            mem[mem[64]] = 'ERC721Token(address,uint256)'
            if Mask(32, 224, sha3('ERC721Token(address,uint256)')) != Mask(32, 224, _328):
                revert with 0, 'UNSUPPORTED_ASSET_PROXY'
            if mem[_321] < 68:
                revert with 0, 'GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
            staticcall address(_334).0x6352211e with:
                    gas gas_remaining wei
                   args mem[_321 + 68]
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = address(_355)
            require ext_code.size(address(_334))
            call address(_334).0xe985e9c5 with:
                 gas gas_remaining wei
                args address(cd[4]), address(_355)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if not address(cd[4]):
                    _412 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require idx < mem[_160]
                    require idx < mem[_160 + (32 * _159) + 32]
                    if mem[_412]:
                        mem[_160 + (32 * _159) + (32 * idx) + 64] = 1
                    else:
                        mem[_160 + (32 * _159) + (32 * idx) + 64] = 0
                    mem[(32 * idx) + _160 + 32] = 1
                else:
                    _413 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require idx < mem[_160]
                    require idx < mem[_160 + (32 * _159) + 32]
                    if mem[_413]:
                        mem[_160 + (32 * _159) + (32 * idx) + 64] = 1
                    else:
                        mem[_160 + (32 * _159) + (32 * idx) + 64] = 0
                    mem[(32 * idx) + _160 + 32] = 0
            else:
                if address(cd[4]) == address(ext_call.return_data[0]):
                    _417 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require idx < mem[_160]
                    require idx < mem[_160 + (32 * _159) + 32]
                    if mem[_417]:
                        mem[_160 + (32 * _159) + (32 * idx) + 64] = 1
                    else:
                        mem[_160 + (32 * _159) + (32 * idx) + 64] = 0
                    mem[(32 * idx) + _160 + 32] = 1
                else:
                    _418 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require idx < mem[_160]
                    require idx < mem[_160 + (32 * _159) + 32]
                    if mem[_418]:
                        mem[_160 + (32 * _159) + (32 * idx) + 64] = 1
                    else:
                        mem[_160 + (32 * _159) + (32 * idx) + 64] = 0
                    mem[(32 * idx) + _160 + 32] = 0
        else:
            mem[mem[64] + 4] = address(cd[4])
            require ext_code.size(address(_334))
            call address(_334).0x70a08231 with:
                 gas gas_remaining wei
                args address(cd[4])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _389 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _391 = mem[_389]
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = address(_355)
            require ext_code.size(address(_334))
            call address(_334).0xdd62ed3e with:
                 gas gas_remaining wei
                args address(cd[4]), address(_355)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _425 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[_160]
            require idx < mem[_160 + (32 * _159) + 32]
            mem[_160 + (32 * _159) + (32 * idx) + 64] = mem[_425]
            mem[(32 * idx) + _160 + 32] = _391
        idx = idx + 1
        continue 
    _320 = mem[64]
    mem[mem[64]] = 64
    _327 = mem[_160]
    mem[mem[64] + 64] = mem[_160]
    mem[mem[64] + 96 len 32 * _327] = mem[_160 + 32 len 32 * _327]
    mem[mem[64] + 32] = (32 * _327) + 96
    _471 = mem[_160 + (32 * _159) + 32]
    mem[_320 + (32 * _327) + 96] = mem[_160 + (32 * _159) + 32]
    mem[_320 + (32 * _327) + 128 len 32 * _471] = mem[_160 + (32 * _159) + 64 len 32 * _471]
    return memory
      from mem[64]
       len _320 + (32 * _327) + (32 * _471) + -mem[64] + 128
}



}
