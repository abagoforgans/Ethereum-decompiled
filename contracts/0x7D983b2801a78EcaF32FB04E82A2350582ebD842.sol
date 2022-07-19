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
        _684 = mem[64]
        _840 = mem[64] + 128
        mem[64] = mem[64] + 192
        mem[_840] = 0
        mem[_840 + 32] = 0
        mem[var13001] = _840
        z = var13001
        y = var13002
        while y - 1:
            _840 = mem[64]
            mem[64] = mem[64] + 64
            mem[_840] = 0
            mem[_840 + 32] = 0
            mem[z + 32] = _840
            z = z + 32
            y = y - 1
            continue 
        _841 = mem[64]
        mem[64] = mem[64] + 64
        mem[_841] = 0
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
            mem[_841 + 32] = 0
            require 0 < mem[_684]
            mem[_684 + 32] = _841
            _852 = mem[64]
            mem[64] = mem[64] + 64
            mem[_852] = 1
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
            mem[_852 + 32] = ext_call.return_data[0]
            require 1 < mem[_684]
            mem[_684 + 64] = _852
            _870 = mem[64]
            mem[64] = mem[64] + 64
            mem[_870] = 1
            if not arg2:
                mem[_870 + 32] = 0
                require 2 < mem[_684]
                mem[_684 + 96] = _870
                _881 = mem[64]
                mem[64] = mem[64] + 64
                mem[_881] = 0
                mem[_881 + 32] = 0
                require 0 < mem[_684]
                y = 1
                z = _841
                while y < mem[_684]:
                    require y < mem[_684]
                    if mem[mem[(32 * y) + _684 + 32] + 32] <= mem[z + 32]:
                        y = y + 1
                        z = z
                        continue 
                    require y < mem[_684]
                    y = y + 1
                    z = mem[(32 * y) + _684 + 32]
                    continue 
                _1001 = mem[z]
                _1002 = mem[z + 32]
                _1018 = mem[64]
                _1366 = mem[64] + 128
                mem[64] = mem[64] + 192
                mem[_1366] = 0
                mem[_1366 + 32] = 0
                mem[var52001] = _1366
                z = var52001
                y = var52002
                while y - 1:
                    _1366 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1366] = 0
                    mem[_1366 + 32] = 0
                    mem[z + 32] = _1366
                    z = z + 32
                    y = y - 1
                    continue 
                _1370 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1370] = 0
                mem[mem[64] + 36] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                mem[mem[64] + 68] = _1002
                require ext_code.size(stor1)
                staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, _1002
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if not ext_call.return_data[32]:
                    mem[_1370 + 32] = 0
                    require 0 < mem[_1018]
                    mem[_1018 + 32] = _1370
                    _1410 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1410] = 1
                    require ext_code.size(stor2)
                    staticcall stor2.getExchange(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = _1002
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                            gas gas_remaining wei
                           args _1002
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1410 + 32] = ext_call.return_data[0]
                    require 1 < mem[_1018]
                    mem[_1018 + 64] = _1410
                    _1480 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1480] = 2
                    if not arg2:
                        mem[_1480 + 32] = 0
                        require 2 < mem[_1018]
                        mem[_1018 + 96] = _1480
                        _1530 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1530] = 0
                        mem[_1530 + 32] = 0
                        require 0 < mem[_1018]
                        y = 1
                        z = _1370
                        while y < mem[_1018]:
                            require y < mem[_1018]
                            if mem[mem[(32 * y) + _1018 + 32] + 32] <= mem[z + 32]:
                                y = y + 1
                                z = z
                                continue 
                            require y < mem[_1018]
                            y = y + 1
                            z = mem[(32 * y) + _1018 + 32]
                            continue 
                    else:
                        _1493 = mem[64]
                        mem[mem[64]] = 5
                        mem[64] = mem[64] + 192
                        require 0 < mem[_1493]
                        mem[_1493 + 32] = arg1
                        require 1 < mem[_1493]
                        mem[_1493 + 64] = arg2
                        require ext_code.size(stor3)
                        staticcall stor3.0xfc0c546a with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 2 < mem[_1493]
                        mem[_1493 + 96] = ext_call.return_data[12 len 20]
                        require ext_code.size(stor3)
                        staticcall stor3.0xfc0c546a with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 3 < mem[_1493]
                        mem[_1493 + 128] = ext_call.return_data[12 len 20]
                        require 4 < mem[_1493]
                        mem[_1493 + 160] = stor4
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
                        mem[_1493 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                        mem[_1493 + 228] = _1002
                        mem[_1493 + 196] = 64
                        mem[_1493 + 260] = mem[_1493]
                        y = 0
                        while y < 32 * mem[_1493]:
                            mem[y + _1493 + 292] = mem[y + _1493 + 32]
                            y = y + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args 64, _1002, mem[_1493 + 260 len (32 * mem[_1493]) + 32]
                        mem[_1493 + 192 len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        mem[_1480 + 32] = ext_call.return_data[0]
                        require 2 < mem[_1018]
                        mem[_1018 + 96] = _1480
                        mem[64] = _1493 + 256
                        mem[_1493 + 192] = 0
                        mem[_1493 + 224] = 0
                        require 0 < mem[_1018]
                        y = 1
                        z = mem[_1018 + 32]
                        while y < mem[_1018]:
                            require y < mem[_1018]
                            if mem[mem[(32 * y) + _1018 + 32] + 32] <= mem[z + 32]:
                                y = y + 1
                                z = z
                                continue 
                            require y < mem[_1018]
                            y = y + 1
                            z = mem[(32 * y) + _1018 + 32]
                            continue 
                else:
                    require ext_code.size(arg1)
                    staticcall arg1.0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1370 + 32] = ext_call.return_data[0] * _1002 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                    require 0 < mem[_1018]
                    mem[_1018 + 32] = _1370
                    _1433 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1433] = 1
                    require ext_code.size(stor2)
                    staticcall stor2.getExchange(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = _1002
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                            gas gas_remaining wei
                           args _1002
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1433 + 32] = ext_call.return_data[0]
                    require 1 < mem[_1018]
                    mem[_1018 + 64] = _1433
                    _1523 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1523] = 2
                    if not arg2:
                        mem[_1523 + 32] = 0
                        require 2 < mem[_1018]
                        mem[_1018 + 96] = _1523
                        _1610 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1610] = 0
                        mem[_1610 + 32] = 0
                        require 0 < mem[_1018]
                        y = 1
                        z = _1370
                        while y < mem[_1018]:
                            require y < mem[_1018]
                            if mem[mem[(32 * y) + _1018 + 32] + 32] <= mem[z + 32]:
                                y = y + 1
                                z = z
                                continue 
                            require y < mem[_1018]
                            y = y + 1
                            z = mem[(32 * y) + _1018 + 32]
                            continue 
                    else:
                        _1540 = mem[64]
                        mem[mem[64]] = 5
                        mem[64] = mem[64] + 192
                        require 0 < mem[_1540]
                        mem[_1540 + 32] = arg1
                        require 1 < mem[_1540]
                        mem[_1540 + 64] = arg2
                        require ext_code.size(stor3)
                        staticcall stor3.0xfc0c546a with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 2 < mem[_1540]
                        mem[_1540 + 96] = ext_call.return_data[12 len 20]
                        require ext_code.size(stor3)
                        staticcall stor3.0xfc0c546a with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 3 < mem[_1540]
                        mem[_1540 + 128] = ext_call.return_data[12 len 20]
                        require 4 < mem[_1540]
                        mem[_1540 + 160] = stor4
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
                        mem[_1540 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                        mem[_1540 + 228] = _1002
                        mem[_1540 + 196] = 64
                        mem[_1540 + 260] = mem[_1540]
                        y = 0
                        while y < 32 * mem[_1540]:
                            mem[y + _1540 + 292] = mem[y + _1540 + 32]
                            y = y + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args 64, _1002, mem[_1540 + 260 len (32 * mem[_1540]) + 32]
                        mem[_1540 + 192 len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        mem[_1523 + 32] = ext_call.return_data[0]
                        require 2 < mem[_1018]
                        mem[_1018 + 96] = _1523
                        mem[64] = _1540 + 256
                        mem[_1540 + 192] = 0
                        mem[_1540 + 224] = 0
                        require 0 < mem[_1018]
                        y = 1
                        z = mem[_1018 + 32]
                        while y < mem[_1018]:
                            require y < mem[_1018]
                            if mem[mem[(32 * y) + _1018 + 32] + 32] <= mem[z + 32]:
                                y = y + 1
                                z = z
                                continue 
                            require y < mem[_1018]
                            y = y + 1
                            z = mem[(32 * y) + _1018 + 32]
                            continue 
                if mem[z + 32] - idx <= arg5:
                    idx = idx - arg4
                    s = s + 1
                    t = t
                    u = u
                    v = v
                    w = w
                    x = x
                    continue 
                if mem[z + 32] - idx <= t:
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
                t = mem[z + 32] - idx
                u = mem[z + 32]
                v = mem[z]
                w = _1002
                x = _1001
                continue 
            _872 = mem[64]
            mem[mem[64]] = 5
            mem[64] = mem[64] + 192
            require mem[_872]
            mem[_872 + 32] = stor4
            require ext_code.size(stor3)
            staticcall stor3.0xfc0c546a with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 < mem[_872]
            mem[_872 + 64] = ext_call.return_data[12 len 20]
            require ext_code.size(stor3)
            staticcall stor3.0xfc0c546a with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 < mem[_872]
            mem[_872 + 96] = ext_call.return_data[12 len 20]
            require 3 < mem[_872]
            mem[_872 + 128] = arg2
            require 4 < mem[_872]
            mem[_872 + 160] = arg1
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
            mem[_872 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
            mem[_872 + 228] = idx
            mem[_872 + 196] = 64
            mem[_872 + 260] = mem[_872]
            y = 0
            while y < 32 * mem[_872]:
                mem[y + _872 + 292] = mem[y + _872 + 32]
                y = y + 32
                continue 
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args 64, idx, mem[_872 + 260 len (32 * mem[_872]) + 32]
            mem[_872 + 192 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[_870 + 32] = ext_call.return_data[0]
            require 2 < mem[_684]
            mem[_684 + 96] = _870
            mem[64] = _872 + 256
            mem[_872 + 192] = 0
            mem[_872 + 224] = 0
            require 0 < mem[_684]
            y = 1
            z = mem[_684 + 32]
            while y < mem[_684]:
                require y < mem[_684]
                if mem[mem[(32 * y) + _684 + 32] + 32] <= mem[z + 32]:
                    y = y + 1
                    z = z
                    continue 
                require y < mem[_684]
                y = y + 1
                z = mem[(32 * y) + _684 + 32]
                continue 
            _1061 = mem[z]
            _1062 = mem[z + 32]
            mem[_872 + 256] = 3
            mem[64] = _872 + 448
            mem[_872 + 384] = 0
            mem[_872 + 416] = 0
            mem[var78001] = _872 + 384
            z = var78001
            y = var78002
            while y - 1:
                mem[64] = mem[64] + 64
                mem[_872 + 384] = 0
                mem[_872 + 416] = 0
                mem[z + 32] = _872 + 384
                z = z + 32
                y = y - 1
                continue 
            _1984 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1984] = 0
            mem[mem[64] + 36] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
            mem[mem[64] + 68] = _1062
            require ext_code.size(stor1)
            staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, _1062
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not ext_call.return_data[32]:
                mem[_1984 + 32] = 0
                require 0 < mem[_872 + 256]
                mem[_872 + 288] = _1984
                _2034 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2034] = 1
                require ext_code.size(stor2)
                staticcall stor2.getExchange(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = _1062
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1062
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_2034 + 32] = ext_call.return_data[0]
                require 1 < mem[_872 + 256]
                mem[_872 + 320] = _2034
                _2110 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2110] = 2
                if not arg2:
                    mem[_2110 + 32] = 0
                    require 2 < mem[_872 + 256]
                    mem[_872 + 352] = _2110
                    _2133 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2133] = 0
                    mem[_2133 + 32] = 0
                    require 0 < mem[_872 + 256]
                    y = 1
                    z = _1984
                    while y < mem[_872 + 256]:
                        require y < mem[_872 + 256]
                        if mem[mem[(32 * y) + _872 + 288] + 32] <= mem[z + 32]:
                            y = y + 1
                            z = z
                            continue 
                        require y < mem[_872 + 256]
                        y = y + 1
                        z = mem[(32 * y) + _872 + 288]
                        continue 
                else:
                    _2115 = mem[64]
                    mem[mem[64]] = 5
                    mem[64] = mem[64] + 192
                    require 0 < mem[_2115]
                    mem[_2115 + 32] = arg1
                    require 1 < mem[_2115]
                    mem[_2115 + 64] = arg2
                    require ext_code.size(stor3)
                    staticcall stor3.0xfc0c546a with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < mem[_2115]
                    mem[_2115 + 96] = ext_call.return_data[12 len 20]
                    require ext_code.size(stor3)
                    staticcall stor3.0xfc0c546a with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 3 < mem[_2115]
                    mem[_2115 + 128] = ext_call.return_data[12 len 20]
                    require 4 < mem[_2115]
                    mem[_2115 + 160] = stor4
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
                    mem[_2115 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                    mem[_2115 + 228] = _1062
                    mem[_2115 + 196] = 64
                    mem[_2115 + 260] = mem[_2115]
                    y = 0
                    while y < 32 * mem[_2115]:
                        mem[y + _2115 + 292] = mem[y + _2115 + 32]
                        y = y + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args 64, _1062, mem[_2115 + 260 len (32 * mem[_2115]) + 32]
                    mem[_2115 + 192 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    mem[_2110 + 32] = ext_call.return_data[0]
                    require 2 < mem[_872 + 256]
                    mem[_872 + 352] = _2110
                    mem[64] = _2115 + 256
                    mem[_2115 + 192] = 0
                    mem[_2115 + 224] = 0
                    require 0 < mem[_872 + 256]
                    y = 1
                    z = mem[_872 + 288]
                    while y < mem[_872 + 256]:
                        require y < mem[_872 + 256]
                        if mem[mem[(32 * y) + _872 + 288] + 32] <= mem[z + 32]:
                            y = y + 1
                            z = z
                            continue 
                        require y < mem[_872 + 256]
                        y = y + 1
                        z = mem[(32 * y) + _872 + 288]
                        continue 
            else:
                require ext_code.size(arg1)
                staticcall arg1.0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_1984 + 32] = ext_call.return_data[0] * _1062 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                require 0 < mem[_872 + 256]
                mem[_872 + 288] = _1984
                _2081 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2081] = 1
                require ext_code.size(stor2)
                staticcall stor2.getExchange(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = _1062
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1062
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_2081 + 32] = ext_call.return_data[0]
                require 1 < mem[_872 + 256]
                mem[_872 + 320] = _2081
                _2130 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2130] = 2
                if not arg2:
                    mem[_2130 + 32] = 0
                    require 2 < mem[_872 + 256]
                    mem[_872 + 352] = _2130
                    _2177 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2177] = 0
                    mem[_2177 + 32] = 0
                    require 0 < mem[_872 + 256]
                    y = 1
                    z = _1984
                    while y < mem[_872 + 256]:
                        require y < mem[_872 + 256]
                        if mem[mem[(32 * y) + _872 + 288] + 32] <= mem[z + 32]:
                            y = y + 1
                            z = z
                            continue 
                        require y < mem[_872 + 256]
                        y = y + 1
                        z = mem[(32 * y) + _872 + 288]
                        continue 
                else:
                    _2140 = mem[64]
                    mem[mem[64]] = 5
                    mem[64] = mem[64] + 192
                    require 0 < mem[_2140]
                    mem[_2140 + 32] = arg1
                    require 1 < mem[_2140]
                    mem[_2140 + 64] = arg2
                    require ext_code.size(stor3)
                    staticcall stor3.0xfc0c546a with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < mem[_2140]
                    mem[_2140 + 96] = ext_call.return_data[12 len 20]
                    require ext_code.size(stor3)
                    staticcall stor3.0xfc0c546a with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 3 < mem[_2140]
                    mem[_2140 + 128] = ext_call.return_data[12 len 20]
                    require 4 < mem[_2140]
                    mem[_2140 + 160] = stor4
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
                    mem[_2140 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                    mem[_2140 + 228] = _1062
                    mem[_2140 + 196] = 64
                    mem[_2140 + 260] = mem[_2140]
                    y = 0
                    while y < 32 * mem[_2140]:
                        mem[y + _2140 + 292] = mem[y + _2140 + 32]
                        y = y + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args 64, _1062, mem[_2140 + 260 len (32 * mem[_2140]) + 32]
                    mem[_2140 + 192 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    mem[_2130 + 32] = ext_call.return_data[0]
                    require 2 < mem[_872 + 256]
                    mem[_872 + 352] = _2130
                    mem[64] = _2140 + 256
                    mem[_2140 + 192] = 0
                    mem[_2140 + 224] = 0
                    require 0 < mem[_872 + 256]
                    y = 1
                    z = mem[_872 + 288]
                    while y < mem[_872 + 256]:
                        require y < mem[_872 + 256]
                        if mem[mem[(32 * y) + _872 + 288] + 32] <= mem[z + 32]:
                            y = y + 1
                            z = z
                            continue 
                        require y < mem[_872 + 256]
                        y = y + 1
                        z = mem[(32 * y) + _872 + 288]
                        continue 
            if mem[z + 32] - idx <= arg5:
                idx = idx - arg4
                s = s + 1
                t = t
                u = u
                v = v
                w = w
                x = x
                continue 
            if mem[z + 32] - idx <= t:
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
            t = mem[z + 32] - idx
            u = mem[z + 32]
            v = mem[z]
            w = _1062
            x = _1061
            continue 
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_841 + 32] = ext_call.return_data[0] * idx * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
        require 0 < mem[_684]
        mem[_684 + 32] = _841
        _857 = mem[64]
        mem[64] = mem[64] + 64
        mem[_857] = 1
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
        mem[_857 + 32] = ext_call.return_data[0]
        require 1 < mem[_684]
        mem[_684 + 64] = _857
        _879 = mem[64]
        mem[64] = mem[64] + 64
        mem[_879] = 1
        if not arg2:
            mem[_879 + 32] = 0
            require 2 < mem[_684]
            mem[_684 + 96] = _879
            _902 = mem[64]
            mem[64] = mem[64] + 64
            mem[_902] = 0
            mem[_902 + 32] = 0
            require 0 < mem[_684]
            y = 1
            z = _841
            while y < mem[_684]:
                require y < mem[_684]
                if mem[mem[(32 * y) + _684 + 32] + 32] <= mem[z + 32]:
                    y = y + 1
                    z = z
                    continue 
                require y < mem[_684]
                y = y + 1
                z = mem[(32 * y) + _684 + 32]
                continue 
            _995 = mem[z]
            _996 = mem[z + 32]
            _1015 = mem[64]
            _1365 = mem[64] + 128
            mem[64] = mem[64] + 192
            mem[_1365] = 0
            mem[_1365 + 32] = 0
            mem[var57001] = _1365
            z = var57001
            y = var57002
            while y - 1:
                _1365 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1365] = 0
                mem[_1365 + 32] = 0
                mem[z + 32] = _1365
                z = z + 32
                y = y - 1
                continue 
            _1369 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1369] = 0
            mem[mem[64] + 36] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
            mem[mem[64] + 68] = _996
            require ext_code.size(stor1)
            staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, _996
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not ext_call.return_data[32]:
                mem[_1369 + 32] = 0
                require 0 < mem[_1015]
                mem[_1015 + 32] = _1369
                _1406 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1406] = 1
                require ext_code.size(stor2)
                staticcall stor2.getExchange(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = _996
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                        gas gas_remaining wei
                       args _996
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_1406 + 32] = ext_call.return_data[0]
                require 1 < mem[_1015]
                mem[_1015 + 64] = _1406
                _1475 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1475] = 2
                if not arg2:
                    mem[_1475 + 32] = 0
                    require 2 < mem[_1015]
                    mem[_1015 + 96] = _1475
                    _1527 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1527] = 0
                    mem[_1527 + 32] = 0
                    require 0 < mem[_1015]
                    y = 1
                    z = _1369
                    while y < mem[_1015]:
                        require y < mem[_1015]
                        if mem[mem[(32 * y) + _1015 + 32] + 32] <= mem[z + 32]:
                            y = y + 1
                            z = z
                            continue 
                        require y < mem[_1015]
                        y = y + 1
                        z = mem[(32 * y) + _1015 + 32]
                        continue 
                else:
                    _1490 = mem[64]
                    mem[mem[64]] = 5
                    mem[64] = mem[64] + 192
                    require 0 < mem[_1490]
                    mem[_1490 + 32] = arg1
                    require 1 < mem[_1490]
                    mem[_1490 + 64] = arg2
                    require ext_code.size(stor3)
                    staticcall stor3.0xfc0c546a with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < mem[_1490]
                    mem[_1490 + 96] = ext_call.return_data[12 len 20]
                    require ext_code.size(stor3)
                    staticcall stor3.0xfc0c546a with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 3 < mem[_1490]
                    mem[_1490 + 128] = ext_call.return_data[12 len 20]
                    require 4 < mem[_1490]
                    mem[_1490 + 160] = stor4
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
                    mem[_1490 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                    mem[_1490 + 228] = _996
                    mem[_1490 + 196] = 64
                    mem[_1490 + 260] = mem[_1490]
                    y = 0
                    while y < 32 * mem[_1490]:
                        mem[y + _1490 + 292] = mem[y + _1490 + 32]
                        y = y + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args 64, _996, mem[_1490 + 260 len (32 * mem[_1490]) + 32]
                    mem[_1490 + 192 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    mem[_1475 + 32] = ext_call.return_data[0]
                    require 2 < mem[_1015]
                    mem[_1015 + 96] = _1475
                    mem[64] = _1490 + 256
                    mem[_1490 + 192] = 0
                    mem[_1490 + 224] = 0
                    require 0 < mem[_1015]
                    y = 1
                    z = mem[_1015 + 32]
                    while y < mem[_1015]:
                        require y < mem[_1015]
                        if mem[mem[(32 * y) + _1015 + 32] + 32] <= mem[z + 32]:
                            y = y + 1
                            z = z
                            continue 
                        require y < mem[_1015]
                        y = y + 1
                        z = mem[(32 * y) + _1015 + 32]
                        continue 
            else:
                require ext_code.size(arg1)
                staticcall arg1.0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_1369 + 32] = ext_call.return_data[0] * _996 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                require 0 < mem[_1015]
                mem[_1015 + 32] = _1369
                _1429 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1429] = 1
                require ext_code.size(stor2)
                staticcall stor2.getExchange(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = _996
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                        gas gas_remaining wei
                       args _996
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_1429 + 32] = ext_call.return_data[0]
                require 1 < mem[_1015]
                mem[_1015 + 64] = _1429
                _1519 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1519] = 2
                if not arg2:
                    mem[_1519 + 32] = 0
                    require 2 < mem[_1015]
                    mem[_1015 + 96] = _1519
                    _1599 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1599] = 0
                    mem[_1599 + 32] = 0
                    require 0 < mem[_1015]
                    y = 1
                    z = _1369
                    while y < mem[_1015]:
                        require y < mem[_1015]
                        if mem[mem[(32 * y) + _1015 + 32] + 32] <= mem[z + 32]:
                            y = y + 1
                            z = z
                            continue 
                        require y < mem[_1015]
                        y = y + 1
                        z = mem[(32 * y) + _1015 + 32]
                        continue 
                else:
                    _1533 = mem[64]
                    mem[mem[64]] = 5
                    mem[64] = mem[64] + 192
                    require 0 < mem[_1533]
                    mem[_1533 + 32] = arg1
                    require 1 < mem[_1533]
                    mem[_1533 + 64] = arg2
                    require ext_code.size(stor3)
                    staticcall stor3.0xfc0c546a with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < mem[_1533]
                    mem[_1533 + 96] = ext_call.return_data[12 len 20]
                    require ext_code.size(stor3)
                    staticcall stor3.0xfc0c546a with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 3 < mem[_1533]
                    mem[_1533 + 128] = ext_call.return_data[12 len 20]
                    require 4 < mem[_1533]
                    mem[_1533 + 160] = stor4
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
                    mem[_1533 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                    mem[_1533 + 228] = _996
                    mem[_1533 + 196] = 64
                    mem[_1533 + 260] = mem[_1533]
                    y = 0
                    while y < 32 * mem[_1533]:
                        mem[y + _1533 + 292] = mem[y + _1533 + 32]
                        y = y + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args 64, _996, mem[_1533 + 260 len (32 * mem[_1533]) + 32]
                    mem[_1533 + 192 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    mem[_1519 + 32] = ext_call.return_data[0]
                    require 2 < mem[_1015]
                    mem[_1015 + 96] = _1519
                    mem[64] = _1533 + 256
                    mem[_1533 + 192] = 0
                    mem[_1533 + 224] = 0
                    require 0 < mem[_1015]
                    y = 1
                    z = mem[_1015 + 32]
                    while y < mem[_1015]:
                        require y < mem[_1015]
                        if mem[mem[(32 * y) + _1015 + 32] + 32] <= mem[z + 32]:
                            y = y + 1
                            z = z
                            continue 
                        require y < mem[_1015]
                        y = y + 1
                        z = mem[(32 * y) + _1015 + 32]
                        continue 
            if mem[z + 32] - idx <= arg5:
                idx = idx - arg4
                s = s + 1
                t = t
                u = u
                v = v
                w = w
                x = x
                continue 
            if mem[z + 32] - idx <= t:
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
            t = mem[z + 32] - idx
            u = mem[z + 32]
            v = mem[z]
            w = _996
            x = _995
            continue 
        _884 = mem[64]
        mem[mem[64]] = 5
        mem[64] = mem[64] + 192
        require mem[_884]
        mem[_884 + 32] = stor4
        require ext_code.size(stor3)
        staticcall stor3.0xfc0c546a with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 1 < mem[_884]
        mem[_884 + 64] = ext_call.return_data[12 len 20]
        require ext_code.size(stor3)
        staticcall stor3.0xfc0c546a with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 2 < mem[_884]
        mem[_884 + 96] = ext_call.return_data[12 len 20]
        require 3 < mem[_884]
        mem[_884 + 128] = arg2
        require 4 < mem[_884]
        mem[_884 + 160] = arg1
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
        mem[_884 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
        mem[_884 + 228] = idx
        mem[_884 + 196] = 64
        mem[_884 + 260] = mem[_884]
        y = 0
        while y < 32 * mem[_884]:
            mem[y + _884 + 292] = mem[y + _884 + 32]
            y = y + 32
            continue 
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                gas gas_remaining wei
               args 64, idx, mem[_884 + 260 len (32 * mem[_884]) + 32]
        mem[_884 + 192 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        mem[_879 + 32] = ext_call.return_data[0]
        require 2 < mem[_684]
        mem[_684 + 96] = _879
        mem[64] = _884 + 256
        mem[_884 + 192] = 0
        mem[_884 + 224] = 0
        require 0 < mem[_684]
        y = 1
        z = mem[_684 + 32]
        while y < mem[_684]:
            require y < mem[_684]
            if mem[mem[(32 * y) + _684 + 32] + 32] <= mem[z + 32]:
                y = y + 1
                z = z
                continue 
            require y < mem[_684]
            y = y + 1
            z = mem[(32 * y) + _684 + 32]
            continue 
        _1056 = mem[z]
        _1057 = mem[z + 32]
        mem[_884 + 256] = 3
        mem[64] = _884 + 448
        mem[_884 + 384] = 0
        mem[_884 + 416] = 0
        mem[var83001] = _884 + 384
        z = var83001
        y = var83002
        while y - 1:
            mem[64] = mem[64] + 64
            mem[_884 + 384] = 0
            mem[_884 + 416] = 0
            mem[z + 32] = _884 + 384
            z = z + 32
            y = y - 1
            continue 
        _1979 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1979] = 0
        mem[mem[64] + 36] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
        mem[mem[64] + 68] = _1057
        require ext_code.size(stor1)
        staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, _1057
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not ext_call.return_data[32]:
            mem[_1979 + 32] = 0
            require 0 < mem[_884 + 256]
            mem[_884 + 288] = _1979
            _2030 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2030] = 1
            require ext_code.size(stor2)
            staticcall stor2.getExchange(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = _1057
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                    gas gas_remaining wei
                   args _1057
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_2030 + 32] = ext_call.return_data[0]
            require 1 < mem[_884 + 256]
            mem[_884 + 320] = _2030
            _2107 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2107] = 2
            if not arg2:
                mem[_2107 + 32] = 0
                require 2 < mem[_884 + 256]
                mem[_884 + 352] = _2107
                _2131 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2131] = 0
                mem[_2131 + 32] = 0
                require 0 < mem[_884 + 256]
                y = 1
                z = _1979
                while y < mem[_884 + 256]:
                    require y < mem[_884 + 256]
                    if mem[mem[(32 * y) + _884 + 288] + 32] <= mem[z + 32]:
                        y = y + 1
                        z = z
                        continue 
                    require y < mem[_884 + 256]
                    y = y + 1
                    z = mem[(32 * y) + _884 + 288]
                    continue 
            else:
                _2112 = mem[64]
                mem[mem[64]] = 5
                mem[64] = mem[64] + 192
                require 0 < mem[_2112]
                mem[_2112 + 32] = arg1
                require 1 < mem[_2112]
                mem[_2112 + 64] = arg2
                require ext_code.size(stor3)
                staticcall stor3.0xfc0c546a with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < mem[_2112]
                mem[_2112 + 96] = ext_call.return_data[12 len 20]
                require ext_code.size(stor3)
                staticcall stor3.0xfc0c546a with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 3 < mem[_2112]
                mem[_2112 + 128] = ext_call.return_data[12 len 20]
                require 4 < mem[_2112]
                mem[_2112 + 160] = stor4
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
                mem[_2112 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                mem[_2112 + 228] = _1057
                mem[_2112 + 196] = 64
                mem[_2112 + 260] = mem[_2112]
                y = 0
                while y < 32 * mem[_2112]:
                    mem[y + _2112 + 292] = mem[y + _2112 + 32]
                    y = y + 32
                    continue 
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args 64, _1057, mem[_2112 + 260 len (32 * mem[_2112]) + 32]
                mem[_2112 + 192 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                mem[_2107 + 32] = ext_call.return_data[0]
                require 2 < mem[_884 + 256]
                mem[_884 + 352] = _2107
                mem[64] = _2112 + 256
                mem[_2112 + 192] = 0
                mem[_2112 + 224] = 0
                require 0 < mem[_884 + 256]
                y = 1
                z = mem[_884 + 288]
                while y < mem[_884 + 256]:
                    require y < mem[_884 + 256]
                    if mem[mem[(32 * y) + _884 + 288] + 32] <= mem[z + 32]:
                        y = y + 1
                        z = z
                        continue 
                    require y < mem[_884 + 256]
                    y = y + 1
                    z = mem[(32 * y) + _884 + 288]
                    continue 
        else:
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_1979 + 32] = ext_call.return_data[0] * _1057 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
            require 0 < mem[_884 + 256]
            mem[_884 + 288] = _1979
            _2077 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2077] = 1
            require ext_code.size(stor2)
            staticcall stor2.getExchange(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = _1057
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                    gas gas_remaining wei
                   args _1057
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_2077 + 32] = ext_call.return_data[0]
            require 1 < mem[_884 + 256]
            mem[_884 + 320] = _2077
            _2129 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2129] = 2
            if not arg2:
                mem[_2129 + 32] = 0
                require 2 < mem[_884 + 256]
                mem[_884 + 352] = _2129
                _2171 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2171] = 0
                mem[_2171 + 32] = 0
                require 0 < mem[_884 + 256]
                y = 1
                z = _1979
                while y < mem[_884 + 256]:
                    require y < mem[_884 + 256]
                    if mem[mem[(32 * y) + _884 + 288] + 32] <= mem[z + 32]:
                        y = y + 1
                        z = z
                        continue 
                    require y < mem[_884 + 256]
                    y = y + 1
                    z = mem[(32 * y) + _884 + 288]
                    continue 
            else:
                _2135 = mem[64]
                mem[mem[64]] = 5
                mem[64] = mem[64] + 192
                require 0 < mem[_2135]
                mem[_2135 + 32] = arg1
                require 1 < mem[_2135]
                mem[_2135 + 64] = arg2
                require ext_code.size(stor3)
                staticcall stor3.0xfc0c546a with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < mem[_2135]
                mem[_2135 + 96] = ext_call.return_data[12 len 20]
                require ext_code.size(stor3)
                staticcall stor3.0xfc0c546a with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 3 < mem[_2135]
                mem[_2135 + 128] = ext_call.return_data[12 len 20]
                require 4 < mem[_2135]
                mem[_2135 + 160] = stor4
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
                mem[_2135 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                mem[_2135 + 228] = _1057
                mem[_2135 + 196] = 64
                mem[_2135 + 260] = mem[_2135]
                y = 0
                while y < 32 * mem[_2135]:
                    mem[y + _2135 + 292] = mem[y + _2135 + 32]
                    y = y + 32
                    continue 
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args 64, _1057, mem[_2135 + 260 len (32 * mem[_2135]) + 32]
                mem[_2135 + 192 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                mem[_2129 + 32] = ext_call.return_data[0]
                require 2 < mem[_884 + 256]
                mem[_884 + 352] = _2129
                mem[64] = _2135 + 256
                mem[_2135 + 192] = 0
                mem[_2135 + 224] = 0
                require 0 < mem[_884 + 256]
                y = 1
                z = mem[_884 + 288]
                while y < mem[_884 + 256]:
                    require y < mem[_884 + 256]
                    if mem[mem[(32 * y) + _884 + 288] + 32] <= mem[z + 32]:
                        y = y + 1
                        z = z
                        continue 
                    require y < mem[_884 + 256]
                    y = y + 1
                    z = mem[(32 * y) + _884 + 288]
                    continue 
        if mem[z + 32] - idx <= arg5:
            idx = idx - arg4
            s = s + 1
            t = t
            u = u
            v = v
            w = w
            x = x
            continue 
        if mem[z + 32] - idx <= t:
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
        t = mem[z + 32] - idx
        u = mem[z + 32]
        v = mem[z]
        w = _1057
        x = _1056
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
    _157 = mem[64]
    mem[64] = mem[64] + 64
    mem[_157] = 0
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
        mem[_157 + 32] = 0
        if 0 < mem[96]:
            mem[128] = _157
            _168 = mem[64]
            mem[64] = mem[64] + 64
            mem[_168] = 1
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
            mem[_168 + 32] = ext_call.return_data[0]
            if 1 < mem[96]:
                mem[160] = _168
                _186 = mem[64]
                mem[64] = mem[64] + 64
                mem[_186] = 1
                if not arg2:
                    mem[_186 + 32] = 0
                    if 2 < mem[96]:
                        mem[192] = _186
                        _197 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_197] = 0
                        mem[_197 + 32] = 0
                        if 0 < mem[96]:
                            idx = 1
                            s = _157
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
                            _317 = mem[s]
                            _318 = mem[s + 32]
                            _334 = mem[64]
                            _698 = mem[64] + 128
                            mem[64] = mem[64] + 192
                            mem[_698] = 0
                            mem[_698 + 32] = 0
                            mem[var49001] = _698
                            s = var49001
                            idx = var49002
                            while idx - 1:
                                _698 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_698] = 0
                                mem[_698 + 32] = 0
                                mem[s + 32] = _698
                                s = s + 32
                                idx = idx - 1
                                continue 
                            _702 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_702] = 0
                            mem[mem[64] + 36] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                            mem[mem[64] + 68] = _318
                            require ext_code.size(stor1)
                            staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, _318
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if not ext_call.return_data[32]:
                                mem[_702 + 32] = 0
                                if 0 < mem[_334]:
                                    mem[_334 + 32] = _702
                                    _742 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_742] = 1
                                    require ext_code.size(stor2)
                                    staticcall stor2.getExchange(address arg1) with:
                                            gas gas_remaining wei
                                           args address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = _318
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args _318
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_742 + 32] = ext_call.return_data[0]
                                    if 1 < mem[_334]:
                                        mem[_334 + 64] = _742
                                        _812 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_812] = 2
                                        if not arg2:
                                            mem[_812 + 32] = 0
                                            if 2 < mem[_334]:
                                                mem[_334 + 96] = _812
                                                _862 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_862] = 0
                                                mem[_862 + 32] = 0
                                                if 0 < mem[_334]:
                                                    idx = 1
                                                    s = _702
                                                    while idx < mem[_334]:
                                                        require idx < mem[_334]
                                                        if mem[mem[(32 * idx) + _334 + 32] + 32] <= mem[s + 32]:
                                                            idx = idx + 1
                                                            s = s
                                                            continue 
                                                        require idx < mem[_334]
                                                        idx = idx + 1
                                                        s = mem[(32 * idx) + _334 + 32]
                                                        continue 
                                                    if _317 <= 2:
                                                        if mem[s] <= 2:
                                                            return _317 << 248, _318, mem[s] << 248, mem[s + 32], mem[s + 32] - arg3
                                        else:
                                            _825 = mem[64]
                                            mem[mem[64]] = 5
                                            mem[64] = mem[64] + 192
                                            if 0 < mem[_825]:
                                                mem[_825 + 32] = arg1
                                                if 1 < mem[_825]:
                                                    mem[_825 + 64] = arg2
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0xfc0c546a with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if 2 < mem[_825]:
                                                        mem[_825 + 96] = ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor3)
                                                        staticcall stor3.0xfc0c546a with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if 3 < mem[_825]:
                                                            mem[_825 + 128] = ext_call.return_data[12 len 20]
                                                            if 4 < mem[_825]:
                                                                mem[_825 + 160] = stor4
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
                                                                mem[_825 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                                                mem[_825 + 228] = _318
                                                                mem[_825 + 196] = 64
                                                                mem[_825 + 260] = mem[_825]
                                                                mem[_825 + 292 len floor32(mem[_825])] = mem[_825 + 32 len floor32(mem[_825])]
                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                                        gas gas_remaining wei
                                                                       args 64, _318, mem[_825 + 260 len (32 * mem[_825]) + 32]
                                                                mem[_825 + 192 len 64] = ext_call.return_data[0 len 64]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 64
                                                                mem[_812 + 32] = ext_call.return_data[0]
                                                                if 2 < mem[_334]:
                                                                    mem[_334 + 96] = _812
                                                                    mem[64] = _825 + 256
                                                                    mem[_825 + 192] = 0
                                                                    mem[_825 + 224] = 0
                                                                    if 0 < mem[_334]:
                                                                        idx = 1
                                                                        s = _702
                                                                        while idx < mem[_334]:
                                                                            require idx < mem[_334]
                                                                            if mem[mem[(32 * idx) + _334 + 32] + 32] <= mem[s + 32]:
                                                                                idx = idx + 1
                                                                                s = s
                                                                                continue 
                                                                            require idx < mem[_334]
                                                                            idx = idx + 1
                                                                            s = mem[(32 * idx) + _334 + 32]
                                                                            continue 
                                                                        if _317 <= 2:
                                                                            if mem[s] <= 2:
                                                                                return _317 << 248, _318, mem[s] << 248, mem[s + 32], mem[s + 32] - arg3
                            else:
                                require ext_code.size(arg1)
                                staticcall arg1.0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_702 + 32] = ext_call.return_data[0] * _318 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                if 0 < mem[_334]:
                                    mem[_334 + 32] = _702
                                    _765 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_765] = 1
                                    require ext_code.size(stor2)
                                    staticcall stor2.getExchange(address arg1) with:
                                            gas gas_remaining wei
                                           args address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = _318
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args _318
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_765 + 32] = ext_call.return_data[0]
                                    if 1 < mem[_334]:
                                        mem[_334 + 64] = _765
                                        _855 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_855] = 2
                                        if not arg2:
                                            mem[_855 + 32] = 0
                                            if 2 < mem[_334]:
                                                mem[_334 + 96] = _855
                                                _942 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_942] = 0
                                                mem[_942 + 32] = 0
                                                if 0 < mem[_334]:
                                                    idx = 1
                                                    s = _702
                                                    while idx < mem[_334]:
                                                        require idx < mem[_334]
                                                        if mem[mem[(32 * idx) + _334 + 32] + 32] <= mem[s + 32]:
                                                            idx = idx + 1
                                                            s = s
                                                            continue 
                                                        require idx < mem[_334]
                                                        idx = idx + 1
                                                        s = mem[(32 * idx) + _334 + 32]
                                                        continue 
                                                    if _317 <= 2:
                                                        if mem[s] <= 2:
                                                            return _317 << 248, _318, mem[s] << 248, mem[s + 32], mem[s + 32] - arg3
                                        else:
                                            _872 = mem[64]
                                            mem[mem[64]] = 5
                                            mem[64] = mem[64] + 192
                                            if 0 < mem[_872]:
                                                mem[_872 + 32] = arg1
                                                if 1 < mem[_872]:
                                                    mem[_872 + 64] = arg2
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0xfc0c546a with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if 2 < mem[_872]:
                                                        mem[_872 + 96] = ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor3)
                                                        staticcall stor3.0xfc0c546a with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if 3 < mem[_872]:
                                                            mem[_872 + 128] = ext_call.return_data[12 len 20]
                                                            if 4 < mem[_872]:
                                                                mem[_872 + 160] = stor4
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
                                                                mem[_872 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                                                mem[_872 + 228] = _318
                                                                mem[_872 + 196] = 64
                                                                mem[_872 + 260] = mem[_872]
                                                                mem[_872 + 292 len floor32(mem[_872])] = mem[_872 + 32 len floor32(mem[_872])]
                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                                        gas gas_remaining wei
                                                                       args 64, _318, mem[_872 + 260 len (32 * mem[_872]) + 32]
                                                                mem[_872 + 192 len 64] = ext_call.return_data[0 len 64]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 64
                                                                mem[_855 + 32] = ext_call.return_data[0]
                                                                if 2 < mem[_334]:
                                                                    mem[_334 + 96] = _855
                                                                    mem[64] = _872 + 256
                                                                    mem[_872 + 192] = 0
                                                                    mem[_872 + 224] = 0
                                                                    if 0 < mem[_334]:
                                                                        idx = 1
                                                                        s = _702
                                                                        while idx < mem[_334]:
                                                                            require idx < mem[_334]
                                                                            if mem[mem[(32 * idx) + _334 + 32] + 32] <= mem[s + 32]:
                                                                                idx = idx + 1
                                                                                s = s
                                                                                continue 
                                                                            require idx < mem[_334]
                                                                            idx = idx + 1
                                                                            s = mem[(32 * idx) + _334 + 32]
                                                                            continue 
                                                                        if _317 <= 2:
                                                                            if mem[s] <= 2:
                                                                                return _317 << 248, _318, mem[s] << 248, mem[s + 32], mem[s + 32] - arg3
                else:
                    _188 = mem[64]
                    mem[mem[64]] = 5
                    mem[64] = mem[64] + 192
                    if mem[_188]:
                        mem[_188 + 32] = stor4
                        require ext_code.size(stor3)
                        staticcall stor3.0xfc0c546a with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 1 < mem[_188]:
                            mem[_188 + 64] = ext_call.return_data[12 len 20]
                            require ext_code.size(stor3)
                            staticcall stor3.0xfc0c546a with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 < mem[_188]:
                                mem[_188 + 96] = ext_call.return_data[12 len 20]
                                if 3 < mem[_188]:
                                    mem[_188 + 128] = arg2
                                    if 4 < mem[_188]:
                                        mem[_188 + 160] = arg1
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
                                        mem[_188 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                        mem[_188 + 228] = arg3
                                        mem[_188 + 196] = 64
                                        mem[_188 + 260] = mem[_188]
                                        mem[_188 + 292 len floor32(mem[_188])] = mem[_188 + 32 len floor32(mem[_188])]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                gas gas_remaining wei
                                               args 64, arg3, mem[_188 + 260 len (32 * mem[_188]) + 32]
                                        mem[_188 + 192 len 64] = ext_call.return_data[0 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 64
                                        mem[_186 + 32] = ext_call.return_data[0]
                                        if 2 < mem[96]:
                                            mem[192] = _186
                                            mem[64] = _188 + 256
                                            mem[_188 + 192] = 0
                                            mem[_188 + 224] = 0
                                            if 0 < mem[96]:
                                                idx = 1
                                                s = _157
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
                                                _377 = mem[s]
                                                _378 = mem[s + 32]
                                                mem[_188 + 256] = 3
                                                mem[64] = _188 + 448
                                                mem[_188 + 384] = 0
                                                mem[_188 + 416] = 0
                                                mem[var75001] = _188 + 384
                                                s = var75001
                                                idx = var75002
                                                while idx - 1:
                                                    mem[64] = mem[64] + 64
                                                    mem[_188 + 384] = 0
                                                    mem[_188 + 416] = 0
                                                    mem[s + 32] = _188 + 384
                                                    s = s + 32
                                                    idx = idx - 1
                                                    continue 
                                                _1348 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1348] = 0
                                                mem[mem[64] + 36] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                                mem[mem[64] + 68] = _378
                                                require ext_code.size(stor1)
                                                staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                                        gas gas_remaining wei
                                                       args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, _378
                                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 64
                                                if not ext_call.return_data[32]:
                                                    mem[_1348 + 32] = 0
                                                    if 0 < mem[_188 + 256]:
                                                        mem[_188 + 288] = _1348
                                                        _1406 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_1406] = 1
                                                        require ext_code.size(stor2)
                                                        staticcall stor2.getExchange(address arg1) with:
                                                                gas gas_remaining wei
                                                               args address(arg1)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[mem[64] + 4] = _378
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                                                                gas gas_remaining wei
                                                               args _378
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[_1406 + 32] = ext_call.return_data[0]
                                                        if 1 < mem[_188 + 256]:
                                                            mem[_188 + 320] = _1406
                                                            _1490 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_1490] = 2
                                                            if not arg2:
                                                                mem[_1490 + 32] = 0
                                                                if 2 < mem[_188 + 256]:
                                                                    mem[_188 + 352] = _1490
                                                                    _1513 = mem[64]
                                                                    mem[64] = mem[64] + 64
                                                                    mem[_1513] = 0
                                                                    mem[_1513 + 32] = 0
                                                                    if 0 < mem[_188 + 256]:
                                                                        idx = 1
                                                                        s = _1348
                                                                        while idx < mem[_188 + 256]:
                                                                            require idx < mem[_188 + 256]
                                                                            if mem[mem[(32 * idx) + _188 + 288] + 32] <= mem[s + 32]:
                                                                                idx = idx + 1
                                                                                s = s
                                                                                continue 
                                                                            require idx < mem[_188 + 256]
                                                                            idx = idx + 1
                                                                            s = mem[(32 * idx) + _188 + 288]
                                                                            continue 
                                                                        if _377 <= 2:
                                                                            if mem[s] <= 2:
                                                                                return _377 << 248, _378, mem[s] << 248, mem[s + 32], mem[s + 32] - arg3
                                                            else:
                                                                _1495 = mem[64]
                                                                mem[mem[64]] = 5
                                                                mem[64] = mem[64] + 192
                                                                if 0 < mem[_1495]:
                                                                    mem[_1495 + 32] = arg1
                                                                    if 1 < mem[_1495]:
                                                                        mem[_1495 + 64] = arg2
                                                                        require ext_code.size(stor3)
                                                                        staticcall stor3.0xfc0c546a with:
                                                                                gas gas_remaining wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if 2 < mem[_1495]:
                                                                            mem[_1495 + 96] = ext_call.return_data[12 len 20]
                                                                            require ext_code.size(stor3)
                                                                            staticcall stor3.0xfc0c546a with:
                                                                                    gas gas_remaining wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            if 3 < mem[_1495]:
                                                                                mem[_1495 + 128] = ext_call.return_data[12 len 20]
                                                                                if 4 < mem[_1495]:
                                                                                    mem[_1495 + 160] = stor4
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
                                                                                    mem[_1495 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                                                                    mem[_1495 + 228] = _378
                                                                                    mem[_1495 + 196] = 64
                                                                                    mem[_1495 + 260] = mem[_1495]
                                                                                    mem[_1495 + 292 len floor32(mem[_1495])] = mem[_1495 + 32 len floor32(mem[_1495])]
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                                                            gas gas_remaining wei
                                                                                           args 64, _378, mem[_1495 + 260 len (32 * mem[_1495]) + 32]
                                                                                    mem[_1495 + 192 len 64] = ext_call.return_data[0 len 64]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    require return_data.size >= 64
                                                                                    mem[_1490 + 32] = ext_call.return_data[0]
                                                                                    if 2 < mem[_188 + 256]:
                                                                                        mem[_188 + 352] = _1490
                                                                                        mem[64] = _1495 + 256
                                                                                        mem[_1495 + 192] = 0
                                                                                        mem[_1495 + 224] = 0
                                                                                        if 0 < mem[_188 + 256]:
                                                                                            idx = 1
                                                                                            s = _1348
                                                                                            while idx < mem[_188 + 256]:
                                                                                                require idx < mem[_188 + 256]
                                                                                                if mem[mem[(32 * idx) + _188 + 288] + 32] <= mem[s + 32]:
                                                                                                    idx = idx + 1
                                                                                                    s = s
                                                                                                    continue 
                                                                                                require idx < mem[_188 + 256]
                                                                                                idx = idx + 1
                                                                                                s = mem[(32 * idx) + _188 + 288]
                                                                                                continue 
                                                                                            if _377 <= 2:
                                                                                                if mem[s] <= 2:
                                                                                                    return _377 << 248, _378, mem[s] << 248, mem[s + 32], mem[s + 32] - arg3
                                                else:
                                                    require ext_code.size(arg1)
                                                    staticcall arg1.0x313ce567 with:
                                                            gas gas_remaining wei
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[_1348 + 32] = ext_call.return_data[0] * _378 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                                    if 0 < mem[_188 + 256]:
                                                        mem[_188 + 288] = _1348
                                                        _1457 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_1457] = 1
                                                        require ext_code.size(stor2)
                                                        staticcall stor2.getExchange(address arg1) with:
                                                                gas gas_remaining wei
                                                               args address(arg1)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[mem[64] + 4] = _378
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                                                                gas gas_remaining wei
                                                               args _378
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[_1457 + 32] = ext_call.return_data[0]
                                                        if 1 < mem[_188 + 256]:
                                                            mem[_188 + 320] = _1457
                                                            _1510 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_1510] = 2
                                                            if not arg2:
                                                                mem[_1510 + 32] = 0
                                                                if 2 < mem[_188 + 256]:
                                                                    mem[_188 + 352] = _1510
                                                                    _1557 = mem[64]
                                                                    mem[64] = mem[64] + 64
                                                                    mem[_1557] = 0
                                                                    mem[_1557 + 32] = 0
                                                                    if 0 < mem[_188 + 256]:
                                                                        idx = 1
                                                                        s = _1348
                                                                        while idx < mem[_188 + 256]:
                                                                            require idx < mem[_188 + 256]
                                                                            if mem[mem[(32 * idx) + _188 + 288] + 32] <= mem[s + 32]:
                                                                                idx = idx + 1
                                                                                s = s
                                                                                continue 
                                                                            require idx < mem[_188 + 256]
                                                                            idx = idx + 1
                                                                            s = mem[(32 * idx) + _188 + 288]
                                                                            continue 
                                                                        if _377 <= 2:
                                                                            if mem[s] <= 2:
                                                                                return _377 << 248, _378, mem[s] << 248, mem[s + 32], mem[s + 32] - arg3
                                                            else:
                                                                _1520 = mem[64]
                                                                mem[mem[64]] = 5
                                                                mem[64] = mem[64] + 192
                                                                if 0 < mem[_1520]:
                                                                    mem[_1520 + 32] = arg1
                                                                    if 1 < mem[_1520]:
                                                                        mem[_1520 + 64] = arg2
                                                                        require ext_code.size(stor3)
                                                                        staticcall stor3.0xfc0c546a with:
                                                                                gas gas_remaining wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if 2 < mem[_1520]:
                                                                            mem[_1520 + 96] = ext_call.return_data[12 len 20]
                                                                            require ext_code.size(stor3)
                                                                            staticcall stor3.0xfc0c546a with:
                                                                                    gas gas_remaining wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            if 3 < mem[_1520]:
                                                                                mem[_1520 + 128] = ext_call.return_data[12 len 20]
                                                                                if 4 < mem[_1520]:
                                                                                    mem[_1520 + 160] = stor4
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
                                                                                    mem[_1520 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                                                                    mem[_1520 + 228] = _378
                                                                                    mem[_1520 + 196] = 64
                                                                                    mem[_1520 + 260] = mem[_1520]
                                                                                    mem[_1520 + 292 len floor32(mem[_1520])] = mem[_1520 + 32 len floor32(mem[_1520])]
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                                                            gas gas_remaining wei
                                                                                           args 64, _378, mem[_1520 + 260 len (32 * mem[_1520]) + 32]
                                                                                    mem[_1520 + 192 len 64] = ext_call.return_data[0 len 64]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    require return_data.size >= 64
                                                                                    mem[_1510 + 32] = ext_call.return_data[0]
                                                                                    if 2 < mem[_188 + 256]:
                                                                                        mem[_188 + 352] = _1510
                                                                                        mem[64] = _1520 + 256
                                                                                        mem[_1520 + 192] = 0
                                                                                        mem[_1520 + 224] = 0
                                                                                        if 0 < mem[_188 + 256]:
                                                                                            idx = 1
                                                                                            s = _1348
                                                                                            while idx < mem[_188 + 256]:
                                                                                                require idx < mem[_188 + 256]
                                                                                                if mem[mem[(32 * idx) + _188 + 288] + 32] <= mem[s + 32]:
                                                                                                    idx = idx + 1
                                                                                                    s = s
                                                                                                    continue 
                                                                                                require idx < mem[_188 + 256]
                                                                                                idx = idx + 1
                                                                                                s = mem[(32 * idx) + _188 + 288]
                                                                                                continue 
                                                                                            if _377 <= 2:
                                                                                                if mem[s] <= 2:
                                                                                                    return _377 << 248, _378, mem[s] << 248, mem[s + 32], mem[s + 32] - arg3
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_157 + 32] = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
        if 0 < mem[96]:
            mem[128] = _157
            _173 = mem[64]
            mem[64] = mem[64] + 64
            mem[_173] = 1
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
            mem[_173 + 32] = ext_call.return_data[0]
            if 1 < mem[96]:
                mem[160] = _173
                _195 = mem[64]
                mem[64] = mem[64] + 64
                mem[_195] = 1
                if not arg2:
                    mem[_195 + 32] = 0
                    if 2 < mem[96]:
                        mem[192] = _195
                        _218 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_218] = 0
                        mem[_218 + 32] = 0
                        if 0 < mem[96]:
                            idx = 1
                            s = _157
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
                            _311 = mem[s]
                            _312 = mem[s + 32]
                            _331 = mem[64]
                            _697 = mem[64] + 128
                            mem[64] = mem[64] + 192
                            mem[_697] = 0
                            mem[_697 + 32] = 0
                            mem[var54001] = _697
                            s = var54001
                            idx = var54002
                            while idx - 1:
                                _697 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_697] = 0
                                mem[_697 + 32] = 0
                                mem[s + 32] = _697
                                s = s + 32
                                idx = idx - 1
                                continue 
                            _701 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_701] = 0
                            mem[mem[64] + 36] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                            mem[mem[64] + 68] = _312
                            require ext_code.size(stor1)
                            staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, _312
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if not ext_call.return_data[32]:
                                mem[_701 + 32] = 0
                                if 0 < mem[_331]:
                                    mem[_331 + 32] = _701
                                    _738 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_738] = 1
                                    require ext_code.size(stor2)
                                    staticcall stor2.getExchange(address arg1) with:
                                            gas gas_remaining wei
                                           args address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = _312
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args _312
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_738 + 32] = ext_call.return_data[0]
                                    if 1 < mem[_331]:
                                        mem[_331 + 64] = _738
                                        _807 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_807] = 2
                                        if not arg2:
                                            mem[_807 + 32] = 0
                                            if 2 < mem[_331]:
                                                mem[_331 + 96] = _807
                                                _859 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_859] = 0
                                                mem[_859 + 32] = 0
                                                if 0 < mem[_331]:
                                                    idx = 1
                                                    s = _701
                                                    while idx < mem[_331]:
                                                        require idx < mem[_331]
                                                        if mem[mem[(32 * idx) + _331 + 32] + 32] <= mem[s + 32]:
                                                            idx = idx + 1
                                                            s = s
                                                            continue 
                                                        require idx < mem[_331]
                                                        idx = idx + 1
                                                        s = mem[(32 * idx) + _331 + 32]
                                                        continue 
                                                    if _311 <= 2:
                                                        if mem[s] <= 2:
                                                            return _311 << 248, _312, mem[s] << 248, mem[s + 32], mem[s + 32] - arg3
                                        else:
                                            _822 = mem[64]
                                            mem[mem[64]] = 5
                                            mem[64] = mem[64] + 192
                                            if 0 < mem[_822]:
                                                mem[_822 + 32] = arg1
                                                if 1 < mem[_822]:
                                                    mem[_822 + 64] = arg2
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0xfc0c546a with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if 2 < mem[_822]:
                                                        mem[_822 + 96] = ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor3)
                                                        staticcall stor3.0xfc0c546a with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if 3 < mem[_822]:
                                                            mem[_822 + 128] = ext_call.return_data[12 len 20]
                                                            if 4 < mem[_822]:
                                                                mem[_822 + 160] = stor4
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
                                                                mem[_822 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                                                mem[_822 + 228] = _312
                                                                mem[_822 + 196] = 64
                                                                mem[_822 + 260] = mem[_822]
                                                                mem[_822 + 292 len floor32(mem[_822])] = mem[_822 + 32 len floor32(mem[_822])]
                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                                        gas gas_remaining wei
                                                                       args 64, _312, mem[_822 + 260 len (32 * mem[_822]) + 32]
                                                                mem[_822 + 192 len 64] = ext_call.return_data[0 len 64]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 64
                                                                mem[_807 + 32] = ext_call.return_data[0]
                                                                if 2 < mem[_331]:
                                                                    mem[_331 + 96] = _807
                                                                    mem[64] = _822 + 256
                                                                    mem[_822 + 192] = 0
                                                                    mem[_822 + 224] = 0
                                                                    if 0 < mem[_331]:
                                                                        idx = 1
                                                                        s = _701
                                                                        while idx < mem[_331]:
                                                                            require idx < mem[_331]
                                                                            if mem[mem[(32 * idx) + _331 + 32] + 32] <= mem[s + 32]:
                                                                                idx = idx + 1
                                                                                s = s
                                                                                continue 
                                                                            require idx < mem[_331]
                                                                            idx = idx + 1
                                                                            s = mem[(32 * idx) + _331 + 32]
                                                                            continue 
                                                                        if _311 <= 2:
                                                                            if mem[s] <= 2:
                                                                                return _311 << 248, _312, mem[s] << 248, mem[s + 32], mem[s + 32] - arg3
                            else:
                                require ext_code.size(arg1)
                                staticcall arg1.0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_701 + 32] = ext_call.return_data[0] * _312 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                if 0 < mem[_331]:
                                    mem[_331 + 32] = _701
                                    _761 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_761] = 1
                                    require ext_code.size(stor2)
                                    staticcall stor2.getExchange(address arg1) with:
                                            gas gas_remaining wei
                                           args address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = _312
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args _312
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_761 + 32] = ext_call.return_data[0]
                                    if 1 < mem[_331]:
                                        mem[_331 + 64] = _761
                                        _851 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_851] = 2
                                        if not arg2:
                                            mem[_851 + 32] = 0
                                            if 2 < mem[_331]:
                                                mem[_331 + 96] = _851
                                                _931 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_931] = 0
                                                mem[_931 + 32] = 0
                                                if 0 < mem[_331]:
                                                    idx = 1
                                                    s = _701
                                                    while idx < mem[_331]:
                                                        require idx < mem[_331]
                                                        if mem[mem[(32 * idx) + _331 + 32] + 32] <= mem[s + 32]:
                                                            idx = idx + 1
                                                            s = s
                                                            continue 
                                                        require idx < mem[_331]
                                                        idx = idx + 1
                                                        s = mem[(32 * idx) + _331 + 32]
                                                        continue 
                                                    if _311 <= 2:
                                                        if mem[s] <= 2:
                                                            return _311 << 248, _312, mem[s] << 248, mem[s + 32], mem[s + 32] - arg3
                                        else:
                                            _865 = mem[64]
                                            mem[mem[64]] = 5
                                            mem[64] = mem[64] + 192
                                            if 0 < mem[_865]:
                                                mem[_865 + 32] = arg1
                                                if 1 < mem[_865]:
                                                    mem[_865 + 64] = arg2
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0xfc0c546a with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if 2 < mem[_865]:
                                                        mem[_865 + 96] = ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor3)
                                                        staticcall stor3.0xfc0c546a with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if 3 < mem[_865]:
                                                            mem[_865 + 128] = ext_call.return_data[12 len 20]
                                                            if 4 < mem[_865]:
                                                                mem[_865 + 160] = stor4
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
                                                                mem[_865 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                                                mem[_865 + 228] = _312
                                                                mem[_865 + 196] = 64
                                                                mem[_865 + 260] = mem[_865]
                                                                mem[_865 + 292 len floor32(mem[_865])] = mem[_865 + 32 len floor32(mem[_865])]
                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                                        gas gas_remaining wei
                                                                       args 64, _312, mem[_865 + 260 len (32 * mem[_865]) + 32]
                                                                mem[_865 + 192 len 64] = ext_call.return_data[0 len 64]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 64
                                                                mem[_851 + 32] = ext_call.return_data[0]
                                                                if 2 < mem[_331]:
                                                                    mem[_331 + 96] = _851
                                                                    mem[64] = _865 + 256
                                                                    mem[_865 + 192] = 0
                                                                    mem[_865 + 224] = 0
                                                                    if 0 < mem[_331]:
                                                                        idx = 1
                                                                        s = _701
                                                                        while idx < mem[_331]:
                                                                            require idx < mem[_331]
                                                                            if mem[mem[(32 * idx) + _331 + 32] + 32] <= mem[s + 32]:
                                                                                idx = idx + 1
                                                                                s = s
                                                                                continue 
                                                                            require idx < mem[_331]
                                                                            idx = idx + 1
                                                                            s = mem[(32 * idx) + _331 + 32]
                                                                            continue 
                                                                        if _311 <= 2:
                                                                            if mem[s] <= 2:
                                                                                return _311 << 248, _312, mem[s] << 248, mem[s + 32], mem[s + 32] - arg3
                else:
                    _200 = mem[64]
                    mem[mem[64]] = 5
                    mem[64] = mem[64] + 192
                    if mem[_200]:
                        mem[_200 + 32] = stor4
                        require ext_code.size(stor3)
                        staticcall stor3.0xfc0c546a with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 1 < mem[_200]:
                            mem[_200 + 64] = ext_call.return_data[12 len 20]
                            require ext_code.size(stor3)
                            staticcall stor3.0xfc0c546a with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 < mem[_200]:
                                mem[_200 + 96] = ext_call.return_data[12 len 20]
                                if 3 < mem[_200]:
                                    mem[_200 + 128] = arg2
                                    if 4 < mem[_200]:
                                        mem[_200 + 160] = arg1
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
                                        mem[_200 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                        mem[_200 + 228] = arg3
                                        mem[_200 + 196] = 64
                                        mem[_200 + 260] = mem[_200]
                                        mem[_200 + 292 len floor32(mem[_200])] = mem[_200 + 32 len floor32(mem[_200])]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                gas gas_remaining wei
                                               args 64, arg3, mem[_200 + 260 len (32 * mem[_200]) + 32]
                                        mem[_200 + 192 len 64] = ext_call.return_data[0 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 64
                                        mem[_195 + 32] = ext_call.return_data[0]
                                        if 2 < mem[96]:
                                            mem[192] = _195
                                            mem[64] = _200 + 256
                                            mem[_200 + 192] = 0
                                            mem[_200 + 224] = 0
                                            if 0 < mem[96]:
                                                idx = 1
                                                s = _157
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
                                                _372 = mem[s]
                                                _373 = mem[s + 32]
                                                mem[_200 + 256] = 3
                                                mem[64] = _200 + 448
                                                mem[_200 + 384] = 0
                                                mem[_200 + 416] = 0
                                                mem[var80001] = _200 + 384
                                                s = var80001
                                                idx = var80002
                                                while idx - 1:
                                                    mem[64] = mem[64] + 64
                                                    mem[_200 + 384] = 0
                                                    mem[_200 + 416] = 0
                                                    mem[s + 32] = _200 + 384
                                                    s = s + 32
                                                    idx = idx - 1
                                                    continue 
                                                _1343 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1343] = 0
                                                mem[mem[64] + 36] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                                mem[mem[64] + 68] = _373
                                                require ext_code.size(stor1)
                                                staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                                        gas gas_remaining wei
                                                       args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, _373
                                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 64
                                                if not ext_call.return_data[32]:
                                                    mem[_1343 + 32] = 0
                                                    if 0 < mem[_200 + 256]:
                                                        mem[_200 + 288] = _1343
                                                        _1402 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_1402] = 1
                                                        require ext_code.size(stor2)
                                                        staticcall stor2.getExchange(address arg1) with:
                                                                gas gas_remaining wei
                                                               args address(arg1)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[mem[64] + 4] = _373
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                                                                gas gas_remaining wei
                                                               args _373
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[_1402 + 32] = ext_call.return_data[0]
                                                        if 1 < mem[_200 + 256]:
                                                            mem[_200 + 320] = _1402
                                                            _1487 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_1487] = 2
                                                            if not arg2:
                                                                mem[_1487 + 32] = 0
                                                                if 2 < mem[_200 + 256]:
                                                                    mem[_200 + 352] = _1487
                                                                    _1511 = mem[64]
                                                                    mem[64] = mem[64] + 64
                                                                    mem[_1511] = 0
                                                                    mem[_1511 + 32] = 0
                                                                    if 0 < mem[_200 + 256]:
                                                                        idx = 1
                                                                        s = _1343
                                                                        while idx < mem[_200 + 256]:
                                                                            require idx < mem[_200 + 256]
                                                                            if mem[mem[(32 * idx) + _200 + 288] + 32] <= mem[s + 32]:
                                                                                idx = idx + 1
                                                                                s = s
                                                                                continue 
                                                                            require idx < mem[_200 + 256]
                                                                            idx = idx + 1
                                                                            s = mem[(32 * idx) + _200 + 288]
                                                                            continue 
                                                                        if _372 <= 2:
                                                                            if mem[s] <= 2:
                                                                                return _372 << 248, _373, mem[s] << 248, mem[s + 32], mem[s + 32] - arg3
                                                            else:
                                                                _1492 = mem[64]
                                                                mem[mem[64]] = 5
                                                                mem[64] = mem[64] + 192
                                                                if 0 < mem[_1492]:
                                                                    mem[_1492 + 32] = arg1
                                                                    if 1 < mem[_1492]:
                                                                        mem[_1492 + 64] = arg2
                                                                        require ext_code.size(stor3)
                                                                        staticcall stor3.0xfc0c546a with:
                                                                                gas gas_remaining wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if 2 < mem[_1492]:
                                                                            mem[_1492 + 96] = ext_call.return_data[12 len 20]
                                                                            require ext_code.size(stor3)
                                                                            staticcall stor3.0xfc0c546a with:
                                                                                    gas gas_remaining wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            if 3 < mem[_1492]:
                                                                                mem[_1492 + 128] = ext_call.return_data[12 len 20]
                                                                                if 4 < mem[_1492]:
                                                                                    mem[_1492 + 160] = stor4
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
                                                                                    mem[_1492 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                                                                    mem[_1492 + 228] = _373
                                                                                    mem[_1492 + 196] = 64
                                                                                    mem[_1492 + 260] = mem[_1492]
                                                                                    mem[_1492 + 292 len floor32(mem[_1492])] = mem[_1492 + 32 len floor32(mem[_1492])]
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                                                            gas gas_remaining wei
                                                                                           args 64, _373, mem[_1492 + 260 len (32 * mem[_1492]) + 32]
                                                                                    mem[_1492 + 192 len 64] = ext_call.return_data[0 len 64]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    require return_data.size >= 64
                                                                                    mem[_1487 + 32] = ext_call.return_data[0]
                                                                                    if 2 < mem[_200 + 256]:
                                                                                        mem[_200 + 352] = _1487
                                                                                        mem[64] = _1492 + 256
                                                                                        mem[_1492 + 192] = 0
                                                                                        mem[_1492 + 224] = 0
                                                                                        if 0 < mem[_200 + 256]:
                                                                                            idx = 1
                                                                                            s = _1343
                                                                                            while idx < mem[_200 + 256]:
                                                                                                require idx < mem[_200 + 256]
                                                                                                if mem[mem[(32 * idx) + _200 + 288] + 32] <= mem[s + 32]:
                                                                                                    idx = idx + 1
                                                                                                    s = s
                                                                                                    continue 
                                                                                                require idx < mem[_200 + 256]
                                                                                                idx = idx + 1
                                                                                                s = mem[(32 * idx) + _200 + 288]
                                                                                                continue 
                                                                                            if _372 <= 2:
                                                                                                if mem[s] <= 2:
                                                                                                    return _372 << 248, _373, mem[s] << 248, mem[s + 32], mem[s + 32] - arg3
                                                else:
                                                    require ext_code.size(arg1)
                                                    staticcall arg1.0x313ce567 with:
                                                            gas gas_remaining wei
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[_1343 + 32] = ext_call.return_data[0] * _373 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                                    if 0 < mem[_200 + 256]:
                                                        mem[_200 + 288] = _1343
                                                        _1451 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_1451] = 1
                                                        require ext_code.size(stor2)
                                                        staticcall stor2.getExchange(address arg1) with:
                                                                gas gas_remaining wei
                                                               args address(arg1)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[mem[64] + 4] = _373
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                                                                gas gas_remaining wei
                                                               args _373
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[_1451 + 32] = ext_call.return_data[0]
                                                        if 1 < mem[_200 + 256]:
                                                            mem[_200 + 320] = _1451
                                                            _1509 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_1509] = 2
                                                            if not arg2:
                                                                mem[_1509 + 32] = 0
                                                                if 2 < mem[_200 + 256]:
                                                                    mem[_200 + 352] = _1509
                                                                    _1551 = mem[64]
                                                                    mem[64] = mem[64] + 64
                                                                    mem[_1551] = 0
                                                                    mem[_1551 + 32] = 0
                                                                    if 0 < mem[_200 + 256]:
                                                                        idx = 1
                                                                        s = _1343
                                                                        while idx < mem[_200 + 256]:
                                                                            require idx < mem[_200 + 256]
                                                                            if mem[mem[(32 * idx) + _200 + 288] + 32] <= mem[s + 32]:
                                                                                idx = idx + 1
                                                                                s = s
                                                                                continue 
                                                                            require idx < mem[_200 + 256]
                                                                            idx = idx + 1
                                                                            s = mem[(32 * idx) + _200 + 288]
                                                                            continue 
                                                                        if _372 <= 2:
                                                                            if mem[s] <= 2:
                                                                                return _372 << 248, _373, mem[s] << 248, mem[s + 32], mem[s + 32] - arg3
                                                            else:
                                                                _1515 = mem[64]
                                                                mem[mem[64]] = 5
                                                                mem[64] = mem[64] + 192
                                                                if 0 < mem[_1515]:
                                                                    mem[_1515 + 32] = arg1
                                                                    if 1 < mem[_1515]:
                                                                        mem[_1515 + 64] = arg2
                                                                        require ext_code.size(stor3)
                                                                        staticcall stor3.0xfc0c546a with:
                                                                                gas gas_remaining wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if 2 < mem[_1515]:
                                                                            mem[_1515 + 96] = ext_call.return_data[12 len 20]
                                                                            require ext_code.size(stor3)
                                                                            staticcall stor3.0xfc0c546a with:
                                                                                    gas gas_remaining wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            if 3 < mem[_1515]:
                                                                                mem[_1515 + 128] = ext_call.return_data[12 len 20]
                                                                                if 4 < mem[_1515]:
                                                                                    mem[_1515 + 160] = stor4
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
                                                                                    mem[_1515 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                                                                    mem[_1515 + 228] = _373
                                                                                    mem[_1515 + 196] = 64
                                                                                    mem[_1515 + 260] = mem[_1515]
                                                                                    mem[_1515 + 292 len floor32(mem[_1515])] = mem[_1515 + 32 len floor32(mem[_1515])]
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                                                            gas gas_remaining wei
                                                                                           args 64, _373, mem[_1515 + 260 len (32 * mem[_1515]) + 32]
                                                                                    mem[_1515 + 192 len 64] = ext_call.return_data[0 len 64]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    require return_data.size >= 64
                                                                                    mem[_1509 + 32] = ext_call.return_data[0]
                                                                                    if 2 < mem[_200 + 256]:
                                                                                        mem[_200 + 352] = _1509
                                                                                        mem[64] = _1515 + 256
                                                                                        mem[_1515 + 192] = 0
                                                                                        mem[_1515 + 224] = 0
                                                                                        if 0 < mem[_200 + 256]:
                                                                                            idx = 1
                                                                                            s = _1343
                                                                                            while idx < mem[_200 + 256]:
                                                                                                require idx < mem[_200 + 256]
                                                                                                if mem[mem[(32 * idx) + _200 + 288] + 32] <= mem[s + 32]:
                                                                                                    idx = idx + 1
                                                                                                    s = s
                                                                                                    continue 
                                                                                                require idx < mem[_200 + 256]
                                                                                                idx = idx + 1
                                                                                                s = mem[(32 * idx) + _200 + 288]
                                                                                                continue 
                                                                                            if _372 <= 2:
                                                                                                if mem[s] <= 2:
                                                                                                    return _372 << 248, _373, mem[s] << 248, mem[s + 32], mem[s + 32] - arg3
    revert
}



}
