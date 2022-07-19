contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;

function _fallback() payable {
    if not msg.value:
        if msg.sender == stor0:
            call stor0 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if msg.sender == stor0:
        if arg1 > eth.balance(this.address):
            call stor0 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
        else:
            call stor0 with:
               value arg1 wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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

function sub_0922f6cf(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor1)
    staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[32]:
        return 0
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] * arg2 * 10^ext_call.return_data[31 len 1] / 10^18 / 10^18)
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
    if not ext_call.return_data[32]:
        return 0
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] * arg2 * 10^ext_call.return_data[31 len 1] / 10^18 / 10^18)
}

function sub_9c66b5e7(?) {
    require calldata.size - 4 >= 96
    if not arg1:
        return 0
    require ext_code.size(stor3)
    staticcall stor3.0xfc0c546a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3)
    staticcall stor3.0xfc0c546a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3)
    staticcall stor3.registry() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
            gas gas_remaining wei
           args 'BancorNetwork'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[388 len 0] = None
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
            gas gas_remaining wei
           args Array(len=5, data=mem[388 len 160]), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function sub_cae0dd7a(?) {
    require calldata.size - 4 >= 96
    if not arg1:
        return 0
    require ext_code.size(stor3)
    staticcall stor3.0xfc0c546a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3)
    staticcall stor3.0xfc0c546a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3)
    staticcall stor3.registry() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
            gas gas_remaining wei
           args 'BancorNetwork'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[388 len 0] = None
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
            gas gas_remaining wei
           args Array(len=5, data=mem[388 len 160]), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function sub_45401cb5(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 160
    idx = arg2
    s = 0
    t = 0
    u = 0
    v = 0
    w = 0
    x = 0
    while idx > arg3:
        _264 = mem[64]
        _328 = mem[64] + 96
        mem[64] = mem[64] + 160
        mem[_328] = 0
        mem[_328 + 32] = 0
        mem[var13001] = _328
        z = var13001
        y = var13002
        while y - 1:
            _328 = mem[64]
            mem[64] = mem[64] + 64
            mem[_328] = 0
            mem[_328 + 32] = 0
            mem[z + 32] = _328
            z = z + 32
            y = y - 1
            continue 
        _329 = mem[64]
        mem[64] = mem[64] + 64
        mem[_329] = 0
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = idx
        require ext_code.size(stor1)
        staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(arg1), idx
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not ext_call.return_data[32]:
            mem[_329 + 32] = 0
            require 0 < mem[_264]
            mem[_264 + 32] = _329
            _340 = mem[64]
            mem[64] = mem[64] + 64
            mem[_340] = 1
            require ext_code.size(stor2)
            staticcall stor2.getExchange(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = idx
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getEthToTokenInputPrice(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_340 + 32] = ext_call.return_data[0]
            require 1 < mem[_264]
            mem[_264 + 64] = _340
            _359 = mem[64]
            mem[64] = mem[64] + 64
            mem[_359] = 0
            mem[_359 + 32] = 0
            require 0 < mem[_264]
            y = 1
            z = _329
            while y < mem[_264]:
                require y < mem[_264]
                if mem[mem[(32 * y) + _264 + 32] + 32] <= mem[z + 32]:
                    y = y + 1
                    z = z
                    continue 
                require y < mem[_264]
                y = y + 1
                z = mem[(32 * y) + _264 + 32]
                continue 
            _395 = mem[z]
            _396 = mem[z + 32]
            _407 = mem[64]
            _526 = mem[64] + 96
            mem[64] = mem[64] + 160
            mem[_526] = 0
            mem[_526 + 32] = 0
            mem[var48001] = _526
            z = var48001
            y = var48002
            while y - 1:
                _526 = mem[64]
                mem[64] = mem[64] + 64
                mem[_526] = 0
                mem[_526 + 32] = 0
                mem[z + 32] = _526
                z = z + 32
                y = y - 1
                continue 
            _528 = mem[64]
            mem[64] = mem[64] + 64
            mem[_528] = 0
            mem[mem[64] + 36] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
            mem[mem[64] + 68] = _396
            require ext_code.size(stor1)
            staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, _396
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not ext_call.return_data[32]:
                mem[_528 + 32] = 0
                require 0 < mem[_407]
                mem[_407 + 32] = _528
                _550 = mem[64]
                mem[64] = mem[64] + 64
                mem[_550] = 1
                require ext_code.size(stor2)
                staticcall stor2.getExchange(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = _396
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                        gas gas_remaining wei
                       args _396
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_550 + 32] = ext_call.return_data[0]
                require 1 < mem[_407]
                mem[_407 + 64] = _550
                _588 = mem[64]
                mem[64] = mem[64] + 64
                mem[_588] = 0
                mem[_588 + 32] = 0
            else:
                require ext_code.size(arg1)
                staticcall arg1.0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_528 + 32] = ext_call.return_data[0] * _396 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                require 0 < mem[_407]
                mem[_407 + 32] = _528
                _561 = mem[64]
                mem[64] = mem[64] + 64
                mem[_561] = 1
                require ext_code.size(stor2)
                staticcall stor2.getExchange(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = _396
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                        gas gas_remaining wei
                       args _396
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_561 + 32] = ext_call.return_data[0]
                require 1 < mem[_407]
                mem[_407 + 64] = _561
                _610 = mem[64]
                mem[64] = mem[64] + 64
                mem[_610] = 0
                mem[_610 + 32] = 0
            require 0 < mem[_407]
            y = 1
            z = _528
            while y < mem[_407]:
                require y < mem[_407]
                if mem[mem[(32 * y) + _407 + 32] + 32] <= mem[z + 32]:
                    y = y + 1
                    z = z
                    continue 
                require y < mem[_407]
                y = y + 1
                z = mem[(32 * y) + _407 + 32]
                continue 
            if mem[z + 32] - idx <= arg4:
                idx = idx - arg3
                s = s + 1
                t = t
                u = u
                v = v
                w = w
                x = x
                continue 
            if mem[z + 32] - idx <= t:
                idx = idx - arg3
                s = s + 1
                t = t
                u = u
                v = v
                w = w
                x = x
                continue 
            idx = idx - arg3
            s = s + 1
            t = mem[z + 32] - idx
            u = mem[z + 32]
            v = mem[z]
            w = _396
            x = _395
            continue 
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_329 + 32] = ext_call.return_data[0] * idx * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
        require 0 < mem[_264]
        mem[_264 + 32] = _329
        _345 = mem[64]
        mem[64] = mem[64] + 64
        mem[_345] = 1
        require ext_code.size(stor2)
        staticcall stor2.getExchange(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[mem[64] + 4] = idx
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getEthToTokenInputPrice(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_345 + 32] = ext_call.return_data[0]
        require 1 < mem[_264]
        mem[_264 + 64] = _345
        _369 = mem[64]
        mem[64] = mem[64] + 64
        mem[_369] = 0
        mem[_369 + 32] = 0
        require 0 < mem[_264]
        y = 1
        z = _329
        while y < mem[_264]:
            require y < mem[_264]
            if mem[mem[(32 * y) + _264 + 32] + 32] <= mem[z + 32]:
                y = y + 1
                z = z
                continue 
            require y < mem[_264]
            y = y + 1
            z = mem[(32 * y) + _264 + 32]
            continue 
        _391 = mem[z]
        _392 = mem[z + 32]
        _405 = mem[64]
        _525 = mem[64] + 96
        mem[64] = mem[64] + 160
        mem[_525] = 0
        mem[_525 + 32] = 0
        mem[var53001] = _525
        z = var53001
        y = var53002
        while y - 1:
            _525 = mem[64]
            mem[64] = mem[64] + 64
            mem[_525] = 0
            mem[_525 + 32] = 0
            mem[z + 32] = _525
            z = z + 32
            y = y - 1
            continue 
        _527 = mem[64]
        mem[64] = mem[64] + 64
        mem[_527] = 0
        mem[mem[64] + 36] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
        mem[mem[64] + 68] = _392
        require ext_code.size(stor1)
        staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, _392
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not ext_call.return_data[32]:
            mem[_527 + 32] = 0
            require 0 < mem[_405]
            mem[_405 + 32] = _527
            _548 = mem[64]
            mem[64] = mem[64] + 64
            mem[_548] = 1
            require ext_code.size(stor2)
            staticcall stor2.getExchange(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = _392
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                    gas gas_remaining wei
                   args _392
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_548 + 32] = ext_call.return_data[0]
            require 1 < mem[_405]
            mem[_405 + 64] = _548
            _586 = mem[64]
            mem[64] = mem[64] + 64
            mem[_586] = 0
            mem[_586 + 32] = 0
        else:
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_527 + 32] = ext_call.return_data[0] * _392 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
            require 0 < mem[_405]
            mem[_405 + 32] = _527
            _559 = mem[64]
            mem[64] = mem[64] + 64
            mem[_559] = 1
            require ext_code.size(stor2)
            staticcall stor2.getExchange(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = _392
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                    gas gas_remaining wei
                   args _392
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_559 + 32] = ext_call.return_data[0]
            require 1 < mem[_405]
            mem[_405 + 64] = _559
            _607 = mem[64]
            mem[64] = mem[64] + 64
            mem[_607] = 0
            mem[_607 + 32] = 0
        require 0 < mem[_405]
        y = 1
        z = _527
        while y < mem[_405]:
            require y < mem[_405]
            if mem[mem[(32 * y) + _405 + 32] + 32] <= mem[z + 32]:
                y = y + 1
                z = z
                continue 
            require y < mem[_405]
            y = y + 1
            z = mem[(32 * y) + _405 + 32]
            continue 
        if mem[z + 32] - idx <= arg4:
            idx = idx - arg3
            s = s + 1
            t = t
            u = u
            v = v
            w = w
            x = x
            continue 
        if mem[z + 32] - idx <= t:
            idx = idx - arg3
            s = s + 1
            t = t
            u = u
            v = v
            w = w
            x = x
            continue 
        idx = idx - arg3
        s = s + 1
        t = mem[z + 32] - idx
        u = mem[z + 32]
        v = mem[z]
        w = _392
        x = _391
        continue 
    if x <= 2:
        if v <= 2:
            return x << 248, w, v << 248, u, t, s
    revert
}

