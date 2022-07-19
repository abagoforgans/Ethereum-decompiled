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
           args Array(len=5, data=mem[388 len 160]), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function sub_cae0dd7a(?) {
    require calldata.size - 4 >= 96
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
           args Array(len=5, data=mem[388 len 160]), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function sub_9b91dfc6(?) {
    require calldata.size - 4 >= 192
    require arg2 <= 2
    if not arg2:
        require ext_code.size(stor1)
        call stor1.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
           value arg5 wei
             gas gas_remaining wei
            args 0, 4008636142, arg5, address(arg1), this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, stor0, 256, 0, mem[388]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg4:
            revert with 0, 'Got not enough tokens'
        require arg3 <= 2
        if not arg3:
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
            require arg3 <= 2
            if arg3 == 1:
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
                require arg3 <= 2
                if arg3 != 2:
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
        require arg2 <= 2
        if arg2 == 1:
            require ext_code.size(stor2)
            staticcall stor2.getExchange(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
               value arg5 wei
                 gas gas_remaining wei
                args 1, block.timestamp + (24 * 3600)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg4:
                revert with 0, 'Got not enough tokens'
            require arg3 <= 2
            if not arg3:
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
                require arg3 <= 2
                if arg3 == 1:
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
                    require arg3 <= 2
                    if arg3 != 2:
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
            require arg2 <= 2
            if arg2 != 2:
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
               value arg5 wei
                 gas gas_remaining wei
                args Array(len=5, data=mem[420 len 160]), arg5, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg4:
                revert with 0, 'Got not enough tokens'
            require arg3 <= 2
            if not arg3:
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
                require arg3 <= 2
                if arg3 == 1:
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
                    require arg3 <= 2
                    if arg3 != 2:
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
    if ext_call.return_data[0] <= arg5:
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
        _550 = mem[64]
        _676 = mem[64] + 128
        mem[64] = mem[64] + 192
        mem[_676] = 0
        mem[_676 + 32] = 0
        mem[var13001] = _676
        z = var13001
        y = var13002
        while y - 1:
            _676 = mem[64]
            mem[64] = mem[64] + 64
            mem[_676] = 0
            mem[_676 + 32] = 0
            mem[z + 32] = _676
            z = z + 32
            y = y - 1
            continue 
        _677 = mem[64]
        mem[64] = mem[64] + 64
        mem[_677] = 0
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
            mem[_677 + 32] = 0
            require 0 < mem[_550]
            mem[_550 + 32] = _677
            _688 = mem[64]
            mem[64] = mem[64] + 64
            mem[_688] = 1
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
            mem[_688 + 32] = ext_call.return_data[0]
            require 1 < mem[_550]
            mem[_550 + 64] = _688
            _706 = mem[64]
            mem[64] = mem[64] + 64
            mem[_706] = 1
            _707 = mem[64]
            mem[mem[64]] = 5
            mem[64] = mem[64] + 192
            require mem[_707]
            mem[_707 + 32] = stor4
            require ext_code.size(stor3)
            staticcall stor3.0xfc0c546a with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 < mem[_707]
            mem[_707 + 64] = ext_call.return_data[12 len 20]
            require ext_code.size(stor3)
            staticcall stor3.0xfc0c546a with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 < mem[_707]
            mem[_707 + 96] = ext_call.return_data[12 len 20]
            require 3 < mem[_707]
            mem[_707 + 128] = arg2
            require 4 < mem[_707]
            mem[_707 + 160] = arg1
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
            mem[_707 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
            mem[_707 + 228] = idx
            mem[_707 + 196] = 64
            mem[_707 + 260] = mem[_707]
            y = 0
            while y < 32 * mem[_707]:
                mem[y + _707 + 292] = mem[y + _707 + 32]
                y = y + 32
                continue 
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args 64, idx, mem[_707 + 260 len (32 * mem[_707]) + 32]
            mem[_707 + 192 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[_706 + 32] = ext_call.return_data[0]
            require 2 < mem[_550]
            mem[_550 + 96] = _706
            mem[64] = _707 + 256
            mem[_707 + 192] = 0
            mem[_707 + 224] = 0
            require 0 < mem[_550]
            y = 1
            z = mem[_550 + 32]
            while y < mem[_550]:
                require y < mem[_550]
                if mem[mem[(32 * y) + _550 + 32] + 32] <= mem[z + 32]:
                    y = y + 1
                    z = z
                    continue 
                require y < mem[_550]
                y = y + 1
                z = mem[(32 * y) + _550 + 32]
                continue 
            _843 = mem[z]
            _844 = mem[z + 32]
            mem[_707 + 256] = 3
            mem[64] = _707 + 448
            mem[_707 + 384] = 0
            mem[_707 + 416] = 0
            mem[var76001] = _707 + 384
            z = var76001
            y = var76002
            while y - 1:
                mem[64] = mem[64] + 64
                mem[_707 + 384] = 0
                mem[_707 + 416] = 0
                mem[z + 32] = _707 + 384
                z = z + 32
                y = y - 1
                continue 
            _1100 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1100] = 0
            mem[mem[64] + 36] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
            mem[mem[64] + 68] = _844
            require ext_code.size(stor1)
            staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, _844
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not ext_call.return_data[32]:
                mem[_1100 + 32] = 0
                require 0 < mem[_707 + 256]
                mem[_707 + 288] = _1100
                _1122 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1122] = 1
                require ext_code.size(stor2)
                staticcall stor2.getExchange(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = _844
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                        gas gas_remaining wei
                       args _844
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_1122 + 32] = ext_call.return_data[0]
                require 1 < mem[_707 + 256]
                mem[_707 + 320] = _1122
                _1158 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1158] = 2
                _1161 = mem[64]
                mem[mem[64]] = 5
                mem[64] = mem[64] + 192
                require 0 < mem[_1161]
                mem[_1161 + 32] = arg1
                require 1 < mem[_1161]
                mem[_1161 + 64] = arg2
                require ext_code.size(stor3)
                staticcall stor3.0xfc0c546a with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < mem[_1161]
                mem[_1161 + 96] = ext_call.return_data[12 len 20]
                require ext_code.size(stor3)
                staticcall stor3.0xfc0c546a with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 3 < mem[_1161]
                mem[_1161 + 128] = ext_call.return_data[12 len 20]
                require 4 < mem[_1161]
                mem[_1161 + 160] = stor4
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
                mem[_1161 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                mem[_1161 + 228] = _844
                mem[_1161 + 196] = 64
                mem[_1161 + 260] = mem[_1161]
                y = 0
                while y < 32 * mem[_1161]:
                    mem[y + _1161 + 292] = mem[y + _1161 + 32]
                    y = y + 32
                    continue 
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args 64, _844, mem[_1161 + 260 len (32 * mem[_1161]) + 32]
                mem[_1161 + 192 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                mem[_1158 + 32] = ext_call.return_data[0]
                require 2 < mem[_707 + 256]
                mem[_707 + 352] = _1158
                mem[64] = _1161 + 256
                mem[_1161 + 192] = 0
                mem[_1161 + 224] = 0
            else:
                require ext_code.size(arg1)
                staticcall arg1.0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_1100 + 32] = ext_call.return_data[0] * _844 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                require 0 < mem[_707 + 256]
                mem[_707 + 288] = _1100
                _1133 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1133] = 1
                require ext_code.size(stor2)
                staticcall stor2.getExchange(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = _844
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                        gas gas_remaining wei
                       args _844
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_1133 + 32] = ext_call.return_data[0]
                require 1 < mem[_707 + 256]
                mem[_707 + 320] = _1133
                _1177 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1177] = 2
                _1183 = mem[64]
                mem[mem[64]] = 5
                mem[64] = mem[64] + 192
                require 0 < mem[_1183]
                mem[_1183 + 32] = arg1
                require 1 < mem[_1183]
                mem[_1183 + 64] = arg2
                require ext_code.size(stor3)
                staticcall stor3.0xfc0c546a with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < mem[_1183]
                mem[_1183 + 96] = ext_call.return_data[12 len 20]
                require ext_code.size(stor3)
                staticcall stor3.0xfc0c546a with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 3 < mem[_1183]
                mem[_1183 + 128] = ext_call.return_data[12 len 20]
                require 4 < mem[_1183]
                mem[_1183 + 160] = stor4
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
                mem[_1183 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                mem[_1183 + 228] = _844
                mem[_1183 + 196] = 64
                mem[_1183 + 260] = mem[_1183]
                y = 0
                while y < 32 * mem[_1183]:
                    mem[y + _1183 + 292] = mem[y + _1183 + 32]
                    y = y + 32
                    continue 
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args 64, _844, mem[_1183 + 260 len (32 * mem[_1183]) + 32]
                mem[_1183 + 192 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                mem[_1177 + 32] = ext_call.return_data[0]
                require 2 < mem[_707 + 256]
                mem[_707 + 352] = _1177
                mem[64] = _1183 + 256
                mem[_1183 + 192] = 0
                mem[_1183 + 224] = 0
            require 0 < mem[_707 + 256]
            y = 1
            z = mem[_707 + 288]
            while y < mem[_707 + 256]:
                require y < mem[_707 + 256]
                if mem[mem[(32 * y) + _707 + 288] + 32] <= mem[z + 32]:
                    y = y + 1
                    z = z
                    continue 
                require y < mem[_707 + 256]
                y = y + 1
                z = mem[(32 * y) + _707 + 288]
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
            w = _844
            x = _843
            continue 
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_677 + 32] = ext_call.return_data[0] * idx * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
        require 0 < mem[_550]
        mem[_550 + 32] = _677
        _693 = mem[64]
        mem[64] = mem[64] + 64
        mem[_693] = 1
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
        mem[_693 + 32] = ext_call.return_data[0]
        require 1 < mem[_550]
        mem[_550 + 64] = _693
        _715 = mem[64]
        mem[64] = mem[64] + 64
        mem[_715] = 1
        _718 = mem[64]
        mem[mem[64]] = 5
        mem[64] = mem[64] + 192
        require mem[_718]
        mem[_718 + 32] = stor4
        require ext_code.size(stor3)
        staticcall stor3.0xfc0c546a with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 1 < mem[_718]
        mem[_718 + 64] = ext_call.return_data[12 len 20]
        require ext_code.size(stor3)
        staticcall stor3.0xfc0c546a with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 2 < mem[_718]
        mem[_718 + 96] = ext_call.return_data[12 len 20]
        require 3 < mem[_718]
        mem[_718 + 128] = arg2
        require 4 < mem[_718]
        mem[_718 + 160] = arg1
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
        mem[_718 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
        mem[_718 + 228] = idx
        mem[_718 + 196] = 64
        mem[_718 + 260] = mem[_718]
        y = 0
        while y < 32 * mem[_718]:
            mem[y + _718 + 292] = mem[y + _718 + 32]
            y = y + 32
            continue 
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                gas gas_remaining wei
               args 64, idx, mem[_718 + 260 len (32 * mem[_718]) + 32]
        mem[_718 + 192 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        mem[_715 + 32] = ext_call.return_data[0]
        require 2 < mem[_550]
        mem[_550 + 96] = _715
        mem[64] = _718 + 256
        mem[_718 + 192] = 0
        mem[_718 + 224] = 0
        require 0 < mem[_550]
        y = 1
        z = mem[_550 + 32]
        while y < mem[_550]:
            require y < mem[_550]
            if mem[mem[(32 * y) + _550 + 32] + 32] <= mem[z + 32]:
                y = y + 1
                z = z
                continue 
            require y < mem[_550]
            y = y + 1
            z = mem[(32 * y) + _550 + 32]
            continue 
        _839 = mem[z]
        _840 = mem[z + 32]
        mem[_718 + 256] = 3
        mem[64] = _718 + 448
        mem[_718 + 384] = 0
        mem[_718 + 416] = 0
        mem[var81001] = _718 + 384
        z = var81001
        y = var81002
        while y - 1:
            mem[64] = mem[64] + 64
            mem[_718 + 384] = 0
            mem[_718 + 416] = 0
            mem[z + 32] = _718 + 384
            z = z + 32
            y = y - 1
            continue 
        _1099 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1099] = 0
        mem[mem[64] + 36] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
        mem[mem[64] + 68] = _840
        require ext_code.size(stor1)
        staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, _840
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not ext_call.return_data[32]:
            mem[_1099 + 32] = 0
            require 0 < mem[_718 + 256]
            mem[_718 + 288] = _1099
            _1120 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1120] = 1
            require ext_code.size(stor2)
            staticcall stor2.getExchange(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = _840
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                    gas gas_remaining wei
                   args _840
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_1120 + 32] = ext_call.return_data[0]
            require 1 < mem[_718 + 256]
            mem[_718 + 320] = _1120
            _1155 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1155] = 2
            _1159 = mem[64]
            mem[mem[64]] = 5
            mem[64] = mem[64] + 192
            require 0 < mem[_1159]
            mem[_1159 + 32] = arg1
            require 1 < mem[_1159]
            mem[_1159 + 64] = arg2
            require ext_code.size(stor3)
            staticcall stor3.0xfc0c546a with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 < mem[_1159]
            mem[_1159 + 96] = ext_call.return_data[12 len 20]
            require ext_code.size(stor3)
            staticcall stor3.0xfc0c546a with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 3 < mem[_1159]
            mem[_1159 + 128] = ext_call.return_data[12 len 20]
            require 4 < mem[_1159]
            mem[_1159 + 160] = stor4
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
            mem[_1159 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
            mem[_1159 + 228] = _840
            mem[_1159 + 196] = 64
            mem[_1159 + 260] = mem[_1159]
            y = 0
            while y < 32 * mem[_1159]:
                mem[y + _1159 + 292] = mem[y + _1159 + 32]
                y = y + 32
                continue 
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args 64, _840, mem[_1159 + 260 len (32 * mem[_1159]) + 32]
            mem[_1159 + 192 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[_1155 + 32] = ext_call.return_data[0]
            require 2 < mem[_718 + 256]
            mem[_718 + 352] = _1155
            mem[64] = _1159 + 256
            mem[_1159 + 192] = 0
            mem[_1159 + 224] = 0
        else:
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_1099 + 32] = ext_call.return_data[0] * _840 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
            require 0 < mem[_718 + 256]
            mem[_718 + 288] = _1099
            _1131 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1131] = 1
            require ext_code.size(stor2)
            staticcall stor2.getExchange(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = _840
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                    gas gas_remaining wei
                   args _840
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_1131 + 32] = ext_call.return_data[0]
            require 1 < mem[_718 + 256]
            mem[_718 + 320] = _1131
            _1175 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1175] = 2
            _1179 = mem[64]
            mem[mem[64]] = 5
            mem[64] = mem[64] + 192
            require 0 < mem[_1179]
            mem[_1179 + 32] = arg1
            require 1 < mem[_1179]
            mem[_1179 + 64] = arg2
            require ext_code.size(stor3)
            staticcall stor3.0xfc0c546a with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 < mem[_1179]
            mem[_1179 + 96] = ext_call.return_data[12 len 20]
            require ext_code.size(stor3)
            staticcall stor3.0xfc0c546a with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 3 < mem[_1179]
            mem[_1179 + 128] = ext_call.return_data[12 len 20]
            require 4 < mem[_1179]
            mem[_1179 + 160] = stor4
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
            mem[_1179 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
            mem[_1179 + 228] = _840
            mem[_1179 + 196] = 64
            mem[_1179 + 260] = mem[_1179]
            y = 0
            while y < 32 * mem[_1179]:
                mem[y + _1179 + 292] = mem[y + _1179 + 32]
                y = y + 32
                continue 
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args 64, _840, mem[_1179 + 260 len (32 * mem[_1179]) + 32]
            mem[_1179 + 192 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[_1175 + 32] = ext_call.return_data[0]
            require 2 < mem[_718 + 256]
            mem[_718 + 352] = _1175
            mem[64] = _1179 + 256
            mem[_1179 + 192] = 0
            mem[_1179 + 224] = 0
        require 0 < mem[_718 + 256]
        y = 1
        z = mem[_718 + 288]
        while y < mem[_718 + 256]:
            require y < mem[_718 + 256]
            if mem[mem[(32 * y) + _718 + 288] + 32] <= mem[z + 32]:
                y = y + 1
                z = z
                continue 
            require y < mem[_718 + 256]
            y = y + 1
            z = mem[(32 * y) + _718 + 288]
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
        w = _840
        x = _839
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
    _127 = mem[64]
    mem[64] = mem[64] + 64
    mem[_127] = 0
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
        mem[_127 + 32] = 0
        if 0 < mem[96]:
            mem[128] = _127
            _138 = mem[64]
            mem[64] = mem[64] + 64
            mem[_138] = 1
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
            mem[_138 + 32] = ext_call.return_data[0]
            if 1 < mem[96]:
                mem[160] = _138
                _156 = mem[64]
                mem[64] = mem[64] + 64
                mem[_156] = 1
                _157 = mem[64]
                mem[mem[64]] = 5
                mem[64] = mem[64] + 192
                if mem[_157]:
                    mem[_157 + 32] = stor4
                    require ext_code.size(stor3)
                    staticcall stor3.0xfc0c546a with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 1 < mem[_157]:
                        mem[_157 + 64] = ext_call.return_data[12 len 20]
                        require ext_code.size(stor3)
                        staticcall stor3.0xfc0c546a with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 2 < mem[_157]:
                            mem[_157 + 96] = ext_call.return_data[12 len 20]
                            if 3 < mem[_157]:
                                mem[_157 + 128] = arg2
                                if 4 < mem[_157]:
                                    mem[_157 + 160] = arg1
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
                                    mem[_157 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                    mem[_157 + 228] = arg3
                                    mem[_157 + 196] = 64
                                    mem[_157 + 260] = mem[_157]
                                    mem[_157 + 292 len floor32(mem[_157])] = mem[_157 + 32 len floor32(mem[_157])]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                            gas gas_remaining wei
                                           args 64, arg3, mem[_157 + 260 len (32 * mem[_157]) + 32]
                                    mem[_157 + 192 len 64] = ext_call.return_data[0 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 64
                                    mem[_156 + 32] = ext_call.return_data[0]
                                    if 2 < mem[96]:
                                        mem[192] = _156
                                        mem[64] = _157 + 256
                                        mem[_157 + 192] = 0
                                        mem[_157 + 224] = 0
                                        if 0 < mem[96]:
                                            idx = 1
                                            s = _127
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
                                            _293 = mem[s]
                                            _294 = mem[s + 32]
                                            mem[_157 + 256] = 3
                                            mem[64] = _157 + 448
                                            mem[_157 + 384] = 0
                                            mem[_157 + 416] = 0
                                            mem[var73001] = _157 + 384
                                            s = var73001
                                            idx = var73002
                                            while idx - 1:
                                                mem[64] = mem[64] + 64
                                                mem[_157 + 384] = 0
                                                mem[_157 + 416] = 0
                                                mem[s + 32] = _157 + 384
                                                s = s + 32
                                                idx = idx - 1
                                                continue 
                                            _558 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_558] = 0
                                            mem[mem[64] + 36] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                            mem[mem[64] + 68] = _294
                                            require ext_code.size(stor1)
                                            staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, _294
                                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 64
                                            if not ext_call.return_data[32]:
                                                mem[_558 + 32] = 0
                                                if 0 < mem[_157 + 256]:
                                                    mem[_157 + 288] = _558
                                                    _580 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_580] = 1
                                                    require ext_code.size(stor2)
                                                    staticcall stor2.getExchange(address arg1) with:
                                                            gas gas_remaining wei
                                                           args address(arg1)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[mem[64] + 4] = _294
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args _294
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[_580 + 32] = ext_call.return_data[0]
                                                    if 1 < mem[_157 + 256]:
                                                        mem[_157 + 320] = _580
                                                        _616 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_616] = 2
                                                        _619 = mem[64]
                                                        mem[mem[64]] = 5
                                                        mem[64] = mem[64] + 192
                                                        if 0 < mem[_619]:
                                                            mem[_619 + 32] = arg1
                                                            if 1 < mem[_619]:
                                                                mem[_619 + 64] = arg2
                                                                require ext_code.size(stor3)
                                                                staticcall stor3.0xfc0c546a with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if 2 < mem[_619]:
                                                                    mem[_619 + 96] = ext_call.return_data[12 len 20]
                                                                    require ext_code.size(stor3)
                                                                    staticcall stor3.0xfc0c546a with:
                                                                            gas gas_remaining wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if 3 < mem[_619]:
                                                                        mem[_619 + 128] = ext_call.return_data[12 len 20]
                                                                        if 4 < mem[_619]:
                                                                            mem[_619 + 160] = stor4
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
                                                                            mem[_619 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                                                            mem[_619 + 228] = _294
                                                                            mem[_619 + 196] = 64
                                                                            mem[_619 + 260] = mem[_619]
                                                                            mem[_619 + 292 len floor32(mem[_619])] = mem[_619 + 32 len floor32(mem[_619])]
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                                                    gas gas_remaining wei
                                                                                   args 64, _294, mem[_619 + 260 len (32 * mem[_619]) + 32]
                                                                            mem[_619 + 192 len 64] = ext_call.return_data[0 len 64]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 64
                                                                            mem[_616 + 32] = ext_call.return_data[0]
                                                                            if 2 < mem[_157 + 256]:
                                                                                mem[_157 + 352] = _616
                                                                                mem[64] = _619 + 256
                                                                                mem[_619 + 192] = 0
                                                                                mem[_619 + 224] = 0
                                                                                if 0 < mem[_157 + 256]:
                                                                                    idx = 1
                                                                                    s = _558
                                                                                    while idx < mem[_157 + 256]:
                                                                                        require idx < mem[_157 + 256]
                                                                                        if mem[mem[(32 * idx) + _157 + 288] + 32] <= mem[s + 32]:
                                                                                            idx = idx + 1
                                                                                            s = s
                                                                                            continue 
                                                                                        require idx < mem[_157 + 256]
                                                                                        idx = idx + 1
                                                                                        s = mem[(32 * idx) + _157 + 288]
                                                                                        continue 
                                                                                    if _293 <= 2:
                                                                                        if mem[s] <= 2:
                                                                                            return _293 << 248, _294, mem[s] << 248, mem[s + 32], mem[s + 32] - arg3
                                            else:
                                                require ext_code.size(arg1)
                                                staticcall arg1.0x313ce567 with:
                                                        gas gas_remaining wei
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[_558 + 32] = ext_call.return_data[0] * _294 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                                if 0 < mem[_157 + 256]:
                                                    mem[_157 + 288] = _558
                                                    _591 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_591] = 1
                                                    require ext_code.size(stor2)
                                                    staticcall stor2.getExchange(address arg1) with:
                                                            gas gas_remaining wei
                                                           args address(arg1)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[mem[64] + 4] = _294
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args _294
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[_591 + 32] = ext_call.return_data[0]
                                                    if 1 < mem[_157 + 256]:
                                                        mem[_157 + 320] = _591
                                                        _635 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_635] = 2
                                                        _641 = mem[64]
                                                        mem[mem[64]] = 5
                                                        mem[64] = mem[64] + 192
                                                        if 0 < mem[_641]:
                                                            mem[_641 + 32] = arg1
                                                            if 1 < mem[_641]:
                                                                mem[_641 + 64] = arg2
                                                                require ext_code.size(stor3)
                                                                staticcall stor3.0xfc0c546a with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if 2 < mem[_641]:
                                                                    mem[_641 + 96] = ext_call.return_data[12 len 20]
                                                                    require ext_code.size(stor3)
                                                                    staticcall stor3.0xfc0c546a with:
                                                                            gas gas_remaining wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if 3 < mem[_641]:
                                                                        mem[_641 + 128] = ext_call.return_data[12 len 20]
                                                                        if 4 < mem[_641]:
                                                                            mem[_641 + 160] = stor4
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
                                                                            mem[_641 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                                                            mem[_641 + 228] = _294
                                                                            mem[_641 + 196] = 64
                                                                            mem[_641 + 260] = mem[_641]
                                                                            mem[_641 + 292 len floor32(mem[_641])] = mem[_641 + 32 len floor32(mem[_641])]
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                                                    gas gas_remaining wei
                                                                                   args 64, _294, mem[_641 + 260 len (32 * mem[_641]) + 32]
                                                                            mem[_641 + 192 len 64] = ext_call.return_data[0 len 64]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 64
                                                                            mem[_635 + 32] = ext_call.return_data[0]
                                                                            if 2 < mem[_157 + 256]:
                                                                                mem[_157 + 352] = _635
                                                                                mem[64] = _641 + 256
                                                                                mem[_641 + 192] = 0
                                                                                mem[_641 + 224] = 0
                                                                                if 0 < mem[_157 + 256]:
                                                                                    idx = 1
                                                                                    s = _558
                                                                                    while idx < mem[_157 + 256]:
                                                                                        require idx < mem[_157 + 256]
                                                                                        if mem[mem[(32 * idx) + _157 + 288] + 32] <= mem[s + 32]:
                                                                                            idx = idx + 1
                                                                                            s = s
                                                                                            continue 
                                                                                        require idx < mem[_157 + 256]
                                                                                        idx = idx + 1
                                                                                        s = mem[(32 * idx) + _157 + 288]
                                                                                        continue 
                                                                                    if _293 <= 2:
                                                                                        if mem[s] <= 2:
                                                                                            return _293 << 248, _294, mem[s] << 248, mem[s + 32], mem[s + 32] - arg3
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_127 + 32] = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
        if 0 < mem[96]:
            mem[128] = _127
            _143 = mem[64]
            mem[64] = mem[64] + 64
            mem[_143] = 1
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
            mem[_143 + 32] = ext_call.return_data[0]
            if 1 < mem[96]:
                mem[160] = _143
                _165 = mem[64]
                mem[64] = mem[64] + 64
                mem[_165] = 1
                _168 = mem[64]
                mem[mem[64]] = 5
                mem[64] = mem[64] + 192
                if mem[_168]:
                    mem[_168 + 32] = stor4
                    require ext_code.size(stor3)
                    staticcall stor3.0xfc0c546a with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 1 < mem[_168]:
                        mem[_168 + 64] = ext_call.return_data[12 len 20]
                        require ext_code.size(stor3)
                        staticcall stor3.0xfc0c546a with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 2 < mem[_168]:
                            mem[_168 + 96] = ext_call.return_data[12 len 20]
                            if 3 < mem[_168]:
                                mem[_168 + 128] = arg2
                                if 4 < mem[_168]:
                                    mem[_168 + 160] = arg1
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
                                    mem[_168 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                    mem[_168 + 228] = arg3
                                    mem[_168 + 196] = 64
                                    mem[_168 + 260] = mem[_168]
                                    mem[_168 + 292 len floor32(mem[_168])] = mem[_168 + 32 len floor32(mem[_168])]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                            gas gas_remaining wei
                                           args 64, arg3, mem[_168 + 260 len (32 * mem[_168]) + 32]
                                    mem[_168 + 192 len 64] = ext_call.return_data[0 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 64
                                    mem[_165 + 32] = ext_call.return_data[0]
                                    if 2 < mem[96]:
                                        mem[192] = _165
                                        mem[64] = _168 + 256
                                        mem[_168 + 192] = 0
                                        mem[_168 + 224] = 0
                                        if 0 < mem[96]:
                                            idx = 1
                                            s = _127
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
                                            _289 = mem[s]
                                            _290 = mem[s + 32]
                                            mem[_168 + 256] = 3
                                            mem[64] = _168 + 448
                                            mem[_168 + 384] = 0
                                            mem[_168 + 416] = 0
                                            mem[var78001] = _168 + 384
                                            s = var78001
                                            idx = var78002
                                            while idx - 1:
                                                mem[64] = mem[64] + 64
                                                mem[_168 + 384] = 0
                                                mem[_168 + 416] = 0
                                                mem[s + 32] = _168 + 384
                                                s = s + 32
                                                idx = idx - 1
                                                continue 
                                            _557 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_557] = 0
                                            mem[mem[64] + 36] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                            mem[mem[64] + 68] = _290
                                            require ext_code.size(stor1)
                                            staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, _290
                                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 64
                                            if not ext_call.return_data[32]:
                                                mem[_557 + 32] = 0
                                                if 0 < mem[_168 + 256]:
                                                    mem[_168 + 288] = _557
                                                    _578 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_578] = 1
                                                    require ext_code.size(stor2)
                                                    staticcall stor2.getExchange(address arg1) with:
                                                            gas gas_remaining wei
                                                           args address(arg1)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[mem[64] + 4] = _290
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args _290
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[_578 + 32] = ext_call.return_data[0]
                                                    if 1 < mem[_168 + 256]:
                                                        mem[_168 + 320] = _578
                                                        _613 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_613] = 2
                                                        _617 = mem[64]
                                                        mem[mem[64]] = 5
                                                        mem[64] = mem[64] + 192
                                                        if 0 < mem[_617]:
                                                            mem[_617 + 32] = arg1
                                                            if 1 < mem[_617]:
                                                                mem[_617 + 64] = arg2
                                                                require ext_code.size(stor3)
                                                                staticcall stor3.0xfc0c546a with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if 2 < mem[_617]:
                                                                    mem[_617 + 96] = ext_call.return_data[12 len 20]
                                                                    require ext_code.size(stor3)
                                                                    staticcall stor3.0xfc0c546a with:
                                                                            gas gas_remaining wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if 3 < mem[_617]:
                                                                        mem[_617 + 128] = ext_call.return_data[12 len 20]
                                                                        if 4 < mem[_617]:
                                                                            mem[_617 + 160] = stor4
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
                                                                            mem[_617 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                                                            mem[_617 + 228] = _290
                                                                            mem[_617 + 196] = 64
                                                                            mem[_617 + 260] = mem[_617]
                                                                            mem[_617 + 292 len floor32(mem[_617])] = mem[_617 + 32 len floor32(mem[_617])]
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                                                    gas gas_remaining wei
                                                                                   args 64, _290, mem[_617 + 260 len (32 * mem[_617]) + 32]
                                                                            mem[_617 + 192 len 64] = ext_call.return_data[0 len 64]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 64
                                                                            mem[_613 + 32] = ext_call.return_data[0]
                                                                            if 2 < mem[_168 + 256]:
                                                                                mem[_168 + 352] = _613
                                                                                mem[64] = _617 + 256
                                                                                mem[_617 + 192] = 0
                                                                                mem[_617 + 224] = 0
                                                                                if 0 < mem[_168 + 256]:
                                                                                    idx = 1
                                                                                    s = _557
                                                                                    while idx < mem[_168 + 256]:
                                                                                        require idx < mem[_168 + 256]
                                                                                        if mem[mem[(32 * idx) + _168 + 288] + 32] <= mem[s + 32]:
                                                                                            idx = idx + 1
                                                                                            s = s
                                                                                            continue 
                                                                                        require idx < mem[_168 + 256]
                                                                                        idx = idx + 1
                                                                                        s = mem[(32 * idx) + _168 + 288]
                                                                                        continue 
                                                                                    if _289 <= 2:
                                                                                        if mem[s] <= 2:
                                                                                            return _289 << 248, _290, mem[s] << 248, mem[s + 32], mem[s + 32] - arg3
                                            else:
                                                require ext_code.size(arg1)
                                                staticcall arg1.0x313ce567 with:
                                                        gas gas_remaining wei
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[_557 + 32] = ext_call.return_data[0] * _290 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                                if 0 < mem[_168 + 256]:
                                                    mem[_168 + 288] = _557
                                                    _589 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_589] = 1
                                                    require ext_code.size(stor2)
                                                    staticcall stor2.getExchange(address arg1) with:
                                                            gas gas_remaining wei
                                                           args address(arg1)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[mem[64] + 4] = _290
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args _290
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[_589 + 32] = ext_call.return_data[0]
                                                    if 1 < mem[_168 + 256]:
                                                        mem[_168 + 320] = _589
                                                        _633 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_633] = 2
                                                        _637 = mem[64]
                                                        mem[mem[64]] = 5
                                                        mem[64] = mem[64] + 192
                                                        if 0 < mem[_637]:
                                                            mem[_637 + 32] = arg1
                                                            if 1 < mem[_637]:
                                                                mem[_637 + 64] = arg2
                                                                require ext_code.size(stor3)
                                                                staticcall stor3.0xfc0c546a with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if 2 < mem[_637]:
                                                                    mem[_637 + 96] = ext_call.return_data[12 len 20]
                                                                    require ext_code.size(stor3)
                                                                    staticcall stor3.0xfc0c546a with:
                                                                            gas gas_remaining wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if 3 < mem[_637]:
                                                                        mem[_637 + 128] = ext_call.return_data[12 len 20]
                                                                        if 4 < mem[_637]:
                                                                            mem[_637 + 160] = stor4
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
                                                                            mem[_637 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                                                            mem[_637 + 228] = _290
                                                                            mem[_637 + 196] = 64
                                                                            mem[_637 + 260] = mem[_637]
                                                                            mem[_637 + 292 len floor32(mem[_637])] = mem[_637 + 32 len floor32(mem[_637])]
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                                                    gas gas_remaining wei
                                                                                   args 64, _290, mem[_637 + 260 len (32 * mem[_637]) + 32]
                                                                            mem[_637 + 192 len 64] = ext_call.return_data[0 len 64]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 64
                                                                            mem[_633 + 32] = ext_call.return_data[0]
                                                                            if 2 < mem[_168 + 256]:
                                                                                mem[_168 + 352] = _633
                                                                                mem[64] = _637 + 256
                                                                                mem[_637 + 192] = 0
                                                                                mem[_637 + 224] = 0
                                                                                if 0 < mem[_168 + 256]:
                                                                                    idx = 1
                                                                                    s = _557
                                                                                    while idx < mem[_168 + 256]:
                                                                                        require idx < mem[_168 + 256]
                                                                                        if mem[mem[(32 * idx) + _168 + 288] + 32] <= mem[s + 32]:
                                                                                            idx = idx + 1
                                                                                            s = s
                                                                                            continue 
                                                                                        require idx < mem[_168 + 256]
                                                                                        idx = idx + 1
                                                                                        s = mem[(32 * idx) + _168 + 288]
                                                                                        continue 
                                                                                    if _289 <= 2:
                                                                                        if mem[s] <= 2:
                                                                                            return _289 << 248, _290, mem[s] << 248, mem[s + 32], mem[s + 32] - arg3
    revert
}



}
