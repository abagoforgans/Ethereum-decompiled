contract main {




// =====================  Runtime code  =====================


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
        _760 = mem[64]
        _932 = mem[64] + 128
        mem[64] = mem[64] + 192
        mem[_932] = 0
        mem[_932 + 32] = 0
        mem[var13001] = _932
        z = var13001
        y = var13002
        while y - 1:
            _932 = mem[64]
            mem[64] = mem[64] + 64
            mem[_932] = 0
            mem[_932 + 32] = 0
            mem[z + 32] = _932
            z = z + 32
            y = y - 1
            continue 
        _933 = mem[64]
        mem[64] = mem[64] + 64
        mem[_933] = 0
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
            mem[_933 + 32] = 0
            require 0 < mem[_760]
            mem[_760 + 32] = _933
            _944 = mem[64]
            mem[64] = mem[64] + 64
            mem[_944] = 1
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
            mem[_944 + 32] = ext_call.return_data[0]
            require 1 < mem[_760]
            mem[_760 + 64] = _944
            _962 = mem[64]
            mem[64] = mem[64] + 64
            mem[_962] = 1
            if not arg2:
                mem[_962 + 32] = 0
                require 2 < mem[_760]
                mem[_760 + 96] = _962
                require 0 < mem[_760]
                require 0 < mem[_760]
                y = 1
                z = 0
                a = 0
                while y < mem[_760]:
                    require y < mem[_760]
                    if mem[mem[(32 * y) + _760 + 32] + 32] <= z:
                        y = y + 1
                        z = z
                        a = a
                        continue 
                    require y < mem[_760]
                    require y < mem[_760]
                    y = y + 1
                    z = mem[mem[(32 * y) + _760 + 32] + 32]
                    a = mem[mem[(32 * y) + _760 + 32]]
                    continue 
                _1122 = mem[64]
                _1518 = mem[64] + 128
                mem[64] = mem[64] + 192
                mem[_1518] = 0
                mem[_1518 + 32] = 0
                mem[var51001] = _1518
                b = var51001
                y = var51002
                while y - 1:
                    _1518 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1518] = 0
                    mem[_1518 + 32] = 0
                    mem[b + 32] = _1518
                    b = b + 32
                    y = y - 1
                    continue 
                _1522 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1522] = 0
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
                    mem[_1522 + 32] = 0
                    require 0 < mem[_1122]
                    mem[_1122 + 32] = _1522
                    _1562 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1562] = 1
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
                    mem[_1562 + 32] = ext_call.return_data[0]
                    require 1 < mem[_1122]
                    mem[_1122 + 64] = _1562
                    _1632 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1632] = 2
                    if not arg2:
                        mem[_1632 + 32] = 0
                        require 2 < mem[_1122]
                        mem[_1122 + 96] = _1632
                        require 0 < mem[_1122]
                        require 0 < mem[_1122]
                        y = 1
                        b = 0
                        c = 0
                        while y < mem[_1122]:
                            require y < mem[_1122]
                            if mem[mem[(32 * y) + _1122 + 32] + 32] <= b:
                                y = y + 1
                                b = b
                                c = c
                                continue 
                            require y < mem[_1122]
                            require y < mem[_1122]
                            y = y + 1
                            b = mem[mem[(32 * y) + _1122 + 32] + 32]
                            c = mem[mem[(32 * y) + _1122 + 32]]
                            continue 
                    else:
                        _1645 = mem[64]
                        mem[mem[64]] = 5
                        mem[64] = mem[64] + 192
                        require 0 < mem[_1645]
                        mem[_1645 + 32] = arg1
                        require 1 < mem[_1645]
                        mem[_1645 + 64] = arg2
                        require ext_code.size(stor3)
                        staticcall stor3.0xfc0c546a with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 2 < mem[_1645]
                        mem[_1645 + 96] = ext_call.return_data[12 len 20]
                        require ext_code.size(stor3)
                        staticcall stor3.0xfc0c546a with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 3 < mem[_1645]
                        mem[_1645 + 128] = ext_call.return_data[12 len 20]
                        require 4 < mem[_1645]
                        mem[_1645 + 160] = stor4
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
                        mem[_1645 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                        mem[_1645 + 228] = z
                        mem[_1645 + 196] = 64
                        mem[_1645 + 260] = mem[_1645]
                        y = 0
                        while y < 32 * mem[_1645]:
                            mem[y + _1645 + 292] = mem[y + _1645 + 32]
                            y = y + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args 64, z, mem[_1645 + 260 len (32 * mem[_1645]) + 32]
                        mem[_1645 + 192 len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        mem[_1632 + 32] = ext_call.return_data[0]
                        require 2 < mem[_1122]
                        mem[_1122 + 96] = _1632
                        require 0 < mem[_1122]
                        require 0 < mem[_1122]
                        y = 1
                        b = mem[mem[_1122 + 32] + 32]
                        c = mem[mem[_1122 + 32]]
                        while y < mem[_1122]:
                            require y < mem[_1122]
                            if mem[mem[(32 * y) + _1122 + 32] + 32] <= b:
                                y = y + 1
                                b = b
                                c = c
                                continue 
                            require y < mem[_1122]
                            require y < mem[_1122]
                            y = y + 1
                            b = mem[mem[(32 * y) + _1122 + 32] + 32]
                            c = mem[mem[(32 * y) + _1122 + 32]]
                            continue 
                else:
                    require ext_code.size(arg1)
                    staticcall arg1.0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1522 + 32] = ext_call.return_data[0] * z * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                    require 0 < mem[_1122]
                    mem[_1122 + 32] = _1522
                    _1585 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1585] = 1
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
                    mem[_1585 + 32] = ext_call.return_data[0]
                    require 1 < mem[_1122]
                    mem[_1122 + 64] = _1585
                    _1676 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1676] = 2
                    if not arg2:
                        mem[_1676 + 32] = 0
                        require 2 < mem[_1122]
                        mem[_1122 + 96] = _1676
                        require 0 < mem[_1122]
                        require 0 < mem[_1122]
                        y = 1
                        b = ext_call.return_data[0] * z * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                        c = 0
                        while y < mem[_1122]:
                            require y < mem[_1122]
                            if mem[mem[(32 * y) + _1122 + 32] + 32] <= b:
                                y = y + 1
                                b = b
                                c = c
                                continue 
                            require y < mem[_1122]
                            require y < mem[_1122]
                            y = y + 1
                            b = mem[mem[(32 * y) + _1122 + 32] + 32]
                            c = mem[mem[(32 * y) + _1122 + 32]]
                            continue 
                    else:
                        _1703 = mem[64]
                        mem[mem[64]] = 5
                        mem[64] = mem[64] + 192
                        require 0 < mem[_1703]
                        mem[_1703 + 32] = arg1
                        require 1 < mem[_1703]
                        mem[_1703 + 64] = arg2
                        require ext_code.size(stor3)
                        staticcall stor3.0xfc0c546a with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 2 < mem[_1703]
                        mem[_1703 + 96] = ext_call.return_data[12 len 20]
                        require ext_code.size(stor3)
                        staticcall stor3.0xfc0c546a with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 3 < mem[_1703]
                        mem[_1703 + 128] = ext_call.return_data[12 len 20]
                        require 4 < mem[_1703]
                        mem[_1703 + 160] = stor4
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
                        mem[_1703 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                        mem[_1703 + 228] = z
                        mem[_1703 + 196] = 64
                        mem[_1703 + 260] = mem[_1703]
                        y = 0
                        while y < 32 * mem[_1703]:
                            mem[y + _1703 + 292] = mem[y + _1703 + 32]
                            y = y + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args 64, z, mem[_1703 + 260 len (32 * mem[_1703]) + 32]
                        mem[_1703 + 192 len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        mem[_1676 + 32] = ext_call.return_data[0]
                        require 2 < mem[_1122]
                        mem[_1122 + 96] = _1676
                        require 0 < mem[_1122]
                        require 0 < mem[_1122]
                        y = 1
                        b = mem[mem[_1122 + 32] + 32]
                        c = mem[mem[_1122 + 32]]
                        while y < mem[_1122]:
                            require y < mem[_1122]
                            if mem[mem[(32 * y) + _1122 + 32] + 32] <= b:
                                y = y + 1
                                b = b
                                c = c
                                continue 
                            require y < mem[_1122]
                            require y < mem[_1122]
                            y = y + 1
                            b = mem[mem[(32 * y) + _1122 + 32] + 32]
                            c = mem[mem[(32 * y) + _1122 + 32]]
                            continue 
            else:
                _964 = mem[64]
                mem[mem[64]] = 5
                mem[64] = mem[64] + 192
                require mem[_964]
                mem[_964 + 32] = stor4
                require ext_code.size(stor3)
                staticcall stor3.0xfc0c546a with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[_964]
                mem[_964 + 64] = ext_call.return_data[12 len 20]
                require ext_code.size(stor3)
                staticcall stor3.0xfc0c546a with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < mem[_964]
                mem[_964 + 96] = ext_call.return_data[12 len 20]
                require 3 < mem[_964]
                mem[_964 + 128] = arg2
                require 4 < mem[_964]
                mem[_964 + 160] = arg1
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
                mem[_964 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                mem[_964 + 228] = idx
                mem[_964 + 196] = 64
                mem[_964 + 260] = mem[_964]
                y = 0
                while y < 32 * mem[_964]:
                    mem[y + _964 + 292] = mem[y + _964 + 32]
                    y = y + 32
                    continue 
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args 64, idx, mem[_964 + 260 len (32 * mem[_964]) + 32]
                mem[_964 + 192 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                mem[_962 + 32] = ext_call.return_data[0]
                require 2 < mem[_760]
                mem[_760 + 96] = _962
                require 0 < mem[_760]
                require 0 < mem[_760]
                y = 1
                z = mem[mem[_760 + 32] + 32]
                a = mem[mem[_760 + 32]]
                while y < mem[_760]:
                    require y < mem[_760]
                    if mem[mem[(32 * y) + _760 + 32] + 32] <= z:
                        y = y + 1
                        z = z
                        a = a
                        continue 
                    require y < mem[_760]
                    require y < mem[_760]
                    y = y + 1
                    z = mem[mem[(32 * y) + _760 + 32] + 32]
                    a = mem[mem[(32 * y) + _760 + 32]]
                    continue 
                mem[_964 + 192] = 3
                mem[64] = _964 + 384
                mem[_964 + 320] = 0
                mem[_964 + 352] = 0
                mem[var77001] = _964 + 320
                b = var77001
                y = var77002
                while y - 1:
                    mem[64] = mem[64] + 64
                    mem[_964 + 320] = 0
                    mem[_964 + 352] = 0
                    mem[b + 32] = _964 + 320
                    b = b + 32
                    y = y - 1
                    continue 
                _2188 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2188] = 0
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
                    mem[_2188 + 32] = 0
                    require 0 < mem[_964 + 192]
                    mem[_964 + 224] = _2188
                    _2270 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2270] = 1
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
                    mem[_2270 + 32] = ext_call.return_data[0]
                    require 1 < mem[_964 + 192]
                    mem[_964 + 256] = _2270
                    _2346 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2346] = 2
                    if not arg2:
                        mem[_2346 + 32] = 0
                        require 2 < mem[_964 + 192]
                        mem[_964 + 288] = _2346
                        require 0 < mem[_964 + 192]
                        require 0 < mem[_964 + 192]
                        y = 1
                        b = 0
                        c = 0
                        while y < mem[_964 + 192]:
                            require y < mem[_964 + 192]
                            if mem[mem[(32 * y) + _964 + 224] + 32] <= b:
                                y = y + 1
                                b = b
                                c = c
                                continue 
                            require y < mem[_964 + 192]
                            require y < mem[_964 + 192]
                            y = y + 1
                            b = mem[mem[(32 * y) + _964 + 224] + 32]
                            c = mem[mem[(32 * y) + _964 + 224]]
                            continue 
                    else:
                        _2351 = mem[64]
                        mem[mem[64]] = 5
                        mem[64] = mem[64] + 192
                        require 0 < mem[_2351]
                        mem[_2351 + 32] = arg1
                        require 1 < mem[_2351]
                        mem[_2351 + 64] = arg2
                        require ext_code.size(stor3)
                        staticcall stor3.0xfc0c546a with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 2 < mem[_2351]
                        mem[_2351 + 96] = ext_call.return_data[12 len 20]
                        require ext_code.size(stor3)
                        staticcall stor3.0xfc0c546a with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 3 < mem[_2351]
                        mem[_2351 + 128] = ext_call.return_data[12 len 20]
                        require 4 < mem[_2351]
                        mem[_2351 + 160] = stor4
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
                        mem[_2351 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                        mem[_2351 + 228] = z
                        mem[_2351 + 196] = 64
                        mem[_2351 + 260] = mem[_2351]
                        y = 0
                        while y < 32 * mem[_2351]:
                            mem[y + _2351 + 292] = mem[y + _2351 + 32]
                            y = y + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args 64, z, mem[_2351 + 260 len (32 * mem[_2351]) + 32]
                        mem[_2351 + 192 len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        mem[_2346 + 32] = ext_call.return_data[0]
                        require 2 < mem[_964 + 192]
                        mem[_964 + 288] = _2346
                        require 0 < mem[_964 + 192]
                        require 0 < mem[_964 + 192]
                        y = 1
                        b = mem[mem[_964 + 224] + 32]
                        c = mem[mem[_964 + 224]]
                        while y < mem[_964 + 192]:
                            require y < mem[_964 + 192]
                            if mem[mem[(32 * y) + _964 + 224] + 32] <= b:
                                y = y + 1
                                b = b
                                c = c
                                continue 
                            require y < mem[_964 + 192]
                            require y < mem[_964 + 192]
                            y = y + 1
                            b = mem[mem[(32 * y) + _964 + 224] + 32]
                            c = mem[mem[(32 * y) + _964 + 224]]
                            continue 
                else:
                    require ext_code.size(arg1)
                    staticcall arg1.0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_2188 + 32] = ext_call.return_data[0] * z * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                    require 0 < mem[_964 + 192]
                    mem[_964 + 224] = _2188
                    _2313 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2313] = 1
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
                    mem[_2313 + 32] = ext_call.return_data[0]
                    require 1 < mem[_964 + 192]
                    mem[_964 + 256] = _2313
                    _2367 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2367] = 2
                    if not arg2:
                        mem[_2367 + 32] = 0
                        require 2 < mem[_964 + 192]
                        mem[_964 + 288] = _2367
                        require 0 < mem[_964 + 192]
                        require 0 < mem[_964 + 192]
                        y = 1
                        b = ext_call.return_data[0] * z * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                        c = 0
                        while y < mem[_964 + 192]:
                            require y < mem[_964 + 192]
                            if mem[mem[(32 * y) + _964 + 224] + 32] <= b:
                                y = y + 1
                                b = b
                                c = c
                                continue 
                            require y < mem[_964 + 192]
                            require y < mem[_964 + 192]
                            y = y + 1
                            b = mem[mem[(32 * y) + _964 + 224] + 32]
                            c = mem[mem[(32 * y) + _964 + 224]]
                            continue 
                    else:
                        _2383 = mem[64]
                        mem[mem[64]] = 5
                        mem[64] = mem[64] + 192
                        require 0 < mem[_2383]
                        mem[_2383 + 32] = arg1
                        require 1 < mem[_2383]
                        mem[_2383 + 64] = arg2
                        require ext_code.size(stor3)
                        staticcall stor3.0xfc0c546a with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 2 < mem[_2383]
                        mem[_2383 + 96] = ext_call.return_data[12 len 20]
                        require ext_code.size(stor3)
                        staticcall stor3.0xfc0c546a with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 3 < mem[_2383]
                        mem[_2383 + 128] = ext_call.return_data[12 len 20]
                        require 4 < mem[_2383]
                        mem[_2383 + 160] = stor4
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
                        mem[_2383 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                        mem[_2383 + 228] = z
                        mem[_2383 + 196] = 64
                        mem[_2383 + 260] = mem[_2383]
                        y = 0
                        while y < 32 * mem[_2383]:
                            mem[y + _2383 + 292] = mem[y + _2383 + 32]
                            y = y + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args 64, z, mem[_2383 + 260 len (32 * mem[_2383]) + 32]
                        mem[_2383 + 192 len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        mem[_2367 + 32] = ext_call.return_data[0]
                        require 2 < mem[_964 + 192]
                        mem[_964 + 288] = _2367
                        require 0 < mem[_964 + 192]
                        require 0 < mem[_964 + 192]
                        y = 1
                        b = mem[mem[_964 + 224] + 32]
                        c = mem[mem[_964 + 224]]
                        while y < mem[_964 + 192]:
                            require y < mem[_964 + 192]
                            if mem[mem[(32 * y) + _964 + 224] + 32] <= b:
                                y = y + 1
                                b = b
                                c = c
                                continue 
                            require y < mem[_964 + 192]
                            require y < mem[_964 + 192]
                            y = y + 1
                            b = mem[mem[(32 * y) + _964 + 224] + 32]
                            c = mem[mem[(32 * y) + _964 + 224]]
                            continue 
        else:
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_933 + 32] = ext_call.return_data[0] * idx * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
            require 0 < mem[_760]
            mem[_760 + 32] = _933
            _949 = mem[64]
            mem[64] = mem[64] + 64
            mem[_949] = 1
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
            mem[_949 + 32] = ext_call.return_data[0]
            require 1 < mem[_760]
            mem[_760 + 64] = _949
            _971 = mem[64]
            mem[64] = mem[64] + 64
            mem[_971] = 1
            if not arg2:
                mem[_971 + 32] = 0
                require 2 < mem[_760]
                mem[_760 + 96] = _971
                require 0 < mem[_760]
                require 0 < mem[_760]
                y = 1
                z = ext_call.return_data[0] * idx * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                a = 0
                while y < mem[_760]:
                    require y < mem[_760]
                    if mem[mem[(32 * y) + _760 + 32] + 32] <= z:
                        y = y + 1
                        z = z
                        a = a
                        continue 
                    require y < mem[_760]
                    require y < mem[_760]
                    y = y + 1
                    z = mem[mem[(32 * y) + _760 + 32] + 32]
                    a = mem[mem[(32 * y) + _760 + 32]]
                    continue 
                _1117 = mem[64]
                _1517 = mem[64] + 128
                mem[64] = mem[64] + 192
                mem[_1517] = 0
                mem[_1517 + 32] = 0
                mem[var56001] = _1517
                b = var56001
                y = var56002
                while y - 1:
                    _1517 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1517] = 0
                    mem[_1517 + 32] = 0
                    mem[b + 32] = _1517
                    b = b + 32
                    y = y - 1
                    continue 
                _1521 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1521] = 0
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
                    mem[_1521 + 32] = 0
                    require 0 < mem[_1117]
                    mem[_1117 + 32] = _1521
                    _1558 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1558] = 1
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
                    mem[_1558 + 32] = ext_call.return_data[0]
                    require 1 < mem[_1117]
                    mem[_1117 + 64] = _1558
                    _1627 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1627] = 2
                    if not arg2:
                        mem[_1627 + 32] = 0
                        require 2 < mem[_1117]
                        mem[_1117 + 96] = _1627
                        require 0 < mem[_1117]
                        require 0 < mem[_1117]
                        y = 1
                        b = 0
                        c = 0
                        while y < mem[_1117]:
                            require y < mem[_1117]
                            if mem[mem[(32 * y) + _1117 + 32] + 32] <= b:
                                y = y + 1
                                b = b
                                c = c
                                continue 
                            require y < mem[_1117]
                            require y < mem[_1117]
                            y = y + 1
                            b = mem[mem[(32 * y) + _1117 + 32] + 32]
                            c = mem[mem[(32 * y) + _1117 + 32]]
                            continue 
                    else:
                        _1642 = mem[64]
                        mem[mem[64]] = 5
                        mem[64] = mem[64] + 192
                        require 0 < mem[_1642]
                        mem[_1642 + 32] = arg1
                        require 1 < mem[_1642]
                        mem[_1642 + 64] = arg2
                        require ext_code.size(stor3)
                        staticcall stor3.0xfc0c546a with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 2 < mem[_1642]
                        mem[_1642 + 96] = ext_call.return_data[12 len 20]
                        require ext_code.size(stor3)
                        staticcall stor3.0xfc0c546a with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 3 < mem[_1642]
                        mem[_1642 + 128] = ext_call.return_data[12 len 20]
                        require 4 < mem[_1642]
                        mem[_1642 + 160] = stor4
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
                        mem[_1642 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                        mem[_1642 + 228] = z
                        mem[_1642 + 196] = 64
                        mem[_1642 + 260] = mem[_1642]
                        y = 0
                        while y < 32 * mem[_1642]:
                            mem[y + _1642 + 292] = mem[y + _1642 + 32]
                            y = y + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args 64, z, mem[_1642 + 260 len (32 * mem[_1642]) + 32]
                        mem[_1642 + 192 len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        mem[_1627 + 32] = ext_call.return_data[0]
                        require 2 < mem[_1117]
                        mem[_1117 + 96] = _1627
                        require 0 < mem[_1117]
                        require 0 < mem[_1117]
                        y = 1
                        b = mem[mem[_1117 + 32] + 32]
                        c = mem[mem[_1117 + 32]]
                        while y < mem[_1117]:
                            require y < mem[_1117]
                            if mem[mem[(32 * y) + _1117 + 32] + 32] <= b:
                                y = y + 1
                                b = b
                                c = c
                                continue 
                            require y < mem[_1117]
                            require y < mem[_1117]
                            y = y + 1
                            b = mem[mem[(32 * y) + _1117 + 32] + 32]
                            c = mem[mem[(32 * y) + _1117 + 32]]
                            continue 
                else:
                    require ext_code.size(arg1)
                    staticcall arg1.0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1521 + 32] = ext_call.return_data[0] * z * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                    require 0 < mem[_1117]
                    mem[_1117 + 32] = _1521
                    _1581 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1581] = 1
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
                    mem[_1581 + 32] = ext_call.return_data[0]
                    require 1 < mem[_1117]
                    mem[_1117 + 64] = _1581
                    _1671 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1671] = 2
                    if not arg2:
                        mem[_1671 + 32] = 0
                        require 2 < mem[_1117]
                        mem[_1117 + 96] = _1671
                        require 0 < mem[_1117]
                        require 0 < mem[_1117]
                        y = 1
                        b = ext_call.return_data[0] * z * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                        c = 0
                        while y < mem[_1117]:
                            require y < mem[_1117]
                            if mem[mem[(32 * y) + _1117 + 32] + 32] <= b:
                                y = y + 1
                                b = b
                                c = c
                                continue 
                            require y < mem[_1117]
                            require y < mem[_1117]
                            y = y + 1
                            b = mem[mem[(32 * y) + _1117 + 32] + 32]
                            c = mem[mem[(32 * y) + _1117 + 32]]
                            continue 
                    else:
                        _1693 = mem[64]
                        mem[mem[64]] = 5
                        mem[64] = mem[64] + 192
                        require 0 < mem[_1693]
                        mem[_1693 + 32] = arg1
                        require 1 < mem[_1693]
                        mem[_1693 + 64] = arg2
                        require ext_code.size(stor3)
                        staticcall stor3.0xfc0c546a with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 2 < mem[_1693]
                        mem[_1693 + 96] = ext_call.return_data[12 len 20]
                        require ext_code.size(stor3)
                        staticcall stor3.0xfc0c546a with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 3 < mem[_1693]
                        mem[_1693 + 128] = ext_call.return_data[12 len 20]
                        require 4 < mem[_1693]
                        mem[_1693 + 160] = stor4
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
                        mem[_1693 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                        mem[_1693 + 228] = z
                        mem[_1693 + 196] = 64
                        mem[_1693 + 260] = mem[_1693]
                        y = 0
                        while y < 32 * mem[_1693]:
                            mem[y + _1693 + 292] = mem[y + _1693 + 32]
                            y = y + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args 64, z, mem[_1693 + 260 len (32 * mem[_1693]) + 32]
                        mem[_1693 + 192 len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        mem[_1671 + 32] = ext_call.return_data[0]
                        require 2 < mem[_1117]
                        mem[_1117 + 96] = _1671
                        require 0 < mem[_1117]
                        require 0 < mem[_1117]
                        y = 1
                        b = mem[mem[_1117 + 32] + 32]
                        c = mem[mem[_1117 + 32]]
                        while y < mem[_1117]:
                            require y < mem[_1117]
                            if mem[mem[(32 * y) + _1117 + 32] + 32] <= b:
                                y = y + 1
                                b = b
                                c = c
                                continue 
                            require y < mem[_1117]
                            require y < mem[_1117]
                            y = y + 1
                            b = mem[mem[(32 * y) + _1117 + 32] + 32]
                            c = mem[mem[(32 * y) + _1117 + 32]]
                            continue 
            else:
                _979 = mem[64]
                mem[mem[64]] = 5
                mem[64] = mem[64] + 192
                require mem[_979]
                mem[_979 + 32] = stor4
                require ext_code.size(stor3)
                staticcall stor3.0xfc0c546a with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[_979]
                mem[_979 + 64] = ext_call.return_data[12 len 20]
                require ext_code.size(stor3)
                staticcall stor3.0xfc0c546a with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < mem[_979]
                mem[_979 + 96] = ext_call.return_data[12 len 20]
                require 3 < mem[_979]
                mem[_979 + 128] = arg2
                require 4 < mem[_979]
                mem[_979 + 160] = arg1
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
                mem[_979 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                mem[_979 + 228] = idx
                mem[_979 + 196] = 64
                mem[_979 + 260] = mem[_979]
                y = 0
                while y < 32 * mem[_979]:
                    mem[y + _979 + 292] = mem[y + _979 + 32]
                    y = y + 32
                    continue 
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args 64, idx, mem[_979 + 260 len (32 * mem[_979]) + 32]
                mem[_979 + 192 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                mem[_971 + 32] = ext_call.return_data[0]
                require 2 < mem[_760]
                mem[_760 + 96] = _971
                require 0 < mem[_760]
                require 0 < mem[_760]
                y = 1
                z = mem[mem[_760 + 32] + 32]
                a = mem[mem[_760 + 32]]
                while y < mem[_760]:
                    require y < mem[_760]
                    if mem[mem[(32 * y) + _760 + 32] + 32] <= z:
                        y = y + 1
                        z = z
                        a = a
                        continue 
                    require y < mem[_760]
                    require y < mem[_760]
                    y = y + 1
                    z = mem[mem[(32 * y) + _760 + 32] + 32]
                    a = mem[mem[(32 * y) + _760 + 32]]
                    continue 
                mem[_979 + 192] = 3
                mem[64] = _979 + 384
                mem[_979 + 320] = 0
                mem[_979 + 352] = 0
                mem[var82001] = _979 + 320
                b = var82001
                y = var82002
                while y - 1:
                    mem[64] = mem[64] + 64
                    mem[_979 + 320] = 0
                    mem[_979 + 352] = 0
                    mem[b + 32] = _979 + 320
                    b = b + 32
                    y = y - 1
                    continue 
                _2183 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2183] = 0
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
                    mem[_2183 + 32] = 0
                    require 0 < mem[_979 + 192]
                    mem[_979 + 224] = _2183
                    _2264 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2264] = 1
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
                    mem[_2264 + 32] = ext_call.return_data[0]
                    require 1 < mem[_979 + 192]
                    mem[_979 + 256] = _2264
                    _2343 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2343] = 2
                    if not arg2:
                        mem[_2343 + 32] = 0
                        require 2 < mem[_979 + 192]
                        mem[_979 + 288] = _2343
                        require 0 < mem[_979 + 192]
                        require 0 < mem[_979 + 192]
                        y = 1
                        b = 0
                        c = 0
                        while y < mem[_979 + 192]:
                            require y < mem[_979 + 192]
                            if mem[mem[(32 * y) + _979 + 224] + 32] <= b:
                                y = y + 1
                                b = b
                                c = c
                                continue 
                            require y < mem[_979 + 192]
                            require y < mem[_979 + 192]
                            y = y + 1
                            b = mem[mem[(32 * y) + _979 + 224] + 32]
                            c = mem[mem[(32 * y) + _979 + 224]]
                            continue 
                    else:
                        _2348 = mem[64]
                        mem[mem[64]] = 5
                        mem[64] = mem[64] + 192
                        require 0 < mem[_2348]
                        mem[_2348 + 32] = arg1
                        require 1 < mem[_2348]
                        mem[_2348 + 64] = arg2
                        require ext_code.size(stor3)
                        staticcall stor3.0xfc0c546a with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 2 < mem[_2348]
                        mem[_2348 + 96] = ext_call.return_data[12 len 20]
                        require ext_code.size(stor3)
                        staticcall stor3.0xfc0c546a with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 3 < mem[_2348]
                        mem[_2348 + 128] = ext_call.return_data[12 len 20]
                        require 4 < mem[_2348]
                        mem[_2348 + 160] = stor4
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
                        mem[_2348 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                        mem[_2348 + 228] = z
                        mem[_2348 + 196] = 64
                        mem[_2348 + 260] = mem[_2348]
                        y = 0
                        while y < 32 * mem[_2348]:
                            mem[y + _2348 + 292] = mem[y + _2348 + 32]
                            y = y + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args 64, z, mem[_2348 + 260 len (32 * mem[_2348]) + 32]
                        mem[_2348 + 192 len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        mem[_2343 + 32] = ext_call.return_data[0]
                        require 2 < mem[_979 + 192]
                        mem[_979 + 288] = _2343
                        require 0 < mem[_979 + 192]
                        require 0 < mem[_979 + 192]
                        y = 1
                        b = mem[mem[_979 + 224] + 32]
                        c = mem[mem[_979 + 224]]
                        while y < mem[_979 + 192]:
                            require y < mem[_979 + 192]
                            if mem[mem[(32 * y) + _979 + 224] + 32] <= b:
                                y = y + 1
                                b = b
                                c = c
                                continue 
                            require y < mem[_979 + 192]
                            require y < mem[_979 + 192]
                            y = y + 1
                            b = mem[mem[(32 * y) + _979 + 224] + 32]
                            c = mem[mem[(32 * y) + _979 + 224]]
                            continue 
                else:
                    require ext_code.size(arg1)
                    staticcall arg1.0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_2183 + 32] = ext_call.return_data[0] * z * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                    require 0 < mem[_979 + 192]
                    mem[_979 + 224] = _2183
                    _2305 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2305] = 1
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
                    mem[_2305 + 32] = ext_call.return_data[0]
                    require 1 < mem[_979 + 192]
                    mem[_979 + 256] = _2305
                    _2365 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2365] = 2
                    if not arg2:
                        mem[_2365 + 32] = 0
                        require 2 < mem[_979 + 192]
                        mem[_979 + 288] = _2365
                        require 0 < mem[_979 + 192]
                        require 0 < mem[_979 + 192]
                        y = 1
                        b = ext_call.return_data[0] * z * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                        c = 0
                        while y < mem[_979 + 192]:
                            require y < mem[_979 + 192]
                            if mem[mem[(32 * y) + _979 + 224] + 32] <= b:
                                y = y + 1
                                b = b
                                c = c
                                continue 
                            require y < mem[_979 + 192]
                            require y < mem[_979 + 192]
                            y = y + 1
                            b = mem[mem[(32 * y) + _979 + 224] + 32]
                            c = mem[mem[(32 * y) + _979 + 224]]
                            continue 
                    else:
                        _2377 = mem[64]
                        mem[mem[64]] = 5
                        mem[64] = mem[64] + 192
                        require 0 < mem[_2377]
                        mem[_2377 + 32] = arg1
                        require 1 < mem[_2377]
                        mem[_2377 + 64] = arg2
                        require ext_code.size(stor3)
                        staticcall stor3.0xfc0c546a with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 2 < mem[_2377]
                        mem[_2377 + 96] = ext_call.return_data[12 len 20]
                        require ext_code.size(stor3)
                        staticcall stor3.0xfc0c546a with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 3 < mem[_2377]
                        mem[_2377 + 128] = ext_call.return_data[12 len 20]
                        require 4 < mem[_2377]
                        mem[_2377 + 160] = stor4
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
                        mem[_2377 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                        mem[_2377 + 228] = z
                        mem[_2377 + 196] = 64
                        mem[_2377 + 260] = mem[_2377]
                        y = 0
                        while y < 32 * mem[_2377]:
                            mem[y + _2377 + 292] = mem[y + _2377 + 32]
                            y = y + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args 64, z, mem[_2377 + 260 len (32 * mem[_2377]) + 32]
                        mem[_2377 + 192 len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        mem[_2365 + 32] = ext_call.return_data[0]
                        require 2 < mem[_979 + 192]
                        mem[_979 + 288] = _2365
                        require 0 < mem[_979 + 192]
                        require 0 < mem[_979 + 192]
                        y = 1
                        b = mem[mem[_979 + 224] + 32]
                        c = mem[mem[_979 + 224]]
                        while y < mem[_979 + 192]:
                            require y < mem[_979 + 192]
                            if mem[mem[(32 * y) + _979 + 224] + 32] <= b:
                                y = y + 1
                                b = b
                                c = c
                                continue 
                            require y < mem[_979 + 192]
                            require y < mem[_979 + 192]
                            y = y + 1
                            b = mem[mem[(32 * y) + _979 + 224] + 32]
                            c = mem[mem[(32 * y) + _979 + 224]]
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

function sub_6184877e(?) {
    require calldata.size - 4 >= 96
    mem[96] = 3
    mem[64] = 288
    mem[224] = 0
    mem[256] = 0
    mem[var10001] = 224
    s = var10001
    idx = var10002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[224] = 0
        mem[256] = 0
        mem[s + 32] = 224
        s = s + 32
        idx = idx - 1
        continue 
    _173 = mem[64]
    mem[64] = mem[64] + 64
    mem[_173] = 0
    mem[mem[64] + 36] = arg1
    mem[mem[64] + 68] = arg3
    require ext_code.size(stor1)
    staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(arg1), arg3
    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[32]:
        mem[_173 + 32] = 0
        if 0 < mem[96]:
            mem[128] = _173
            _184 = mem[64]
            mem[64] = mem[64] + 64
            mem[_184] = 1
            require ext_code.size(stor2)
            staticcall stor2.getExchange(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = arg3
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getEthToTokenInputPrice(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg3
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_184 + 32] = ext_call.return_data[0]
            if 1 < mem[96]:
                mem[160] = _184
                _202 = mem[64]
                mem[64] = mem[64] + 64
                mem[_202] = 1
                if not arg2:
                    mem[_202 + 32] = 0
                    if 2 < mem[96]:
                        mem[192] = _202
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
                                _362 = mem[64]
                                _774 = mem[64] + 128
                                mem[64] = mem[64] + 192
                                mem[_774] = 0
                                mem[_774 + 32] = 0
                                mem[var48001] = _774
                                u = var48001
                                idx = var48002
                                while idx - 1:
                                    _774 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_774] = 0
                                    mem[_774 + 32] = 0
                                    mem[u + 32] = _774
                                    u = u + 32
                                    idx = idx - 1
                                    continue 
                                _778 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_778] = 0
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
                                    mem[_778 + 32] = 0
                                    if 0 < mem[_362]:
                                        mem[_362 + 32] = _778
                                        _818 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_818] = 1
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
                                        mem[_818 + 32] = ext_call.return_data[0]
                                        if 1 < mem[_362]:
                                            mem[_362 + 64] = _818
                                            _888 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_888] = 2
                                            if not arg2:
                                                mem[_888 + 32] = 0
                                                if 2 < mem[_362]:
                                                    mem[_362 + 96] = _888
                                                    if 0 < mem[_362]:
                                                        if 0 < mem[_362]:
                                                            idx = 1
                                                            u = 0
                                                            v = 0
                                                            while idx < mem[_362]:
                                                                require idx < mem[_362]
                                                                if mem[mem[(32 * idx) + _362 + 32] + 32] <= u:
                                                                    idx = idx + 1
                                                                    u = u
                                                                    v = v
                                                                    continue 
                                                                require idx < mem[_362]
                                                                require idx < mem[_362]
                                                                idx = idx + 1
                                                                u = mem[mem[(32 * idx) + _362 + 32] + 32]
                                                                v = mem[mem[(32 * idx) + _362 + 32]]
                                                                continue 
                                                            if t <= 2:
                                                                if v <= 2:
                                                                    return t << 248, s, v << 248, u, u - arg3
                                            else:
                                                _901 = mem[64]
                                                mem[mem[64]] = 5
                                                mem[64] = mem[64] + 192
                                                if 0 < mem[_901]:
                                                    mem[_901 + 32] = arg1
                                                    if 1 < mem[_901]:
                                                        mem[_901 + 64] = arg2
                                                        require ext_code.size(stor3)
                                                        staticcall stor3.0xfc0c546a with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if 2 < mem[_901]:
                                                            mem[_901 + 96] = ext_call.return_data[12 len 20]
                                                            require ext_code.size(stor3)
                                                            staticcall stor3.0xfc0c546a with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if 3 < mem[_901]:
                                                                mem[_901 + 128] = ext_call.return_data[12 len 20]
                                                                if 4 < mem[_901]:
                                                                    mem[_901 + 160] = stor4
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
                                                                    mem[_901 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                                                    mem[_901 + 228] = s
                                                                    mem[_901 + 196] = 64
                                                                    mem[_901 + 260] = mem[_901]
                                                                    mem[_901 + 292 len floor32(mem[_901])] = mem[_901 + 32 len floor32(mem[_901])]
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                                            gas gas_remaining wei
                                                                           args 64, s, mem[_901 + 260 len (32 * mem[_901]) + 32]
                                                                    mem[_901 + 192 len 64] = ext_call.return_data[0 len 64]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 64
                                                                    mem[_888 + 32] = ext_call.return_data[0]
                                                                    if 2 < mem[_362]:
                                                                        mem[_362 + 96] = _888
                                                                        if 0 < mem[_362]:
                                                                            if 0 < mem[_362]:
                                                                                idx = 1
                                                                                u = 0
                                                                                v = 0
                                                                                while idx < mem[_362]:
                                                                                    require idx < mem[_362]
                                                                                    if mem[mem[(32 * idx) + _362 + 32] + 32] <= u:
                                                                                        idx = idx + 1
                                                                                        u = u
                                                                                        v = v
                                                                                        continue 
                                                                                    require idx < mem[_362]
                                                                                    require idx < mem[_362]
                                                                                    idx = idx + 1
                                                                                    u = mem[mem[(32 * idx) + _362 + 32] + 32]
                                                                                    v = mem[mem[(32 * idx) + _362 + 32]]
                                                                                    continue 
                                                                                if t <= 2:
                                                                                    if v <= 2:
                                                                                        return t << 248, s, v << 248, u, u - arg3
                                else:
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x313ce567 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_778 + 32] = ext_call.return_data[0] * s * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                    if 0 < mem[_362]:
                                        mem[_362 + 32] = _778
                                        _841 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_841] = 1
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
                                        mem[_841 + 32] = ext_call.return_data[0]
                                        if 1 < mem[_362]:
                                            mem[_362 + 64] = _841
                                            _932 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_932] = 2
                                            if not arg2:
                                                mem[_932 + 32] = 0
                                                if 2 < mem[_362]:
                                                    mem[_362 + 96] = _932
                                                    if 0 < mem[_362]:
                                                        if 0 < mem[_362]:
                                                            idx = 1
                                                            u = ext_call.return_data[0] * s * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                                            v = 0
                                                            while idx < mem[_362]:
                                                                require idx < mem[_362]
                                                                if mem[mem[(32 * idx) + _362 + 32] + 32] <= u:
                                                                    idx = idx + 1
                                                                    u = u
                                                                    v = v
                                                                    continue 
                                                                require idx < mem[_362]
                                                                require idx < mem[_362]
                                                                idx = idx + 1
                                                                u = mem[mem[(32 * idx) + _362 + 32] + 32]
                                                                v = mem[mem[(32 * idx) + _362 + 32]]
                                                                continue 
                                                            if t <= 2:
                                                                if v <= 2:
                                                                    return t << 248, s, v << 248, u, u - arg3
                                            else:
                                                _959 = mem[64]
                                                mem[mem[64]] = 5
                                                mem[64] = mem[64] + 192
                                                if 0 < mem[_959]:
                                                    mem[_959 + 32] = arg1
                                                    if 1 < mem[_959]:
                                                        mem[_959 + 64] = arg2
                                                        require ext_code.size(stor3)
                                                        staticcall stor3.0xfc0c546a with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if 2 < mem[_959]:
                                                            mem[_959 + 96] = ext_call.return_data[12 len 20]
                                                            require ext_code.size(stor3)
                                                            staticcall stor3.0xfc0c546a with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if 3 < mem[_959]:
                                                                mem[_959 + 128] = ext_call.return_data[12 len 20]
                                                                if 4 < mem[_959]:
                                                                    mem[_959 + 160] = stor4
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
                                                                    mem[_959 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                                                    mem[_959 + 228] = s
                                                                    mem[_959 + 196] = 64
                                                                    mem[_959 + 260] = mem[_959]
                                                                    mem[_959 + 292 len floor32(mem[_959])] = mem[_959 + 32 len floor32(mem[_959])]
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                                            gas gas_remaining wei
                                                                           args 64, s, mem[_959 + 260 len (32 * mem[_959]) + 32]
                                                                    mem[_959 + 192 len 64] = ext_call.return_data[0 len 64]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 64
                                                                    mem[_932 + 32] = ext_call.return_data[0]
                                                                    if 2 < mem[_362]:
                                                                        mem[_362 + 96] = _932
                                                                        if 0 < mem[_362]:
                                                                            if 0 < mem[_362]:
                                                                                idx = 1
                                                                                u = ext_call.return_data[0] * s * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                                                                v = 0
                                                                                while idx < mem[_362]:
                                                                                    require idx < mem[_362]
                                                                                    if mem[mem[(32 * idx) + _362 + 32] + 32] <= u:
                                                                                        idx = idx + 1
                                                                                        u = u
                                                                                        v = v
                                                                                        continue 
                                                                                    require idx < mem[_362]
                                                                                    require idx < mem[_362]
                                                                                    idx = idx + 1
                                                                                    u = mem[mem[(32 * idx) + _362 + 32] + 32]
                                                                                    v = mem[mem[(32 * idx) + _362 + 32]]
                                                                                    continue 
                                                                                if t <= 2:
                                                                                    if v <= 2:
                                                                                        return t << 248, s, v << 248, u, u - arg3
                else:
                    _204 = mem[64]
                    mem[mem[64]] = 5
                    mem[64] = mem[64] + 192
                    if mem[_204]:
                        mem[_204 + 32] = stor4
                        require ext_code.size(stor3)
                        staticcall stor3.0xfc0c546a with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 1 < mem[_204]:
                            mem[_204 + 64] = ext_call.return_data[12 len 20]
                            require ext_code.size(stor3)
                            staticcall stor3.0xfc0c546a with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 < mem[_204]:
                                mem[_204 + 96] = ext_call.return_data[12 len 20]
                                if 3 < mem[_204]:
                                    mem[_204 + 128] = arg2
                                    if 4 < mem[_204]:
                                        mem[_204 + 160] = arg1
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
                                        mem[_204 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                        mem[_204 + 228] = arg3
                                        mem[_204 + 196] = 64
                                        mem[_204 + 260] = mem[_204]
                                        mem[_204 + 292 len floor32(mem[_204])] = mem[_204 + 32 len floor32(mem[_204])]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                gas gas_remaining wei
                                               args 64, arg3, mem[_204 + 260 len (32 * mem[_204]) + 32]
                                        mem[_204 + 192 len 64] = ext_call.return_data[0 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 64
                                        mem[_202 + 32] = ext_call.return_data[0]
                                        if 2 < mem[96]:
                                            mem[192] = _202
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
                                                    mem[_204 + 192] = 3
                                                    mem[64] = _204 + 384
                                                    mem[_204 + 320] = 0
                                                    mem[_204 + 352] = 0
                                                    mem[var74001] = _204 + 320
                                                    u = var74001
                                                    idx = var74002
                                                    while idx - 1:
                                                        mem[64] = mem[64] + 64
                                                        mem[_204 + 320] = 0
                                                        mem[_204 + 352] = 0
                                                        mem[u + 32] = _204 + 320
                                                        u = u + 32
                                                        idx = idx - 1
                                                        continue 
                                                    _1476 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1476] = 0
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
                                                        mem[_1476 + 32] = 0
                                                        if 0 < mem[_204 + 192]:
                                                            mem[_204 + 224] = _1476
                                                            _1566 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_1566] = 1
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
                                                            mem[_1566 + 32] = ext_call.return_data[0]
                                                            if 1 < mem[_204 + 192]:
                                                                mem[_204 + 256] = _1566
                                                                _1650 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_1650] = 2
                                                                if not arg2:
                                                                    mem[_1650 + 32] = 0
                                                                    if 2 < mem[_204 + 192]:
                                                                        mem[_204 + 288] = _1650
                                                                        if 0 < mem[_204 + 192]:
                                                                            if 0 < mem[_204 + 192]:
                                                                                idx = 1
                                                                                u = 0
                                                                                v = 0
                                                                                while idx < mem[_204 + 192]:
                                                                                    require idx < mem[_204 + 192]
                                                                                    if mem[mem[(32 * idx) + _204 + 224] + 32] <= u:
                                                                                        idx = idx + 1
                                                                                        u = u
                                                                                        v = v
                                                                                        continue 
                                                                                    require idx < mem[_204 + 192]
                                                                                    require idx < mem[_204 + 192]
                                                                                    idx = idx + 1
                                                                                    u = mem[mem[(32 * idx) + _204 + 224] + 32]
                                                                                    v = mem[mem[(32 * idx) + _204 + 224]]
                                                                                    continue 
                                                                                if t <= 2:
                                                                                    if v <= 2:
                                                                                        return t << 248, s, v << 248, u, u - arg3
                                                                else:
                                                                    _1655 = mem[64]
                                                                    mem[mem[64]] = 5
                                                                    mem[64] = mem[64] + 192
                                                                    if 0 < mem[_1655]:
                                                                        mem[_1655 + 32] = arg1
                                                                        if 1 < mem[_1655]:
                                                                            mem[_1655 + 64] = arg2
                                                                            require ext_code.size(stor3)
                                                                            staticcall stor3.0xfc0c546a with:
                                                                                    gas gas_remaining wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            if 2 < mem[_1655]:
                                                                                mem[_1655 + 96] = ext_call.return_data[12 len 20]
                                                                                require ext_code.size(stor3)
                                                                                staticcall stor3.0xfc0c546a with:
                                                                                        gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                require return_data.size >= 32
                                                                                if 3 < mem[_1655]:
                                                                                    mem[_1655 + 128] = ext_call.return_data[12 len 20]
                                                                                    if 4 < mem[_1655]:
                                                                                        mem[_1655 + 160] = stor4
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
                                                                                        mem[_1655 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                                                                        mem[_1655 + 228] = s
                                                                                        mem[_1655 + 196] = 64
                                                                                        mem[_1655 + 260] = mem[_1655]
                                                                                        mem[_1655 + 292 len floor32(mem[_1655])] = mem[_1655 + 32 len floor32(mem[_1655])]
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                                                                gas gas_remaining wei
                                                                                               args 64, s, mem[_1655 + 260 len (32 * mem[_1655]) + 32]
                                                                                        mem[_1655 + 192 len 64] = ext_call.return_data[0 len 64]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        require return_data.size >= 64
                                                                                        mem[_1650 + 32] = ext_call.return_data[0]
                                                                                        if 2 < mem[_204 + 192]:
                                                                                            mem[_204 + 288] = _1650
                                                                                            if 0 < mem[_204 + 192]:
                                                                                                if 0 < mem[_204 + 192]:
                                                                                                    idx = 1
                                                                                                    u = 0
                                                                                                    v = 0
                                                                                                    while idx < mem[_204 + 192]:
                                                                                                        require idx < mem[_204 + 192]
                                                                                                        if mem[mem[(32 * idx) + _204 + 224] + 32] <= u:
                                                                                                            idx = idx + 1
                                                                                                            u = u
                                                                                                            v = v
                                                                                                            continue 
                                                                                                        require idx < mem[_204 + 192]
                                                                                                        require idx < mem[_204 + 192]
                                                                                                        idx = idx + 1
                                                                                                        u = mem[mem[(32 * idx) + _204 + 224] + 32]
                                                                                                        v = mem[mem[(32 * idx) + _204 + 224]]
                                                                                                        continue 
                                                                                                    if t <= 2:
                                                                                                        if v <= 2:
                                                                                                            return t << 248, s, v << 248, u, u - arg3
                                                    else:
                                                        require ext_code.size(arg1)
                                                        staticcall arg1.0x313ce567 with:
                                                                gas gas_remaining wei
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[_1476 + 32] = ext_call.return_data[0] * s * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                                        if 0 < mem[_204 + 192]:
                                                            mem[_204 + 224] = _1476
                                                            _1613 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_1613] = 1
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
                                                            mem[_1613 + 32] = ext_call.return_data[0]
                                                            if 1 < mem[_204 + 192]:
                                                                mem[_204 + 256] = _1613
                                                                _1671 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_1671] = 2
                                                                if not arg2:
                                                                    mem[_1671 + 32] = 0
                                                                    if 2 < mem[_204 + 192]:
                                                                        mem[_204 + 288] = _1671
                                                                        if 0 < mem[_204 + 192]:
                                                                            if 0 < mem[_204 + 192]:
                                                                                idx = 1
                                                                                u = ext_call.return_data[0] * s * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                                                                v = 0
                                                                                while idx < mem[_204 + 192]:
                                                                                    require idx < mem[_204 + 192]
                                                                                    if mem[mem[(32 * idx) + _204 + 224] + 32] <= u:
                                                                                        idx = idx + 1
                                                                                        u = u
                                                                                        v = v
                                                                                        continue 
                                                                                    require idx < mem[_204 + 192]
                                                                                    require idx < mem[_204 + 192]
                                                                                    idx = idx + 1
                                                                                    u = mem[mem[(32 * idx) + _204 + 224] + 32]
                                                                                    v = mem[mem[(32 * idx) + _204 + 224]]
                                                                                    continue 
                                                                                if t <= 2:
                                                                                    if v <= 2:
                                                                                        return t << 248, s, v << 248, u, u - arg3
                                                                else:
                                                                    _1687 = mem[64]
                                                                    mem[mem[64]] = 5
                                                                    mem[64] = mem[64] + 192
                                                                    if 0 < mem[_1687]:
                                                                        mem[_1687 + 32] = arg1
                                                                        if 1 < mem[_1687]:
                                                                            mem[_1687 + 64] = arg2
                                                                            require ext_code.size(stor3)
                                                                            staticcall stor3.0xfc0c546a with:
                                                                                    gas gas_remaining wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            if 2 < mem[_1687]:
                                                                                mem[_1687 + 96] = ext_call.return_data[12 len 20]
                                                                                require ext_code.size(stor3)
                                                                                staticcall stor3.0xfc0c546a with:
                                                                                        gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                require return_data.size >= 32
                                                                                if 3 < mem[_1687]:
                                                                                    mem[_1687 + 128] = ext_call.return_data[12 len 20]
                                                                                    if 4 < mem[_1687]:
                                                                                        mem[_1687 + 160] = stor4
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
                                                                                        mem[_1687 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                                                                        mem[_1687 + 228] = s
                                                                                        mem[_1687 + 196] = 64
                                                                                        mem[_1687 + 260] = mem[_1687]
                                                                                        mem[_1687 + 292 len floor32(mem[_1687])] = mem[_1687 + 32 len floor32(mem[_1687])]
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                                                                gas gas_remaining wei
                                                                                               args 64, s, mem[_1687 + 260 len (32 * mem[_1687]) + 32]
                                                                                        mem[_1687 + 192 len 64] = ext_call.return_data[0 len 64]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        require return_data.size >= 64
                                                                                        mem[_1671 + 32] = ext_call.return_data[0]
                                                                                        if 2 < mem[_204 + 192]:
                                                                                            mem[_204 + 288] = _1671
                                                                                            if 0 < mem[_204 + 192]:
                                                                                                if 0 < mem[_204 + 192]:
                                                                                                    idx = 1
                                                                                                    u = ext_call.return_data[0] * s * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                                                                                    v = 0
                                                                                                    while idx < mem[_204 + 192]:
                                                                                                        require idx < mem[_204 + 192]
                                                                                                        if mem[mem[(32 * idx) + _204 + 224] + 32] <= u:
                                                                                                            idx = idx + 1
                                                                                                            u = u
                                                                                                            v = v
                                                                                                            continue 
                                                                                                        require idx < mem[_204 + 192]
                                                                                                        require idx < mem[_204 + 192]
                                                                                                        idx = idx + 1
                                                                                                        u = mem[mem[(32 * idx) + _204 + 224] + 32]
                                                                                                        v = mem[mem[(32 * idx) + _204 + 224]]
                                                                                                        continue 
                                                                                                    if t <= 2:
                                                                                                        if v <= 2:
                                                                                                            return t << 248, s, v << 248, u, u - arg3
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_173 + 32] = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
        if 0 < mem[96]:
            mem[128] = _173
            _189 = mem[64]
            mem[64] = mem[64] + 64
            mem[_189] = 1
            require ext_code.size(stor2)
            staticcall stor2.getExchange(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = arg3
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getEthToTokenInputPrice(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg3
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_189 + 32] = ext_call.return_data[0]
            if 1 < mem[96]:
                mem[160] = _189
                _211 = mem[64]
                mem[64] = mem[64] + 64
                mem[_211] = 1
                if not arg2:
                    mem[_211 + 32] = 0
                    if 2 < mem[96]:
                        mem[192] = _211
                        if 0 < mem[96]:
                            if 0 < mem[96]:
                                idx = 1
                                s = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
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
                                _357 = mem[64]
                                _773 = mem[64] + 128
                                mem[64] = mem[64] + 192
                                mem[_773] = 0
                                mem[_773 + 32] = 0
                                mem[var53001] = _773
                                u = var53001
                                idx = var53002
                                while idx - 1:
                                    _773 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_773] = 0
                                    mem[_773 + 32] = 0
                                    mem[u + 32] = _773
                                    u = u + 32
                                    idx = idx - 1
                                    continue 
                                _777 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_777] = 0
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
                                    mem[_777 + 32] = 0
                                    if 0 < mem[_357]:
                                        mem[_357 + 32] = _777
                                        _814 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_814] = 1
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
                                        mem[_814 + 32] = ext_call.return_data[0]
                                        if 1 < mem[_357]:
                                            mem[_357 + 64] = _814
                                            _883 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_883] = 2
                                            if not arg2:
                                                mem[_883 + 32] = 0
                                                if 2 < mem[_357]:
                                                    mem[_357 + 96] = _883
                                                    if 0 < mem[_357]:
                                                        if 0 < mem[_357]:
                                                            idx = 1
                                                            u = 0
                                                            v = 0
                                                            while idx < mem[_357]:
                                                                require idx < mem[_357]
                                                                if mem[mem[(32 * idx) + _357 + 32] + 32] <= u:
                                                                    idx = idx + 1
                                                                    u = u
                                                                    v = v
                                                                    continue 
                                                                require idx < mem[_357]
                                                                require idx < mem[_357]
                                                                idx = idx + 1
                                                                u = mem[mem[(32 * idx) + _357 + 32] + 32]
                                                                v = mem[mem[(32 * idx) + _357 + 32]]
                                                                continue 
                                                            if t <= 2:
                                                                if v <= 2:
                                                                    return t << 248, s, v << 248, u, u - arg3
                                            else:
                                                _898 = mem[64]
                                                mem[mem[64]] = 5
                                                mem[64] = mem[64] + 192
                                                if 0 < mem[_898]:
                                                    mem[_898 + 32] = arg1
                                                    if 1 < mem[_898]:
                                                        mem[_898 + 64] = arg2
                                                        require ext_code.size(stor3)
                                                        staticcall stor3.0xfc0c546a with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if 2 < mem[_898]:
                                                            mem[_898 + 96] = ext_call.return_data[12 len 20]
                                                            require ext_code.size(stor3)
                                                            staticcall stor3.0xfc0c546a with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if 3 < mem[_898]:
                                                                mem[_898 + 128] = ext_call.return_data[12 len 20]
                                                                if 4 < mem[_898]:
                                                                    mem[_898 + 160] = stor4
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
                                                                    mem[_898 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                                                    mem[_898 + 228] = s
                                                                    mem[_898 + 196] = 64
                                                                    mem[_898 + 260] = mem[_898]
                                                                    mem[_898 + 292 len floor32(mem[_898])] = mem[_898 + 32 len floor32(mem[_898])]
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                                            gas gas_remaining wei
                                                                           args 64, s, mem[_898 + 260 len (32 * mem[_898]) + 32]
                                                                    mem[_898 + 192 len 64] = ext_call.return_data[0 len 64]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 64
                                                                    mem[_883 + 32] = ext_call.return_data[0]
                                                                    if 2 < mem[_357]:
                                                                        mem[_357 + 96] = _883
                                                                        if 0 < mem[_357]:
                                                                            if 0 < mem[_357]:
                                                                                idx = 1
                                                                                u = 0
                                                                                v = 0
                                                                                while idx < mem[_357]:
                                                                                    require idx < mem[_357]
                                                                                    if mem[mem[(32 * idx) + _357 + 32] + 32] <= u:
                                                                                        idx = idx + 1
                                                                                        u = u
                                                                                        v = v
                                                                                        continue 
                                                                                    require idx < mem[_357]
                                                                                    require idx < mem[_357]
                                                                                    idx = idx + 1
                                                                                    u = mem[mem[(32 * idx) + _357 + 32] + 32]
                                                                                    v = mem[mem[(32 * idx) + _357 + 32]]
                                                                                    continue 
                                                                                if t <= 2:
                                                                                    if v <= 2:
                                                                                        return t << 248, s, v << 248, u, u - arg3
                                else:
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x313ce567 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_777 + 32] = ext_call.return_data[0] * s * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                    if 0 < mem[_357]:
                                        mem[_357 + 32] = _777
                                        _837 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_837] = 1
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
                                        mem[_837 + 32] = ext_call.return_data[0]
                                        if 1 < mem[_357]:
                                            mem[_357 + 64] = _837
                                            _927 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_927] = 2
                                            if not arg2:
                                                mem[_927 + 32] = 0
                                                if 2 < mem[_357]:
                                                    mem[_357 + 96] = _927
                                                    if 0 < mem[_357]:
                                                        if 0 < mem[_357]:
                                                            idx = 1
                                                            u = ext_call.return_data[0] * s * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                                            v = 0
                                                            while idx < mem[_357]:
                                                                require idx < mem[_357]
                                                                if mem[mem[(32 * idx) + _357 + 32] + 32] <= u:
                                                                    idx = idx + 1
                                                                    u = u
                                                                    v = v
                                                                    continue 
                                                                require idx < mem[_357]
                                                                require idx < mem[_357]
                                                                idx = idx + 1
                                                                u = mem[mem[(32 * idx) + _357 + 32] + 32]
                                                                v = mem[mem[(32 * idx) + _357 + 32]]
                                                                continue 
                                                            if t <= 2:
                                                                if v <= 2:
                                                                    return t << 248, s, v << 248, u, u - arg3
                                            else:
                                                _949 = mem[64]
                                                mem[mem[64]] = 5
                                                mem[64] = mem[64] + 192
                                                if 0 < mem[_949]:
                                                    mem[_949 + 32] = arg1
                                                    if 1 < mem[_949]:
                                                        mem[_949 + 64] = arg2
                                                        require ext_code.size(stor3)
                                                        staticcall stor3.0xfc0c546a with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if 2 < mem[_949]:
                                                            mem[_949 + 96] = ext_call.return_data[12 len 20]
                                                            require ext_code.size(stor3)
                                                            staticcall stor3.0xfc0c546a with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if 3 < mem[_949]:
                                                                mem[_949 + 128] = ext_call.return_data[12 len 20]
                                                                if 4 < mem[_949]:
                                                                    mem[_949 + 160] = stor4
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
                                                                    mem[_949 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                                                    mem[_949 + 228] = s
                                                                    mem[_949 + 196] = 64
                                                                    mem[_949 + 260] = mem[_949]
                                                                    mem[_949 + 292 len floor32(mem[_949])] = mem[_949 + 32 len floor32(mem[_949])]
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                                            gas gas_remaining wei
                                                                           args 64, s, mem[_949 + 260 len (32 * mem[_949]) + 32]
                                                                    mem[_949 + 192 len 64] = ext_call.return_data[0 len 64]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 64
                                                                    mem[_927 + 32] = ext_call.return_data[0]
                                                                    if 2 < mem[_357]:
                                                                        mem[_357 + 96] = _927
                                                                        if 0 < mem[_357]:
                                                                            if 0 < mem[_357]:
                                                                                idx = 1
                                                                                u = ext_call.return_data[0] * s * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                                                                v = 0
                                                                                while idx < mem[_357]:
                                                                                    require idx < mem[_357]
                                                                                    if mem[mem[(32 * idx) + _357 + 32] + 32] <= u:
                                                                                        idx = idx + 1
                                                                                        u = u
                                                                                        v = v
                                                                                        continue 
                                                                                    require idx < mem[_357]
                                                                                    require idx < mem[_357]
                                                                                    idx = idx + 1
                                                                                    u = mem[mem[(32 * idx) + _357 + 32] + 32]
                                                                                    v = mem[mem[(32 * idx) + _357 + 32]]
                                                                                    continue 
                                                                                if t <= 2:
                                                                                    if v <= 2:
                                                                                        return t << 248, s, v << 248, u, u - arg3
                else:
                    _219 = mem[64]
                    mem[mem[64]] = 5
                    mem[64] = mem[64] + 192
                    if mem[_219]:
                        mem[_219 + 32] = stor4
                        require ext_code.size(stor3)
                        staticcall stor3.0xfc0c546a with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 1 < mem[_219]:
                            mem[_219 + 64] = ext_call.return_data[12 len 20]
                            require ext_code.size(stor3)
                            staticcall stor3.0xfc0c546a with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 < mem[_219]:
                                mem[_219 + 96] = ext_call.return_data[12 len 20]
                                if 3 < mem[_219]:
                                    mem[_219 + 128] = arg2
                                    if 4 < mem[_219]:
                                        mem[_219 + 160] = arg1
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
                                        mem[_219 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                        mem[_219 + 228] = arg3
                                        mem[_219 + 196] = 64
                                        mem[_219 + 260] = mem[_219]
                                        mem[_219 + 292 len floor32(mem[_219])] = mem[_219 + 32 len floor32(mem[_219])]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                gas gas_remaining wei
                                               args 64, arg3, mem[_219 + 260 len (32 * mem[_219]) + 32]
                                        mem[_219 + 192 len 64] = ext_call.return_data[0 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 64
                                        mem[_211 + 32] = ext_call.return_data[0]
                                        if 2 < mem[96]:
                                            mem[192] = _211
                                            if 0 < mem[96]:
                                                if 0 < mem[96]:
                                                    idx = 1
                                                    s = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
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
                                                    mem[_219 + 192] = 3
                                                    mem[64] = _219 + 384
                                                    mem[_219 + 320] = 0
                                                    mem[_219 + 352] = 0
                                                    mem[var79001] = _219 + 320
                                                    u = var79001
                                                    idx = var79002
                                                    while idx - 1:
                                                        mem[64] = mem[64] + 64
                                                        mem[_219 + 320] = 0
                                                        mem[_219 + 352] = 0
                                                        mem[u + 32] = _219 + 320
                                                        u = u + 32
                                                        idx = idx - 1
                                                        continue 
                                                    _1471 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1471] = 0
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
                                                        mem[_1471 + 32] = 0
                                                        if 0 < mem[_219 + 192]:
                                                            mem[_219 + 224] = _1471
                                                            _1560 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_1560] = 1
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
                                                            mem[_1560 + 32] = ext_call.return_data[0]
                                                            if 1 < mem[_219 + 192]:
                                                                mem[_219 + 256] = _1560
                                                                _1647 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_1647] = 2
                                                                if not arg2:
                                                                    mem[_1647 + 32] = 0
                                                                    if 2 < mem[_219 + 192]:
                                                                        mem[_219 + 288] = _1647
                                                                        if 0 < mem[_219 + 192]:
                                                                            if 0 < mem[_219 + 192]:
                                                                                idx = 1
                                                                                u = 0
                                                                                v = 0
                                                                                while idx < mem[_219 + 192]:
                                                                                    require idx < mem[_219 + 192]
                                                                                    if mem[mem[(32 * idx) + _219 + 224] + 32] <= u:
                                                                                        idx = idx + 1
                                                                                        u = u
                                                                                        v = v
                                                                                        continue 
                                                                                    require idx < mem[_219 + 192]
                                                                                    require idx < mem[_219 + 192]
                                                                                    idx = idx + 1
                                                                                    u = mem[mem[(32 * idx) + _219 + 224] + 32]
                                                                                    v = mem[mem[(32 * idx) + _219 + 224]]
                                                                                    continue 
                                                                                if t <= 2:
                                                                                    if v <= 2:
                                                                                        return t << 248, s, v << 248, u, u - arg3
                                                                else:
                                                                    _1652 = mem[64]
                                                                    mem[mem[64]] = 5
                                                                    mem[64] = mem[64] + 192
                                                                    if 0 < mem[_1652]:
                                                                        mem[_1652 + 32] = arg1
                                                                        if 1 < mem[_1652]:
                                                                            mem[_1652 + 64] = arg2
                                                                            require ext_code.size(stor3)
                                                                            staticcall stor3.0xfc0c546a with:
                                                                                    gas gas_remaining wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            if 2 < mem[_1652]:
                                                                                mem[_1652 + 96] = ext_call.return_data[12 len 20]
                                                                                require ext_code.size(stor3)
                                                                                staticcall stor3.0xfc0c546a with:
                                                                                        gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                require return_data.size >= 32
                                                                                if 3 < mem[_1652]:
                                                                                    mem[_1652 + 128] = ext_call.return_data[12 len 20]
                                                                                    if 4 < mem[_1652]:
                                                                                        mem[_1652 + 160] = stor4
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
                                                                                        mem[_1652 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                                                                        mem[_1652 + 228] = s
                                                                                        mem[_1652 + 196] = 64
                                                                                        mem[_1652 + 260] = mem[_1652]
                                                                                        mem[_1652 + 292 len floor32(mem[_1652])] = mem[_1652 + 32 len floor32(mem[_1652])]
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                                                                gas gas_remaining wei
                                                                                               args 64, s, mem[_1652 + 260 len (32 * mem[_1652]) + 32]
                                                                                        mem[_1652 + 192 len 64] = ext_call.return_data[0 len 64]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        require return_data.size >= 64
                                                                                        mem[_1647 + 32] = ext_call.return_data[0]
                                                                                        if 2 < mem[_219 + 192]:
                                                                                            mem[_219 + 288] = _1647
                                                                                            if 0 < mem[_219 + 192]:
                                                                                                if 0 < mem[_219 + 192]:
                                                                                                    idx = 1
                                                                                                    u = 0
                                                                                                    v = 0
                                                                                                    while idx < mem[_219 + 192]:
                                                                                                        require idx < mem[_219 + 192]
                                                                                                        if mem[mem[(32 * idx) + _219 + 224] + 32] <= u:
                                                                                                            idx = idx + 1
                                                                                                            u = u
                                                                                                            v = v
                                                                                                            continue 
                                                                                                        require idx < mem[_219 + 192]
                                                                                                        require idx < mem[_219 + 192]
                                                                                                        idx = idx + 1
                                                                                                        u = mem[mem[(32 * idx) + _219 + 224] + 32]
                                                                                                        v = mem[mem[(32 * idx) + _219 + 224]]
                                                                                                        continue 
                                                                                                    if t <= 2:
                                                                                                        if v <= 2:
                                                                                                            return t << 248, s, v << 248, u, u - arg3
                                                    else:
                                                        require ext_code.size(arg1)
                                                        staticcall arg1.0x313ce567 with:
                                                                gas gas_remaining wei
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[_1471 + 32] = ext_call.return_data[0] * s * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                                        if 0 < mem[_219 + 192]:
                                                            mem[_219 + 224] = _1471
                                                            _1605 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_1605] = 1
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
                                                            mem[_1605 + 32] = ext_call.return_data[0]
                                                            if 1 < mem[_219 + 192]:
                                                                mem[_219 + 256] = _1605
                                                                _1669 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_1669] = 2
                                                                if not arg2:
                                                                    mem[_1669 + 32] = 0
                                                                    if 2 < mem[_219 + 192]:
                                                                        mem[_219 + 288] = _1669
                                                                        if 0 < mem[_219 + 192]:
                                                                            if 0 < mem[_219 + 192]:
                                                                                idx = 1
                                                                                u = ext_call.return_data[0] * s * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                                                                v = 0
                                                                                while idx < mem[_219 + 192]:
                                                                                    require idx < mem[_219 + 192]
                                                                                    if mem[mem[(32 * idx) + _219 + 224] + 32] <= u:
                                                                                        idx = idx + 1
                                                                                        u = u
                                                                                        v = v
                                                                                        continue 
                                                                                    require idx < mem[_219 + 192]
                                                                                    require idx < mem[_219 + 192]
                                                                                    idx = idx + 1
                                                                                    u = mem[mem[(32 * idx) + _219 + 224] + 32]
                                                                                    v = mem[mem[(32 * idx) + _219 + 224]]
                                                                                    continue 
                                                                                if t <= 2:
                                                                                    if v <= 2:
                                                                                        return t << 248, s, v << 248, u, u - arg3
                                                                else:
                                                                    _1681 = mem[64]
                                                                    mem[mem[64]] = 5
                                                                    mem[64] = mem[64] + 192
                                                                    if 0 < mem[_1681]:
                                                                        mem[_1681 + 32] = arg1
                                                                        if 1 < mem[_1681]:
                                                                            mem[_1681 + 64] = arg2
                                                                            require ext_code.size(stor3)
                                                                            staticcall stor3.0xfc0c546a with:
                                                                                    gas gas_remaining wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            if 2 < mem[_1681]:
                                                                                mem[_1681 + 96] = ext_call.return_data[12 len 20]
                                                                                require ext_code.size(stor3)
                                                                                staticcall stor3.0xfc0c546a with:
                                                                                        gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                require return_data.size >= 32
                                                                                if 3 < mem[_1681]:
                                                                                    mem[_1681 + 128] = ext_call.return_data[12 len 20]
                                                                                    if 4 < mem[_1681]:
                                                                                        mem[_1681 + 160] = stor4
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
                                                                                        mem[_1681 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                                                                        mem[_1681 + 228] = s
                                                                                        mem[_1681 + 196] = 64
                                                                                        mem[_1681 + 260] = mem[_1681]
                                                                                        mem[_1681 + 292 len floor32(mem[_1681])] = mem[_1681 + 32 len floor32(mem[_1681])]
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                                                                gas gas_remaining wei
                                                                                               args 64, s, mem[_1681 + 260 len (32 * mem[_1681]) + 32]
                                                                                        mem[_1681 + 192 len 64] = ext_call.return_data[0 len 64]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        require return_data.size >= 64
                                                                                        mem[_1669 + 32] = ext_call.return_data[0]
                                                                                        if 2 < mem[_219 + 192]:
                                                                                            mem[_219 + 288] = _1669
                                                                                            if 0 < mem[_219 + 192]:
                                                                                                if 0 < mem[_219 + 192]:
                                                                                                    idx = 1
                                                                                                    u = ext_call.return_data[0] * s * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                                                                                    v = 0
                                                                                                    while idx < mem[_219 + 192]:
                                                                                                        require idx < mem[_219 + 192]
                                                                                                        if mem[mem[(32 * idx) + _219 + 224] + 32] <= u:
                                                                                                            idx = idx + 1
                                                                                                            u = u
                                                                                                            v = v
                                                                                                            continue 
                                                                                                        require idx < mem[_219 + 192]
                                                                                                        require idx < mem[_219 + 192]
                                                                                                        idx = idx + 1
                                                                                                        u = mem[mem[(32 * idx) + _219 + 224] + 32]
                                                                                                        v = mem[mem[(32 * idx) + _219 + 224]]
                                                                                                        continue 
                                                                                                    if t <= 2:
                                                                                                        if v <= 2:
                                                                                                            return t << 248, s, v << 248, u, u - arg3
    revert
}



}
