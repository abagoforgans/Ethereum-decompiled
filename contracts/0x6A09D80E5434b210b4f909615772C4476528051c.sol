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
        _298 = mem[64]
        _370 = mem[64] + 96
        mem[64] = mem[64] + 160
        mem[_370] = 0
        mem[_370 + 32] = 0
        mem[var13001] = _370
        z = var13001
        y = var13002
        while y - 1:
            _370 = mem[64]
            mem[64] = mem[64] + 64
            mem[_370] = 0
            mem[_370 + 32] = 0
            mem[z + 32] = _370
            z = z + 32
            y = y - 1
            continue 
        _371 = mem[64]
        mem[64] = mem[64] + 64
        mem[_371] = 0
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
            mem[_371 + 32] = 0
            require 0 < mem[_298]
            mem[_298 + 32] = _371
            _382 = mem[64]
            mem[64] = mem[64] + 64
            mem[_382] = 1
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
            mem[_382 + 32] = ext_call.return_data[0]
            require 1 < mem[_298]
            mem[_298 + 64] = _382
            require 0 < mem[_298]
            require 0 < mem[_298]
            y = 1
            z = 0
            a = 0
            while y < mem[_298]:
                require y < mem[_298]
                if mem[mem[(32 * y) + _298 + 32] + 32] <= z:
                    y = y + 1
                    z = z
                    a = a
                    continue 
                require y < mem[_298]
                require y < mem[_298]
                y = y + 1
                z = mem[mem[(32 * y) + _298 + 32] + 32]
                a = mem[mem[(32 * y) + _298 + 32]]
                continue 
            _453 = mem[64]
            _594 = mem[64] + 96
            mem[64] = mem[64] + 160
            mem[_594] = 0
            mem[_594 + 32] = 0
            mem[var47001] = _594
            b = var47001
            y = var47002
            while y - 1:
                _594 = mem[64]
                mem[64] = mem[64] + 64
                mem[_594] = 0
                mem[_594 + 32] = 0
                mem[b + 32] = _594
                b = b + 32
                y = y - 1
                continue 
            _596 = mem[64]
            mem[64] = mem[64] + 64
            mem[_596] = 0
            mem[mem[64] + 36] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
            mem[mem[64] + 68] = z
            require ext_code.size(stor1)
            staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, z
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not ext_call.return_data[32]:
                mem[_596 + 32] = 0
                require 0 < mem[_453]
                mem[_453 + 32] = _596
                _618 = mem[64]
                mem[64] = mem[64] + 64
                mem[_618] = 1
                require ext_code.size(stor2)
                staticcall stor2.getExchange(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = z
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                        gas gas_remaining wei
                       args z
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_618 + 32] = ext_call.return_data[0]
                require 1 < mem[_453]
                mem[_453 + 64] = _618
                require 0 < mem[_453]
                require 0 < mem[_453]
                y = 1
                b = 0
                c = 0
                while y < mem[_453]:
                    require y < mem[_453]
                    if mem[mem[(32 * y) + _453 + 32] + 32] <= b:
                        y = y + 1
                        b = b
                        c = c
                        continue 
                    require y < mem[_453]
                    require y < mem[_453]
                    y = y + 1
                    b = mem[mem[(32 * y) + _453 + 32] + 32]
                    c = mem[mem[(32 * y) + _453 + 32]]
                    continue 
            else:
                require ext_code.size(arg1)
                staticcall arg1.0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_596 + 32] = ext_call.return_data[0] * z * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                require 0 < mem[_453]
                mem[_453 + 32] = _596
                _629 = mem[64]
                mem[64] = mem[64] + 64
                mem[_629] = 1
                require ext_code.size(stor2)
                staticcall stor2.getExchange(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = z
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                        gas gas_remaining wei
                       args z
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_629 + 32] = ext_call.return_data[0]
                require 1 < mem[_453]
                mem[_453 + 64] = _629
                require 0 < mem[_453]
                require 0 < mem[_453]
                y = 1
                b = ext_call.return_data[0] * z * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                c = 0
                while y < mem[_453]:
                    require y < mem[_453]
                    if mem[mem[(32 * y) + _453 + 32] + 32] <= b:
                        y = y + 1
                        b = b
                        c = c
                        continue 
                    require y < mem[_453]
                    require y < mem[_453]
                    y = y + 1
                    b = mem[mem[(32 * y) + _453 + 32] + 32]
                    c = mem[mem[(32 * y) + _453 + 32]]
                    continue 
        else:
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_371 + 32] = ext_call.return_data[0] * idx * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
            require 0 < mem[_298]
            mem[_298 + 32] = _371
            _387 = mem[64]
            mem[64] = mem[64] + 64
            mem[_387] = 1
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
            mem[_387 + 32] = ext_call.return_data[0]
            require 1 < mem[_298]
            mem[_298 + 64] = _387
            require 0 < mem[_298]
            require 0 < mem[_298]
            y = 1
            z = ext_call.return_data[0] * idx * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
            a = 0
            while y < mem[_298]:
                require y < mem[_298]
                if mem[mem[(32 * y) + _298 + 32] + 32] <= z:
                    y = y + 1
                    z = z
                    a = a
                    continue 
                require y < mem[_298]
                require y < mem[_298]
                y = y + 1
                z = mem[mem[(32 * y) + _298 + 32] + 32]
                a = mem[mem[(32 * y) + _298 + 32]]
                continue 
            _449 = mem[64]
            _593 = mem[64] + 96
            mem[64] = mem[64] + 160
            mem[_593] = 0
            mem[_593 + 32] = 0
            mem[var52001] = _593
            b = var52001
            y = var52002
            while y - 1:
                _593 = mem[64]
                mem[64] = mem[64] + 64
                mem[_593] = 0
                mem[_593 + 32] = 0
                mem[b + 32] = _593
                b = b + 32
                y = y - 1
                continue 
            _595 = mem[64]
            mem[64] = mem[64] + 64
            mem[_595] = 0
            mem[mem[64] + 36] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
            mem[mem[64] + 68] = z
            require ext_code.size(stor1)
            staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, z
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not ext_call.return_data[32]:
                mem[_595 + 32] = 0
                require 0 < mem[_449]
                mem[_449 + 32] = _595
                _616 = mem[64]
                mem[64] = mem[64] + 64
                mem[_616] = 1
                require ext_code.size(stor2)
                staticcall stor2.getExchange(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = z
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                        gas gas_remaining wei
                       args z
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_616 + 32] = ext_call.return_data[0]
                require 1 < mem[_449]
                mem[_449 + 64] = _616
                require 0 < mem[_449]
                require 0 < mem[_449]
                y = 1
                b = 0
                c = 0
                while y < mem[_449]:
                    require y < mem[_449]
                    if mem[mem[(32 * y) + _449 + 32] + 32] <= b:
                        y = y + 1
                        b = b
                        c = c
                        continue 
                    require y < mem[_449]
                    require y < mem[_449]
                    y = y + 1
                    b = mem[mem[(32 * y) + _449 + 32] + 32]
                    c = mem[mem[(32 * y) + _449 + 32]]
                    continue 
            else:
                require ext_code.size(arg1)
                staticcall arg1.0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_595 + 32] = ext_call.return_data[0] * z * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                require 0 < mem[_449]
                mem[_449 + 32] = _595
                _627 = mem[64]
                mem[64] = mem[64] + 64
                mem[_627] = 1
                require ext_code.size(stor2)
                staticcall stor2.getExchange(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = z
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                        gas gas_remaining wei
                       args z
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_627 + 32] = ext_call.return_data[0]
                require 1 < mem[_449]
                mem[_449 + 64] = _627
                require 0 < mem[_449]
                require 0 < mem[_449]
                y = 1
                b = ext_call.return_data[0] * z * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                c = 0
                while y < mem[_449]:
                    require y < mem[_449]
                    if mem[mem[(32 * y) + _449 + 32] + 32] <= b:
                        y = y + 1
                        b = b
                        c = c
                        continue 
                    require y < mem[_449]
                    require y < mem[_449]
                    y = y + 1
                    b = mem[mem[(32 * y) + _449 + 32] + 32]
                    c = mem[mem[(32 * y) + _449 + 32]]
                    continue 
        if b - idx <= arg4:
            idx = idx - arg3
            s = s + 1
            t = t
            u = u
            v = v
            w = w
            x = x
            continue 
        if b - idx <= t:
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
        t = b - idx
        u = b
        v = c
        w = z
        x = a
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
    _73 = mem[64]
    mem[64] = mem[64] + 64
    mem[_73] = 0
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
        mem[_73 + 32] = 0
        if 0 < mem[96]:
            mem[128] = _73
            _84 = mem[64]
            mem[64] = mem[64] + 64
            mem[_84] = 1
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
            mem[_84 + 32] = ext_call.return_data[0]
            if 1 < mem[96]:
                mem[160] = _84
                if 0 < mem[96]:
                    if 0 < mem[96]:
                        idx = 1
                        s = 0
                        t = 0
                        while idx < mem[96]:
                            require idx < mem[96]
                            if mem[mem[(32 * idx) + 128] + 32] <= s:
                                idx = idx + 1
                                s = s
                                t = t
                                continue 
                            require idx < mem[96]
                            require idx < mem[96]
                            idx = idx + 1
                            s = mem[mem[(32 * idx) + 128] + 32]
                            t = mem[mem[(32 * idx) + 128]]
                            continue 
                        _155 = mem[64]
                        _304 = mem[64] + 96
                        mem[64] = mem[64] + 160
                        mem[_304] = 0
                        mem[_304 + 32] = 0
                        mem[var44001] = _304
                        u = var44001
                        idx = var44002
                        while idx - 1:
                            _304 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_304] = 0
                            mem[_304 + 32] = 0
                            mem[u + 32] = _304
                            u = u + 32
                            idx = idx - 1
                            continue 
                        _306 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_306] = 0
                        mem[mem[64] + 36] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                        mem[mem[64] + 68] = s
                        require ext_code.size(stor1)
                        staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, s
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if not ext_call.return_data[32]:
                            mem[_306 + 32] = 0
                            if 0 < mem[_155]:
                                mem[_155 + 32] = _306
                                _328 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_328] = 1
                                require ext_code.size(stor2)
                                staticcall stor2.getExchange(address arg1) with:
                                        gas gas_remaining wei
                                       args address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = s
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args s
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_328 + 32] = ext_call.return_data[0]
                                if 1 < mem[_155]:
                                    mem[_155 + 64] = _328
                                    if 0 < mem[_155]:
                                        if 0 < mem[_155]:
                                            idx = 1
                                            u = 0
                                            v = 0
                                            while idx < mem[_155]:
                                                require idx < mem[_155]
                                                if mem[mem[(32 * idx) + _155 + 32] + 32] <= u:
                                                    idx = idx + 1
                                                    u = u
                                                    v = v
                                                    continue 
                                                require idx < mem[_155]
                                                require idx < mem[_155]
                                                idx = idx + 1
                                                u = mem[mem[(32 * idx) + _155 + 32] + 32]
                                                v = mem[mem[(32 * idx) + _155 + 32]]
                                                continue 
                                            if t <= 2:
                                                if v <= 2:
                                                    return t << 248, s, v << 248, u, u - arg2
                        else:
                            require ext_code.size(arg1)
                            staticcall arg1.0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_306 + 32] = ext_call.return_data[0] * s * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                            if 0 < mem[_155]:
                                mem[_155 + 32] = _306
                                _339 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_339] = 1
                                require ext_code.size(stor2)
                                staticcall stor2.getExchange(address arg1) with:
                                        gas gas_remaining wei
                                       args address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = s
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args s
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_339 + 32] = ext_call.return_data[0]
                                if 1 < mem[_155]:
                                    mem[_155 + 64] = _339
                                    if 0 < mem[_155]:
                                        if 0 < mem[_155]:
                                            idx = 1
                                            u = ext_call.return_data[0] * s * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                            v = 0
                                            while idx < mem[_155]:
                                                require idx < mem[_155]
                                                if mem[mem[(32 * idx) + _155 + 32] + 32] <= u:
                                                    idx = idx + 1
                                                    u = u
                                                    v = v
                                                    continue 
                                                require idx < mem[_155]
                                                require idx < mem[_155]
                                                idx = idx + 1
                                                u = mem[mem[(32 * idx) + _155 + 32] + 32]
                                                v = mem[mem[(32 * idx) + _155 + 32]]
                                                continue 
                                            if t <= 2:
                                                if v <= 2:
                                                    return t << 248, s, v << 248, u, u - arg2
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_73 + 32] = ext_call.return_data[0] * arg2 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
        if 0 < mem[96]:
            mem[128] = _73
            _89 = mem[64]
            mem[64] = mem[64] + 64
            mem[_89] = 1
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
            mem[_89 + 32] = ext_call.return_data[0]
            if 1 < mem[96]:
                mem[160] = _89
                if 0 < mem[96]:
                    if 0 < mem[96]:
                        idx = 1
                        s = ext_call.return_data[0] * arg2 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                        t = 0
                        while idx < mem[96]:
                            require idx < mem[96]
                            if mem[mem[(32 * idx) + 128] + 32] <= s:
                                idx = idx + 1
                                s = s
                                t = t
                                continue 
                            require idx < mem[96]
                            require idx < mem[96]
                            idx = idx + 1
                            s = mem[mem[(32 * idx) + 128] + 32]
                            t = mem[mem[(32 * idx) + 128]]
                            continue 
                        _151 = mem[64]
                        _303 = mem[64] + 96
                        mem[64] = mem[64] + 160
                        mem[_303] = 0
                        mem[_303 + 32] = 0
                        mem[var49001] = _303
                        u = var49001
                        idx = var49002
                        while idx - 1:
                            _303 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_303] = 0
                            mem[_303 + 32] = 0
                            mem[u + 32] = _303
                            u = u + 32
                            idx = idx - 1
                            continue 
                        _305 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_305] = 0
                        mem[mem[64] + 36] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                        mem[mem[64] + 68] = s
                        require ext_code.size(stor1)
                        staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, s
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if not ext_call.return_data[32]:
                            mem[_305 + 32] = 0
                            if 0 < mem[_151]:
                                mem[_151 + 32] = _305
                                _326 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_326] = 1
                                require ext_code.size(stor2)
                                staticcall stor2.getExchange(address arg1) with:
                                        gas gas_remaining wei
                                       args address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = s
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args s
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_326 + 32] = ext_call.return_data[0]
                                if 1 < mem[_151]:
                                    mem[_151 + 64] = _326
                                    if 0 < mem[_151]:
                                        if 0 < mem[_151]:
                                            idx = 1
                                            u = 0
                                            v = 0
                                            while idx < mem[_151]:
                                                require idx < mem[_151]
                                                if mem[mem[(32 * idx) + _151 + 32] + 32] <= u:
                                                    idx = idx + 1
                                                    u = u
                                                    v = v
                                                    continue 
                                                require idx < mem[_151]
                                                require idx < mem[_151]
                                                idx = idx + 1
                                                u = mem[mem[(32 * idx) + _151 + 32] + 32]
                                                v = mem[mem[(32 * idx) + _151 + 32]]
                                                continue 
                                            if t <= 2:
                                                if v <= 2:
                                                    return t << 248, s, v << 248, u, u - arg2
                        else:
                            require ext_code.size(arg1)
                            staticcall arg1.0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_305 + 32] = ext_call.return_data[0] * s * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                            if 0 < mem[_151]:
                                mem[_151 + 32] = _305
                                _337 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_337] = 1
                                require ext_code.size(stor2)
                                staticcall stor2.getExchange(address arg1) with:
                                        gas gas_remaining wei
                                       args address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = s
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args s
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_337 + 32] = ext_call.return_data[0]
                                if 1 < mem[_151]:
                                    mem[_151 + 64] = _337
                                    if 0 < mem[_151]:
                                        if 0 < mem[_151]:
                                            idx = 1
                                            u = ext_call.return_data[0] * s * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                            v = 0
                                            while idx < mem[_151]:
                                                require idx < mem[_151]
                                                if mem[mem[(32 * idx) + _151 + 32] + 32] <= u:
                                                    idx = idx + 1
                                                    u = u
                                                    v = v
                                                    continue 
                                                require idx < mem[_151]
                                                require idx < mem[_151]
                                                idx = idx + 1
                                                u = mem[mem[(32 * idx) + _151 + 32] + 32]
                                                v = mem[mem[(32 * idx) + _151 + 32]]
                                                continue 
                                            if t <= 2:
                                                if v <= 2:
                                                    return t << 248, s, v << 248, u, u - arg2
    revert
}



}
