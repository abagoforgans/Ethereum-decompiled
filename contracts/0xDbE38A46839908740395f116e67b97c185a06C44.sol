contract main {




// =====================  Runtime code  =====================


address coreAddress;
address kyberNetworkProxyAddress;
address setTransferProxyAddress;
uint256 sub_a8a0d1c7;

function setTransferProxy() payable {
    return setTransferProxyAddress
}

function sub_a8a0d1c7(?) payable {
    return sub_a8a0d1c7
}

function kyberNetworkProxy() payable {
    return kyberNetworkProxyAddress
}

function core() payable {
    return coreAddress
}

function _fallback() payable {
    revert
}

function sub_4435b3d5(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(kyberNetworkProxyAddress)
    staticcall kyberNetworkProxyAddress.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32]
}

function sub_c58c1db8(?) payable {
    require calldata.size - 4 >= 96
    require calldata.size - 4 >= 64
    mem[96] = arg1
    mem[128] = arg2
    require arg3 <= test266151307()
    require calldata.size > arg3 + 35
    require arg3.length <= test266151307()
    require ceil32(arg3.length) + 192 >= 160 and ceil32(arg3.length) + 192 <= test266151307()
    mem[160] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[192 len arg3.length] = arg3[all]
    mem[arg3.length + 192] = 0
    mem[ceil32(arg3.length) + 192] = 96
    mem[ceil32(arg3.length) + 224] = 96
    mem[ceil32(arg3.length) + 260] = msg.sender
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x5e633498 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(arg3.length) + 256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'KyberNetworkWrapper.exchange: Sender must be approved module'
    mem[ceil32(arg3.length) + ceil32(return_data.size) + 256] = arg2
    if not arg2:
        mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288] = arg2
        mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320] = arg2
        mem[64] = ceil32(arg3.length) + ceil32(return_data.size) + (98 * arg2) + 352
        idx = 0
        while idx < arg2:
            _214 = mem[64]
            mem[64] = mem[64] + 160
            mem[_214] = 0
            mem[_214 + 32] = 0
            mem[_214 + 64] = 0
            mem[_214 + 96] = 0
            mem[_214 + 128] = 0
            if not idx:
                _229 = mem[64]
                mem[64] = mem[64] + 160
                mem[_229] = 0
                mem[_229 + 32] = 0
                mem[_229 + 64] = 0
                mem[_229 + 96] = 0
                mem[_229 + 128] = 0
                _235 = mem[64]
                mem[64] = mem[64] + 160
                mem[_235] = 0
                mem[_235 + 32] = 0
                mem[_235 + 64] = 0
                mem[_235 + 96] = 0
                mem[_235 + 128] = 0
                mem[_235] = mem[192]
                mem[_235 + 32] = mem[224]
                mem[_235 + 64] = mem[256]
                mem[_235 + 96] = mem[288]
                mem[_235 + 128] = mem[320]
                _258 = mem[_235 + 32]
                _259 = mem[_235 + 64]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = kyberNetworkProxyAddress
                require ext_code.size(address(_258))
                staticcall address(_258).allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), kyberNetworkProxyAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _298 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_298] >= _259:
                    require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + 256]
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * idx) + 288] = mem[_235 + 44 len 20]
                    _317 = mem[_235 + 64]
                    _318 = mem[_235]
                    _319 = mem[_235 + 128]
                    _320 = mem[_235 + 96]
                    mem[mem[64] + 4] = mem[_235 + 44 len 20]
                    mem[mem[64] + 36] = _317
                    mem[mem[64] + 68] = address(_318)
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = _319
                    mem[mem[64] + 164] = _320
                    mem[mem[64] + 196] = 0
                    require ext_code.size(kyberNetworkProxyAddress)
                    call kyberNetworkProxyAddress.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _317, address(_318), address(this.address), _319, _320, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _444 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _448 = mem[_444]
                    _452 = mem[_235]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = setTransferProxyAddress
                    require ext_code.size(address(_452))
                    staticcall address(_452).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), setTransferProxyAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _464 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_464] >= _448:
                        _491 = mem[_235]
                        require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
                        require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320]
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + (32 * idx) + 352] = _448
                        mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320] = address(_491)
                    else:
                        mem[mem[64] + 4] = setTransferProxyAddress
                        mem[mem[64] + 36] = -1
                        require ext_code.size(address(_452))
                        call address(_452).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args setTransferProxyAddress, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not return_data.size:
                            _574 = mem[_235]
                            require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
                            require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320]
                            mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + (32 * idx) + 352] = _448
                            mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320] = address(_574)
                        else:
                            if 32 != return_data.size:
                                revert with 0, 'ERC20Wrapper.approve: Bad return value'
                            mem[0] = ext_call.return_data[0]
                            if ext_call.return_data[0] != 1:
                                revert with 0, 'ERC20Wrapper.approve: Bad return value'
                            _583 = mem[_235]
                            require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
                            require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320]
                            mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + (32 * idx) + 352] = _448
                            mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320] = address(_583)
                else:
                    mem[mem[64] + 4] = kyberNetworkProxyAddress
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(_258))
                    call address(_258).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args kyberNetworkProxyAddress, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not return_data.size:
                        require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + 256]
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * idx) + 288] = mem[_235 + 44 len 20]
                        _383 = mem[_235 + 64]
                        _384 = mem[_235]
                        _385 = mem[_235 + 128]
                        _386 = mem[_235 + 96]
                        mem[mem[64] + 4] = mem[_235 + 44 len 20]
                        mem[mem[64] + 36] = _383
                        mem[mem[64] + 68] = address(_384)
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = _385
                        mem[mem[64] + 164] = _386
                        mem[mem[64] + 196] = 0
                        require ext_code.size(kyberNetworkProxyAddress)
                        call kyberNetworkProxyAddress.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _383, address(_384), address(this.address), _385, _386, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _479 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _488 = mem[_479]
                        _510 = mem[_235]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = setTransferProxyAddress
                        require ext_code.size(address(_510))
                        staticcall address(_510).allowance(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), setTransferProxyAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _546 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_546] >= _488:
                            _575 = mem[_235]
                            require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
                            require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320]
                            mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + (32 * idx) + 352] = _488
                            mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320] = address(_575)
                        else:
                            mem[mem[64] + 4] = setTransferProxyAddress
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(_510))
                            call address(_510).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args setTransferProxyAddress, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not return_data.size:
                                _678 = mem[_235]
                                require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
                                require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320]
                                mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + (32 * idx) + 352] = _488
                                mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320] = address(_678)
                            else:
                                if 32 != return_data.size:
                                    revert with 0, 'ERC20Wrapper.approve: Bad return value'
                                mem[0] = ext_call.return_data[0]
                                if ext_call.return_data[0] != 1:
                                    revert with 0, 'ERC20Wrapper.approve: Bad return value'
                                _690 = mem[_235]
                                require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
                                require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320]
                                mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + (32 * idx) + 352] = _488
                                mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320] = address(_690)
                    else:
                        if 32 != return_data.size:
                            revert with 0, 'ERC20Wrapper.approve: Bad return value'
                        mem[0] = ext_call.return_data[0]
                        if ext_call.return_data[0] != 1:
                            revert with 0, 'ERC20Wrapper.approve: Bad return value'
                        require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + 256]
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * idx) + 288] = mem[_235 + 44 len 20]
                        _403 = mem[_235 + 64]
                        _404 = mem[_235]
                        _405 = mem[_235 + 128]
                        _406 = mem[_235 + 96]
                        mem[mem[64] + 4] = mem[_235 + 44 len 20]
                        mem[mem[64] + 36] = _403
                        mem[mem[64] + 68] = address(_404)
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = _405
                        mem[mem[64] + 164] = _406
                        mem[mem[64] + 196] = 0
                        require ext_code.size(kyberNetworkProxyAddress)
                        call kyberNetworkProxyAddress.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _403, address(_404), address(this.address), _405, _406, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _483 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _492 = mem[_483]
                        _515 = mem[_235]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = setTransferProxyAddress
                        require ext_code.size(address(_515))
                        staticcall address(_515).allowance(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), setTransferProxyAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _551 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_551] >= _492:
                            _585 = mem[_235]
                            require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
                            require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320]
                            mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + (32 * idx) + 352] = _492
                            mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320] = address(_585)
                        else:
                            mem[mem[64] + 4] = setTransferProxyAddress
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(_515))
                            call address(_515).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args setTransferProxyAddress, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not return_data.size:
                                _691 = mem[_235]
                                require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
                                require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320]
                                mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + (32 * idx) + 352] = _492
                                mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320] = address(_691)
                            else:
                                if 32 != return_data.size:
                                    revert with 0, 'ERC20Wrapper.approve: Bad return value'
                                mem[0] = ext_call.return_data[0]
                                if ext_call.return_data[0] != 1:
                                    revert with 0, 'ERC20Wrapper.approve: Bad return value'
                                _704 = mem[_235]
                                require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
                                require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320]
                                mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + (32 * idx) + 352] = _492
                                mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320] = address(_704)
            else:
                require sub_a8a0d1c7 * idx / idx == sub_a8a0d1c7
                _232 = mem[64]
                mem[64] = mem[64] + 160
                mem[_232] = 0
                mem[_232 + 32] = 0
                mem[_232 + 64] = 0
                mem[_232 + 96] = 0
                mem[_232 + 128] = 0
                _238 = mem[64]
                mem[64] = mem[64] + 160
                mem[_238] = 0
                mem[_238 + 32] = 0
                mem[_238 + 64] = 0
                mem[_238 + 96] = 0
                mem[_238 + 128] = 0
                require sub_a8a0d1c7 * idx >= 0
                mem[_238] = mem[(sub_a8a0d1c7 * idx) + 192]
                mem[_238 + 32] = mem[(sub_a8a0d1c7 * idx) + 224]
                mem[_238 + 64] = mem[(sub_a8a0d1c7 * idx) + 256]
                mem[_238 + 96] = mem[(sub_a8a0d1c7 * idx) + 288]
                mem[_238 + 128] = mem[(sub_a8a0d1c7 * idx) + 320]
                _270 = mem[_238 + 32]
                _271 = mem[_238 + 64]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = kyberNetworkProxyAddress
                require ext_code.size(address(_270))
                staticcall address(_270).allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), kyberNetworkProxyAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _300 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_300] >= _271:
                    require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + 256]
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * idx) + 288] = mem[_238 + 44 len 20]
                    _331 = mem[_238 + 64]
                    _332 = mem[_238]
                    _333 = mem[_238 + 128]
                    _334 = mem[_238 + 96]
                    mem[mem[64] + 4] = mem[_238 + 44 len 20]
                    mem[mem[64] + 36] = _331
                    mem[mem[64] + 68] = address(_332)
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = _333
                    mem[mem[64] + 164] = _334
                    mem[mem[64] + 196] = 0
                    require ext_code.size(kyberNetworkProxyAddress)
                    call kyberNetworkProxyAddress.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _331, address(_332), address(this.address), _333, _334, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _446 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _450 = mem[_446]
                    _454 = mem[_238]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = setTransferProxyAddress
                    require ext_code.size(address(_454))
                    staticcall address(_454).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), setTransferProxyAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _466 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_466] >= _450:
                        _496 = mem[_238]
                        require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
                        require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320]
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + (32 * idx) + 352] = _450
                        mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320] = address(_496)
                    else:
                        mem[mem[64] + 4] = setTransferProxyAddress
                        mem[mem[64] + 36] = -1
                        require ext_code.size(address(_454))
                        call address(_454).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args setTransferProxyAddress, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not return_data.size:
                            _580 = mem[_238]
                            require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
                            require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320]
                            mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + (32 * idx) + 352] = _450
                            mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320] = address(_580)
                        else:
                            if 32 != return_data.size:
                                revert with 0, 'ERC20Wrapper.approve: Bad return value'
                            mem[0] = ext_call.return_data[0]
                            if ext_call.return_data[0] != 1:
                                revert with 0, 'ERC20Wrapper.approve: Bad return value'
                            _593 = mem[_238]
                            require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
                            require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320]
                            mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + (32 * idx) + 352] = _450
                            mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320] = address(_593)
                else:
                    mem[mem[64] + 4] = kyberNetworkProxyAddress
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(_270))
                    call address(_270).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args kyberNetworkProxyAddress, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not return_data.size:
                        require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + 256]
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * idx) + 288] = mem[_238 + 44 len 20]
                        _397 = mem[_238 + 64]
                        _398 = mem[_238]
                        _399 = mem[_238 + 128]
                        _400 = mem[_238 + 96]
                        mem[mem[64] + 4] = mem[_238 + 44 len 20]
                        mem[mem[64] + 36] = _397
                        mem[mem[64] + 68] = address(_398)
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = _399
                        mem[mem[64] + 164] = _400
                        mem[mem[64] + 196] = 0
                        require ext_code.size(kyberNetworkProxyAddress)
                        call kyberNetworkProxyAddress.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _397, address(_398), address(this.address), _399, _400, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _482 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _490 = mem[_482]
                        _514 = mem[_238]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = setTransferProxyAddress
                        require ext_code.size(address(_514))
                        staticcall address(_514).allowance(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), setTransferProxyAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _550 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_550] >= _490:
                            _581 = mem[_238]
                            require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
                            require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320]
                            mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + (32 * idx) + 352] = _490
                            mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320] = address(_581)
                        else:
                            mem[mem[64] + 4] = setTransferProxyAddress
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(_514))
                            call address(_514).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args setTransferProxyAddress, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not return_data.size:
                                _686 = mem[_238]
                                require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
                                require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320]
                                mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + (32 * idx) + 352] = _490
                                mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320] = address(_686)
                            else:
                                if 32 != return_data.size:
                                    revert with 0, 'ERC20Wrapper.approve: Bad return value'
                                mem[0] = ext_call.return_data[0]
                                if ext_call.return_data[0] != 1:
                                    revert with 0, 'ERC20Wrapper.approve: Bad return value'
                                _699 = mem[_238]
                                require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
                                require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320]
                                mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + (32 * idx) + 352] = _490
                                mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320] = address(_699)
                    else:
                        if 32 != return_data.size:
                            revert with 0, 'ERC20Wrapper.approve: Bad return value'
                        mem[0] = ext_call.return_data[0]
                        if ext_call.return_data[0] != 1:
                            revert with 0, 'ERC20Wrapper.approve: Bad return value'
                        require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + 256]
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * idx) + 288] = mem[_238 + 44 len 20]
                        _421 = mem[_238 + 64]
                        _422 = mem[_238]
                        _423 = mem[_238 + 128]
                        _424 = mem[_238 + 96]
                        mem[mem[64] + 4] = mem[_238 + 44 len 20]
                        mem[mem[64] + 36] = _421
                        mem[mem[64] + 68] = address(_422)
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = _423
                        mem[mem[64] + 164] = _424
                        mem[mem[64] + 196] = 0
                        require ext_code.size(kyberNetworkProxyAddress)
                        call kyberNetworkProxyAddress.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _421, address(_422), address(this.address), _423, _424, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _486 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _497 = mem[_486]
                        _518 = mem[_238]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = setTransferProxyAddress
                        require ext_code.size(address(_518))
                        staticcall address(_518).allowance(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), setTransferProxyAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _554 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_554] >= _497:
                            _595 = mem[_238]
                            require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
                            require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320]
                            mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + (32 * idx) + 352] = _497
                            mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320] = address(_595)
                        else:
                            mem[mem[64] + 4] = setTransferProxyAddress
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(_518))
                            call address(_518).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args setTransferProxyAddress, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not return_data.size:
                                _700 = mem[_238]
                                require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
                                require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320]
                                mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + (32 * idx) + 352] = _497
                                mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320] = address(_700)
                            else:
                                if 32 != return_data.size:
                                    revert with 0, 'ERC20Wrapper.approve: Bad return value'
                                mem[0] = ext_call.return_data[0]
                                if ext_call.return_data[0] != 1:
                                    revert with 0, 'ERC20Wrapper.approve: Bad return value'
                                _715 = mem[_238]
                                require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
                                require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320]
                                mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + (32 * idx) + 352] = _497
                                mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320] = address(_715)
            idx = idx + 1
            continue 
        _212 = mem[96]
        _752 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 256]
        idx = 0
        while idx < _752:
            require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + 256]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + 300 len 20]
            mem[mem[64] + 36] = this.address
            require ext_code.size(0xbc0f33ead523381c0faaf1225160cd98bbd3c521)
            delegate 0xbc0f33ead523381c0faaf1225160cd98bbd3c521.balanceOf(address arg1, address arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], address(this.address)
            mem[mem[64]] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _773 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _778 = mem[_773]
            if mem[_773] > 0:
                require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + 256]
                _783 = mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + 288]
                mem[mem[64]] = 0xbeabacc800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_783)
                mem[mem[64] + 36] = address(_212)
                mem[mem[64] + 68] = _778
                require ext_code.size(0xbc0f33ead523381c0faaf1225160cd98bbd3c521)
                delegate 0xbc0f33ead523381c0faaf1225160cd98bbd3c521.transfer(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(_783), address(_212), _778
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        _756 = mem[64]
        mem[64] = mem[64] + 64
        mem[_756] = ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288
        mem[_756 + 32] = ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320
        _762 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 64
        _766 = mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
        mem[mem[64] + 96] = mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
        idx = 0
        s = ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320
        t = mem[64] + 128
        while idx < _766:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _794 = mem[_756 + 32]
        mem[_762 + 64] = (32 * _766) + 96
        _796 = mem[_794]
        mem[_762 + (32 * _766) + 128] = mem[_794]
        mem[_762 + (32 * _766) + 160 len 32 * _796] = mem[_794 + 32 len 32 * _796]
        return memory
          from mem[64]
           len _762 + (32 * _766) + (32 * _796) + -mem[64] + 160
    mem[ceil32(arg3.length) + ceil32(return_data.size) + 288 len 32 * arg2] = code.data[3957 len 32 * arg2]
    mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288] = arg2
    mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320 len 32 * arg2] = code.data[3957 len 32 * arg2]
    mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320] = arg2
    mem[64] = ceil32(arg3.length) + ceil32(return_data.size) + (98 * arg2) + 352
    mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 352 len 32 * arg2] = code.data[3957 len 32 * arg2]
    idx = 0
    while idx < arg2:
        _215 = mem[64]
        mem[64] = mem[64] + 160
        mem[_215] = 0
        mem[_215 + 32] = 0
        mem[_215 + 64] = 0
        mem[_215 + 96] = 0
        mem[_215 + 128] = 0
        if not idx:
            _231 = mem[64]
            mem[64] = mem[64] + 160
            mem[_231] = 0
            mem[_231 + 32] = 0
            mem[_231 + 64] = 0
            mem[_231 + 96] = 0
            mem[_231 + 128] = 0
            _237 = mem[64]
            mem[64] = mem[64] + 160
            mem[_237] = 0
            mem[_237 + 32] = 0
            mem[_237 + 64] = 0
            mem[_237 + 96] = 0
            mem[_237 + 128] = 0
            mem[_237] = mem[192]
            mem[_237 + 32] = mem[224]
            mem[_237 + 64] = mem[256]
            mem[_237 + 96] = mem[288]
            mem[_237 + 128] = mem[320]
            _266 = mem[_237 + 32]
            _267 = mem[_237 + 64]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = kyberNetworkProxyAddress
            require ext_code.size(address(_266))
            staticcall address(_266).allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), kyberNetworkProxyAddress
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _299 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_299] >= _267:
                require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + 256]
                mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * idx) + 288] = mem[_237 + 44 len 20]
                _324 = mem[_237 + 64]
                _325 = mem[_237]
                _326 = mem[_237 + 128]
                _327 = mem[_237 + 96]
                mem[mem[64] + 4] = mem[_237 + 44 len 20]
                mem[mem[64] + 36] = _324
                mem[mem[64] + 68] = address(_325)
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = _326
                mem[mem[64] + 164] = _327
                mem[mem[64] + 196] = 0
                require ext_code.size(kyberNetworkProxyAddress)
                call kyberNetworkProxyAddress.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _324, address(_325), address(this.address), _326, _327, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _445 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _449 = mem[_445]
                _453 = mem[_237]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = setTransferProxyAddress
                require ext_code.size(address(_453))
                staticcall address(_453).allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), setTransferProxyAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _465 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_465] >= _449:
                    _494 = mem[_237]
                    require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
                    require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320]
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + (32 * idx) + 352] = _449
                    mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320] = address(_494)
                else:
                    mem[mem[64] + 4] = setTransferProxyAddress
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(_453))
                    call address(_453).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args setTransferProxyAddress, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not return_data.size:
                        _578 = mem[_237]
                        require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
                        require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320]
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + (32 * idx) + 352] = _449
                        mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320] = address(_578)
                    else:
                        if 32 != return_data.size:
                            revert with 0, 'ERC20Wrapper.approve: Bad return value'
                        mem[0] = ext_call.return_data[0]
                        if ext_call.return_data[0] != 1:
                            revert with 0, 'ERC20Wrapper.approve: Bad return value'
                        _589 = mem[_237]
                        require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
                        require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320]
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + (32 * idx) + 352] = _449
                        mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320] = address(_589)
            else:
                mem[mem[64] + 4] = kyberNetworkProxyAddress
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_266))
                call address(_266).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args kyberNetworkProxyAddress, -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not return_data.size:
                    require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + 256]
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * idx) + 288] = mem[_237 + 44 len 20]
                    _391 = mem[_237 + 64]
                    _392 = mem[_237]
                    _393 = mem[_237 + 128]
                    _394 = mem[_237 + 96]
                    mem[mem[64] + 4] = mem[_237 + 44 len 20]
                    mem[mem[64] + 36] = _391
                    mem[mem[64] + 68] = address(_392)
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = _393
                    mem[mem[64] + 164] = _394
                    mem[mem[64] + 196] = 0
                    require ext_code.size(kyberNetworkProxyAddress)
                    call kyberNetworkProxyAddress.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _391, address(_392), address(this.address), _393, _394, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _481 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _489 = mem[_481]
                    _513 = mem[_237]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = setTransferProxyAddress
                    require ext_code.size(address(_513))
                    staticcall address(_513).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), setTransferProxyAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _549 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_549] >= _489:
                        _579 = mem[_237]
                        require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
                        require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320]
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + (32 * idx) + 352] = _489
                        mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320] = address(_579)
                    else:
                        mem[mem[64] + 4] = setTransferProxyAddress
                        mem[mem[64] + 36] = -1
                        require ext_code.size(address(_513))
                        call address(_513).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args setTransferProxyAddress, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not return_data.size:
                            _683 = mem[_237]
                            require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
                            require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320]
                            mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + (32 * idx) + 352] = _489
                            mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320] = address(_683)
                        else:
                            if 32 != return_data.size:
                                revert with 0, 'ERC20Wrapper.approve: Bad return value'
                            mem[0] = ext_call.return_data[0]
                            if ext_call.return_data[0] != 1:
                                revert with 0, 'ERC20Wrapper.approve: Bad return value'
                            _696 = mem[_237]
                            require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
                            require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320]
                            mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + (32 * idx) + 352] = _489
                            mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320] = address(_696)
                else:
                    if 32 != return_data.size:
                        revert with 0, 'ERC20Wrapper.approve: Bad return value'
                    mem[0] = ext_call.return_data[0]
                    if ext_call.return_data[0] != 1:
                        revert with 0, 'ERC20Wrapper.approve: Bad return value'
                    require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + 256]
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * idx) + 288] = mem[_237 + 44 len 20]
                    _415 = mem[_237 + 64]
                    _416 = mem[_237]
                    _417 = mem[_237 + 128]
                    _418 = mem[_237 + 96]
                    mem[mem[64] + 4] = mem[_237 + 44 len 20]
                    mem[mem[64] + 36] = _415
                    mem[mem[64] + 68] = address(_416)
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = _417
                    mem[mem[64] + 164] = _418
                    mem[mem[64] + 196] = 0
                    require ext_code.size(kyberNetworkProxyAddress)
                    call kyberNetworkProxyAddress.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _415, address(_416), address(this.address), _417, _418, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _485 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _495 = mem[_485]
                    _517 = mem[_237]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = setTransferProxyAddress
                    require ext_code.size(address(_517))
                    staticcall address(_517).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), setTransferProxyAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _553 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_553] >= _495:
                        _591 = mem[_237]
                        require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
                        require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320]
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + (32 * idx) + 352] = _495
                        mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320] = address(_591)
                    else:
                        mem[mem[64] + 4] = setTransferProxyAddress
                        mem[mem[64] + 36] = -1
                        require ext_code.size(address(_517))
                        call address(_517).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args setTransferProxyAddress, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not return_data.size:
                            _697 = mem[_237]
                            require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
                            require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320]
                            mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + (32 * idx) + 352] = _495
                            mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320] = address(_697)
                        else:
                            if 32 != return_data.size:
                                revert with 0, 'ERC20Wrapper.approve: Bad return value'
                            mem[0] = ext_call.return_data[0]
                            if ext_call.return_data[0] != 1:
                                revert with 0, 'ERC20Wrapper.approve: Bad return value'
                            _711 = mem[_237]
                            require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
                            require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320]
                            mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + (32 * idx) + 352] = _495
                            mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320] = address(_711)
        else:
            require sub_a8a0d1c7 * idx / idx == sub_a8a0d1c7
            _233 = mem[64]
            mem[64] = mem[64] + 160
            mem[_233] = 0
            mem[_233 + 32] = 0
            mem[_233 + 64] = 0
            mem[_233 + 96] = 0
            mem[_233 + 128] = 0
            _239 = mem[64]
            mem[64] = mem[64] + 160
            mem[_239] = 0
            mem[_239 + 32] = 0
            mem[_239 + 64] = 0
            mem[_239 + 96] = 0
            mem[_239 + 128] = 0
            require sub_a8a0d1c7 * idx >= 0
            mem[_239] = mem[(sub_a8a0d1c7 * idx) + 192]
            mem[_239 + 32] = mem[(sub_a8a0d1c7 * idx) + 224]
            mem[_239 + 64] = mem[(sub_a8a0d1c7 * idx) + 256]
            mem[_239 + 96] = mem[(sub_a8a0d1c7 * idx) + 288]
            mem[_239 + 128] = mem[(sub_a8a0d1c7 * idx) + 320]
            _274 = mem[_239 + 32]
            _275 = mem[_239 + 64]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = kyberNetworkProxyAddress
            require ext_code.size(address(_274))
            staticcall address(_274).allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), kyberNetworkProxyAddress
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _301 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_301] >= _275:
                require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + 256]
                mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * idx) + 288] = mem[_239 + 44 len 20]
                _338 = mem[_239 + 64]
                _339 = mem[_239]
                _340 = mem[_239 + 128]
                _341 = mem[_239 + 96]
                mem[mem[64] + 4] = mem[_239 + 44 len 20]
                mem[mem[64] + 36] = _338
                mem[mem[64] + 68] = address(_339)
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = _340
                mem[mem[64] + 164] = _341
                mem[mem[64] + 196] = 0
                require ext_code.size(kyberNetworkProxyAddress)
                call kyberNetworkProxyAddress.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _338, address(_339), address(this.address), _340, _341, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _447 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _451 = mem[_447]
                _455 = mem[_239]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = setTransferProxyAddress
                require ext_code.size(address(_455))
                staticcall address(_455).allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), setTransferProxyAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _467 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_467] >= _451:
                    _499 = mem[_239]
                    require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
                    require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320]
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + (32 * idx) + 352] = _451
                    mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320] = address(_499)
                else:
                    mem[mem[64] + 4] = setTransferProxyAddress
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(_455))
                    call address(_455).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args setTransferProxyAddress, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not return_data.size:
                        _586 = mem[_239]
                        require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
                        require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320]
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + (32 * idx) + 352] = _451
                        mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320] = address(_586)
                    else:
                        if 32 != return_data.size:
                            revert with 0, 'ERC20Wrapper.approve: Bad return value'
                        mem[0] = ext_call.return_data[0]
                        if ext_call.return_data[0] != 1:
                            revert with 0, 'ERC20Wrapper.approve: Bad return value'
                        _602 = mem[_239]
                        require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
                        require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320]
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + (32 * idx) + 352] = _451
                        mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320] = address(_602)
            else:
                mem[mem[64] + 4] = kyberNetworkProxyAddress
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_274))
                call address(_274).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args kyberNetworkProxyAddress, -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not return_data.size:
                    require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + 256]
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * idx) + 288] = mem[_239 + 44 len 20]
                    _409 = mem[_239 + 64]
                    _410 = mem[_239]
                    _411 = mem[_239 + 128]
                    _412 = mem[_239 + 96]
                    mem[mem[64] + 4] = mem[_239 + 44 len 20]
                    mem[mem[64] + 36] = _409
                    mem[mem[64] + 68] = address(_410)
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = _411
                    mem[mem[64] + 164] = _412
                    mem[mem[64] + 196] = 0
                    require ext_code.size(kyberNetworkProxyAddress)
                    call kyberNetworkProxyAddress.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _409, address(_410), address(this.address), _411, _412, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _484 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _493 = mem[_484]
                    _516 = mem[_239]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = setTransferProxyAddress
                    require ext_code.size(address(_516))
                    staticcall address(_516).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), setTransferProxyAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _552 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_552] >= _493:
                        _587 = mem[_239]
                        require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
                        require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320]
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + (32 * idx) + 352] = _493
                        mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320] = address(_587)
                    else:
                        mem[mem[64] + 4] = setTransferProxyAddress
                        mem[mem[64] + 36] = -1
                        require ext_code.size(address(_516))
                        call address(_516).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args setTransferProxyAddress, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not return_data.size:
                            _692 = mem[_239]
                            require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
                            require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320]
                            mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + (32 * idx) + 352] = _493
                            mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320] = address(_692)
                        else:
                            if 32 != return_data.size:
                                revert with 0, 'ERC20Wrapper.approve: Bad return value'
                            mem[0] = ext_call.return_data[0]
                            if ext_call.return_data[0] != 1:
                                revert with 0, 'ERC20Wrapper.approve: Bad return value'
                            _706 = mem[_239]
                            require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
                            require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320]
                            mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + (32 * idx) + 352] = _493
                            mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320] = address(_706)
                else:
                    if 32 != return_data.size:
                        revert with 0, 'ERC20Wrapper.approve: Bad return value'
                    mem[0] = ext_call.return_data[0]
                    if ext_call.return_data[0] != 1:
                        revert with 0, 'ERC20Wrapper.approve: Bad return value'
                    require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + 256]
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * idx) + 288] = mem[_239 + 44 len 20]
                    _427 = mem[_239 + 64]
                    _428 = mem[_239]
                    _429 = mem[_239 + 128]
                    _430 = mem[_239 + 96]
                    mem[mem[64] + 4] = mem[_239 + 44 len 20]
                    mem[mem[64] + 36] = _427
                    mem[mem[64] + 68] = address(_428)
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = _429
                    mem[mem[64] + 164] = _430
                    mem[mem[64] + 196] = 0
                    require ext_code.size(kyberNetworkProxyAddress)
                    call kyberNetworkProxyAddress.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _427, address(_428), address(this.address), _429, _430, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _487 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _500 = mem[_487]
                    _520 = mem[_239]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = setTransferProxyAddress
                    require ext_code.size(address(_520))
                    staticcall address(_520).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), setTransferProxyAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _555 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_555] >= _500:
                        _604 = mem[_239]
                        require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
                        require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320]
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + (32 * idx) + 352] = _500
                        mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320] = address(_604)
                    else:
                        mem[mem[64] + 4] = setTransferProxyAddress
                        mem[mem[64] + 36] = -1
                        require ext_code.size(address(_520))
                        call address(_520).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args setTransferProxyAddress, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not return_data.size:
                            _707 = mem[_239]
                            require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
                            require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320]
                            mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + (32 * idx) + 352] = _500
                            mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320] = address(_707)
                        else:
                            if 32 != return_data.size:
                                revert with 0, 'ERC20Wrapper.approve: Bad return value'
                            mem[0] = ext_call.return_data[0]
                            if ext_call.return_data[0] != 1:
                                revert with 0, 'ERC20Wrapper.approve: Bad return value'
                            _722 = mem[_239]
                            require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
                            require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320]
                            mem[ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + (32 * idx) + 352] = _500
                            mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320] = address(_722)
        idx = idx + 1
        continue 
    _213 = mem[96]
    _753 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 256]
    idx = 0
    while idx < _753:
        require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + 256]
        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + 300 len 20]
        mem[mem[64] + 36] = this.address
        require ext_code.size(0xbc0f33ead523381c0faaf1225160cd98bbd3c521)
        delegate 0xbc0f33ead523381c0faaf1225160cd98bbd3c521.balanceOf(address arg1, address arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], address(this.address)
        mem[mem[64]] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        _775 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _779 = mem[_775]
        if mem[_775] > 0:
            require idx < mem[ceil32(arg3.length) + ceil32(return_data.size) + 256]
            _786 = mem[(32 * idx) + ceil32(arg3.length) + ceil32(return_data.size) + 288]
            mem[mem[64]] = 0xbeabacc800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_786)
            mem[mem[64] + 36] = address(_213)
            mem[mem[64] + 68] = _779
            require ext_code.size(0xbc0f33ead523381c0faaf1225160cd98bbd3c521)
            delegate 0xbc0f33ead523381c0faaf1225160cd98bbd3c521.transfer(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(_786), address(_213), _779
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    _759 = mem[64]
    mem[64] = mem[64] + 64
    mem[_759] = ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288
    mem[_759 + 32] = ceil32(arg3.length) + ceil32(return_data.size) + (64 * arg2) + 320
    _763 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = 64
    _767 = mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
    mem[mem[64] + 96] = mem[ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 288]
    idx = 0
    s = ceil32(arg3.length) + ceil32(return_data.size) + (32 * arg2) + 320
    t = mem[64] + 128
    while idx < _767:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _795 = mem[_759 + 32]
    mem[mem[64] + 64] = (32 * _767) + 96
    _797 = mem[_795]
    mem[_763 + (32 * _767) + 128] = mem[_795]
    mem[_763 + (32 * _767) + 160 len 32 * _797] = mem[_795 + 32 len 32 * _797]
    return memory
      from mem[64]
       len _763 + (32 * _767) + (32 * _797) + -mem[64] + 160
}



}
