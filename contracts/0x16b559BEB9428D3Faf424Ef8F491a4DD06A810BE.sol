contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
  stop
}

function sub_0922f6cf(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor1)
    staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function sub_7dc99fc1(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor2)
    staticcall stor2.getExchange(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_b189e479(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor2)
    staticcall stor2.getExchange(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getEthToTokenInputPrice(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_304b2d4e(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor1)
    staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] * 10^ext_call.return_data[0] / 10^18)
}

function sub_15c3503e(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 1
    if not arg2:
        require ext_code.size(stor1)
        call stor1.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
           value msg.value wei
             gas gas_remaining wei
            args 0, 4008636142, msg.value, address(arg1), this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, stor0, 256, 0, mem[388]
    else:
        require arg2 <= 1
        if arg2 != 1:
            revert with 0, 'Not supported exchange.'
        require ext_code.size(stor2)
        staticcall stor2.getExchange(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
           value msg.value wei
             gas gas_remaining wei
            args 1, block.timestamp + 600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg3 <= 1
    if not arg3:
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor1, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Approve failed'
        require ext_code.size(stor1)
        call stor1.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
             gas gas_remaining wei
            args 0, 0, ext_call.return_data[0], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, stor0, 256, 0, mem[388]
    else:
        require arg3 <= 1
        if arg3 != 1:
            revert with 0, 'Not supported exchange.'
        require ext_code.size(stor2)
        staticcall stor2.getExchange(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Approve failed'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 1, block.timestamp + 600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) <= msg.value:
        revert with 0, 'Not profitable trade'
    call msg.sender with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function sub_8aca752d(?) {
    require calldata.size - 4 >= 64
    mem[96] = 2
    mem[var16002] = 0
    mem[var16002 + 32] = 0
    mem[var18002] = var18001
    if var18003 - 1:
        mem[var24002] = 0
        mem[var24002 + 32] = 0
        mem[var26002] = var26001
        if var26003 - 1:
            mem[var32002] = 0
            mem[var32002 + 32] = 0
            mem[var34002] = var34001
            if var34003 - 1:
                mem[var40002] = 0
                mem[var40002 + 32] = 0
                mem[var42002] = var42001
                if var42003 - 1:
                    # nil
                else:
                    mem[448] = 0
                    require ext_code.size(stor1)
                    staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(arg1), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_code.size(arg1)
                    staticcall arg1.0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[480] = ext_call.return_data[0] * 10^ext_call.return_data[0] / 10^18
                    mem[128] = 448
                    mem[512] = 1
                    require ext_code.size(stor2)
                    staticcall stor2.getExchange(address arg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getEthToTokenInputPrice(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[544] = ext_call.return_data[0]
                    mem[160] = 512
                    mem[64] = 640
                    mem[576] = 0
                    mem[608] = 0
                    idx = 1
                    s = 448
                    while idx < 2:
                        require idx < 2
                        if mem[mem[(32 * idx) + 128] + 32] <= mem[s + 32]:
                            idx = idx + 1
                            s = s
                            continue 
                        require idx < 2
                        idx = idx + 1
                        s = mem[(32 * idx) + 128]
                        continue 
                    # nil
            else:
                mem[384] = 0
                require ext_code.size(stor1)
                staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(arg1), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(arg1)
                staticcall arg1.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[416] = ext_call.return_data[0] * 10^ext_call.return_data[0] / 10^18
                mem[128] = 384
                mem[448] = 1
                require ext_code.size(stor2)
                staticcall stor2.getExchange(address arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getEthToTokenInputPrice(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[480] = ext_call.return_data[0]
                mem[160] = 448
                mem[64] = 576
                mem[512] = 0
                mem[544] = 0
                idx = 1
                s = 384
                while idx < 2:
                    require idx < 2
                    if mem[mem[(32 * idx) + 128] + 32] <= mem[s + 32]:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < 2
                    idx = idx + 1
                    s = mem[(32 * idx) + 128]
                    continue 
                _932 = mem[s]
                _933 = mem[s + 32]
                mem[576] = 2
                mem[var77002] = 0
                mem[var77002 + 32] = 0
                mem[var79002] = var79001
                if var79003 - 1:
                    # nil
                else:
                    mem[736] = 0
                    require ext_code.size(stor1)
                    staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, _933
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    mem[768] = ext_call.return_data[0]
                    mem[608] = 736
                    mem[800] = 1
                    require ext_code.size(stor2)
                    staticcall stor2.getExchange(address arg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                            gas gas_remaining wei
                           args _933
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[832] = ext_call.return_data[0]
                    mem[640] = 800
                    mem[64] = 928
                    mem[864] = 0
                    mem[896] = 0
                    idx = 1
                    s = 736
                    while idx < 2:
                        require idx < 2
                        if mem[mem[(32 * idx) + 608] + 32] >= mem[s + 32]:
                            idx = idx + 1
                            s = s
                            continue 
                        require idx < 2
                        idx = idx + 1
                        s = mem[(32 * idx) + 608]
                        continue 
                    if _932 <= 1:
                        if mem[s] <= 1:
                            return _932 << 248, _933, mem[s] << 248, mem[s + 32], mem[s + 32] - arg2
                    revert
        else:
            mem[320] = 0
            require ext_code.size(stor1)
            staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[352] = ext_call.return_data[0] * 10^ext_call.return_data[0] / 10^18
            mem[128] = 320
            mem[384] = 1
            require ext_code.size(stor2)
            staticcall stor2.getExchange(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getEthToTokenInputPrice(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[416] = ext_call.return_data[0]
            mem[160] = 384
            mem[64] = 512
            mem[448] = 0
            mem[480] = 0
            idx = 1
            s = 320
            while idx < 2:
                require idx < 2
                if mem[mem[(32 * idx) + 128] + 32] <= mem[s + 32]:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < 2
                idx = idx + 1
                s = mem[(32 * idx) + 128]
                continue 
            _473 = mem[s]
            _474 = mem[s + 32]
            mem[512] = 2
            mem[var69002] = 0
            mem[var69002 + 32] = 0
            mem[var71002] = var71001
            if not var71003 - 1:
                mem[672] = 0
                require ext_code.size(stor1)
                staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, _474
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                mem[704] = ext_call.return_data[0]
                mem[544] = 672
                mem[736] = 1
                require ext_code.size(stor2)
                staticcall stor2.getExchange(address arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                        gas gas_remaining wei
                       args _474
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[768] = ext_call.return_data[0]
                mem[576] = 736
                mem[64] = 864
                mem[800] = 0
                mem[832] = 0
                idx = 1
                s = 672
                while idx < 2:
                    require idx < 2
                    if mem[mem[(32 * idx) + 544] + 32] >= mem[s + 32]:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < 2
                    idx = idx + 1
                    s = mem[(32 * idx) + 544]
                    continue 
                if _473 <= 1:
                    if mem[s] <= 1:
                        return _473 << 248, _474, mem[s] << 248, mem[s + 32], mem[s + 32] - arg2
                revert
            mem[var77002] = 0
            mem[var77002 + 32] = 0
            mem[var79002] = var79001
            if var79003 - 1:
                # nil
            else:
                mem[736] = 0
                require ext_code.size(stor1)
                staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, _474
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                mem[768] = ext_call.return_data[0]
                mem[544] = 736
                mem[800] = 1
                require ext_code.size(stor2)
                staticcall stor2.getExchange(address arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                        gas gas_remaining wei
                       args _474
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[832] = ext_call.return_data[0]
                mem[576] = 800
                mem[64] = 928
                mem[864] = 0
                mem[896] = 0
                idx = 1
                s = 736
                while idx < 2:
                    require idx < 2
                    if mem[mem[(32 * idx) + 544] + 32] >= mem[s + 32]:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < 2
                    idx = idx + 1
                    s = mem[(32 * idx) + 544]
                    continue 
                if _473 <= 1:
                    if mem[s] <= 1:
                        return _473 << 248, _474, mem[s] << 248, mem[s + 32], mem[s + 32] - arg2
                revert
    else:
        mem[256] = 0
        require ext_code.size(stor1)
        staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = ext_call.return_data[0] * 10^ext_call.return_data[0] / 10^18
        mem[128] = 256
        mem[320] = 1
        require ext_code.size(stor2)
        staticcall stor2.getExchange(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getEthToTokenInputPrice(uint256 arg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[352] = ext_call.return_data[0]
        mem[160] = 320
        mem[64] = 448
        mem[384] = 0
        mem[416] = 0
        idx = 1
        s = 256
        while idx < 2:
            require idx < 2
            if mem[mem[(32 * idx) + 128] + 32] <= mem[s + 32]:
                idx = idx + 1
                s = s
                continue 
            require idx < 2
            idx = idx + 1
            s = mem[(32 * idx) + 128]
            continue 
        _185 = mem[s]
        _186 = mem[s + 32]
        mem[448] = 2
        mem[var61002] = 0
        mem[var61002 + 32] = 0
        mem[var63002] = var63001
        if not var63003 - 1:
            mem[608] = 0
            require ext_code.size(stor1)
            staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, _186
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[640] = ext_call.return_data[0]
            mem[480] = 608
            mem[672] = 1
            require ext_code.size(stor2)
            staticcall stor2.getExchange(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                    gas gas_remaining wei
                   args _186
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[704] = ext_call.return_data[0]
            mem[512] = 672
            mem[64] = 800
            mem[736] = 0
            mem[768] = 0
            idx = 1
            s = 608
            while idx < 2:
                require idx < 2
                if mem[mem[(32 * idx) + 480] + 32] >= mem[s + 32]:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < 2
                idx = idx + 1
                s = mem[(32 * idx) + 480]
                continue 
            if _185 <= 1:
                if mem[s] <= 1:
                    return _185 << 248, _186, mem[s] << 248, mem[s + 32], mem[s + 32] - arg2
            revert
        mem[var69002] = 0
        mem[var69002 + 32] = 0
        mem[var71002] = var71001
        if not var71003 - 1:
            mem[672] = 0
            require ext_code.size(stor1)
            staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, _186
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[704] = ext_call.return_data[0]
            mem[480] = 672
            mem[736] = 1
            require ext_code.size(stor2)
            staticcall stor2.getExchange(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                    gas gas_remaining wei
                   args _186
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[768] = ext_call.return_data[0]
            mem[512] = 736
            mem[64] = 864
            mem[800] = 0
            mem[832] = 0
            idx = 1
            s = 672
            while idx < 2:
                require idx < 2
                if mem[mem[(32 * idx) + 480] + 32] >= mem[s + 32]:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < 2
                idx = idx + 1
                s = mem[(32 * idx) + 480]
                continue 
            if _185 <= 1:
                if mem[s] <= 1:
                    return _185 << 248, _186, mem[s] << 248, mem[s + 32], mem[s + 32] - arg2
            revert
        mem[var77002] = 0
        mem[var77002 + 32] = 0
        mem[var79002] = var79001
        if var79003 - 1:
            # nil
        else:
            mem[736] = 0
            require ext_code.size(stor1)
            staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, _186
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[768] = ext_call.return_data[0]
            mem[480] = 736
            mem[800] = 1
            require ext_code.size(stor2)
            staticcall stor2.getExchange(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                    gas gas_remaining wei
                   args _186
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[832] = ext_call.return_data[0]
            mem[512] = 800
            mem[64] = 928
            mem[864] = 0
            mem[896] = 0
            idx = 1
            s = 736
            while idx < 2:
                require idx < 2
                if mem[mem[(32 * idx) + 480] + 32] >= mem[s + 32]:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < 2
                idx = idx + 1
                s = mem[(32 * idx) + 480]
                continue 
            if _185 <= 1:
                if mem[s] <= 1:
                    return _185 << 248, _186, mem[s] << 248, mem[s + 32], mem[s + 32] - arg2
            revert
}



}