function sub_9b91dfc6(?) {
    require calldata.size - 4 >= 192
    require arg3 <= 2
    if not arg3:
        require ext_code.size(stor1)
        call stor1.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
           value arg6 wei
             gas gas_remaining wei
            args 0, 4008636142, arg6, address(arg1), this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, stor0, 256, 0, mem[388]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg5:
            revert with 0, 'Got not enough tokens'
        require arg4 <= 2
        if not arg4:
            require ext_code.size(arg1)
            staticcall arg1.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, stor1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor1, -1
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
            require arg4 <= 2
            if arg4 == 1:
                require ext_code.size(stor2)
                staticcall stor2.getExchange(address arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                staticcall arg1.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Approve failed'
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 1, block.timestamp + (24 * 3600)
            else:
                require arg4 <= 2
                if arg4 != 2:
                    revert with 0, 'Not supported exchange.'
                if not arg2:
                    revert with 0, 'Not supported exchange.'
                require ext_code.size(arg1)
                staticcall arg1.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, stor3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor3, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Approve failed'
                require ext_code.size(stor3)
                staticcall stor3.0xfc0c546a with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor3)
                staticcall stor3.0xfc0c546a with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[420 len 0] = None
                require ext_code.size(stor3)
                call stor3.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args Array(len=5, data=mem[420 len 160]), ext_call.return_data[0], 1
    else:
        require arg3 <= 2
        if arg3 == 1:
            require ext_code.size(stor2)
            staticcall stor2.getExchange(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
               value arg6 wei
                 gas gas_remaining wei
                args 1, block.timestamp + (24 * 3600)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg5:
                revert with 0, 'Got not enough tokens'
            require arg4 <= 2
            if not arg4:
                require ext_code.size(arg1)
                staticcall arg1.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, stor1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor1, -1
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
                require arg4 <= 2
                if arg4 == 1:
                    require ext_code.size(stor2)
                    staticcall stor2.getExchange(address arg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    staticcall arg1.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Approve failed'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 1, block.timestamp + (24 * 3600)
                else:
                    require arg4 <= 2
                    if arg4 != 2:
                        revert with 0, 'Not supported exchange.'
                    if not arg2:
                        revert with 0, 'Not supported exchange.'
                    require ext_code.size(arg1)
                    staticcall arg1.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, stor3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor3, -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Approve failed'
                    require ext_code.size(stor3)
                    staticcall stor3.0xfc0c546a with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor3)
                    staticcall stor3.0xfc0c546a with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[420 len 0] = None
                    require ext_code.size(stor3)
                    call stor3.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args Array(len=5, data=mem[420 len 160]), ext_call.return_data[0], 1
        else:
            require arg3 <= 2
            if arg3 != 2:
                revert with 0, 'Not supported exchange.'
            if not arg2:
                revert with 0, 'Not supported exchange.'
            require ext_code.size(stor3)
            staticcall stor3.0xfc0c546a with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor3)
            staticcall stor3.0xfc0c546a with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[420 len 0] = None
            require ext_code.size(stor3)
            call stor3.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
               value arg6 wei
                 gas gas_remaining wei
                args Array(len=5, data=mem[420 len 160]), arg6, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg5:
                revert with 0, 'Got not enough tokens'
            require arg4 <= 2
            if not arg4:
                require ext_code.size(arg1)
                staticcall arg1.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, stor1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor1, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Approve failed'
                require ext_code.size(stor1)
                call stor1.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, stor0, 256, 0, mem[580]
            else:
                require arg4 <= 2
                if arg4 == 1:
                    require ext_code.size(stor2)
                    staticcall stor2.getExchange(address arg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    staticcall arg1.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Approve failed'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 1, block.timestamp + (24 * 3600)
                else:
                    require arg4 <= 2
                    if arg4 != 2:
                        revert with 0, 'Not supported exchange.'
                    if not arg2:
                        revert with 0, 'Not supported exchange.'
                    require ext_code.size(arg1)
                    staticcall arg1.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, stor3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor3, -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Approve failed'
                    require ext_code.size(stor3)
                    staticcall stor3.0xfc0c546a with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor3)
                    staticcall stor3.0xfc0c546a with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[612 len 0] = None
                    require ext_code.size(stor3)
                    call stor3.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args Array(len=5, data=mem[612 len 160]), ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= arg6:
        revert with 0, 'Not profitable trade'
}

