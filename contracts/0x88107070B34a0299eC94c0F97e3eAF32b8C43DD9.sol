contract main {




// =====================  Runtime code  =====================


#
#  - sub_256d047c(?)
#  - sub_e729bf17(?)
#
address stor0;
uint32 stor1;
address stor1;
uint256 stor1;
address stor2;
uint32 stor3;
address stor3;
uint256 stor3;
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
    require ext_code.size(address(stor1))
    staticcall address(stor1).getExpectedRate(address arg1, address arg2, uint256 arg3) with:
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
    require ext_code.size(address(stor1))
    staticcall address(stor1).getExpectedRate(address arg1, address arg2, uint256 arg3) with:
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

function sub_78b6f8ca(?) {
    require ext_code.size(address(stor3))
    staticcall address(stor3).registry() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
            gas gas_remaining wei
           args 'BancorGasPriceLimit'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).gasPrice() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_9c66b5e7(?) {
    require calldata.size - 4 >= 96
    if not arg2:
        return 0
    require ext_code.size(address(stor3))
    staticcall address(stor3).token() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor3))
    staticcall address(stor3).token() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor3))
    staticcall address(stor3).token() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor3))
    staticcall address(stor3).registry() with:
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
    if ext_call.return_data[12 len 20] != arg1:
        mem[388 len 0] = None
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                gas gas_remaining wei
               args Array(len=5, data=mem[388 len 160]), arg3
    else:
        mem[324 len 0] = None
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                gas gas_remaining wei
               args Array(len=3, data=mem[324 len 96]), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function sub_cae0dd7a(?) {
    require calldata.size - 4 >= 96
    if not arg2:
        return 0
    require ext_code.size(address(stor3))
    staticcall address(stor3).token() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor3))
    staticcall address(stor3).token() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor3))
    staticcall address(stor3).token() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor3))
    staticcall address(stor3).registry() with:
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
    if ext_call.return_data[12 len 20] != arg1:
        mem[388 len 0] = None
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                gas gas_remaining wei
               args Array(len=5, data=mem[388 len 160]), arg3
    else:
        mem[324 len 0] = None
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                gas gas_remaining wei
               args Array(len=3, data=mem[324 len 96]), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function sub_063ef1ed(?) {
    require calldata.size - 4 >= 224
    if arg7 < block.number:
        revert with 0, 'Trade expired'
    require arg3 <= 2
    if not arg3:
        require ext_code.size(address(stor1))
        call address(stor1).tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
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
                   args this.address, address(stor1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(address(stor1))
                call address(stor1).tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                     gas gas_remaining wei
                    args 0, 0, ext_call.return_data[0], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, stor0, 256, 0, mem[388]
            else:
                require ext_code.size(arg1)
                staticcall arg1.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(stor1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require not ext_call.return_data[0]
                require ext_code.size(arg1)
                mem[196 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call arg1 with:
                   funct Mask(32, 224, this.address) >> 224
                     gas gas_remaining wei
                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, 0
                if not return_data.size:
                    require ext_call.success
                    require approve(address arg1, uint256 arg2), Mask(224, 0, stor1)
                    require ext_code.size(address(stor1))
                    call address(stor1).tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, stor0, 256, 0, mem[488]
                else:
                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[228]
                    require ext_code.size(address(stor1))
                    call address(stor1).tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, stor0, 256, 0, mem[ceil32(return_data.size) + 489]
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
                    staticcall arg1.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require not ext_call.return_data[0]
                    require ext_code.size(arg1)
                    mem[196 len 64] = approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    call arg1 with:
                       funct Mask(32, 224, this.address) >> 224
                         gas gas_remaining wei
                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, 0
                    if not return_data.size:
                        require ext_call.success
                        require approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64
                    else:
                        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require ext_call.success
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[228]
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
                       args this.address, address(stor3)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(address(stor3))
                    staticcall address(stor3).token() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor3))
                    staticcall address(stor3).token() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor3))
                    staticcall address(stor3).token() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[12 len 20] == arg1:
                        require ext_code.size(address(stor3))
                        call address(stor3).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 96, ext_call.return_data[0], 1, 3, 0, mem[388 len 64]
                    else:
                        mem[420 len 0] = None
                        require ext_code.size(address(stor3))
                        call address(stor3).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args Array(len=5, data=mem[420 len 160]), ext_call.return_data[0], 1
                else:
                    require ext_code.size(arg1)
                    staticcall arg1.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(stor3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require not ext_call.return_data[0]
                    require ext_code.size(arg1)
                    mem[196 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    call arg1 with:
                       funct Mask(32, 224, this.address) >> 224
                         gas gas_remaining wei
                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, 0
                    if not return_data.size:
                        require ext_call.success
                        require approve(address arg1, uint256 arg2), Mask(224, 0, stor3)
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).token() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).token() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).token() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[12 len 20] != arg1:
                            mem[520 len 0] = None
                            require ext_code.size(address(stor3))
                            call address(stor3).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args Array(len=5, data=mem[520 len 160]), ext_call.return_data[0], 1
                        else:
                            mem[456 len 0] = None
                            require ext_code.size(address(stor3))
                            call address(stor3).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args Array(len=3, data=mem[456 len 96]), ext_call.return_data[0], 1
                    else:
                        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require ext_call.success
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[228]
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).token() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).token() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).token() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[12 len 20] != arg1:
                            mem[ceil32(return_data.size) + 521 len 0] = None
                            require ext_code.size(address(stor3))
                            call address(stor3).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args Array(len=5, data=mem[ceil32(return_data.size) + 521 len 160]), ext_call.return_data[0], 1
                        else:
                            mem[ceil32(return_data.size) + 457 len 0] = None
                            require ext_code.size(address(stor3))
                            call address(stor3).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args Array(len=3, data=mem[ceil32(return_data.size) + 457 len 96]), ext_call.return_data[0], 1
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
                       args this.address, address(stor1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(address(stor1))
                    call address(stor1).tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                         gas gas_remaining wei
                        args 0, 0, ext_call.return_data[0], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, stor0, 256, 0, mem[388]
                else:
                    require ext_code.size(arg1)
                    staticcall arg1.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(stor1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require not ext_call.return_data[0]
                    require ext_code.size(arg1)
                    mem[196 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    call arg1 with:
                       funct uint32(stor1)
                         gas gas_remaining wei
                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[260 len 4]
                    if not return_data.size:
                        require ext_call.success
                        require approve(address arg1, uint256 arg2), Mask(224, 0, stor1)
                        require ext_code.size(address(stor1))
                        call address(stor1).tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, stor0, 256, 0, mem[488]
                    else:
                        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require ext_call.success
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[228]
                        require ext_code.size(address(stor1))
                        call address(stor1).tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, stor0, 256, 0, mem[ceil32(return_data.size) + 489]
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
                        staticcall arg1.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require not ext_call.return_data[0]
                        require ext_code.size(arg1)
                        mem[196 len 64] = approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        call arg1 with:
                             gas gas_remaining wei
                            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[260 len 4]
                        if not return_data.size:
                            require ext_call.success
                            require approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64
                        else:
                            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require ext_call.success
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[228]
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
                           args this.address, address(stor3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).token() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).token() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).token() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[12 len 20] != arg1:
                            mem[420 len 0] = None
                            require ext_code.size(address(stor3))
                            call address(stor3).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args Array(len=5, data=mem[420 len 160]), ext_call.return_data[0], 1
                        else:
                            mem[356 len 0] = None
                            require ext_code.size(address(stor3))
                            call address(stor3).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args Array(len=3, data=mem[356 len 96]), ext_call.return_data[0], 1
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(stor3)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require not ext_call.return_data[0]
                        require ext_code.size(arg1)
                        mem[196 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        call arg1 with:
                           funct uint32(stor3)
                             gas gas_remaining wei
                            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[260 len 4]
                        if not return_data.size:
                            require ext_call.success
                            require approve(address arg1, uint256 arg2), Mask(224, 0, stor3)
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[12 len 20] != arg1:
                                mem[520 len 0] = None
                                require ext_code.size(address(stor3))
                                call address(stor3).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[520 len 160]), ext_call.return_data[0], 1
                            else:
                                mem[456 len 0] = None
                                require ext_code.size(address(stor3))
                                call address(stor3).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args Array(len=3, data=mem[456 len 96]), ext_call.return_data[0], 1
                        else:
                            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require ext_call.success
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[228]
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[12 len 20] != arg1:
                                mem[ceil32(return_data.size) + 521 len 0] = None
                                require ext_code.size(address(stor3))
                                call address(stor3).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[ceil32(return_data.size) + 521 len 160]), ext_call.return_data[0], 1
                            else:
                                mem[ceil32(return_data.size) + 457 len 0] = None
                                require ext_code.size(address(stor3))
                                call address(stor3).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args Array(len=3, data=mem[ceil32(return_data.size) + 457 len 96]), ext_call.return_data[0], 1
        else:
            require arg3 <= 2
            if arg3 != 2:
                revert with 0, 'Not supported exchange.'
            if not arg2:
                revert with 0, 'Not supported exchange.'
            require ext_code.size(address(stor3))
            staticcall address(stor3).token() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor3))
            staticcall address(stor3).token() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor3))
            staticcall address(stor3).token() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != arg1:
                mem[420 len 0] = None
                require ext_code.size(address(stor3))
                call address(stor3).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
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
                           args this.address, address(stor1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(address(stor1))
                        call address(stor1).tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, stor0, 256, 0, mem[580]
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(stor1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require not ext_call.return_data[0]
                        require ext_code.size(arg1)
                        mem[388 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        call arg1 with:
                             gas gas_remaining wei
                            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[452 len 4]
                        require return_data.size
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require ext_call.success
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[420]
                        require ext_code.size(address(stor1))
                        call address(stor1).tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, stor0, 256, 0, mem[ceil32(return_data.size) + 681]
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
                            staticcall arg1.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require not ext_call.return_data[0]
                            require ext_code.size(arg1)
                            mem[388 len 64] = approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            call arg1 with:
                                 gas gas_remaining wei
                                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[452 len 4]
                            require return_data.size
                            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require ext_call.success
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[420]
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
                               args this.address, address(stor3)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[12 len 20] != arg1:
                                mem[612 len 0] = None
                                require ext_code.size(address(stor3))
                                call address(stor3).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[612 len 160]), ext_call.return_data[0], 1
                            else:
                                mem[548 len 0] = None
                                require ext_code.size(address(stor3))
                                call address(stor3).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args Array(len=3, data=mem[548 len 96]), ext_call.return_data[0], 1
                        else:
                            require ext_code.size(arg1)
                            staticcall arg1.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(stor3)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require not ext_call.return_data[0]
                            require ext_code.size(arg1)
                            mem[388 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            call arg1 with:
                                 gas gas_remaining wei
                                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[452 len 4]
                            require return_data.size
                            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require ext_call.success
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[420]
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[12 len 20] != arg1:
                                mem[ceil32(return_data.size) + 713 len 0] = None
                                require ext_code.size(address(stor3))
                                call address(stor3).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[ceil32(return_data.size) + 713 len 160]), ext_call.return_data[0], 1
                            else:
                                mem[ceil32(return_data.size) + 649 len 0] = None
                                require ext_code.size(address(stor3))
                                call address(stor3).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args Array(len=3, data=mem[ceil32(return_data.size) + 649 len 96]), ext_call.return_data[0], 1
            else:
                mem[356 len 0] = None
                require ext_code.size(address(stor3))
                call address(stor3).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                   value arg6 wei
                     gas gas_remaining wei
                    args Array(len=3, data=mem[356 len 96]), arg6, 1
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
                           args this.address, address(stor1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(address(stor1))
                        call address(stor1).tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, stor0, 256, 0, mem[516]
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(stor1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require not ext_call.return_data[0]
                        require ext_code.size(arg1)
                        mem[324 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        call arg1 with:
                             gas gas_remaining wei
                            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[388 len 4]
                        require return_data.size
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require ext_call.success
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[356]
                        require ext_code.size(address(stor1))
                        call address(stor1).tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, stor0, 256, 0, mem[ceil32(return_data.size) + 617]
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
                            staticcall arg1.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require not ext_call.return_data[0]
                            require ext_code.size(arg1)
                            mem[324 len 64] = approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            call arg1 with:
                                 gas gas_remaining wei
                                args Mask(480, -256, approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[388 len 4]
                            require return_data.size
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require ext_call.success
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[356]
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
                               args this.address, address(stor3)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[12 len 20] != arg1:
                                mem[548 len 0] = None
                                require ext_code.size(address(stor3))
                                call address(stor3).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[548 len 160]), ext_call.return_data[0], 1
                            else:
                                mem[484 len 0] = None
                                require ext_code.size(address(stor3))
                                call address(stor3).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args Array(len=3, data=mem[484 len 96]), ext_call.return_data[0], 1
                        else:
                            require ext_code.size(arg1)
                            staticcall arg1.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(stor3)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require not ext_call.return_data[0]
                            require ext_code.size(arg1)
                            mem[324 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[416 len 4] = test266151307()
                            call arg1 with:
                               funct uint32(stor3)
                                 gas gas_remaining wei
                                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[388 len 4]
                            require return_data.size
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require ext_call.success
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[356]
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(ext_call.return_data[0]) != arg1:
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[ceil32(return_data.size) + 649 len 0] = None
                                require ext_code.size(address(stor3))
                                call address(stor3).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[ceil32(return_data.size) + 649 len 160]), ext_call.return_data[0], 1
                            else:
                                require ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 357] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 1 < ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 389] = ext_call.return_data[12 len 20]
                                require 2 < ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 421] = stor4
                                mem[ceil32(return_data.size) + 453] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 489] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 521] = 1
                                mem[ceil32(return_data.size) + 457] = 96
                                mem[ceil32(return_data.size) + 553] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 585 len floor32(ext_call.return_data[0])] = mem[ceil32(return_data.size) + 357 len floor32(ext_call.return_data[0])]
                                require ext_code.size(address(stor3))
                                call address(stor3).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args Array(len=ext_call.return_data[0], data=mem[ceil32(return_data.size) + 585 len 32 * ext_call.return_data[0]]), ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= arg6:
        revert with 0, 'Not profitable trade'
}



}
