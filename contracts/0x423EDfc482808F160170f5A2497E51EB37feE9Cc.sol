contract main {




// =====================  Runtime code  =====================


#
#  - sub_6184877e(?)
#
address stor0;
address stor1;
address stor2;
address stor3;
address stor4;

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
    if not ext_call.return_data[12 len 20]:
        return 0
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
    if not ext_call.return_data[12 len 20]:
        return 0
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
    staticcall stor3.token() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3)
    staticcall stor3.token() with:
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
    staticcall stor3.token() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3)
    staticcall stor3.token() with:
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
                staticcall stor3.token() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor3)
                staticcall stor3.token() with:
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
                    staticcall stor3.token() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor3)
                    staticcall stor3.token() with:
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
            staticcall stor3.token() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor3)
            staticcall stor3.token() with:
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
                    staticcall stor3.token() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor3)
                    staticcall stor3.token() with:
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

function sub_45401cb5(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 160
    idx = arg3
    s = 0
    t = 0
    u = 0
    v = 0
    w = 0
    x = 0
    while idx > arg4:
        _1972 = mem[64]
        _2282 = mem[64] + 128
        mem[64] = mem[64] + 192
        mem[_2282] = 0
        mem[_2282 + 32] = 0
        mem[var13001] = _2282
        z = var13001
        y = var13002
        while y - 1:
            _2282 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2282] = 0
            mem[_2282 + 32] = 0
            mem[z + 32] = _2282
            z = z + 32
            y = y - 1
            continue 
        _2283 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2283] = 0
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
            mem[_2283 + 32] = 0
            require 0 < mem[_1972]
            mem[_1972 + 32] = _2283
            _2294 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2294] = 1
            mem[mem[64] + 4] = arg1
            require ext_code.size(stor2)
            staticcall stor2.getExchange(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not address(ext_call.return_data[0]):
                mem[_2294 + 32] = 0
                require 1 < mem[_1972]
                mem[_1972 + 64] = _2294
                _2309 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2309] = 2
                if not arg2:
                    mem[_2309 + 32] = 0
                    require 2 < mem[_1972]
                    mem[_1972 + 96] = _2309
                    require 0 < mem[_1972]
                    require 0 < mem[_1972]
                    y = 1
                    z = 0
                    a = 0
                    while y < mem[_1972]:
                        require y < mem[_1972]
                        if mem[mem[(32 * y) + _1972 + 32] + 32] <= z:
                            y = y + 1
                            z = z
                            a = a
                            continue 
                        require y < mem[_1972]
                        require y < mem[_1972]
                        y = y + 1
                        z = mem[mem[(32 * y) + _1972 + 32] + 32]
                        a = mem[mem[(32 * y) + _1972 + 32]]
                        continue 
                    _2631 = mem[64]
                    _3943 = mem[64] + 128
                    mem[64] = mem[64] + 192
                    mem[_3943] = 0
                    mem[_3943 + 32] = 0
                    mem[var51001] = _3943
                    b = var51001
                    y = var51002
                    while y - 1:
                        _3943 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3943] = 0
                        mem[_3943 + 32] = 0
                        mem[b + 32] = _3943
                        b = b + 32
                        y = y - 1
                        continue 
                    _3951 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3951] = 0
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
                        mem[_3951 + 32] = 0
                        require 0 < mem[_2631]
                        mem[_2631 + 32] = _3951
                        _4030 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4030] = 1
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(stor2)
                        staticcall stor2.getExchange(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not address(ext_call.return_data[0]):
                            mem[_4030 + 32] = 0
                            require 1 < mem[_2631]
                            mem[_2631 + 64] = _4030
                            _4150 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4150] = 2
                            if not arg2:
                                mem[_4150 + 32] = 0
                                require 2 < mem[_2631]
                                mem[_2631 + 96] = _4150
                                require 0 < mem[_2631]
                                require 0 < mem[_2631]
                                y = 1
                                b = 0
                                c = 0
                                while y < mem[_2631]:
                                    require y < mem[_2631]
                                    if mem[mem[(32 * y) + _2631 + 32] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2631]
                                    require y < mem[_2631]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2631 + 32] + 32]
                                    c = mem[mem[(32 * y) + _2631 + 32]]
                                    continue 
                            else:
                                _4185 = mem[64]
                                mem[mem[64]] = 5
                                mem[64] = mem[64] + 192
                                require 0 < mem[_4185]
                                mem[_4185 + 32] = arg1
                                require 1 < mem[_4185]
                                mem[_4185 + 64] = arg2
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 2 < mem[_4185]
                                mem[_4185 + 96] = ext_call.return_data[12 len 20]
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 3 < mem[_4185]
                                mem[_4185 + 128] = ext_call.return_data[12 len 20]
                                require 4 < mem[_4185]
                                mem[_4185 + 160] = stor4
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
                                mem[_4185 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                mem[_4185 + 228] = z
                                mem[_4185 + 196] = 64
                                mem[_4185 + 260] = mem[_4185]
                                y = 0
                                while y < 32 * mem[_4185]:
                                    mem[y + _4185 + 292] = mem[y + _4185 + 32]
                                    y = y + 32
                                    continue 
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 64, z, mem[_4185 + 260 len (32 * mem[_4185]) + 32]
                                mem[_4185 + 192 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[_4150 + 32] = ext_call.return_data[0]
                                require 2 < mem[_2631]
                                mem[_2631 + 96] = _4150
                                require 0 < mem[_2631]
                                require 0 < mem[_2631]
                                y = 1
                                b = mem[mem[_2631 + 32] + 32]
                                c = mem[mem[_2631 + 32]]
                                while y < mem[_2631]:
                                    require y < mem[_2631]
                                    if mem[mem[(32 * y) + _2631 + 32] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2631]
                                    require y < mem[_2631]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2631 + 32] + 32]
                                    c = mem[mem[(32 * y) + _2631 + 32]]
                                    continue 
                            if b - idx <= arg5:
                                idx = idx - arg4
                                s = s + 1
                                t = t
                                u = u
                                v = v
                                w = w
                                x = x
                                continue 
                            if b - idx <= t:
                                idx = idx - arg4
                                s = s + 1
                                t = t
                                u = u
                                v = v
                                w = w
                                x = x
                                continue 
                            idx = idx - arg4
                            s = s + 1
                            t = b - idx
                            u = b
                            v = c
                            w = z
                            x = a
                            continue 
                        mem[mem[64] + 4] = z
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                                gas gas_remaining wei
                               args z
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_4030 + 32] = ext_call.return_data[0]
                        require 1 < mem[_2631]
                        mem[_2631 + 64] = _4030
                        _4208 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4208] = 2
                        if not arg2:
                            mem[_4208 + 32] = 0
                            require 2 < mem[_2631]
                            mem[_2631 + 96] = _4208
                            require 0 < mem[_2631]
                            require 0 < mem[_2631]
                            y = 1
                            b = 0
                            c = 0
                            while y < mem[_2631]:
                                require y < mem[_2631]
                                if mem[mem[(32 * y) + _2631 + 32] + 32] <= b:
                                    y = y + 1
                                    b = b
                                    c = c
                                    continue 
                                require y < mem[_2631]
                                require y < mem[_2631]
                                y = y + 1
                                b = mem[mem[(32 * y) + _2631 + 32] + 32]
                                c = mem[mem[(32 * y) + _2631 + 32]]
                                continue 
                            if b - idx <= arg5:
                                idx = idx - arg4
                                s = s + 1
                                t = t
                                u = u
                                v = v
                                w = w
                                x = x
                                continue 
                            if b - idx <= t:
                                idx = idx - arg4
                                s = s + 1
                                t = t
                                u = u
                                v = v
                                w = w
                                x = x
                                continue 
                            idx = idx - arg4
                            s = s + 1
                            t = b - idx
                            u = b
                            v = c
                            w = z
                            x = a
                            continue 
                        _4269 = mem[64]
                        mem[mem[64]] = 5
                        mem[64] = mem[64] + 192
                        require 0 < mem[_4269]
                        mem[_4269 + 32] = arg1
                        require 1 < mem[_4269]
                        mem[_4269 + 64] = arg2
                        require ext_code.size(stor3)
                        staticcall stor3.token() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 2 < mem[_4269]
                        mem[_4269 + 96] = ext_call.return_data[12 len 20]
                        require ext_code.size(stor3)
                        staticcall stor3.token() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 3 < mem[_4269]
                        mem[_4269 + 128] = ext_call.return_data[12 len 20]
                        require 4 < mem[_4269]
                        mem[_4269 + 160] = stor4
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
                        mem[_4269 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                        mem[_4269 + 228] = z
                        mem[_4269 + 196] = 64
                        mem[_4269 + 260] = mem[_4269]
                        y = 0
                        while y < 32 * mem[_4269]:
                            mem[y + _4269 + 292] = mem[y + _4269 + 32]
                            y = y + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args 64, z, mem[_4269 + 260 len (32 * mem[_4269]) + 32]
                        mem[_4269 + 192 len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        mem[_4208 + 32] = ext_call.return_data[0]
                        require 2 < mem[_2631]
                        mem[_2631 + 96] = _4208
                        require 0 < mem[_2631]
                        require 0 < mem[_2631]
                        y = 1
                        b = mem[mem[_2631 + 32] + 32]
                        c = mem[mem[_2631 + 32]]
                        while y < mem[_2631]:
                            require y < mem[_2631]
                            if mem[mem[(32 * y) + _2631 + 32] + 32] <= b:
                                y = y + 1
                                b = b
                                c = c
                                continue 
                            require y < mem[_2631]
                            require y < mem[_2631]
                            y = y + 1
                            b = mem[mem[(32 * y) + _2631 + 32] + 32]
                            c = mem[mem[(32 * y) + _2631 + 32]]
                            continue 
                        if b - y <= arg5:
                            y = y - arg4
                            c = c + 1
                            t = t
                            u = u
                            v = v
                            w = w
                            x = x
                            continue 
                        if b - y <= t:
                            y = y - arg4
                            c = c + 1
                            t = t
                            u = u
                            v = v
                            w = w
                            x = x
                            continue 
                        y = y - arg4
                        c = c + 1
                        t = b - y
                        u = b
                        v = c
                        w = z
                        x = a
                        continue 
                    require ext_code.size(arg1)
                    staticcall arg1.0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_3951 + 32] = ext_call.return_data[0] * z * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                    require 0 < mem[_2631]
                    mem[_2631 + 32] = _3951
                    _4077 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4077] = 1
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(stor2)
                    staticcall stor2.getExchange(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not address(ext_call.return_data[0]):
                        mem[_4077 + 32] = 0
                        require 1 < mem[_2631]
                        mem[_2631 + 64] = _4077
                        _4267 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4267] = 2
                        if not arg2:
                            mem[_4267 + 32] = 0
                            require 2 < mem[_2631]
                            mem[_2631 + 96] = _4267
                            require 0 < mem[_2631]
                            require 0 < mem[_2631]
                            y = 1
                            b = ext_call.return_data[0] * z * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                            c = 0
                            while y < mem[_2631]:
                                require y < mem[_2631]
                                if mem[mem[(32 * y) + _2631 + 32] + 32] <= b:
                                    y = y + 1
                                    b = b
                                    c = c
                                    continue 
                                require y < mem[_2631]
                                require y < mem[_2631]
                                y = y + 1
                                b = mem[mem[(32 * y) + _2631 + 32] + 32]
                                c = mem[mem[(32 * y) + _2631 + 32]]
                                continue 
                        else:
                            _4341 = mem[64]
                            mem[mem[64]] = 5
                            mem[64] = mem[64] + 192
                            require 0 < mem[_4341]
                            mem[_4341 + 32] = arg1
                            require 1 < mem[_4341]
                            mem[_4341 + 64] = arg2
                            require ext_code.size(stor3)
                            staticcall stor3.token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 2 < mem[_4341]
                            mem[_4341 + 96] = ext_call.return_data[12 len 20]
                            require ext_code.size(stor3)
                            staticcall stor3.token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 3 < mem[_4341]
                            mem[_4341 + 128] = ext_call.return_data[12 len 20]
                            require 4 < mem[_4341]
                            mem[_4341 + 160] = stor4
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
                            mem[_4341 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                            mem[_4341 + 228] = z
                            mem[_4341 + 196] = 64
                            mem[_4341 + 260] = mem[_4341]
                            y = 0
                            while y < 32 * mem[_4341]:
                                mem[y + _4341 + 292] = mem[y + _4341 + 32]
                                y = y + 32
                                continue 
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                    gas gas_remaining wei
                                   args 64, z, mem[_4341 + 260 len (32 * mem[_4341]) + 32]
                            mem[_4341 + 192 len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            mem[_4267 + 32] = ext_call.return_data[0]
                            require 2 < mem[_2631]
                            mem[_2631 + 96] = _4267
                            require 0 < mem[_2631]
                            require 0 < mem[_2631]
                            y = 1
                            b = mem[mem[_2631 + 32] + 32]
                            c = mem[mem[_2631 + 32]]
                            while y < mem[_2631]:
                                require y < mem[_2631]
                                if mem[mem[(32 * y) + _2631 + 32] + 32] <= b:
                                    y = y + 1
                                    b = b
                                    c = c
                                    continue 
                                require y < mem[_2631]
                                require y < mem[_2631]
                                y = y + 1
                                b = mem[mem[(32 * y) + _2631 + 32] + 32]
                                c = mem[mem[(32 * y) + _2631 + 32]]
                                continue 
                    else:
                        mem[mem[64] + 4] = z
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                                gas gas_remaining wei
                               args z
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_4077 + 32] = ext_call.return_data[0]
                        require 1 < mem[_2631]
                        mem[_2631 + 64] = _4077
                        _4404 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4404] = 2
                        if not arg2:
                            mem[_4404 + 32] = 0
                            require 2 < mem[_2631]
                            mem[_2631 + 96] = _4404
                            require 0 < mem[_2631]
                            require 0 < mem[_2631]
                            y = 1
                            b = ext_call.return_data[0] * z * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                            c = 0
                            while y < mem[_2631]:
                                require y < mem[_2631]
                                if mem[mem[(32 * y) + _2631 + 32] + 32] <= b:
                                    y = y + 1
                                    b = b
                                    c = c
                                    continue 
                                require y < mem[_2631]
                                require y < mem[_2631]
                                y = y + 1
                                b = mem[mem[(32 * y) + _2631 + 32] + 32]
                                c = mem[mem[(32 * y) + _2631 + 32]]
                                continue 
                        else:
                            _4515 = mem[64]
                            mem[mem[64]] = 5
                            mem[64] = mem[64] + 192
                            require 0 < mem[_4515]
                            mem[_4515 + 32] = arg1
                            require 1 < mem[_4515]
                            mem[_4515 + 64] = arg2
                            require ext_code.size(stor3)
                            staticcall stor3.token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 2 < mem[_4515]
                            mem[_4515 + 96] = ext_call.return_data[12 len 20]
                            require ext_code.size(stor3)
                            staticcall stor3.token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 3 < mem[_4515]
                            mem[_4515 + 128] = ext_call.return_data[12 len 20]
                            require 4 < mem[_4515]
                            mem[_4515 + 160] = stor4
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
                            mem[_4515 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                            mem[_4515 + 228] = z
                            mem[_4515 + 196] = 64
                            mem[_4515 + 260] = mem[_4515]
                            y = 0
                            while y < 32 * mem[_4515]:
                                mem[y + _4515 + 292] = mem[y + _4515 + 32]
                                y = y + 32
                                continue 
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                    gas gas_remaining wei
                                   args 64, z, mem[_4515 + 260 len (32 * mem[_4515]) + 32]
                            mem[_4515 + 192 len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            mem[_4404 + 32] = ext_call.return_data[0]
                            require 2 < mem[_2631]
                            mem[_2631 + 96] = _4404
                            require 0 < mem[_2631]
                            require 0 < mem[_2631]
                            y = 1
                            b = mem[mem[_2631 + 32] + 32]
                            c = mem[mem[_2631 + 32]]
                            while y < mem[_2631]:
                                require y < mem[_2631]
                                if mem[mem[(32 * y) + _2631 + 32] + 32] <= b:
                                    y = y + 1
                                    b = b
                                    c = c
                                    continue 
                                require y < mem[_2631]
                                require y < mem[_2631]
                                y = y + 1
                                b = mem[mem[(32 * y) + _2631 + 32] + 32]
                                c = mem[mem[(32 * y) + _2631 + 32]]
                                continue 
                else:
                    _2313 = mem[64]
                    mem[mem[64]] = 5
                    mem[64] = mem[64] + 192
                    require mem[_2313]
                    mem[_2313 + 32] = stor4
                    require ext_code.size(stor3)
                    staticcall stor3.token() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 1 < mem[_2313]
                    mem[_2313 + 64] = ext_call.return_data[12 len 20]
                    require ext_code.size(stor3)
                    staticcall stor3.token() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < mem[_2313]
                    mem[_2313 + 96] = ext_call.return_data[12 len 20]
                    require 3 < mem[_2313]
                    mem[_2313 + 128] = arg2
                    require 4 < mem[_2313]
                    mem[_2313 + 160] = arg1
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
                    mem[_2313 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                    mem[_2313 + 228] = idx
                    mem[_2313 + 196] = 64
                    mem[_2313 + 260] = mem[_2313]
                    y = 0
                    while y < 32 * mem[_2313]:
                        mem[y + _2313 + 292] = mem[y + _2313 + 32]
                        y = y + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args 64, idx, mem[_2313 + 260 len (32 * mem[_2313]) + 32]
                    mem[_2313 + 192 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    mem[_2309 + 32] = ext_call.return_data[0]
                    require 2 < mem[_1972]
                    mem[_1972 + 96] = _2309
                    require 0 < mem[_1972]
                    require 0 < mem[_1972]
                    y = 1
                    z = mem[mem[_1972 + 32] + 32]
                    a = mem[mem[_1972 + 32]]
                    while y < mem[_1972]:
                        require y < mem[_1972]
                        if mem[mem[(32 * y) + _1972 + 32] + 32] <= z:
                            y = y + 1
                            z = z
                            a = a
                            continue 
                        require y < mem[_1972]
                        require y < mem[_1972]
                        y = y + 1
                        z = mem[mem[(32 * y) + _1972 + 32] + 32]
                        a = mem[mem[(32 * y) + _1972 + 32]]
                        continue 
                    mem[_2313 + 192] = 3
                    mem[64] = _2313 + 384
                    mem[_2313 + 320] = 0
                    mem[_2313 + 352] = 0
                    mem[var76001] = _2313 + 320
                    b = var76001
                    y = var76002
                    while y - 1:
                        mem[64] = mem[64] + 64
                        mem[_2313 + 320] = 0
                        mem[_2313 + 352] = 0
                        mem[b + 32] = _2313 + 320
                        b = b + 32
                        y = y - 1
                        continue 
                    _6363 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6363] = 0
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
                        mem[_6363 + 32] = 0
                        require 0 < mem[_2313 + 192]
                        mem[_2313 + 224] = _6363
                        _6646 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6646] = 1
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(stor2)
                        staticcall stor2.getExchange(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not address(ext_call.return_data[0]):
                            mem[_6646 + 32] = 0
                            require 1 < mem[_2313 + 192]
                            mem[_2313 + 256] = _6646
                            _6876 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6876] = 2
                            if not arg2:
                                mem[_6876 + 32] = 0
                                require 2 < mem[_2313 + 192]
                                mem[_2313 + 288] = _6876
                                require 0 < mem[_2313 + 192]
                                require 0 < mem[_2313 + 192]
                                y = 1
                                b = 0
                                c = 0
                                while y < mem[_2313 + 192]:
                                    require y < mem[_2313 + 192]
                                    if mem[mem[(32 * y) + _2313 + 224] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2313 + 192]
                                    require y < mem[_2313 + 192]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2313 + 224] + 32]
                                    c = mem[mem[(32 * y) + _2313 + 224]]
                                    continue 
                            else:
                                _6893 = mem[64]
                                mem[mem[64]] = 5
                                mem[64] = mem[64] + 192
                                require 0 < mem[_6893]
                                mem[_6893 + 32] = arg1
                                require 1 < mem[_6893]
                                mem[_6893 + 64] = arg2
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 2 < mem[_6893]
                                mem[_6893 + 96] = ext_call.return_data[12 len 20]
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 3 < mem[_6893]
                                mem[_6893 + 128] = ext_call.return_data[12 len 20]
                                require 4 < mem[_6893]
                                mem[_6893 + 160] = stor4
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
                                mem[_6893 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                mem[_6893 + 228] = z
                                mem[_6893 + 196] = 64
                                mem[_6893 + 260] = mem[_6893]
                                y = 0
                                while y < 32 * mem[_6893]:
                                    mem[y + _6893 + 292] = mem[y + _6893 + 32]
                                    y = y + 32
                                    continue 
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 64, z, mem[_6893 + 260 len (32 * mem[_6893]) + 32]
                                mem[_6893 + 192 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[_6876 + 32] = ext_call.return_data[0]
                                require 2 < mem[_2313 + 192]
                                mem[_2313 + 288] = _6876
                                require 0 < mem[_2313 + 192]
                                require 0 < mem[_2313 + 192]
                                y = 1
                                b = mem[mem[_2313 + 224] + 32]
                                c = mem[mem[_2313 + 224]]
                                while y < mem[_2313 + 192]:
                                    require y < mem[_2313 + 192]
                                    if mem[mem[(32 * y) + _2313 + 224] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2313 + 192]
                                    require y < mem[_2313 + 192]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2313 + 224] + 32]
                                    c = mem[mem[(32 * y) + _2313 + 224]]
                                    continue 
                        else:
                            mem[mem[64] + 4] = z
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args z
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_6646 + 32] = ext_call.return_data[0]
                            require 1 < mem[_2313 + 192]
                            mem[_2313 + 256] = _6646
                            _6906 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6906] = 2
                            if not arg2:
                                mem[_6906 + 32] = 0
                                require 2 < mem[_2313 + 192]
                                mem[_2313 + 288] = _6906
                                require 0 < mem[_2313 + 192]
                                require 0 < mem[_2313 + 192]
                                y = 1
                                b = 0
                                c = 0
                                while y < mem[_2313 + 192]:
                                    require y < mem[_2313 + 192]
                                    if mem[mem[(32 * y) + _2313 + 224] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2313 + 192]
                                    require y < mem[_2313 + 192]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2313 + 224] + 32]
                                    c = mem[mem[(32 * y) + _2313 + 224]]
                                    continue 
                                if b - y <= arg5:
                                    y = y - arg4
                                    c = c + 1
                                    t = t
                                    u = u
                                    v = v
                                    w = w
                                    x = x
                                    continue 
                                if b - y <= t:
                                    y = y - arg4
                                    c = c + 1
                                    t = t
                                    u = u
                                    v = v
                                    w = w
                                    x = x
                                    continue 
                                y = y - arg4
                                c = c + 1
                                t = b - y
                                u = b
                                v = c
                                w = z
                                x = a
                                continue 
                            _6939 = mem[64]
                            mem[mem[64]] = 5
                            mem[64] = mem[64] + 192
                            require 0 < mem[_6939]
                            mem[_6939 + 32] = arg1
                            require 1 < mem[_6939]
                            mem[_6939 + 64] = arg2
                            require ext_code.size(stor3)
                            staticcall stor3.token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 2 < mem[_6939]
                            mem[_6939 + 96] = ext_call.return_data[12 len 20]
                            require ext_code.size(stor3)
                            staticcall stor3.token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 3 < mem[_6939]
                            mem[_6939 + 128] = ext_call.return_data[12 len 20]
                            require 4 < mem[_6939]
                            mem[_6939 + 160] = stor4
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
                            mem[_6939 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                            mem[_6939 + 228] = z
                            mem[_6939 + 196] = 64
                            mem[_6939 + 260] = mem[_6939]
                            y = 0
                            while y < 32 * mem[_6939]:
                                mem[y + _6939 + 292] = mem[y + _6939 + 32]
                                y = y + 32
                                continue 
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                    gas gas_remaining wei
                                   args 64, z, mem[_6939 + 260 len (32 * mem[_6939]) + 32]
                            mem[_6939 + 192 len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            mem[_6906 + 32] = ext_call.return_data[0]
                            require 2 < mem[_2313 + 192]
                            mem[_2313 + 288] = _6906
                            require 0 < mem[_2313 + 192]
                            require 0 < mem[_2313 + 192]
                            y = 1
                            b = mem[mem[_2313 + 224] + 32]
                            c = mem[mem[_2313 + 224]]
                            while y < mem[_2313 + 192]:
                                require y < mem[_2313 + 192]
                                if mem[mem[(32 * y) + _2313 + 224] + 32] <= b:
                                    y = y + 1
                                    b = b
                                    c = c
                                    continue 
                                require y < mem[_2313 + 192]
                                require y < mem[_2313 + 192]
                                y = y + 1
                                b = mem[mem[(32 * y) + _2313 + 224] + 32]
                                c = mem[mem[(32 * y) + _2313 + 224]]
                                continue 
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_6363 + 32] = ext_call.return_data[0] * z * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                        require 0 < mem[_2313 + 192]
                        mem[_2313 + 224] = _6363
                        _6793 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6793] = 1
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(stor2)
                        staticcall stor2.getExchange(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not address(ext_call.return_data[0]):
                            mem[_6793 + 32] = 0
                            require 1 < mem[_2313 + 192]
                            mem[_2313 + 256] = _6793
                            _6937 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6937] = 2
                            if not arg2:
                                mem[_6937 + 32] = 0
                                require 2 < mem[_2313 + 192]
                                mem[_2313 + 288] = _6937
                                require 0 < mem[_2313 + 192]
                                require 0 < mem[_2313 + 192]
                                y = 1
                                b = ext_call.return_data[0] * z * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                c = 0
                                while y < mem[_2313 + 192]:
                                    require y < mem[_2313 + 192]
                                    if mem[mem[(32 * y) + _2313 + 224] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2313 + 192]
                                    require y < mem[_2313 + 192]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2313 + 224] + 32]
                                    c = mem[mem[(32 * y) + _2313 + 224]]
                                    continue 
                            else:
                                _6979 = mem[64]
                                mem[mem[64]] = 5
                                mem[64] = mem[64] + 192
                                require 0 < mem[_6979]
                                mem[_6979 + 32] = arg1
                                require 1 < mem[_6979]
                                mem[_6979 + 64] = arg2
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 2 < mem[_6979]
                                mem[_6979 + 96] = ext_call.return_data[12 len 20]
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 3 < mem[_6979]
                                mem[_6979 + 128] = ext_call.return_data[12 len 20]
                                require 4 < mem[_6979]
                                mem[_6979 + 160] = stor4
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
                                mem[_6979 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                mem[_6979 + 228] = z
                                mem[_6979 + 196] = 64
                                mem[_6979 + 260] = mem[_6979]
                                y = 0
                                while y < 32 * mem[_6979]:
                                    mem[y + _6979 + 292] = mem[y + _6979 + 32]
                                    y = y + 32
                                    continue 
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 64, z, mem[_6979 + 260 len (32 * mem[_6979]) + 32]
                                mem[_6979 + 192 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[_6937 + 32] = ext_call.return_data[0]
                                require 2 < mem[_2313 + 192]
                                mem[_2313 + 288] = _6937
                                require 0 < mem[_2313 + 192]
                                require 0 < mem[_2313 + 192]
                                y = 1
                                b = mem[mem[_2313 + 224] + 32]
                                c = mem[mem[_2313 + 224]]
                                while y < mem[_2313 + 192]:
                                    require y < mem[_2313 + 192]
                                    if mem[mem[(32 * y) + _2313 + 224] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2313 + 192]
                                    require y < mem[_2313 + 192]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2313 + 224] + 32]
                                    c = mem[mem[(32 * y) + _2313 + 224]]
                                    continue 
                        else:
                            mem[mem[64] + 4] = z
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args z
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_6793 + 32] = ext_call.return_data[0]
                            require 1 < mem[_2313 + 192]
                            mem[_2313 + 256] = _6793
                            _7014 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7014] = 2
                            if not arg2:
                                mem[_7014 + 32] = 0
                                require 2 < mem[_2313 + 192]
                                mem[_2313 + 288] = _7014
                                require 0 < mem[_2313 + 192]
                                require 0 < mem[_2313 + 192]
                                y = 1
                                b = ext_call.return_data[0] * z * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                c = 0
                                while y < mem[_2313 + 192]:
                                    require y < mem[_2313 + 192]
                                    if mem[mem[(32 * y) + _2313 + 224] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2313 + 192]
                                    require y < mem[_2313 + 192]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2313 + 224] + 32]
                                    c = mem[mem[(32 * y) + _2313 + 224]]
                                    continue 
                            else:
                                _7067 = mem[64]
                                mem[mem[64]] = 5
                                mem[64] = mem[64] + 192
                                require 0 < mem[_7067]
                                mem[_7067 + 32] = arg1
                                require 1 < mem[_7067]
                                mem[_7067 + 64] = arg2
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 2 < mem[_7067]
                                mem[_7067 + 96] = ext_call.return_data[12 len 20]
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 3 < mem[_7067]
                                mem[_7067 + 128] = ext_call.return_data[12 len 20]
                                require 4 < mem[_7067]
                                mem[_7067 + 160] = stor4
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
                                mem[_7067 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                mem[_7067 + 228] = z
                                mem[_7067 + 196] = 64
                                mem[_7067 + 260] = mem[_7067]
                                y = 0
                                while y < 32 * mem[_7067]:
                                    mem[y + _7067 + 292] = mem[y + _7067 + 32]
                                    y = y + 32
                                    continue 
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 64, z, mem[_7067 + 260 len (32 * mem[_7067]) + 32]
                                mem[_7067 + 192 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[_7014 + 32] = ext_call.return_data[0]
                                require 2 < mem[_2313 + 192]
                                mem[_2313 + 288] = _7014
                                require 0 < mem[_2313 + 192]
                                require 0 < mem[_2313 + 192]
                                y = 1
                                b = mem[mem[_2313 + 224] + 32]
                                c = mem[mem[_2313 + 224]]
                                while y < mem[_2313 + 192]:
                                    require y < mem[_2313 + 192]
                                    if mem[mem[(32 * y) + _2313 + 224] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2313 + 192]
                                    require y < mem[_2313 + 192]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2313 + 224] + 32]
                                    c = mem[mem[(32 * y) + _2313 + 224]]
                                    continue 
            else:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getEthToTokenInputPrice(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_2294 + 32] = ext_call.return_data[0]
                require 1 < mem[_1972]
                mem[_1972 + 64] = _2294
                _2318 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2318] = 2
                if not arg2:
                    mem[_2318 + 32] = 0
                    require 2 < mem[_1972]
                    mem[_1972 + 96] = _2318
                    require 0 < mem[_1972]
                    require 0 < mem[_1972]
                    y = 1
                    z = 0
                    a = 0
                    while y < mem[_1972]:
                        require y < mem[_1972]
                        if mem[mem[(32 * y) + _1972 + 32] + 32] <= z:
                            y = y + 1
                            z = z
                            a = a
                            continue 
                        require y < mem[_1972]
                        require y < mem[_1972]
                        y = y + 1
                        z = mem[mem[(32 * y) + _1972 + 32] + 32]
                        a = mem[mem[(32 * y) + _1972 + 32]]
                        continue 
                    _2636 = mem[64]
                    _3944 = mem[64] + 128
                    mem[64] = mem[64] + 192
                    mem[_3944] = 0
                    mem[_3944 + 32] = 0
                    mem[var54001] = _3944
                    b = var54001
                    y = var54002
                    while y - 1:
                        _3944 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3944] = 0
                        mem[_3944 + 32] = 0
                        mem[b + 32] = _3944
                        b = b + 32
                        y = y - 1
                        continue 
                    _3952 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3952] = 0
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
                        mem[_3952 + 32] = 0
                        require 0 < mem[_2636]
                        mem[_2636 + 32] = _3952
                        _4034 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4034] = 1
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(stor2)
                        staticcall stor2.getExchange(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not address(ext_call.return_data[0]):
                            mem[_4034 + 32] = 0
                            require 1 < mem[_2636]
                            mem[_2636 + 64] = _4034
                            _4156 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4156] = 2
                            if not arg2:
                                mem[_4156 + 32] = 0
                                require 2 < mem[_2636]
                                mem[_2636 + 96] = _4156
                                require 0 < mem[_2636]
                                require 0 < mem[_2636]
                                y = 1
                                b = 0
                                c = 0
                                while y < mem[_2636]:
                                    require y < mem[_2636]
                                    if mem[mem[(32 * y) + _2636 + 32] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2636]
                                    require y < mem[_2636]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2636 + 32] + 32]
                                    c = mem[mem[(32 * y) + _2636 + 32]]
                                    continue 
                                if b - idx <= arg5:
                                    idx = idx - arg4
                                    s = s + 1
                                    t = t
                                    u = u
                                    v = v
                                    w = w
                                    x = x
                                    continue 
                                if b - idx <= t:
                                    idx = idx - arg4
                                    s = s + 1
                                    t = t
                                    u = u
                                    v = v
                                    w = w
                                    x = x
                                    continue 
                                idx = idx - arg4
                                s = s + 1
                                t = b - idx
                                u = b
                                v = c
                                w = z
                                x = a
                                continue 
                            _4190 = mem[64]
                            mem[mem[64]] = 5
                            mem[64] = mem[64] + 192
                            require 0 < mem[_4190]
                            mem[_4190 + 32] = arg1
                            require 1 < mem[_4190]
                            mem[_4190 + 64] = arg2
                            require ext_code.size(stor3)
                            staticcall stor3.token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 2 < mem[_4190]
                            mem[_4190 + 96] = ext_call.return_data[12 len 20]
                            require ext_code.size(stor3)
                            staticcall stor3.token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 3 < mem[_4190]
                            mem[_4190 + 128] = ext_call.return_data[12 len 20]
                            require 4 < mem[_4190]
                            mem[_4190 + 160] = stor4
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
                            mem[_4190 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                            mem[_4190 + 228] = z
                            mem[_4190 + 196] = 64
                            mem[_4190 + 260] = mem[_4190]
                            y = 0
                            while y < 32 * mem[_4190]:
                                mem[y + _4190 + 292] = mem[y + _4190 + 32]
                                y = y + 32
                                continue 
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                    gas gas_remaining wei
                                   args 64, z, mem[_4190 + 260 len (32 * mem[_4190]) + 32]
                            mem[_4190 + 192 len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            mem[_4156 + 32] = ext_call.return_data[0]
                            require 2 < mem[_2636]
                            mem[_2636 + 96] = _4156
                            require 0 < mem[_2636]
                            require 0 < mem[_2636]
                            y = 1
                            b = mem[mem[_2636 + 32] + 32]
                            c = mem[mem[_2636 + 32]]
                            while y < mem[_2636]:
                                require y < mem[_2636]
                                if mem[mem[(32 * y) + _2636 + 32] + 32] <= b:
                                    y = y + 1
                                    b = b
                                    c = c
                                    continue 
                                require y < mem[_2636]
                                require y < mem[_2636]
                                y = y + 1
                                b = mem[mem[(32 * y) + _2636 + 32] + 32]
                                c = mem[mem[(32 * y) + _2636 + 32]]
                                continue 
                            if b - y <= arg5:
                                y = y - arg4
                                c = c + 1
                                t = t
                                u = u
                                v = v
                                w = w
                                x = x
                                continue 
                            if b - y <= t:
                                y = y - arg4
                                c = c + 1
                                t = t
                                u = u
                                v = v
                                w = w
                                x = x
                                continue 
                            y = y - arg4
                            c = c + 1
                            t = b - y
                            u = b
                            v = c
                            w = z
                            x = a
                            continue 
                        mem[mem[64] + 4] = z
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                                gas gas_remaining wei
                               args z
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_4034 + 32] = ext_call.return_data[0]
                        require 1 < mem[_2636]
                        mem[_2636 + 64] = _4034
                        _4215 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4215] = 2
                        if not arg2:
                            mem[_4215 + 32] = 0
                            require 2 < mem[_2636]
                            mem[_2636 + 96] = _4215
                            require 0 < mem[_2636]
                            require 0 < mem[_2636]
                            y = 1
                            b = 0
                            c = 0
                            while y < mem[_2636]:
                                require y < mem[_2636]
                                if mem[mem[(32 * y) + _2636 + 32] + 32] <= b:
                                    y = y + 1
                                    b = b
                                    c = c
                                    continue 
                                require y < mem[_2636]
                                require y < mem[_2636]
                                y = y + 1
                                b = mem[mem[(32 * y) + _2636 + 32] + 32]
                                c = mem[mem[(32 * y) + _2636 + 32]]
                                continue 
                        else:
                            _4278 = mem[64]
                            mem[mem[64]] = 5
                            mem[64] = mem[64] + 192
                            require 0 < mem[_4278]
                            mem[_4278 + 32] = arg1
                            require 1 < mem[_4278]
                            mem[_4278 + 64] = arg2
                            require ext_code.size(stor3)
                            staticcall stor3.token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 2 < mem[_4278]
                            mem[_4278 + 96] = ext_call.return_data[12 len 20]
                            require ext_code.size(stor3)
                            staticcall stor3.token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 3 < mem[_4278]
                            mem[_4278 + 128] = ext_call.return_data[12 len 20]
                            require 4 < mem[_4278]
                            mem[_4278 + 160] = stor4
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
                            mem[_4278 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                            mem[_4278 + 228] = z
                            mem[_4278 + 196] = 64
                            mem[_4278 + 260] = mem[_4278]
                            y = 0
                            while y < 32 * mem[_4278]:
                                mem[y + _4278 + 292] = mem[y + _4278 + 32]
                                y = y + 32
                                continue 
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                    gas gas_remaining wei
                                   args 64, z, mem[_4278 + 260 len (32 * mem[_4278]) + 32]
                            mem[_4278 + 192 len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            mem[_4215 + 32] = ext_call.return_data[0]
                            require 2 < mem[_2636]
                            mem[_2636 + 96] = _4215
                            require 0 < mem[_2636]
                            require 0 < mem[_2636]
                            y = 1
                            b = mem[mem[_2636 + 32] + 32]
                            c = mem[mem[_2636 + 32]]
                            while y < mem[_2636]:
                                require y < mem[_2636]
                                if mem[mem[(32 * y) + _2636 + 32] + 32] <= b:
                                    y = y + 1
                                    b = b
                                    c = c
                                    continue 
                                require y < mem[_2636]
                                require y < mem[_2636]
                                y = y + 1
                                b = mem[mem[(32 * y) + _2636 + 32] + 32]
                                c = mem[mem[(32 * y) + _2636 + 32]]
                                continue 
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_3952 + 32] = ext_call.return_data[0] * z * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                        require 0 < mem[_2636]
                        mem[_2636 + 32] = _3952
                        _4081 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4081] = 1
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(stor2)
                        staticcall stor2.getExchange(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not address(ext_call.return_data[0]):
                            mem[_4081 + 32] = 0
                            require 1 < mem[_2636]
                            mem[_2636 + 64] = _4081
                            _4276 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4276] = 2
                            if not arg2:
                                mem[_4276 + 32] = 0
                                require 2 < mem[_2636]
                                mem[_2636 + 96] = _4276
                                require 0 < mem[_2636]
                                require 0 < mem[_2636]
                                y = 1
                                b = ext_call.return_data[0] * z * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                c = 0
                                while y < mem[_2636]:
                                    require y < mem[_2636]
                                    if mem[mem[(32 * y) + _2636 + 32] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2636]
                                    require y < mem[_2636]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2636 + 32] + 32]
                                    c = mem[mem[(32 * y) + _2636 + 32]]
                                    continue 
                            else:
                                _4355 = mem[64]
                                mem[mem[64]] = 5
                                mem[64] = mem[64] + 192
                                require 0 < mem[_4355]
                                mem[_4355 + 32] = arg1
                                require 1 < mem[_4355]
                                mem[_4355 + 64] = arg2
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 2 < mem[_4355]
                                mem[_4355 + 96] = ext_call.return_data[12 len 20]
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 3 < mem[_4355]
                                mem[_4355 + 128] = ext_call.return_data[12 len 20]
                                require 4 < mem[_4355]
                                mem[_4355 + 160] = stor4
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
                                mem[_4355 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                mem[_4355 + 228] = z
                                mem[_4355 + 196] = 64
                                mem[_4355 + 260] = mem[_4355]
                                y = 0
                                while y < 32 * mem[_4355]:
                                    mem[y + _4355 + 292] = mem[y + _4355 + 32]
                                    y = y + 32
                                    continue 
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 64, z, mem[_4355 + 260 len (32 * mem[_4355]) + 32]
                                mem[_4355 + 192 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[_4276 + 32] = ext_call.return_data[0]
                                require 2 < mem[_2636]
                                mem[_2636 + 96] = _4276
                                require 0 < mem[_2636]
                                require 0 < mem[_2636]
                                y = 1
                                b = mem[mem[_2636 + 32] + 32]
                                c = mem[mem[_2636 + 32]]
                                while y < mem[_2636]:
                                    require y < mem[_2636]
                                    if mem[mem[(32 * y) + _2636 + 32] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2636]
                                    require y < mem[_2636]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2636 + 32] + 32]
                                    c = mem[mem[(32 * y) + _2636 + 32]]
                                    continue 
                        else:
                            mem[mem[64] + 4] = z
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args z
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_4081 + 32] = ext_call.return_data[0]
                            require 1 < mem[_2636]
                            mem[_2636 + 64] = _4081
                            _4421 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4421] = 2
                            if not arg2:
                                mem[_4421 + 32] = 0
                                require 2 < mem[_2636]
                                mem[_2636 + 96] = _4421
                                require 0 < mem[_2636]
                                require 0 < mem[_2636]
                                y = 1
                                b = ext_call.return_data[0] * z * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                c = 0
                                while y < mem[_2636]:
                                    require y < mem[_2636]
                                    if mem[mem[(32 * y) + _2636 + 32] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2636]
                                    require y < mem[_2636]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2636 + 32] + 32]
                                    c = mem[mem[(32 * y) + _2636 + 32]]
                                    continue 
                            else:
                                _4530 = mem[64]
                                mem[mem[64]] = 5
                                mem[64] = mem[64] + 192
                                require 0 < mem[_4530]
                                mem[_4530 + 32] = arg1
                                require 1 < mem[_4530]
                                mem[_4530 + 64] = arg2
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 2 < mem[_4530]
                                mem[_4530 + 96] = ext_call.return_data[12 len 20]
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 3 < mem[_4530]
                                mem[_4530 + 128] = ext_call.return_data[12 len 20]
                                require 4 < mem[_4530]
                                mem[_4530 + 160] = stor4
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
                                mem[_4530 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                mem[_4530 + 228] = z
                                mem[_4530 + 196] = 64
                                mem[_4530 + 260] = mem[_4530]
                                y = 0
                                while y < 32 * mem[_4530]:
                                    mem[y + _4530 + 292] = mem[y + _4530 + 32]
                                    y = y + 32
                                    continue 
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 64, z, mem[_4530 + 260 len (32 * mem[_4530]) + 32]
                                mem[_4530 + 192 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[_4421 + 32] = ext_call.return_data[0]
                                require 2 < mem[_2636]
                                mem[_2636 + 96] = _4421
                                require 0 < mem[_2636]
                                require 0 < mem[_2636]
                                y = 1
                                b = mem[mem[_2636 + 32] + 32]
                                c = mem[mem[_2636 + 32]]
                                while y < mem[_2636]:
                                    require y < mem[_2636]
                                    if mem[mem[(32 * y) + _2636 + 32] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2636]
                                    require y < mem[_2636]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2636 + 32] + 32]
                                    c = mem[mem[(32 * y) + _2636 + 32]]
                                    continue 
                else:
                    _2325 = mem[64]
                    mem[mem[64]] = 5
                    mem[64] = mem[64] + 192
                    require mem[_2325]
                    mem[_2325 + 32] = stor4
                    require ext_code.size(stor3)
                    staticcall stor3.token() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 1 < mem[_2325]
                    mem[_2325 + 64] = ext_call.return_data[12 len 20]
                    require ext_code.size(stor3)
                    staticcall stor3.token() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < mem[_2325]
                    mem[_2325 + 96] = ext_call.return_data[12 len 20]
                    require 3 < mem[_2325]
                    mem[_2325 + 128] = arg2
                    require 4 < mem[_2325]
                    mem[_2325 + 160] = arg1
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
                    mem[_2325 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                    mem[_2325 + 228] = idx
                    mem[_2325 + 196] = 64
                    mem[_2325 + 260] = mem[_2325]
                    y = 0
                    while y < 32 * mem[_2325]:
                        mem[y + _2325 + 292] = mem[y + _2325 + 32]
                        y = y + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args 64, idx, mem[_2325 + 260 len (32 * mem[_2325]) + 32]
                    mem[_2325 + 192 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    mem[_2318 + 32] = ext_call.return_data[0]
                    require 2 < mem[_1972]
                    mem[_1972 + 96] = _2318
                    require 0 < mem[_1972]
                    require 0 < mem[_1972]
                    y = 1
                    z = mem[mem[_1972 + 32] + 32]
                    a = mem[mem[_1972 + 32]]
                    while y < mem[_1972]:
                        require y < mem[_1972]
                        if mem[mem[(32 * y) + _1972 + 32] + 32] <= z:
                            y = y + 1
                            z = z
                            a = a
                            continue 
                        require y < mem[_1972]
                        require y < mem[_1972]
                        y = y + 1
                        z = mem[mem[(32 * y) + _1972 + 32] + 32]
                        a = mem[mem[(32 * y) + _1972 + 32]]
                        continue 
                    mem[_2325 + 192] = 3
                    mem[64] = _2325 + 384
                    mem[_2325 + 320] = 0
                    mem[_2325 + 352] = 0
                    mem[var79001] = _2325 + 320
                    b = var79001
                    y = var79002
                    while y - 1:
                        mem[64] = mem[64] + 64
                        mem[_2325 + 320] = 0
                        mem[_2325 + 352] = 0
                        mem[b + 32] = _2325 + 320
                        b = b + 32
                        y = y - 1
                        continue 
                    _6372 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6372] = 0
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
                        mem[_6372 + 32] = 0
                        require 0 < mem[_2325 + 192]
                        mem[_2325 + 224] = _6372
                        _6656 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6656] = 1
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(stor2)
                        staticcall stor2.getExchange(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not address(ext_call.return_data[0]):
                            mem[_6656 + 32] = 0
                            require 1 < mem[_2325 + 192]
                            mem[_2325 + 256] = _6656
                            _6879 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6879] = 2
                            if not arg2:
                                mem[_6879 + 32] = 0
                                require 2 < mem[_2325 + 192]
                                mem[_2325 + 288] = _6879
                                require 0 < mem[_2325 + 192]
                                require 0 < mem[_2325 + 192]
                                y = 1
                                b = 0
                                c = 0
                                while y < mem[_2325 + 192]:
                                    require y < mem[_2325 + 192]
                                    if mem[mem[(32 * y) + _2325 + 224] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2325 + 192]
                                    require y < mem[_2325 + 192]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2325 + 224] + 32]
                                    c = mem[mem[(32 * y) + _2325 + 224]]
                                    continue 
                                if b - y <= arg5:
                                    y = y - arg4
                                    c = c + 1
                                    t = t
                                    u = u
                                    v = v
                                    w = w
                                    x = x
                                    continue 
                                if b - y <= t:
                                    y = y - arg4
                                    c = c + 1
                                    t = t
                                    u = u
                                    v = v
                                    w = w
                                    x = x
                                    continue 
                                y = y - arg4
                                c = c + 1
                                t = b - y
                                u = b
                                v = c
                                w = z
                                x = a
                                continue 
                            _6898 = mem[64]
                            mem[mem[64]] = 5
                            mem[64] = mem[64] + 192
                            require 0 < mem[_6898]
                            mem[_6898 + 32] = arg1
                            require 1 < mem[_6898]
                            mem[_6898 + 64] = arg2
                            require ext_code.size(stor3)
                            staticcall stor3.token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 2 < mem[_6898]
                            mem[_6898 + 96] = ext_call.return_data[12 len 20]
                            require ext_code.size(stor3)
                            staticcall stor3.token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 3 < mem[_6898]
                            mem[_6898 + 128] = ext_call.return_data[12 len 20]
                            require 4 < mem[_6898]
                            mem[_6898 + 160] = stor4
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
                            mem[_6898 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                            mem[_6898 + 228] = z
                            mem[_6898 + 196] = 64
                            mem[_6898 + 260] = mem[_6898]
                            y = 0
                            while y < 32 * mem[_6898]:
                                mem[y + _6898 + 292] = mem[y + _6898 + 32]
                                y = y + 32
                                continue 
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                    gas gas_remaining wei
                                   args 64, z, mem[_6898 + 260 len (32 * mem[_6898]) + 32]
                            mem[_6898 + 192 len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            mem[_6879 + 32] = ext_call.return_data[0]
                            require 2 < mem[_2325 + 192]
                            mem[_2325 + 288] = _6879
                            require 0 < mem[_2325 + 192]
                            require 0 < mem[_2325 + 192]
                            y = 1
                            b = mem[mem[_2325 + 224] + 32]
                            c = mem[mem[_2325 + 224]]
                            while y < mem[_2325 + 192]:
                                require y < mem[_2325 + 192]
                                if mem[mem[(32 * y) + _2325 + 224] + 32] <= b:
                                    y = y + 1
                                    b = b
                                    c = c
                                    continue 
                                require y < mem[_2325 + 192]
                                require y < mem[_2325 + 192]
                                y = y + 1
                                b = mem[mem[(32 * y) + _2325 + 224] + 32]
                                c = mem[mem[(32 * y) + _2325 + 224]]
                                continue 
                        else:
                            mem[mem[64] + 4] = z
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args z
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_6656 + 32] = ext_call.return_data[0]
                            require 1 < mem[_2325 + 192]
                            mem[_2325 + 256] = _6656
                            _6908 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6908] = 2
                            if not arg2:
                                mem[_6908 + 32] = 0
                                require 2 < mem[_2325 + 192]
                                mem[_2325 + 288] = _6908
                                require 0 < mem[_2325 + 192]
                                require 0 < mem[_2325 + 192]
                                y = 1
                                b = 0
                                c = 0
                                while y < mem[_2325 + 192]:
                                    require y < mem[_2325 + 192]
                                    if mem[mem[(32 * y) + _2325 + 224] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2325 + 192]
                                    require y < mem[_2325 + 192]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2325 + 224] + 32]
                                    c = mem[mem[(32 * y) + _2325 + 224]]
                                    continue 
                            else:
                                _6943 = mem[64]
                                mem[mem[64]] = 5
                                mem[64] = mem[64] + 192
                                require 0 < mem[_6943]
                                mem[_6943 + 32] = arg1
                                require 1 < mem[_6943]
                                mem[_6943 + 64] = arg2
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 2 < mem[_6943]
                                mem[_6943 + 96] = ext_call.return_data[12 len 20]
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 3 < mem[_6943]
                                mem[_6943 + 128] = ext_call.return_data[12 len 20]
                                require 4 < mem[_6943]
                                mem[_6943 + 160] = stor4
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
                                mem[_6943 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                mem[_6943 + 228] = z
                                mem[_6943 + 196] = 64
                                mem[_6943 + 260] = mem[_6943]
                                y = 0
                                while y < 32 * mem[_6943]:
                                    mem[y + _6943 + 292] = mem[y + _6943 + 32]
                                    y = y + 32
                                    continue 
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 64, z, mem[_6943 + 260 len (32 * mem[_6943]) + 32]
                                mem[_6943 + 192 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[_6908 + 32] = ext_call.return_data[0]
                                require 2 < mem[_2325 + 192]
                                mem[_2325 + 288] = _6908
                                require 0 < mem[_2325 + 192]
                                require 0 < mem[_2325 + 192]
                                y = 1
                                b = mem[mem[_2325 + 224] + 32]
                                c = mem[mem[_2325 + 224]]
                                while y < mem[_2325 + 192]:
                                    require y < mem[_2325 + 192]
                                    if mem[mem[(32 * y) + _2325 + 224] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2325 + 192]
                                    require y < mem[_2325 + 192]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2325 + 224] + 32]
                                    c = mem[mem[(32 * y) + _2325 + 224]]
                                    continue 
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_6372 + 32] = ext_call.return_data[0] * z * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                        require 0 < mem[_2325 + 192]
                        mem[_2325 + 224] = _6372
                        _6807 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6807] = 1
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(stor2)
                        staticcall stor2.getExchange(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not address(ext_call.return_data[0]):
                            mem[_6807 + 32] = 0
                            require 1 < mem[_2325 + 192]
                            mem[_2325 + 256] = _6807
                            _6941 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6941] = 2
                            if not arg2:
                                mem[_6941 + 32] = 0
                                require 2 < mem[_2325 + 192]
                                mem[_2325 + 288] = _6941
                                require 0 < mem[_2325 + 192]
                                require 0 < mem[_2325 + 192]
                                y = 1
                                b = ext_call.return_data[0] * z * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                c = 0
                                while y < mem[_2325 + 192]:
                                    require y < mem[_2325 + 192]
                                    if mem[mem[(32 * y) + _2325 + 224] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2325 + 192]
                                    require y < mem[_2325 + 192]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2325 + 224] + 32]
                                    c = mem[mem[(32 * y) + _2325 + 224]]
                                    continue 
                            else:
                                _6990 = mem[64]
                                mem[mem[64]] = 5
                                mem[64] = mem[64] + 192
                                require 0 < mem[_6990]
                                mem[_6990 + 32] = arg1
                                require 1 < mem[_6990]
                                mem[_6990 + 64] = arg2
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 2 < mem[_6990]
                                mem[_6990 + 96] = ext_call.return_data[12 len 20]
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 3 < mem[_6990]
                                mem[_6990 + 128] = ext_call.return_data[12 len 20]
                                require 4 < mem[_6990]
                                mem[_6990 + 160] = stor4
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
                                mem[_6990 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                mem[_6990 + 228] = z
                                mem[_6990 + 196] = 64
                                mem[_6990 + 260] = mem[_6990]
                                y = 0
                                while y < 32 * mem[_6990]:
                                    mem[y + _6990 + 292] = mem[y + _6990 + 32]
                                    y = y + 32
                                    continue 
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 64, z, mem[_6990 + 260 len (32 * mem[_6990]) + 32]
                                mem[_6990 + 192 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[_6941 + 32] = ext_call.return_data[0]
                                require 2 < mem[_2325 + 192]
                                mem[_2325 + 288] = _6941
                                require 0 < mem[_2325 + 192]
                                require 0 < mem[_2325 + 192]
                                y = 1
                                b = mem[mem[_2325 + 224] + 32]
                                c = mem[mem[_2325 + 224]]
                                while y < mem[_2325 + 192]:
                                    require y < mem[_2325 + 192]
                                    if mem[mem[(32 * y) + _2325 + 224] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2325 + 192]
                                    require y < mem[_2325 + 192]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2325 + 224] + 32]
                                    c = mem[mem[(32 * y) + _2325 + 224]]
                                    continue 
                        else:
                            mem[mem[64] + 4] = z
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args z
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_6807 + 32] = ext_call.return_data[0]
                            require 1 < mem[_2325 + 192]
                            mem[_2325 + 256] = _6807
                            _7020 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7020] = 2
                            if not arg2:
                                mem[_7020 + 32] = 0
                                require 2 < mem[_2325 + 192]
                                mem[_2325 + 288] = _7020
                                require 0 < mem[_2325 + 192]
                                require 0 < mem[_2325 + 192]
                                y = 1
                                b = ext_call.return_data[0] * z * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                c = 0
                                while y < mem[_2325 + 192]:
                                    require y < mem[_2325 + 192]
                                    if mem[mem[(32 * y) + _2325 + 224] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2325 + 192]
                                    require y < mem[_2325 + 192]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2325 + 224] + 32]
                                    c = mem[mem[(32 * y) + _2325 + 224]]
                                    continue 
                            else:
                                _7076 = mem[64]
                                mem[mem[64]] = 5
                                mem[64] = mem[64] + 192
                                require 0 < mem[_7076]
                                mem[_7076 + 32] = arg1
                                require 1 < mem[_7076]
                                mem[_7076 + 64] = arg2
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 2 < mem[_7076]
                                mem[_7076 + 96] = ext_call.return_data[12 len 20]
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 3 < mem[_7076]
                                mem[_7076 + 128] = ext_call.return_data[12 len 20]
                                require 4 < mem[_7076]
                                mem[_7076 + 160] = stor4
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
                                mem[_7076 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                mem[_7076 + 228] = z
                                mem[_7076 + 196] = 64
                                mem[_7076 + 260] = mem[_7076]
                                y = 0
                                while y < 32 * mem[_7076]:
                                    mem[y + _7076 + 292] = mem[y + _7076 + 32]
                                    y = y + 32
                                    continue 
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 64, z, mem[_7076 + 260 len (32 * mem[_7076]) + 32]
                                mem[_7076 + 192 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[_7020 + 32] = ext_call.return_data[0]
                                require 2 < mem[_2325 + 192]
                                mem[_2325 + 288] = _7020
                                require 0 < mem[_2325 + 192]
                                require 0 < mem[_2325 + 192]
                                y = 1
                                b = mem[mem[_2325 + 224] + 32]
                                c = mem[mem[_2325 + 224]]
                                while y < mem[_2325 + 192]:
                                    require y < mem[_2325 + 192]
                                    if mem[mem[(32 * y) + _2325 + 224] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2325 + 192]
                                    require y < mem[_2325 + 192]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2325 + 224] + 32]
                                    c = mem[mem[(32 * y) + _2325 + 224]]
                                    continue 
        else:
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_2283 + 32] = ext_call.return_data[0] * idx * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
            require 0 < mem[_1972]
            mem[_1972 + 32] = _2283
            _2299 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2299] = 1
            mem[mem[64] + 4] = arg1
            require ext_code.size(stor2)
            staticcall stor2.getExchange(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not address(ext_call.return_data[0]):
                mem[_2299 + 32] = 0
                require 1 < mem[_1972]
                mem[_1972 + 64] = _2299
                _2322 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2322] = 2
                if not arg2:
                    mem[_2322 + 32] = 0
                    require 2 < mem[_1972]
                    mem[_1972 + 96] = _2322
                    require 0 < mem[_1972]
                    require 0 < mem[_1972]
                    y = 1
                    z = ext_call.return_data[0] * idx * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                    a = 0
                    while y < mem[_1972]:
                        require y < mem[_1972]
                        if mem[mem[(32 * y) + _1972 + 32] + 32] <= z:
                            y = y + 1
                            z = z
                            a = a
                            continue 
                        require y < mem[_1972]
                        require y < mem[_1972]
                        y = y + 1
                        z = mem[mem[(32 * y) + _1972 + 32] + 32]
                        a = mem[mem[(32 * y) + _1972 + 32]]
                        continue 
                    _2621 = mem[64]
                    _3941 = mem[64] + 128
                    mem[64] = mem[64] + 192
                    mem[_3941] = 0
                    mem[_3941 + 32] = 0
                    mem[var56001] = _3941
                    b = var56001
                    y = var56002
                    while y - 1:
                        _3941 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3941] = 0
                        mem[_3941 + 32] = 0
                        mem[b + 32] = _3941
                        b = b + 32
                        y = y - 1
                        continue 
                    _3949 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3949] = 0
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
                        mem[_3949 + 32] = 0
                        require 0 < mem[_2621]
                        mem[_2621 + 32] = _3949
                        _4022 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4022] = 1
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(stor2)
                        staticcall stor2.getExchange(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not address(ext_call.return_data[0]):
                            mem[_4022 + 32] = 0
                            require 1 < mem[_2621]
                            mem[_2621 + 64] = _4022
                            _4138 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4138] = 2
                            if not arg2:
                                mem[_4138 + 32] = 0
                                require 2 < mem[_2621]
                                mem[_2621 + 96] = _4138
                                require 0 < mem[_2621]
                                require 0 < mem[_2621]
                                y = 1
                                b = 0
                                c = 0
                                while y < mem[_2621]:
                                    require y < mem[_2621]
                                    if mem[mem[(32 * y) + _2621 + 32] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2621]
                                    require y < mem[_2621]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2621 + 32] + 32]
                                    c = mem[mem[(32 * y) + _2621 + 32]]
                                    continue 
                            else:
                                _4175 = mem[64]
                                mem[mem[64]] = 5
                                mem[64] = mem[64] + 192
                                require 0 < mem[_4175]
                                mem[_4175 + 32] = arg1
                                require 1 < mem[_4175]
                                mem[_4175 + 64] = arg2
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 2 < mem[_4175]
                                mem[_4175 + 96] = ext_call.return_data[12 len 20]
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 3 < mem[_4175]
                                mem[_4175 + 128] = ext_call.return_data[12 len 20]
                                require 4 < mem[_4175]
                                mem[_4175 + 160] = stor4
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
                                mem[_4175 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                mem[_4175 + 228] = z
                                mem[_4175 + 196] = 64
                                mem[_4175 + 260] = mem[_4175]
                                y = 0
                                while y < 32 * mem[_4175]:
                                    mem[y + _4175 + 292] = mem[y + _4175 + 32]
                                    y = y + 32
                                    continue 
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 64, z, mem[_4175 + 260 len (32 * mem[_4175]) + 32]
                                mem[_4175 + 192 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[_4138 + 32] = ext_call.return_data[0]
                                require 2 < mem[_2621]
                                mem[_2621 + 96] = _4138
                                require 0 < mem[_2621]
                                require 0 < mem[_2621]
                                y = 1
                                b = mem[mem[_2621 + 32] + 32]
                                c = mem[mem[_2621 + 32]]
                                while y < mem[_2621]:
                                    require y < mem[_2621]
                                    if mem[mem[(32 * y) + _2621 + 32] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2621]
                                    require y < mem[_2621]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2621 + 32] + 32]
                                    c = mem[mem[(32 * y) + _2621 + 32]]
                                    continue 
                        else:
                            mem[mem[64] + 4] = z
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args z
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_4022 + 32] = ext_call.return_data[0]
                            require 1 < mem[_2621]
                            mem[_2621 + 64] = _4022
                            _4194 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4194] = 2
                            if not arg2:
                                mem[_4194 + 32] = 0
                                require 2 < mem[_2621]
                                mem[_2621 + 96] = _4194
                                require 0 < mem[_2621]
                                require 0 < mem[_2621]
                                y = 1
                                b = 0
                                c = 0
                                while y < mem[_2621]:
                                    require y < mem[_2621]
                                    if mem[mem[(32 * y) + _2621 + 32] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2621]
                                    require y < mem[_2621]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2621 + 32] + 32]
                                    c = mem[mem[(32 * y) + _2621 + 32]]
                                    continue 
                            else:
                                _4251 = mem[64]
                                mem[mem[64]] = 5
                                mem[64] = mem[64] + 192
                                require 0 < mem[_4251]
                                mem[_4251 + 32] = arg1
                                require 1 < mem[_4251]
                                mem[_4251 + 64] = arg2
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 2 < mem[_4251]
                                mem[_4251 + 96] = ext_call.return_data[12 len 20]
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 3 < mem[_4251]
                                mem[_4251 + 128] = ext_call.return_data[12 len 20]
                                require 4 < mem[_4251]
                                mem[_4251 + 160] = stor4
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
                                mem[_4251 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                mem[_4251 + 228] = z
                                mem[_4251 + 196] = 64
                                mem[_4251 + 260] = mem[_4251]
                                y = 0
                                while y < 32 * mem[_4251]:
                                    mem[y + _4251 + 292] = mem[y + _4251 + 32]
                                    y = y + 32
                                    continue 
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 64, z, mem[_4251 + 260 len (32 * mem[_4251]) + 32]
                                mem[_4251 + 192 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[_4194 + 32] = ext_call.return_data[0]
                                require 2 < mem[_2621]
                                mem[_2621 + 96] = _4194
                                require 0 < mem[_2621]
                                require 0 < mem[_2621]
                                y = 1
                                b = mem[mem[_2621 + 32] + 32]
                                c = mem[mem[_2621 + 32]]
                                while y < mem[_2621]:
                                    require y < mem[_2621]
                                    if mem[mem[(32 * y) + _2621 + 32] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2621]
                                    require y < mem[_2621]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2621 + 32] + 32]
                                    c = mem[mem[(32 * y) + _2621 + 32]]
                                    continue 
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_3949 + 32] = ext_call.return_data[0] * z * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                        require 0 < mem[_2621]
                        mem[_2621 + 32] = _3949
                        _4069 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4069] = 1
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(stor2)
                        staticcall stor2.getExchange(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not address(ext_call.return_data[0]):
                            mem[_4069 + 32] = 0
                            require 1 < mem[_2621]
                            mem[_2621 + 64] = _4069
                            _4249 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4249] = 2
                            if not arg2:
                                mem[_4249 + 32] = 0
                                require 2 < mem[_2621]
                                mem[_2621 + 96] = _4249
                                require 0 < mem[_2621]
                                require 0 < mem[_2621]
                                y = 1
                                b = ext_call.return_data[0] * z * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                c = 0
                                while y < mem[_2621]:
                                    require y < mem[_2621]
                                    if mem[mem[(32 * y) + _2621 + 32] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2621]
                                    require y < mem[_2621]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2621 + 32] + 32]
                                    c = mem[mem[(32 * y) + _2621 + 32]]
                                    continue 
                            else:
                                _4313 = mem[64]
                                mem[mem[64]] = 5
                                mem[64] = mem[64] + 192
                                require 0 < mem[_4313]
                                mem[_4313 + 32] = arg1
                                require 1 < mem[_4313]
                                mem[_4313 + 64] = arg2
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 2 < mem[_4313]
                                mem[_4313 + 96] = ext_call.return_data[12 len 20]
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 3 < mem[_4313]
                                mem[_4313 + 128] = ext_call.return_data[12 len 20]
                                require 4 < mem[_4313]
                                mem[_4313 + 160] = stor4
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
                                mem[_4313 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                mem[_4313 + 228] = z
                                mem[_4313 + 196] = 64
                                mem[_4313 + 260] = mem[_4313]
                                y = 0
                                while y < 32 * mem[_4313]:
                                    mem[y + _4313 + 292] = mem[y + _4313 + 32]
                                    y = y + 32
                                    continue 
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 64, z, mem[_4313 + 260 len (32 * mem[_4313]) + 32]
                                mem[_4313 + 192 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[_4249 + 32] = ext_call.return_data[0]
                                require 2 < mem[_2621]
                                mem[_2621 + 96] = _4249
                                require 0 < mem[_2621]
                                require 0 < mem[_2621]
                                y = 1
                                b = mem[mem[_2621 + 32] + 32]
                                c = mem[mem[_2621 + 32]]
                                while y < mem[_2621]:
                                    require y < mem[_2621]
                                    if mem[mem[(32 * y) + _2621 + 32] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2621]
                                    require y < mem[_2621]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2621 + 32] + 32]
                                    c = mem[mem[(32 * y) + _2621 + 32]]
                                    continue 
                        else:
                            mem[mem[64] + 4] = z
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args z
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_4069 + 32] = ext_call.return_data[0]
                            require 1 < mem[_2621]
                            mem[_2621 + 64] = _4069
                            _4370 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4370] = 2
                            if not arg2:
                                mem[_4370 + 32] = 0
                                require 2 < mem[_2621]
                                mem[_2621 + 96] = _4370
                                require 0 < mem[_2621]
                                require 0 < mem[_2621]
                                y = 1
                                b = ext_call.return_data[0] * z * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                c = 0
                                while y < mem[_2621]:
                                    require y < mem[_2621]
                                    if mem[mem[(32 * y) + _2621 + 32] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2621]
                                    require y < mem[_2621]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2621 + 32] + 32]
                                    c = mem[mem[(32 * y) + _2621 + 32]]
                                    continue 
                            else:
                                _4485 = mem[64]
                                mem[mem[64]] = 5
                                mem[64] = mem[64] + 192
                                require 0 < mem[_4485]
                                mem[_4485 + 32] = arg1
                                require 1 < mem[_4485]
                                mem[_4485 + 64] = arg2
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 2 < mem[_4485]
                                mem[_4485 + 96] = ext_call.return_data[12 len 20]
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 3 < mem[_4485]
                                mem[_4485 + 128] = ext_call.return_data[12 len 20]
                                require 4 < mem[_4485]
                                mem[_4485 + 160] = stor4
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
                                mem[_4485 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                mem[_4485 + 228] = z
                                mem[_4485 + 196] = 64
                                mem[_4485 + 260] = mem[_4485]
                                y = 0
                                while y < 32 * mem[_4485]:
                                    mem[y + _4485 + 292] = mem[y + _4485 + 32]
                                    y = y + 32
                                    continue 
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 64, z, mem[_4485 + 260 len (32 * mem[_4485]) + 32]
                                mem[_4485 + 192 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[_4370 + 32] = ext_call.return_data[0]
                                require 2 < mem[_2621]
                                mem[_2621 + 96] = _4370
                                require 0 < mem[_2621]
                                require 0 < mem[_2621]
                                y = 1
                                b = mem[mem[_2621 + 32] + 32]
                                c = mem[mem[_2621 + 32]]
                                while y < mem[_2621]:
                                    require y < mem[_2621]
                                    if mem[mem[(32 * y) + _2621 + 32] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2621]
                                    require y < mem[_2621]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2621 + 32] + 32]
                                    c = mem[mem[(32 * y) + _2621 + 32]]
                                    continue 
                else:
                    _2332 = mem[64]
                    mem[mem[64]] = 5
                    mem[64] = mem[64] + 192
                    require mem[_2332]
                    mem[_2332 + 32] = stor4
                    require ext_code.size(stor3)
                    staticcall stor3.token() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 1 < mem[_2332]
                    mem[_2332 + 64] = ext_call.return_data[12 len 20]
                    require ext_code.size(stor3)
                    staticcall stor3.token() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < mem[_2332]
                    mem[_2332 + 96] = ext_call.return_data[12 len 20]
                    require 3 < mem[_2332]
                    mem[_2332 + 128] = arg2
                    require 4 < mem[_2332]
                    mem[_2332 + 160] = arg1
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
                    mem[_2332 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                    mem[_2332 + 228] = idx
                    mem[_2332 + 196] = 64
                    mem[_2332 + 260] = mem[_2332]
                    y = 0
                    while y < 32 * mem[_2332]:
                        mem[y + _2332 + 292] = mem[y + _2332 + 32]
                        y = y + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args 64, idx, mem[_2332 + 260 len (32 * mem[_2332]) + 32]
                    mem[_2332 + 192 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    mem[_2322 + 32] = ext_call.return_data[0]
                    require 2 < mem[_1972]
                    mem[_1972 + 96] = _2322
                    require 0 < mem[_1972]
                    require 0 < mem[_1972]
                    y = 1
                    z = mem[mem[_1972 + 32] + 32]
                    a = mem[mem[_1972 + 32]]
                    while y < mem[_1972]:
                        require y < mem[_1972]
                        if mem[mem[(32 * y) + _1972 + 32] + 32] <= z:
                            y = y + 1
                            z = z
                            a = a
                            continue 
                        require y < mem[_1972]
                        require y < mem[_1972]
                        y = y + 1
                        z = mem[mem[(32 * y) + _1972 + 32] + 32]
                        a = mem[mem[(32 * y) + _1972 + 32]]
                        continue 
                    mem[_2332 + 192] = 3
                    mem[64] = _2332 + 384
                    mem[_2332 + 320] = 0
                    mem[_2332 + 352] = 0
                    mem[var81001] = _2332 + 320
                    b = var81001
                    y = var81002
                    while y - 1:
                        mem[64] = mem[64] + 64
                        mem[_2332 + 320] = 0
                        mem[_2332 + 352] = 0
                        mem[b + 32] = _2332 + 320
                        b = b + 32
                        y = y - 1
                        continue 
                    _6345 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6345] = 0
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
                        mem[_6345 + 32] = 0
                        require 0 < mem[_2332 + 192]
                        mem[_2332 + 224] = _6345
                        _6626 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6626] = 1
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(stor2)
                        staticcall stor2.getExchange(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not address(ext_call.return_data[0]):
                            mem[_6626 + 32] = 0
                            require 1 < mem[_2332 + 192]
                            mem[_2332 + 256] = _6626
                            _6870 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6870] = 2
                            if not arg2:
                                mem[_6870 + 32] = 0
                                require 2 < mem[_2332 + 192]
                                mem[_2332 + 288] = _6870
                                require 0 < mem[_2332 + 192]
                                require 0 < mem[_2332 + 192]
                                y = 1
                                b = 0
                                c = 0
                                while y < mem[_2332 + 192]:
                                    require y < mem[_2332 + 192]
                                    if mem[mem[(32 * y) + _2332 + 224] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2332 + 192]
                                    require y < mem[_2332 + 192]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2332 + 224] + 32]
                                    c = mem[mem[(32 * y) + _2332 + 224]]
                                    continue 
                            else:
                                _6883 = mem[64]
                                mem[mem[64]] = 5
                                mem[64] = mem[64] + 192
                                require 0 < mem[_6883]
                                mem[_6883 + 32] = arg1
                                require 1 < mem[_6883]
                                mem[_6883 + 64] = arg2
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 2 < mem[_6883]
                                mem[_6883 + 96] = ext_call.return_data[12 len 20]
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 3 < mem[_6883]
                                mem[_6883 + 128] = ext_call.return_data[12 len 20]
                                require 4 < mem[_6883]
                                mem[_6883 + 160] = stor4
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
                                mem[_6883 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                mem[_6883 + 228] = z
                                mem[_6883 + 196] = 64
                                mem[_6883 + 260] = mem[_6883]
                                y = 0
                                while y < 32 * mem[_6883]:
                                    mem[y + _6883 + 292] = mem[y + _6883 + 32]
                                    y = y + 32
                                    continue 
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 64, z, mem[_6883 + 260 len (32 * mem[_6883]) + 32]
                                mem[_6883 + 192 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[_6870 + 32] = ext_call.return_data[0]
                                require 2 < mem[_2332 + 192]
                                mem[_2332 + 288] = _6870
                                require 0 < mem[_2332 + 192]
                                require 0 < mem[_2332 + 192]
                                y = 1
                                b = mem[mem[_2332 + 224] + 32]
                                c = mem[mem[_2332 + 224]]
                                while y < mem[_2332 + 192]:
                                    require y < mem[_2332 + 192]
                                    if mem[mem[(32 * y) + _2332 + 224] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2332 + 192]
                                    require y < mem[_2332 + 192]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2332 + 224] + 32]
                                    c = mem[mem[(32 * y) + _2332 + 224]]
                                    continue 
                        else:
                            mem[mem[64] + 4] = z
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args z
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_6626 + 32] = ext_call.return_data[0]
                            require 1 < mem[_2332 + 192]
                            mem[_2332 + 256] = _6626
                            _6902 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6902] = 2
                            if not arg2:
                                mem[_6902 + 32] = 0
                                require 2 < mem[_2332 + 192]
                                mem[_2332 + 288] = _6902
                                require 0 < mem[_2332 + 192]
                                require 0 < mem[_2332 + 192]
                                y = 1
                                b = 0
                                c = 0
                                while y < mem[_2332 + 192]:
                                    require y < mem[_2332 + 192]
                                    if mem[mem[(32 * y) + _2332 + 224] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2332 + 192]
                                    require y < mem[_2332 + 192]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2332 + 224] + 32]
                                    c = mem[mem[(32 * y) + _2332 + 224]]
                                    continue 
                            else:
                                _6931 = mem[64]
                                mem[mem[64]] = 5
                                mem[64] = mem[64] + 192
                                require 0 < mem[_6931]
                                mem[_6931 + 32] = arg1
                                require 1 < mem[_6931]
                                mem[_6931 + 64] = arg2
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 2 < mem[_6931]
                                mem[_6931 + 96] = ext_call.return_data[12 len 20]
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 3 < mem[_6931]
                                mem[_6931 + 128] = ext_call.return_data[12 len 20]
                                require 4 < mem[_6931]
                                mem[_6931 + 160] = stor4
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
                                mem[_6931 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                mem[_6931 + 228] = z
                                mem[_6931 + 196] = 64
                                mem[_6931 + 260] = mem[_6931]
                                y = 0
                                while y < 32 * mem[_6931]:
                                    mem[y + _6931 + 292] = mem[y + _6931 + 32]
                                    y = y + 32
                                    continue 
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 64, z, mem[_6931 + 260 len (32 * mem[_6931]) + 32]
                                mem[_6931 + 192 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[_6902 + 32] = ext_call.return_data[0]
                                require 2 < mem[_2332 + 192]
                                mem[_2332 + 288] = _6902
                                require 0 < mem[_2332 + 192]
                                require 0 < mem[_2332 + 192]
                                y = 1
                                b = mem[mem[_2332 + 224] + 32]
                                c = mem[mem[_2332 + 224]]
                                while y < mem[_2332 + 192]:
                                    require y < mem[_2332 + 192]
                                    if mem[mem[(32 * y) + _2332 + 224] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2332 + 192]
                                    require y < mem[_2332 + 192]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2332 + 224] + 32]
                                    c = mem[mem[(32 * y) + _2332 + 224]]
                                    continue 
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_6345 + 32] = ext_call.return_data[0] * z * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                        require 0 < mem[_2332 + 192]
                        mem[_2332 + 224] = _6345
                        _6765 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6765] = 1
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(stor2)
                        staticcall stor2.getExchange(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not address(ext_call.return_data[0]):
                            mem[_6765 + 32] = 0
                            require 1 < mem[_2332 + 192]
                            mem[_2332 + 256] = _6765
                            _6929 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6929] = 2
                            if not arg2:
                                mem[_6929 + 32] = 0
                                require 2 < mem[_2332 + 192]
                                mem[_2332 + 288] = _6929
                                require 0 < mem[_2332 + 192]
                                require 0 < mem[_2332 + 192]
                                y = 1
                                b = ext_call.return_data[0] * z * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                c = 0
                                while y < mem[_2332 + 192]:
                                    require y < mem[_2332 + 192]
                                    if mem[mem[(32 * y) + _2332 + 224] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2332 + 192]
                                    require y < mem[_2332 + 192]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2332 + 224] + 32]
                                    c = mem[mem[(32 * y) + _2332 + 224]]
                                    continue 
                            else:
                                _6957 = mem[64]
                                mem[mem[64]] = 5
                                mem[64] = mem[64] + 192
                                require 0 < mem[_6957]
                                mem[_6957 + 32] = arg1
                                require 1 < mem[_6957]
                                mem[_6957 + 64] = arg2
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 2 < mem[_6957]
                                mem[_6957 + 96] = ext_call.return_data[12 len 20]
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 3 < mem[_6957]
                                mem[_6957 + 128] = ext_call.return_data[12 len 20]
                                require 4 < mem[_6957]
                                mem[_6957 + 160] = stor4
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
                                mem[_6957 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                mem[_6957 + 228] = z
                                mem[_6957 + 196] = 64
                                mem[_6957 + 260] = mem[_6957]
                                y = 0
                                while y < 32 * mem[_6957]:
                                    mem[y + _6957 + 292] = mem[y + _6957 + 32]
                                    y = y + 32
                                    continue 
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 64, z, mem[_6957 + 260 len (32 * mem[_6957]) + 32]
                                mem[_6957 + 192 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[_6929 + 32] = ext_call.return_data[0]
                                require 2 < mem[_2332 + 192]
                                mem[_2332 + 288] = _6929
                                require 0 < mem[_2332 + 192]
                                require 0 < mem[_2332 + 192]
                                y = 1
                                b = mem[mem[_2332 + 224] + 32]
                                c = mem[mem[_2332 + 224]]
                                while y < mem[_2332 + 192]:
                                    require y < mem[_2332 + 192]
                                    if mem[mem[(32 * y) + _2332 + 224] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2332 + 192]
                                    require y < mem[_2332 + 192]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2332 + 224] + 32]
                                    c = mem[mem[(32 * y) + _2332 + 224]]
                                    continue 
                        else:
                            mem[mem[64] + 4] = z
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args z
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_6765 + 32] = ext_call.return_data[0]
                            require 1 < mem[_2332 + 192]
                            mem[_2332 + 256] = _6765
                            _7002 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7002] = 2
                            if not arg2:
                                mem[_7002 + 32] = 0
                                require 2 < mem[_2332 + 192]
                                mem[_2332 + 288] = _7002
                                require 0 < mem[_2332 + 192]
                                require 0 < mem[_2332 + 192]
                                y = 1
                                b = ext_call.return_data[0] * z * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                c = 0
                                while y < mem[_2332 + 192]:
                                    require y < mem[_2332 + 192]
                                    if mem[mem[(32 * y) + _2332 + 224] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2332 + 192]
                                    require y < mem[_2332 + 192]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2332 + 224] + 32]
                                    c = mem[mem[(32 * y) + _2332 + 224]]
                                    continue 
                            else:
                                _7049 = mem[64]
                                mem[mem[64]] = 5
                                mem[64] = mem[64] + 192
                                require 0 < mem[_7049]
                                mem[_7049 + 32] = arg1
                                require 1 < mem[_7049]
                                mem[_7049 + 64] = arg2
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 2 < mem[_7049]
                                mem[_7049 + 96] = ext_call.return_data[12 len 20]
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 3 < mem[_7049]
                                mem[_7049 + 128] = ext_call.return_data[12 len 20]
                                require 4 < mem[_7049]
                                mem[_7049 + 160] = stor4
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
                                mem[_7049 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                mem[_7049 + 228] = z
                                mem[_7049 + 196] = 64
                                mem[_7049 + 260] = mem[_7049]
                                y = 0
                                while y < 32 * mem[_7049]:
                                    mem[y + _7049 + 292] = mem[y + _7049 + 32]
                                    y = y + 32
                                    continue 
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 64, z, mem[_7049 + 260 len (32 * mem[_7049]) + 32]
                                mem[_7049 + 192 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[_7002 + 32] = ext_call.return_data[0]
                                require 2 < mem[_2332 + 192]
                                mem[_2332 + 288] = _7002
                                require 0 < mem[_2332 + 192]
                                require 0 < mem[_2332 + 192]
                                y = 1
                                b = mem[mem[_2332 + 224] + 32]
                                c = mem[mem[_2332 + 224]]
                                while y < mem[_2332 + 192]:
                                    require y < mem[_2332 + 192]
                                    if mem[mem[(32 * y) + _2332 + 224] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2332 + 192]
                                    require y < mem[_2332 + 192]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2332 + 224] + 32]
                                    c = mem[mem[(32 * y) + _2332 + 224]]
                                    continue 
            else:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getEthToTokenInputPrice(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_2299 + 32] = ext_call.return_data[0]
                require 1 < mem[_1972]
                mem[_1972 + 64] = _2299
                _2343 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2343] = 2
                if not arg2:
                    mem[_2343 + 32] = 0
                    require 2 < mem[_1972]
                    mem[_1972 + 96] = _2343
                    require 0 < mem[_1972]
                    require 0 < mem[_1972]
                    y = 1
                    z = ext_call.return_data[0] * idx * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                    a = 0
                    while y < mem[_1972]:
                        require y < mem[_1972]
                        if mem[mem[(32 * y) + _1972 + 32] + 32] <= z:
                            y = y + 1
                            z = z
                            a = a
                            continue 
                        require y < mem[_1972]
                        require y < mem[_1972]
                        y = y + 1
                        z = mem[mem[(32 * y) + _1972 + 32] + 32]
                        a = mem[mem[(32 * y) + _1972 + 32]]
                        continue 
                    _2626 = mem[64]
                    _3942 = mem[64] + 128
                    mem[64] = mem[64] + 192
                    mem[_3942] = 0
                    mem[_3942 + 32] = 0
                    mem[var59001] = _3942
                    b = var59001
                    y = var59002
                    while y - 1:
                        _3942 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3942] = 0
                        mem[_3942 + 32] = 0
                        mem[b + 32] = _3942
                        b = b + 32
                        y = y - 1
                        continue 
                    _3950 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3950] = 0
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
                        mem[_3950 + 32] = 0
                        require 0 < mem[_2626]
                        mem[_2626 + 32] = _3950
                        _4026 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4026] = 1
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(stor2)
                        staticcall stor2.getExchange(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not address(ext_call.return_data[0]):
                            mem[_4026 + 32] = 0
                            require 1 < mem[_2626]
                            mem[_2626 + 64] = _4026
                            _4144 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4144] = 2
                            if not arg2:
                                mem[_4144 + 32] = 0
                                require 2 < mem[_2626]
                                mem[_2626 + 96] = _4144
                                require 0 < mem[_2626]
                                require 0 < mem[_2626]
                                y = 1
                                b = 0
                                c = 0
                                while y < mem[_2626]:
                                    require y < mem[_2626]
                                    if mem[mem[(32 * y) + _2626 + 32] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2626]
                                    require y < mem[_2626]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2626 + 32] + 32]
                                    c = mem[mem[(32 * y) + _2626 + 32]]
                                    continue 
                            else:
                                _4180 = mem[64]
                                mem[mem[64]] = 5
                                mem[64] = mem[64] + 192
                                require 0 < mem[_4180]
                                mem[_4180 + 32] = arg1
                                require 1 < mem[_4180]
                                mem[_4180 + 64] = arg2
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 2 < mem[_4180]
                                mem[_4180 + 96] = ext_call.return_data[12 len 20]
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 3 < mem[_4180]
                                mem[_4180 + 128] = ext_call.return_data[12 len 20]
                                require 4 < mem[_4180]
                                mem[_4180 + 160] = stor4
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
                                mem[_4180 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                mem[_4180 + 228] = z
                                mem[_4180 + 196] = 64
                                mem[_4180 + 260] = mem[_4180]
                                y = 0
                                while y < 32 * mem[_4180]:
                                    mem[y + _4180 + 292] = mem[y + _4180 + 32]
                                    y = y + 32
                                    continue 
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 64, z, mem[_4180 + 260 len (32 * mem[_4180]) + 32]
                                mem[_4180 + 192 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[_4144 + 32] = ext_call.return_data[0]
                                require 2 < mem[_2626]
                                mem[_2626 + 96] = _4144
                                require 0 < mem[_2626]
                                require 0 < mem[_2626]
                                y = 1
                                b = mem[mem[_2626 + 32] + 32]
                                c = mem[mem[_2626 + 32]]
                                while y < mem[_2626]:
                                    require y < mem[_2626]
                                    if mem[mem[(32 * y) + _2626 + 32] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2626]
                                    require y < mem[_2626]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2626 + 32] + 32]
                                    c = mem[mem[(32 * y) + _2626 + 32]]
                                    continue 
                        else:
                            mem[mem[64] + 4] = z
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args z
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_4026 + 32] = ext_call.return_data[0]
                            require 1 < mem[_2626]
                            mem[_2626 + 64] = _4026
                            _4201 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4201] = 2
                            if not arg2:
                                mem[_4201 + 32] = 0
                                require 2 < mem[_2626]
                                mem[_2626 + 96] = _4201
                                require 0 < mem[_2626]
                                require 0 < mem[_2626]
                                y = 1
                                b = 0
                                c = 0
                                while y < mem[_2626]:
                                    require y < mem[_2626]
                                    if mem[mem[(32 * y) + _2626 + 32] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2626]
                                    require y < mem[_2626]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2626 + 32] + 32]
                                    c = mem[mem[(32 * y) + _2626 + 32]]
                                    continue 
                            else:
                                _4260 = mem[64]
                                mem[mem[64]] = 5
                                mem[64] = mem[64] + 192
                                require 0 < mem[_4260]
                                mem[_4260 + 32] = arg1
                                require 1 < mem[_4260]
                                mem[_4260 + 64] = arg2
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 2 < mem[_4260]
                                mem[_4260 + 96] = ext_call.return_data[12 len 20]
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 3 < mem[_4260]
                                mem[_4260 + 128] = ext_call.return_data[12 len 20]
                                require 4 < mem[_4260]
                                mem[_4260 + 160] = stor4
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
                                mem[_4260 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                mem[_4260 + 228] = z
                                mem[_4260 + 196] = 64
                                mem[_4260 + 260] = mem[_4260]
                                y = 0
                                while y < 32 * mem[_4260]:
                                    mem[y + _4260 + 292] = mem[y + _4260 + 32]
                                    y = y + 32
                                    continue 
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 64, z, mem[_4260 + 260 len (32 * mem[_4260]) + 32]
                                mem[_4260 + 192 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[_4201 + 32] = ext_call.return_data[0]
                                require 2 < mem[_2626]
                                mem[_2626 + 96] = _4201
                                require 0 < mem[_2626]
                                require 0 < mem[_2626]
                                y = 1
                                b = mem[mem[_2626 + 32] + 32]
                                c = mem[mem[_2626 + 32]]
                                while y < mem[_2626]:
                                    require y < mem[_2626]
                                    if mem[mem[(32 * y) + _2626 + 32] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2626]
                                    require y < mem[_2626]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2626 + 32] + 32]
                                    c = mem[mem[(32 * y) + _2626 + 32]]
                                    continue 
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_3950 + 32] = ext_call.return_data[0] * z * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                        require 0 < mem[_2626]
                        mem[_2626 + 32] = _3950
                        _4073 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4073] = 1
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(stor2)
                        staticcall stor2.getExchange(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not address(ext_call.return_data[0]):
                            mem[_4073 + 32] = 0
                            require 1 < mem[_2626]
                            mem[_2626 + 64] = _4073
                            _4258 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4258] = 2
                            if not arg2:
                                mem[_4258 + 32] = 0
                                require 2 < mem[_2626]
                                mem[_2626 + 96] = _4258
                                require 0 < mem[_2626]
                                require 0 < mem[_2626]
                                y = 1
                                b = ext_call.return_data[0] * z * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                c = 0
                                while y < mem[_2626]:
                                    require y < mem[_2626]
                                    if mem[mem[(32 * y) + _2626 + 32] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2626]
                                    require y < mem[_2626]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2626 + 32] + 32]
                                    c = mem[mem[(32 * y) + _2626 + 32]]
                                    continue 
                            else:
                                _4327 = mem[64]
                                mem[mem[64]] = 5
                                mem[64] = mem[64] + 192
                                require 0 < mem[_4327]
                                mem[_4327 + 32] = arg1
                                require 1 < mem[_4327]
                                mem[_4327 + 64] = arg2
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 2 < mem[_4327]
                                mem[_4327 + 96] = ext_call.return_data[12 len 20]
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 3 < mem[_4327]
                                mem[_4327 + 128] = ext_call.return_data[12 len 20]
                                require 4 < mem[_4327]
                                mem[_4327 + 160] = stor4
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
                                mem[_4327 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                mem[_4327 + 228] = z
                                mem[_4327 + 196] = 64
                                mem[_4327 + 260] = mem[_4327]
                                y = 0
                                while y < 32 * mem[_4327]:
                                    mem[y + _4327 + 292] = mem[y + _4327 + 32]
                                    y = y + 32
                                    continue 
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 64, z, mem[_4327 + 260 len (32 * mem[_4327]) + 32]
                                mem[_4327 + 192 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[_4258 + 32] = ext_call.return_data[0]
                                require 2 < mem[_2626]
                                mem[_2626 + 96] = _4258
                                require 0 < mem[_2626]
                                require 0 < mem[_2626]
                                y = 1
                                b = mem[mem[_2626 + 32] + 32]
                                c = mem[mem[_2626 + 32]]
                                while y < mem[_2626]:
                                    require y < mem[_2626]
                                    if mem[mem[(32 * y) + _2626 + 32] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2626]
                                    require y < mem[_2626]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2626 + 32] + 32]
                                    c = mem[mem[(32 * y) + _2626 + 32]]
                                    continue 
                        else:
                            mem[mem[64] + 4] = z
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args z
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_4073 + 32] = ext_call.return_data[0]
                            require 1 < mem[_2626]
                            mem[_2626 + 64] = _4073
                            _4387 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4387] = 2
                            if not arg2:
                                mem[_4387 + 32] = 0
                                require 2 < mem[_2626]
                                mem[_2626 + 96] = _4387
                                require 0 < mem[_2626]
                                require 0 < mem[_2626]
                                y = 1
                                b = ext_call.return_data[0] * z * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                c = 0
                                while y < mem[_2626]:
                                    require y < mem[_2626]
                                    if mem[mem[(32 * y) + _2626 + 32] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2626]
                                    require y < mem[_2626]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2626 + 32] + 32]
                                    c = mem[mem[(32 * y) + _2626 + 32]]
                                    continue 
                            else:
                                _4500 = mem[64]
                                mem[mem[64]] = 5
                                mem[64] = mem[64] + 192
                                require 0 < mem[_4500]
                                mem[_4500 + 32] = arg1
                                require 1 < mem[_4500]
                                mem[_4500 + 64] = arg2
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 2 < mem[_4500]
                                mem[_4500 + 96] = ext_call.return_data[12 len 20]
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 3 < mem[_4500]
                                mem[_4500 + 128] = ext_call.return_data[12 len 20]
                                require 4 < mem[_4500]
                                mem[_4500 + 160] = stor4
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
                                mem[_4500 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                mem[_4500 + 228] = z
                                mem[_4500 + 196] = 64
                                mem[_4500 + 260] = mem[_4500]
                                y = 0
                                while y < 32 * mem[_4500]:
                                    mem[y + _4500 + 292] = mem[y + _4500 + 32]
                                    y = y + 32
                                    continue 
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 64, z, mem[_4500 + 260 len (32 * mem[_4500]) + 32]
                                mem[_4500 + 192 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[_4387 + 32] = ext_call.return_data[0]
                                require 2 < mem[_2626]
                                mem[_2626 + 96] = _4387
                                require 0 < mem[_2626]
                                require 0 < mem[_2626]
                                y = 1
                                b = mem[mem[_2626 + 32] + 32]
                                c = mem[mem[_2626 + 32]]
                                while y < mem[_2626]:
                                    require y < mem[_2626]
                                    if mem[mem[(32 * y) + _2626 + 32] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2626]
                                    require y < mem[_2626]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2626 + 32] + 32]
                                    c = mem[mem[(32 * y) + _2626 + 32]]
                                    continue 
                else:
                    _2354 = mem[64]
                    mem[mem[64]] = 5
                    mem[64] = mem[64] + 192
                    require mem[_2354]
                    mem[_2354 + 32] = stor4
                    require ext_code.size(stor3)
                    staticcall stor3.token() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 1 < mem[_2354]
                    mem[_2354 + 64] = ext_call.return_data[12 len 20]
                    require ext_code.size(stor3)
                    staticcall stor3.token() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < mem[_2354]
                    mem[_2354 + 96] = ext_call.return_data[12 len 20]
                    require 3 < mem[_2354]
                    mem[_2354 + 128] = arg2
                    require 4 < mem[_2354]
                    mem[_2354 + 160] = arg1
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
                    mem[_2354 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                    mem[_2354 + 228] = idx
                    mem[_2354 + 196] = 64
                    mem[_2354 + 260] = mem[_2354]
                    y = 0
                    while y < 32 * mem[_2354]:
                        mem[y + _2354 + 292] = mem[y + _2354 + 32]
                        y = y + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args 64, idx, mem[_2354 + 260 len (32 * mem[_2354]) + 32]
                    mem[_2354 + 192 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    mem[_2343 + 32] = ext_call.return_data[0]
                    require 2 < mem[_1972]
                    mem[_1972 + 96] = _2343
                    require 0 < mem[_1972]
                    require 0 < mem[_1972]
                    y = 1
                    z = mem[mem[_1972 + 32] + 32]
                    a = mem[mem[_1972 + 32]]
                    while y < mem[_1972]:
                        require y < mem[_1972]
                        if mem[mem[(32 * y) + _1972 + 32] + 32] <= z:
                            y = y + 1
                            z = z
                            a = a
                            continue 
                        require y < mem[_1972]
                        require y < mem[_1972]
                        y = y + 1
                        z = mem[mem[(32 * y) + _1972 + 32] + 32]
                        a = mem[mem[(32 * y) + _1972 + 32]]
                        continue 
                    mem[_2354 + 192] = 3
                    mem[64] = _2354 + 384
                    mem[_2354 + 320] = 0
                    mem[_2354 + 352] = 0
                    mem[var84001] = _2354 + 320
                    b = var84001
                    y = var84002
                    while y - 1:
                        mem[64] = mem[64] + 64
                        mem[_2354 + 320] = 0
                        mem[_2354 + 352] = 0
                        mem[b + 32] = _2354 + 320
                        b = b + 32
                        y = y - 1
                        continue 
                    _6354 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6354] = 0
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
                        mem[_6354 + 32] = 0
                        require 0 < mem[_2354 + 192]
                        mem[_2354 + 224] = _6354
                        _6636 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6636] = 1
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(stor2)
                        staticcall stor2.getExchange(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not address(ext_call.return_data[0]):
                            mem[_6636 + 32] = 0
                            require 1 < mem[_2354 + 192]
                            mem[_2354 + 256] = _6636
                            _6873 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6873] = 2
                            if not arg2:
                                mem[_6873 + 32] = 0
                                require 2 < mem[_2354 + 192]
                                mem[_2354 + 288] = _6873
                                require 0 < mem[_2354 + 192]
                                require 0 < mem[_2354 + 192]
                                y = 1
                                b = 0
                                c = 0
                                while y < mem[_2354 + 192]:
                                    require y < mem[_2354 + 192]
                                    if mem[mem[(32 * y) + _2354 + 224] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2354 + 192]
                                    require y < mem[_2354 + 192]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2354 + 224] + 32]
                                    c = mem[mem[(32 * y) + _2354 + 224]]
                                    continue 
                            else:
                                _6888 = mem[64]
                                mem[mem[64]] = 5
                                mem[64] = mem[64] + 192
                                require 0 < mem[_6888]
                                mem[_6888 + 32] = arg1
                                require 1 < mem[_6888]
                                mem[_6888 + 64] = arg2
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 2 < mem[_6888]
                                mem[_6888 + 96] = ext_call.return_data[12 len 20]
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 3 < mem[_6888]
                                mem[_6888 + 128] = ext_call.return_data[12 len 20]
                                require 4 < mem[_6888]
                                mem[_6888 + 160] = stor4
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
                                mem[_6888 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                mem[_6888 + 228] = z
                                mem[_6888 + 196] = 64
                                mem[_6888 + 260] = mem[_6888]
                                y = 0
                                while y < 32 * mem[_6888]:
                                    mem[y + _6888 + 292] = mem[y + _6888 + 32]
                                    y = y + 32
                                    continue 
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 64, z, mem[_6888 + 260 len (32 * mem[_6888]) + 32]
                                mem[_6888 + 192 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[_6873 + 32] = ext_call.return_data[0]
                                require 2 < mem[_2354 + 192]
                                mem[_2354 + 288] = _6873
                                require 0 < mem[_2354 + 192]
                                require 0 < mem[_2354 + 192]
                                y = 1
                                b = mem[mem[_2354 + 224] + 32]
                                c = mem[mem[_2354 + 224]]
                                while y < mem[_2354 + 192]:
                                    require y < mem[_2354 + 192]
                                    if mem[mem[(32 * y) + _2354 + 224] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2354 + 192]
                                    require y < mem[_2354 + 192]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2354 + 224] + 32]
                                    c = mem[mem[(32 * y) + _2354 + 224]]
                                    continue 
                        else:
                            mem[mem[64] + 4] = z
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args z
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_6636 + 32] = ext_call.return_data[0]
                            require 1 < mem[_2354 + 192]
                            mem[_2354 + 256] = _6636
                            _6904 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6904] = 2
                            if not arg2:
                                mem[_6904 + 32] = 0
                                require 2 < mem[_2354 + 192]
                                mem[_2354 + 288] = _6904
                                require 0 < mem[_2354 + 192]
                                require 0 < mem[_2354 + 192]
                                y = 1
                                b = 0
                                c = 0
                                while y < mem[_2354 + 192]:
                                    require y < mem[_2354 + 192]
                                    if mem[mem[(32 * y) + _2354 + 224] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2354 + 192]
                                    require y < mem[_2354 + 192]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2354 + 224] + 32]
                                    c = mem[mem[(32 * y) + _2354 + 224]]
                                    continue 
                            else:
                                _6935 = mem[64]
                                mem[mem[64]] = 5
                                mem[64] = mem[64] + 192
                                require 0 < mem[_6935]
                                mem[_6935 + 32] = arg1
                                require 1 < mem[_6935]
                                mem[_6935 + 64] = arg2
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 2 < mem[_6935]
                                mem[_6935 + 96] = ext_call.return_data[12 len 20]
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 3 < mem[_6935]
                                mem[_6935 + 128] = ext_call.return_data[12 len 20]
                                require 4 < mem[_6935]
                                mem[_6935 + 160] = stor4
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
                                mem[_6935 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                mem[_6935 + 228] = z
                                mem[_6935 + 196] = 64
                                mem[_6935 + 260] = mem[_6935]
                                y = 0
                                while y < 32 * mem[_6935]:
                                    mem[y + _6935 + 292] = mem[y + _6935 + 32]
                                    y = y + 32
                                    continue 
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 64, z, mem[_6935 + 260 len (32 * mem[_6935]) + 32]
                                mem[_6935 + 192 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[_6904 + 32] = ext_call.return_data[0]
                                require 2 < mem[_2354 + 192]
                                mem[_2354 + 288] = _6904
                                require 0 < mem[_2354 + 192]
                                require 0 < mem[_2354 + 192]
                                y = 1
                                b = mem[mem[_2354 + 224] + 32]
                                c = mem[mem[_2354 + 224]]
                                while y < mem[_2354 + 192]:
                                    require y < mem[_2354 + 192]
                                    if mem[mem[(32 * y) + _2354 + 224] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2354 + 192]
                                    require y < mem[_2354 + 192]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2354 + 224] + 32]
                                    c = mem[mem[(32 * y) + _2354 + 224]]
                                    continue 
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_6354 + 32] = ext_call.return_data[0] * z * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                        require 0 < mem[_2354 + 192]
                        mem[_2354 + 224] = _6354
                        _6779 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6779] = 1
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(stor2)
                        staticcall stor2.getExchange(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not address(ext_call.return_data[0]):
                            mem[_6779 + 32] = 0
                            require 1 < mem[_2354 + 192]
                            mem[_2354 + 256] = _6779
                            _6933 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6933] = 2
                            if not arg2:
                                mem[_6933 + 32] = 0
                                require 2 < mem[_2354 + 192]
                                mem[_2354 + 288] = _6933
                                require 0 < mem[_2354 + 192]
                                require 0 < mem[_2354 + 192]
                                y = 1
                                b = ext_call.return_data[0] * z * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                c = 0
                                while y < mem[_2354 + 192]:
                                    require y < mem[_2354 + 192]
                                    if mem[mem[(32 * y) + _2354 + 224] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2354 + 192]
                                    require y < mem[_2354 + 192]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2354 + 224] + 32]
                                    c = mem[mem[(32 * y) + _2354 + 224]]
                                    continue 
                            else:
                                _6968 = mem[64]
                                mem[mem[64]] = 5
                                mem[64] = mem[64] + 192
                                require 0 < mem[_6968]
                                mem[_6968 + 32] = arg1
                                require 1 < mem[_6968]
                                mem[_6968 + 64] = arg2
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 2 < mem[_6968]
                                mem[_6968 + 96] = ext_call.return_data[12 len 20]
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 3 < mem[_6968]
                                mem[_6968 + 128] = ext_call.return_data[12 len 20]
                                require 4 < mem[_6968]
                                mem[_6968 + 160] = stor4
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
                                mem[_6968 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                mem[_6968 + 228] = z
                                mem[_6968 + 196] = 64
                                mem[_6968 + 260] = mem[_6968]
                                y = 0
                                while y < 32 * mem[_6968]:
                                    mem[y + _6968 + 292] = mem[y + _6968 + 32]
                                    y = y + 32
                                    continue 
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 64, z, mem[_6968 + 260 len (32 * mem[_6968]) + 32]
                                mem[_6968 + 192 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[_6933 + 32] = ext_call.return_data[0]
                                require 2 < mem[_2354 + 192]
                                mem[_2354 + 288] = _6933
                                require 0 < mem[_2354 + 192]
                                require 0 < mem[_2354 + 192]
                                y = 1
                                b = mem[mem[_2354 + 224] + 32]
                                c = mem[mem[_2354 + 224]]
                                while y < mem[_2354 + 192]:
                                    require y < mem[_2354 + 192]
                                    if mem[mem[(32 * y) + _2354 + 224] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2354 + 192]
                                    require y < mem[_2354 + 192]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2354 + 224] + 32]
                                    c = mem[mem[(32 * y) + _2354 + 224]]
                                    continue 
                        else:
                            mem[mem[64] + 4] = z
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args z
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_6779 + 32] = ext_call.return_data[0]
                            require 1 < mem[_2354 + 192]
                            mem[_2354 + 256] = _6779
                            _7008 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7008] = 2
                            if not arg2:
                                mem[_7008 + 32] = 0
                                require 2 < mem[_2354 + 192]
                                mem[_2354 + 288] = _7008
                                require 0 < mem[_2354 + 192]
                                require 0 < mem[_2354 + 192]
                                y = 1
                                b = ext_call.return_data[0] * z * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                c = 0
                                while y < mem[_2354 + 192]:
                                    require y < mem[_2354 + 192]
                                    if mem[mem[(32 * y) + _2354 + 224] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2354 + 192]
                                    require y < mem[_2354 + 192]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2354 + 224] + 32]
                                    c = mem[mem[(32 * y) + _2354 + 224]]
                                    continue 
                            else:
                                _7058 = mem[64]
                                mem[mem[64]] = 5
                                mem[64] = mem[64] + 192
                                require 0 < mem[_7058]
                                mem[_7058 + 32] = arg1
                                require 1 < mem[_7058]
                                mem[_7058 + 64] = arg2
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 2 < mem[_7058]
                                mem[_7058 + 96] = ext_call.return_data[12 len 20]
                                require ext_code.size(stor3)
                                staticcall stor3.token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 3 < mem[_7058]
                                mem[_7058 + 128] = ext_call.return_data[12 len 20]
                                require 4 < mem[_7058]
                                mem[_7058 + 160] = stor4
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
                                mem[_7058 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                mem[_7058 + 228] = z
                                mem[_7058 + 196] = 64
                                mem[_7058 + 260] = mem[_7058]
                                y = 0
                                while y < 32 * mem[_7058]:
                                    mem[y + _7058 + 292] = mem[y + _7058 + 32]
                                    y = y + 32
                                    continue 
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 64, z, mem[_7058 + 260 len (32 * mem[_7058]) + 32]
                                mem[_7058 + 192 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[_7008 + 32] = ext_call.return_data[0]
                                require 2 < mem[_2354 + 192]
                                mem[_2354 + 288] = _7008
                                require 0 < mem[_2354 + 192]
                                require 0 < mem[_2354 + 192]
                                y = 1
                                b = mem[mem[_2354 + 224] + 32]
                                c = mem[mem[_2354 + 224]]
                                while y < mem[_2354 + 192]:
                                    require y < mem[_2354 + 192]
                                    if mem[mem[(32 * y) + _2354 + 224] + 32] <= b:
                                        y = y + 1
                                        b = b
                                        c = c
                                        continue 
                                    require y < mem[_2354 + 192]
                                    require y < mem[_2354 + 192]
                                    y = y + 1
                                    b = mem[mem[(32 * y) + _2354 + 224] + 32]
                                    c = mem[mem[(32 * y) + _2354 + 224]]
                                    continue 
        if b - idx <= arg5:
            idx = idx - arg4
            s = s + 1
            t = t
            u = u
            v = v
            w = w
            x = x
            continue 
        if b - idx <= t:
            idx = idx - arg4
            s = s + 1
            t = t
            u = u
            v = v
            w = w
            x = x
            continue 
        idx = idx - arg4
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



}