function sub_6184877e(?) {
    require calldata.size - 4 >= 96
    mem[96] = 2
    mem[64] = 256
    mem[192] = 0
    mem[224] = 0
    mem[var10001] = 192
    s = var10001
    idx = var10002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[192] = 0
        mem[224] = 0
        mem[s + 32] = 192
        s = s + 32
        idx = idx - 1
        continue 
    _65 = mem[64]
    mem[64] = mem[64] + 64
    mem[_65] = 0
    mem[mem[64] + 36] = arg1
    mem[mem[64] + 68] = arg2
    require ext_code.size(stor1)
    staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(arg1), arg2
    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[32]:
        mem[_65 + 32] = 0
        if 0 < mem[96]:
            mem[128] = _65
            _76 = mem[64]
            mem[64] = mem[64] + 64
            mem[_76] = 1
            require ext_code.size(stor2)
            staticcall stor2.getExchange(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = arg2
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getEthToTokenInputPrice(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg2
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_76 + 32] = ext_call.return_data[0]
            if 1 < mem[96]:
                mem[160] = _76
                _95 = mem[64]
                mem[64] = mem[64] + 64
                mem[_95] = 0
                mem[_95 + 32] = 0
                if 0 < mem[96]:
                    idx = 1
                    s = _65
                    while idx < mem[96]:
                        require idx < mem[96]
                        if mem[mem[(32 * idx) + 128] + 32] <= mem[s + 32]:
                            idx = idx + 1
                            s = s
                            continue 
                        require idx < mem[96]
                        idx = idx + 1
                        s = mem[(32 * idx) + 128]
                        continue 
                    _131 = mem[s]
                    _132 = mem[s + 32]
                    _143 = mem[64]
                    _270 = mem[64] + 96
                    mem[64] = mem[64] + 160
                    mem[_270] = 0
                    mem[_270 + 32] = 0
                    mem[var45001] = _270
                    s = var45001
                    idx = var45002
                    while idx - 1:
                        _270 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_270] = 0
                        mem[_270 + 32] = 0
                        mem[s + 32] = _270
                        s = s + 32
                        idx = idx - 1
                        continue 
                    _272 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_272] = 0
                    mem[mem[64] + 36] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                    mem[mem[64] + 68] = _132
                    require ext_code.size(stor1)
                    staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, _132
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if not ext_call.return_data[32]:
                        mem[_272 + 32] = 0
                        if 0 < mem[_143]:
                            mem[_143 + 32] = _272
                            _294 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_294] = 1
                            require ext_code.size(stor2)
                            staticcall stor2.getExchange(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = _132
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _132
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_294 + 32] = ext_call.return_data[0]
                            if 1 < mem[_143]:
                                mem[_143 + 64] = _294
                                _332 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_332] = 0
                                mem[_332 + 32] = 0
                                if 0 < mem[_143]:
                                    idx = 1
                                    s = _272
                                    while idx < mem[_143]:
                                        require idx < mem[_143]
                                        if mem[mem[(32 * idx) + _143 + 32] + 32] <= mem[s + 32]:
                                            idx = idx + 1
                                            s = s
                                            continue 
                                        require idx < mem[_143]
                                        idx = idx + 1
                                        s = mem[(32 * idx) + _143 + 32]
                                        continue 
                                    if _131 <= 2:
                                        if mem[s] <= 2:
                                            return _131 << 248, _132, mem[s] << 248, mem[s + 32], mem[s + 32] - arg2
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_272 + 32] = ext_call.return_data[0] * _132 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                        if 0 < mem[_143]:
                            mem[_143 + 32] = _272
                            _305 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_305] = 1
                            require ext_code.size(stor2)
                            staticcall stor2.getExchange(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = _132
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _132
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_305 + 32] = ext_call.return_data[0]
                            if 1 < mem[_143]:
                                mem[_143 + 64] = _305
                                _354 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_354] = 0
                                mem[_354 + 32] = 0
                                if 0 < mem[_143]:
                                    idx = 1
                                    s = _272
                                    while idx < mem[_143]:
                                        require idx < mem[_143]
                                        if mem[mem[(32 * idx) + _143 + 32] + 32] <= mem[s + 32]:
                                            idx = idx + 1
                                            s = s
                                            continue 
                                        require idx < mem[_143]
                                        idx = idx + 1
                                        s = mem[(32 * idx) + _143 + 32]
                                        continue 
                                    if _131 <= 2:
                                        if mem[s] <= 2:
                                            return _131 << 248, _132, mem[s] << 248, mem[s + 32], mem[s + 32] - arg2
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_65 + 32] = ext_call.return_data[0] * arg2 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
        if 0 < mem[96]:
            mem[128] = _65
            _81 = mem[64]
            mem[64] = mem[64] + 64
            mem[_81] = 1
            require ext_code.size(stor2)
            staticcall stor2.getExchange(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = arg2
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getEthToTokenInputPrice(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg2
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_81 + 32] = ext_call.return_data[0]
            if 1 < mem[96]:
                mem[160] = _81
                _105 = mem[64]
                mem[64] = mem[64] + 64
                mem[_105] = 0
                mem[_105 + 32] = 0
                if 0 < mem[96]:
                    idx = 1
                    s = _65
                    while idx < mem[96]:
                        require idx < mem[96]
                        if mem[mem[(32 * idx) + 128] + 32] <= mem[s + 32]:
                            idx = idx + 1
                            s = s
                            continue 
                        require idx < mem[96]
                        idx = idx + 1
                        s = mem[(32 * idx) + 128]
                        continue 
                    _127 = mem[s]
                    _128 = mem[s + 32]
                    _141 = mem[64]
                    _269 = mem[64] + 96
                    mem[64] = mem[64] + 160
                    mem[_269] = 0
                    mem[_269 + 32] = 0
                    mem[var50001] = _269
                    s = var50001
                    idx = var50002
                    while idx - 1:
                        _269 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_269] = 0
                        mem[_269 + 32] = 0
                        mem[s + 32] = _269
                        s = s + 32
                        idx = idx - 1
                        continue 
                    _271 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_271] = 0
                    mem[mem[64] + 36] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                    mem[mem[64] + 68] = _128
                    require ext_code.size(stor1)
                    staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, _128
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if not ext_call.return_data[32]:
                        mem[_271 + 32] = 0
                        if 0 < mem[_141]:
                            mem[_141 + 32] = _271
                            _292 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_292] = 1
                            require ext_code.size(stor2)
                            staticcall stor2.getExchange(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = _128
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _128
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_292 + 32] = ext_call.return_data[0]
                            if 1 < mem[_141]:
                                mem[_141 + 64] = _292
                                _330 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_330] = 0
                                mem[_330 + 32] = 0
                                if 0 < mem[_141]:
                                    idx = 1
                                    s = _271
                                    while idx < mem[_141]:
                                        require idx < mem[_141]
                                        if mem[mem[(32 * idx) + _141 + 32] + 32] <= mem[s + 32]:
                                            idx = idx + 1
                                            s = s
                                            continue 
                                        require idx < mem[_141]
                                        idx = idx + 1
                                        s = mem[(32 * idx) + _141 + 32]
                                        continue 
                                    if _127 <= 2:
                                        if mem[s] <= 2:
                                            return _127 << 248, _128, mem[s] << 248, mem[s + 32], mem[s + 32] - arg2
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_271 + 32] = ext_call.return_data[0] * _128 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                        if 0 < mem[_141]:
                            mem[_141 + 32] = _271
                            _303 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_303] = 1
                            require ext_code.size(stor2)
                            staticcall stor2.getExchange(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = _128
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _128
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_303 + 32] = ext_call.return_data[0]
                            if 1 < mem[_141]:
                                mem[_141 + 64] = _303
                                _351 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_351] = 0
                                mem[_351 + 32] = 0
                                if 0 < mem[_141]:
                                    idx = 1
                                    s = _271
                                    while idx < mem[_141]:
                                        require idx < mem[_141]
                                        if mem[mem[(32 * idx) + _141 + 32] + 32] <= mem[s + 32]:
                                            idx = idx + 1
                                            s = s
                                            continue 
                                        require idx < mem[_141]
                                        idx = idx + 1
                                        s = mem[(32 * idx) + _141 + 32]
                                        continue 
                                    if _127 <= 2:
                                        if mem[s] <= 2:
                                            return _127 << 248, _128, mem[s] << 248, mem[s + 32], mem[s + 32] - arg2
    revert
}



}
