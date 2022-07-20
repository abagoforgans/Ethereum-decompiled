contract main {




// =====================  Runtime code  =====================


#
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

function sub_424d117d(?) {
    require calldata.size - 4 >= 96
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
           value arg2 wei
             gas gas_remaining wei
            args Array(len=5, data=mem[420 len 160]), arg2, 1
    else:
        mem[356 len 0] = None
        require ext_code.size(address(stor3))
        call address(stor3).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
           value arg2 wei
             gas gas_remaining wei
            args Array(len=3, data=mem[356 len 96]), arg2, 1
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
    staticcall address(stor3).0x7b103999 with:
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
    staticcall address(stor3).0x7b103999 with:
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

function sub_1eff1df1(?) {
    require calldata.size - 4 >= 96
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
                args Array(len=5, data=mem[420 len 160]), arg2, 1
        else:
            mem[356 len 0] = None
            require ext_code.size(address(stor3))
            call address(stor3).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args Array(len=3, data=mem[356 len 96]), arg2, 1
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
                    args Array(len=5, data=mem[520 len 160]), arg2, 1
            else:
                mem[456 len 0] = None
                require ext_code.size(address(stor3))
                call address(stor3).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args Array(len=3, data=mem[456 len 96]), arg2, 1
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
                    args Array(len=5, data=mem[ceil32(return_data.size) + 521 len 160]), arg2, 1
            else:
                mem[ceil32(return_data.size) + 457 len 0] = None
                require ext_code.size(address(stor3))
                call address(stor3).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args Array(len=3, data=mem[ceil32(return_data.size) + 457 len 96]), arg2, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_9b91dfc6(?) {
    require calldata.size - 4 >= 192
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
                   funct uint32(stor1)
                     gas gas_remaining wei
                    args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, 0
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
                        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[260 len 4]
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
                            args Mask(480, -256, approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[260 len 4]
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
                        mem[288 len 4] = test266151307()
                        call arg1 with:
                           funct uint32(stor3)
                             gas gas_remaining wei
                            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[260 len 4]
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
                            if address(ext_call.return_data[0]) != arg1:
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[520 len 0] = None
                                require ext_code.size(address(stor3))
                                call address(stor3).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[520 len 160]), ext_call.return_data[0], 1
                            else:
                                require ext_call.return_data[0]
                                mem[228] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 1 < ext_call.return_data[0]
                                mem[260] = ext_call.return_data[12 len 20]
                                require 2 < ext_call.return_data[0]
                                mem[292] = stor4
                                mem[324] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                                mem[360] = ext_call.return_data[0]
                                mem[392] = 1
                                mem[328] = 96
                                mem[424] = ext_call.return_data[0]
                                mem[456 len floor32(ext_call.return_data[0])] = mem[228 len floor32(ext_call.return_data[0])]
                                require ext_code.size(address(stor3))
                                call address(stor3).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args Array(len=ext_call.return_data[0], data=mem[456 len 32 * ext_call.return_data[0]]), ext_call.return_data[0], 1
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
                            if address(ext_call.return_data[0]) != arg1:
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[ceil32(return_data.size) + 521 len 0] = None
                                require ext_code.size(address(stor3))
                                call address(stor3).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[ceil32(return_data.size) + 521 len 160]), ext_call.return_data[0], 1
                            else:
                                require ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 229] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 1 < ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 261] = ext_call.return_data[12 len 20]
                                require 2 < ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 293] = stor4
                                mem[ceil32(return_data.size) + 325] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 393] = 1
                                mem[ceil32(return_data.size) + 329] = 96
                                mem[ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 457 len floor32(ext_call.return_data[0])] = mem[ceil32(return_data.size) + 229 len floor32(ext_call.return_data[0])]
                                require ext_code.size(address(stor3))
                                call address(stor3).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args Array(len=ext_call.return_data[0], data=mem[ceil32(return_data.size) + 457 len 32 * ext_call.return_data[0]]), ext_call.return_data[0], 1
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
                            mem[480 len 4] = test266151307()
                            call arg1 with:
                               funct uint32(stor3)
                                 gas gas_remaining wei
                                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[452 len 4]
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
                            if address(ext_call.return_data[0]) != arg1:
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[ceil32(return_data.size) + 713 len 0] = None
                                require ext_code.size(address(stor3))
                                call address(stor3).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[ceil32(return_data.size) + 713 len 160]), ext_call.return_data[0], 1
                            else:
                                require ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 421] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 1 < ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 453] = ext_call.return_data[12 len 20]
                                require 2 < ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 485] = stor4
                                mem[ceil32(return_data.size) + 517] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 553] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 585] = 1
                                mem[ceil32(return_data.size) + 521] = 96
                                mem[ceil32(return_data.size) + 617] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 649 len floor32(ext_call.return_data[0])] = mem[ceil32(return_data.size) + 421 len floor32(ext_call.return_data[0])]
                                require ext_code.size(address(stor3))
                                call address(stor3).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args Array(len=ext_call.return_data[0], data=mem[ceil32(return_data.size) + 649 len 32 * ext_call.return_data[0]]), ext_call.return_data[0], 1
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

function sub_256d047c(?) {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[96] = arg5.length
    mem[128 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    if arg3 <= arg4:
        return 0
    mem[(32 * arg5.length) + 128] = 3
    mem[64] = (32 * arg5.length) + 320
    mem[(32 * arg5.length) + 256] = 0
    mem[(32 * arg5.length) + 288] = 0
    mem[var14001] = (32 * arg5.length) + 256
    s = var14001
    idx = var14002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * arg5.length) + 256] = 0
        mem[(32 * arg5.length) + 288] = 0
        mem[s + 32] = (32 * arg5.length) + 256
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < mem[96]:
        require idx < mem[96]
        require mem[(32 * idx) + 128] <= 2
        if mem[(32 * idx) + 128]:
            idx = idx + 1
            continue 
        _3405 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3405] = 0
        mem[_3405 + 32] = 0
        require 0 < mem[(32 * arg5.length) + 128]
        mem[(32 * arg5.length) + 160] = _3405
        idx = 0
        while idx < mem[96]:
            require idx < mem[96]
            require mem[(32 * idx) + 128] <= 2
            if mem[(32 * idx) + 128] != 1:
                idx = idx + 1
                continue 
            _5115 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5115] = 1
            mem[_5115 + 32] = 0
            require 1 < mem[(32 * arg5.length) + 128]
            mem[(32 * arg5.length) + 192] = _5115
            idx = 0
            while idx < mem[96]:
                require idx < mem[96]
                require mem[(32 * idx) + 128] <= 2
                if mem[(32 * idx) + 128] != 2:
                    idx = idx + 1
                    continue 
                _6855 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6855] = 2
                mem[_6855 + 32] = 0
                require 2 < mem[(32 * arg5.length) + 128]
                mem[(32 * arg5.length) + 224] = _6855
                require 0 < mem[(32 * arg5.length) + 128]
                require 0 < mem[(32 * arg5.length) + 128]
                idx = 1
                s = 0
                t = 0
                while idx < mem[(32 * arg5.length) + 128]:
                    require idx < mem[(32 * arg5.length) + 128]
                    if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    require idx < mem[(32 * arg5.length) + 128]
                    require idx < mem[(32 * arg5.length) + 128]
                    idx = idx + 1
                    s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                    t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                    continue 
                _8536 = mem[96]
                _8537 = mem[64]
                mem[mem[64]] = mem[96] + 1
                mem[64] = mem[64] + (32 * _8536 + 1) + 32
                if not _8536 + 1:
                    _9438 = mem[96]
                    idx = 0
                    while idx < _9438:
                        require idx < mem[96]
                        require idx < mem[_8537]
                        require mem[(32 * idx) + 128] <= 2
                        mem[(32 * idx) + _8537 + 32] = mem[(32 * idx) + 128]
                        idx = idx + 1
                        continue 
                else:
                    mem[_8537 + 32 len 32 * _8536 + 1] = code.data[11633 len 32 * _8536 + 1]
                    _9439 = mem[96]
                    idx = 0
                    while idx < _9439:
                        require idx < mem[96]
                        require idx < mem[_8537]
                        require mem[(32 * idx) + 128] <= 2
                        mem[(32 * idx) + _8537 + 32] = mem[(32 * idx) + 128]
                        idx = idx + 1
                        continue 
                revert
            _6802 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6802] = 2
            if not arg2:
                mem[_6802 + 32] = 0
                if 2 < mem[(32 * arg5.length) + 128]:
                    mem[(32 * arg5.length) + 224] = _6802
                    if 0 < mem[(32 * arg5.length) + 128]:
                        if 0 < mem[(32 * arg5.length) + 128]:
                            idx = 1
                            s = 0
                            t = 0
                            while idx < mem[(32 * arg5.length) + 128]:
                                require idx < mem[(32 * arg5.length) + 128]
                                if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                require idx < mem[(32 * arg5.length) + 128]
                                require idx < mem[(32 * arg5.length) + 128]
                                idx = idx + 1
                                s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                continue 
                            _8532 = mem[96]
                            _8533 = mem[64]
                            mem[mem[64]] = mem[96] + 1
                            mem[64] = mem[64] + (32 * _8532 + 1) + 32
                            if not _8532 + 1:
                                _9434 = mem[96]
                                idx = 0
                                while idx < _9434:
                                    require idx < mem[96]
                                    require idx < mem[_8533]
                                    require mem[(32 * idx) + 128] <= 2
                                    mem[(32 * idx) + _8533 + 32] = mem[(32 * idx) + 128]
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[_8533 + 32 len 32 * _8532 + 1] = code.data[11633 len 32 * _8532 + 1]
                                _9435 = mem[96]
                                idx = 0
                                while idx < _9435:
                                    require idx < mem[96]
                                    require idx < mem[_8533]
                                    require mem[(32 * idx) + 128] <= 2
                                    mem[(32 * idx) + _8533 + 32] = mem[(32 * idx) + 128]
                                    idx = idx + 1
                                    continue 
            else:
                require ext_code.size(address(stor3))
                staticcall address(stor3).token() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) == arg1:
                    _6900 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if mem[_6900]:
                        mem[_6900 + 32] = stor4
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).token() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 1 < mem[_6900]:
                            mem[_6900 + 64] = ext_call.return_data[12 len 20]
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 < mem[_6900]:
                                mem[_6900 + 96] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).0x7b103999 with:
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
                                mem[_6900 + 128] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                mem[_6900 + 164] = arg3
                                mem[_6900 + 132] = 64
                                mem[_6900 + 196] = mem[_6900]
                                idx = 0
                                while idx < 32 * mem[_6900]:
                                    mem[idx + _6900 + 228] = mem[idx + _6900 + 32]
                                    idx = idx + 32
                                    continue 
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 64, arg3, mem[_6900 + 196 len (32 * mem[_6900]) + 32]
                                mem[_6900 + 128 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[_6802 + 32] = ext_call.return_data[0]
                                if 2 < mem[(32 * arg5.length) + 128]:
                                    mem[(32 * arg5.length) + 224] = _6802
                                    if 0 < mem[(32 * arg5.length) + 128]:
                                        if 0 < mem[(32 * arg5.length) + 128]:
                                            idx = 1
                                            s = mem[mem[(32 * arg5.length) + 160] + 32]
                                            t = mem[mem[(32 * arg5.length) + 160]]
                                            while idx < mem[(32 * arg5.length) + 128]:
                                                require idx < mem[(32 * arg5.length) + 128]
                                                if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                                    idx = idx + 1
                                                    s = s
                                                    t = t
                                                    continue 
                                                require idx < mem[(32 * arg5.length) + 128]
                                                require idx < mem[(32 * arg5.length) + 128]
                                                idx = idx + 1
                                                s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                                t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                                continue 
                                            mem[_6900 + 128] = mem[96] + 1
                                            mem[64] = _6900 + (32 * mem[96] + 1) + 160
                                            if mem[96] + 1:
                                                mem[_6900 + 160 len 32 * mem[96] + 1] = code.data[11633 len 32 * mem[96] + 1]
                                            idx = 0
                                            while idx < mem[96]:
                                                require idx < mem[96]
                                                require idx < mem[_6900 + 128]
                                                require mem[(32 * idx) + 128] <= 2
                                                mem[(32 * idx) + _6900 + 160] = mem[(32 * idx) + 128]
                                                idx = idx + 1
                                                continue 
                else:
                    _6898 = mem[64]
                    mem[mem[64]] = 5
                    mem[64] = mem[64] + 192
                    if mem[_6898]:
                        mem[_6898 + 32] = stor4
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).token() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 1 < mem[_6898]:
                            mem[_6898 + 64] = ext_call.return_data[12 len 20]
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 < mem[_6898]:
                                mem[_6898 + 96] = ext_call.return_data[12 len 20]
                                if 3 < mem[_6898]:
                                    mem[_6898 + 128] = arg2
                                    if 4 < mem[_6898]:
                                        mem[_6898 + 160] = arg1
                                        require ext_code.size(address(stor3))
                                        staticcall address(stor3).0x7b103999 with:
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
                                        mem[_6898 + 228] = arg3
                                        mem[_6898 + 196] = 64
                                        mem[_6898 + 260] = mem[_6898]
                                        idx = 0
                                        while idx < 32 * mem[_6898]:
                                            mem[idx + _6898 + 292] = mem[idx + _6898 + 32]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                gas gas_remaining wei
                                               args 64, arg3, mem[_6898 + 260 len (32 * mem[_6898]) + 32]
                                        mem[_6898 + 192 len 64] = ext_call.return_data[0 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 64
                                        mem[_6802 + 32] = ext_call.return_data[0]
                                        if 2 < mem[(32 * arg5.length) + 128]:
                                            mem[(32 * arg5.length) + 224] = _6802
                                            if 0 < mem[(32 * arg5.length) + 128]:
                                                if 0 < mem[(32 * arg5.length) + 128]:
                                                    idx = 1
                                                    s = mem[mem[(32 * arg5.length) + 160] + 32]
                                                    t = mem[mem[(32 * arg5.length) + 160]]
                                                    while idx < mem[(32 * arg5.length) + 128]:
                                                        require idx < mem[(32 * arg5.length) + 128]
                                                        if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                                            idx = idx + 1
                                                            s = s
                                                            t = t
                                                            continue 
                                                        require idx < mem[(32 * arg5.length) + 128]
                                                        require idx < mem[(32 * arg5.length) + 128]
                                                        idx = idx + 1
                                                        s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                                        t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                                        continue 
                                                    mem[_6898 + 192] = mem[96] + 1
                                                    mem[64] = _6898 + (32 * mem[96] + 1) + 224
                                                    if mem[96] + 1:
                                                        mem[_6898 + 224 len 32 * mem[96] + 1] = code.data[11633 len 32 * mem[96] + 1]
                                                    idx = 0
                                                    while idx < mem[96]:
                                                        require idx < mem[96]
                                                        require idx < mem[_6898 + 192]
                                                        require mem[(32 * idx) + 128] <= 2
                                                        mem[(32 * idx) + _6898 + 224] = mem[(32 * idx) + 128]
                                                        idx = idx + 1
                                                        continue 
            revert
        _5101 = mem[64]
        mem[64] = mem[64] + 64
        mem[_5101] = 1
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
            mem[_5101 + 32] = 0
            if 1 < mem[(32 * arg5.length) + 128]:
                mem[(32 * arg5.length) + 192] = _5101
                idx = 0
                while idx < mem[96]:
                    require idx < mem[96]
                    require mem[(32 * idx) + 128] <= 2
                    if mem[(32 * idx) + 128] != 2:
                        idx = idx + 1
                        continue 
                    _6847 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6847] = 2
                    mem[_6847 + 32] = 0
                    require 2 < mem[(32 * arg5.length) + 128]
                    mem[(32 * arg5.length) + 224] = _6847
                    require 0 < mem[(32 * arg5.length) + 128]
                    require 0 < mem[(32 * arg5.length) + 128]
                    idx = 1
                    s = 0
                    t = 0
                    while idx < mem[(32 * arg5.length) + 128]:
                        require idx < mem[(32 * arg5.length) + 128]
                        if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        require idx < mem[(32 * arg5.length) + 128]
                        require idx < mem[(32 * arg5.length) + 128]
                        idx = idx + 1
                        s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                        t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                        continue 
                    _8520 = mem[96]
                    _8521 = mem[64]
                    mem[mem[64]] = mem[96] + 1
                    mem[64] = mem[64] + (32 * _8520 + 1) + 32
                    if not _8520 + 1:
                        _9426 = mem[96]
                        idx = 0
                        while idx < _9426:
                            require idx < mem[96]
                            require idx < mem[_8521]
                            require mem[(32 * idx) + 128] <= 2
                            mem[(32 * idx) + _8521 + 32] = mem[(32 * idx) + 128]
                            idx = idx + 1
                            continue 
                    else:
                        mem[_8521 + 32 len 32 * _8520 + 1] = code.data[11633 len 32 * _8520 + 1]
                        _9427 = mem[96]
                        idx = 0
                        while idx < _9427:
                            require idx < mem[96]
                            require idx < mem[_8521]
                            require mem[(32 * idx) + 128] <= 2
                            mem[(32 * idx) + _8521 + 32] = mem[(32 * idx) + 128]
                            idx = idx + 1
                            continue 
                    revert
                _6800 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6800] = 2
                if not arg2:
                    mem[_6800 + 32] = 0
                    if 2 < mem[(32 * arg5.length) + 128]:
                        mem[(32 * arg5.length) + 224] = _6800
                        if 0 < mem[(32 * arg5.length) + 128]:
                            if 0 < mem[(32 * arg5.length) + 128]:
                                idx = 1
                                s = 0
                                t = 0
                                while idx < mem[(32 * arg5.length) + 128]:
                                    require idx < mem[(32 * arg5.length) + 128]
                                    if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        continue 
                                    require idx < mem[(32 * arg5.length) + 128]
                                    require idx < mem[(32 * arg5.length) + 128]
                                    idx = idx + 1
                                    s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                    t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                    continue 
                                _8516 = mem[96]
                                _8517 = mem[64]
                                mem[mem[64]] = mem[96] + 1
                                mem[64] = mem[64] + (32 * _8516 + 1) + 32
                                if not _8516 + 1:
                                    _9422 = mem[96]
                                    idx = 0
                                    while idx < _9422:
                                        require idx < mem[96]
                                        require idx < mem[_8517]
                                        require mem[(32 * idx) + 128] <= 2
                                        mem[(32 * idx) + _8517 + 32] = mem[(32 * idx) + 128]
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[_8517 + 32 len 32 * _8516 + 1] = code.data[11633 len 32 * _8516 + 1]
                                    _9423 = mem[96]
                                    idx = 0
                                    while idx < _9423:
                                        require idx < mem[96]
                                        require idx < mem[_8517]
                                        require mem[(32 * idx) + 128] <= 2
                                        mem[(32 * idx) + _8517 + 32] = mem[(32 * idx) + 128]
                                        idx = idx + 1
                                        continue 
                else:
                    require ext_code.size(address(stor3))
                    staticcall address(stor3).token() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == arg1:
                        _6892 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if mem[_6892]:
                            mem[_6892 + 32] = stor4
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 1 < mem[_6892]:
                                mem[_6892 + 64] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 < mem[_6892]:
                                    mem[_6892 + 96] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).0x7b103999 with:
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
                                    mem[_6892 + 128] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                    mem[_6892 + 164] = arg3
                                    mem[_6892 + 132] = 64
                                    mem[_6892 + 196] = mem[_6892]
                                    idx = 0
                                    while idx < 32 * mem[_6892]:
                                        mem[idx + _6892 + 228] = mem[idx + _6892 + 32]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                            gas gas_remaining wei
                                           args 64, arg3, mem[_6892 + 196 len (32 * mem[_6892]) + 32]
                                    mem[_6892 + 128 len 64] = ext_call.return_data[0 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 64
                                    mem[_6800 + 32] = ext_call.return_data[0]
                                    if 2 < mem[(32 * arg5.length) + 128]:
                                        mem[(32 * arg5.length) + 224] = _6800
                                        if 0 < mem[(32 * arg5.length) + 128]:
                                            if 0 < mem[(32 * arg5.length) + 128]:
                                                idx = 1
                                                s = mem[mem[(32 * arg5.length) + 160] + 32]
                                                t = mem[mem[(32 * arg5.length) + 160]]
                                                while idx < mem[(32 * arg5.length) + 128]:
                                                    require idx < mem[(32 * arg5.length) + 128]
                                                    if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                                        idx = idx + 1
                                                        s = s
                                                        t = t
                                                        continue 
                                                    require idx < mem[(32 * arg5.length) + 128]
                                                    require idx < mem[(32 * arg5.length) + 128]
                                                    idx = idx + 1
                                                    s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                                    t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                                    continue 
                                                mem[_6892 + 128] = mem[96] + 1
                                                mem[64] = _6892 + (32 * mem[96] + 1) + 160
                                                if mem[96] + 1:
                                                    mem[_6892 + 160 len 32 * mem[96] + 1] = code.data[11633 len 32 * mem[96] + 1]
                                                idx = 0
                                                while idx < mem[96]:
                                                    require idx < mem[96]
                                                    require idx < mem[_6892 + 128]
                                                    require mem[(32 * idx) + 128] <= 2
                                                    mem[(32 * idx) + _6892 + 160] = mem[(32 * idx) + 128]
                                                    idx = idx + 1
                                                    continue 
                    else:
                        _6890 = mem[64]
                        mem[mem[64]] = 5
                        mem[64] = mem[64] + 192
                        if mem[_6890]:
                            mem[_6890 + 32] = stor4
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 1 < mem[_6890]:
                                mem[_6890 + 64] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 < mem[_6890]:
                                    mem[_6890 + 96] = ext_call.return_data[12 len 20]
                                    if 3 < mem[_6890]:
                                        mem[_6890 + 128] = arg2
                                        if 4 < mem[_6890]:
                                            mem[_6890 + 160] = arg1
                                            require ext_code.size(address(stor3))
                                            staticcall address(stor3).0x7b103999 with:
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
                                            mem[_6890 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                            mem[_6890 + 228] = arg3
                                            mem[_6890 + 196] = 64
                                            mem[_6890 + 260] = mem[_6890]
                                            idx = 0
                                            while idx < 32 * mem[_6890]:
                                                mem[idx + _6890 + 292] = mem[idx + _6890 + 32]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                    gas gas_remaining wei
                                                   args 64, arg3, mem[_6890 + 260 len (32 * mem[_6890]) + 32]
                                            mem[_6890 + 192 len 64] = ext_call.return_data[0 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 64
                                            mem[_6800 + 32] = ext_call.return_data[0]
                                            if 2 < mem[(32 * arg5.length) + 128]:
                                                mem[(32 * arg5.length) + 224] = _6800
                                                if 0 < mem[(32 * arg5.length) + 128]:
                                                    if 0 < mem[(32 * arg5.length) + 128]:
                                                        idx = 1
                                                        s = mem[mem[(32 * arg5.length) + 160] + 32]
                                                        t = mem[mem[(32 * arg5.length) + 160]]
                                                        while idx < mem[(32 * arg5.length) + 128]:
                                                            require idx < mem[(32 * arg5.length) + 128]
                                                            if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                                                idx = idx + 1
                                                                s = s
                                                                t = t
                                                                continue 
                                                            require idx < mem[(32 * arg5.length) + 128]
                                                            require idx < mem[(32 * arg5.length) + 128]
                                                            idx = idx + 1
                                                            s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                                            t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                                            continue 
                                                        mem[_6890 + 192] = mem[96] + 1
                                                        mem[64] = _6890 + (32 * mem[96] + 1) + 224
                                                        if mem[96] + 1:
                                                            mem[_6890 + 224 len 32 * mem[96] + 1] = code.data[11633 len 32 * mem[96] + 1]
                                                        idx = 0
                                                        while idx < mem[96]:
                                                            require idx < mem[96]
                                                            require idx < mem[_6890 + 192]
                                                            require mem[(32 * idx) + 128] <= 2
                                                            mem[(32 * idx) + _6890 + 224] = mem[(32 * idx) + 128]
                                                            idx = idx + 1
                                                            continue 
        else:
            mem[mem[64] + 4] = arg3
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getEthToTokenInputPrice(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg3
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_5101 + 32] = ext_call.return_data[0]
            if 1 < mem[(32 * arg5.length) + 128]:
                mem[(32 * arg5.length) + 192] = _5101
                idx = 0
                while idx < mem[96]:
                    require idx < mem[96]
                    require mem[(32 * idx) + 128] <= 2
                    if mem[(32 * idx) + 128] != 2:
                        idx = idx + 1
                        continue 
                    _6851 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6851] = 2
                    mem[_6851 + 32] = 0
                    require 2 < mem[(32 * arg5.length) + 128]
                    mem[(32 * arg5.length) + 224] = _6851
                    require 0 < mem[(32 * arg5.length) + 128]
                    require 0 < mem[(32 * arg5.length) + 128]
                    idx = 1
                    s = 0
                    t = 0
                    while idx < mem[(32 * arg5.length) + 128]:
                        require idx < mem[(32 * arg5.length) + 128]
                        if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        require idx < mem[(32 * arg5.length) + 128]
                        require idx < mem[(32 * arg5.length) + 128]
                        idx = idx + 1
                        s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                        t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                        continue 
                    _8528 = mem[96]
                    _8529 = mem[64]
                    mem[mem[64]] = mem[96] + 1
                    mem[64] = mem[64] + (32 * _8528 + 1) + 32
                    if not _8528 + 1:
                        _9432 = mem[96]
                        idx = 0
                        while idx < _9432:
                            require idx < mem[96]
                            require idx < mem[_8529]
                            require mem[(32 * idx) + 128] <= 2
                            mem[(32 * idx) + _8529 + 32] = mem[(32 * idx) + 128]
                            idx = idx + 1
                            continue 
                    else:
                        mem[_8529 + 32 len 32 * _8528 + 1] = code.data[11633 len 32 * _8528 + 1]
                        _9433 = mem[96]
                        idx = 0
                        while idx < _9433:
                            require idx < mem[96]
                            require idx < mem[_8529]
                            require mem[(32 * idx) + 128] <= 2
                            mem[(32 * idx) + _8529 + 32] = mem[(32 * idx) + 128]
                            idx = idx + 1
                            continue 
                    revert
                _6801 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6801] = 2
                if not arg2:
                    mem[_6801 + 32] = 0
                    if 2 < mem[(32 * arg5.length) + 128]:
                        mem[(32 * arg5.length) + 224] = _6801
                        if 0 < mem[(32 * arg5.length) + 128]:
                            if 0 < mem[(32 * arg5.length) + 128]:
                                idx = 1
                                s = 0
                                t = 0
                                while idx < mem[(32 * arg5.length) + 128]:
                                    require idx < mem[(32 * arg5.length) + 128]
                                    if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        continue 
                                    require idx < mem[(32 * arg5.length) + 128]
                                    require idx < mem[(32 * arg5.length) + 128]
                                    idx = idx + 1
                                    s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                    t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                    continue 
                                _8524 = mem[96]
                                _8525 = mem[64]
                                mem[mem[64]] = mem[96] + 1
                                mem[64] = mem[64] + (32 * _8524 + 1) + 32
                                if not _8524 + 1:
                                    _9428 = mem[96]
                                    idx = 0
                                    while idx < _9428:
                                        require idx < mem[96]
                                        require idx < mem[_8525]
                                        require mem[(32 * idx) + 128] <= 2
                                        mem[(32 * idx) + _8525 + 32] = mem[(32 * idx) + 128]
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[_8525 + 32 len 32 * _8524 + 1] = code.data[11633 len 32 * _8524 + 1]
                                    _9429 = mem[96]
                                    idx = 0
                                    while idx < _9429:
                                        require idx < mem[96]
                                        require idx < mem[_8525]
                                        require mem[(32 * idx) + 128] <= 2
                                        mem[(32 * idx) + _8525 + 32] = mem[(32 * idx) + 128]
                                        idx = idx + 1
                                        continue 
                else:
                    require ext_code.size(address(stor3))
                    staticcall address(stor3).token() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == arg1:
                        _6896 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if mem[_6896]:
                            mem[_6896 + 32] = stor4
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 1 < mem[_6896]:
                                mem[_6896 + 64] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 < mem[_6896]:
                                    mem[_6896 + 96] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).0x7b103999 with:
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
                                    mem[_6896 + 128] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                    mem[_6896 + 164] = arg3
                                    mem[_6896 + 132] = 64
                                    mem[_6896 + 196] = mem[_6896]
                                    idx = 0
                                    while idx < 32 * mem[_6896]:
                                        mem[idx + _6896 + 228] = mem[idx + _6896 + 32]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                            gas gas_remaining wei
                                           args 64, arg3, mem[_6896 + 196 len (32 * mem[_6896]) + 32]
                                    mem[_6896 + 128 len 64] = ext_call.return_data[0 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 64
                                    mem[_6801 + 32] = ext_call.return_data[0]
                                    if 2 < mem[(32 * arg5.length) + 128]:
                                        mem[(32 * arg5.length) + 224] = _6801
                                        if 0 < mem[(32 * arg5.length) + 128]:
                                            if 0 < mem[(32 * arg5.length) + 128]:
                                                idx = 1
                                                s = mem[mem[(32 * arg5.length) + 160] + 32]
                                                t = mem[mem[(32 * arg5.length) + 160]]
                                                while idx < mem[(32 * arg5.length) + 128]:
                                                    require idx < mem[(32 * arg5.length) + 128]
                                                    if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                                        idx = idx + 1
                                                        s = s
                                                        t = t
                                                        continue 
                                                    require idx < mem[(32 * arg5.length) + 128]
                                                    require idx < mem[(32 * arg5.length) + 128]
                                                    idx = idx + 1
                                                    s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                                    t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                                    continue 
                                                mem[_6896 + 128] = mem[96] + 1
                                                mem[64] = _6896 + (32 * mem[96] + 1) + 160
                                                if mem[96] + 1:
                                                    mem[_6896 + 160 len 32 * mem[96] + 1] = code.data[11633 len 32 * mem[96] + 1]
                                                idx = 0
                                                while idx < mem[96]:
                                                    require idx < mem[96]
                                                    require idx < mem[_6896 + 128]
                                                    require mem[(32 * idx) + 128] <= 2
                                                    mem[(32 * idx) + _6896 + 160] = mem[(32 * idx) + 128]
                                                    idx = idx + 1
                                                    continue 
                    else:
                        _6894 = mem[64]
                        mem[mem[64]] = 5
                        mem[64] = mem[64] + 192
                        if mem[_6894]:
                            mem[_6894 + 32] = stor4
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 1 < mem[_6894]:
                                mem[_6894 + 64] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 < mem[_6894]:
                                    mem[_6894 + 96] = ext_call.return_data[12 len 20]
                                    if 3 < mem[_6894]:
                                        mem[_6894 + 128] = arg2
                                        if 4 < mem[_6894]:
                                            mem[_6894 + 160] = arg1
                                            require ext_code.size(address(stor3))
                                            staticcall address(stor3).0x7b103999 with:
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
                                            mem[_6894 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                            mem[_6894 + 228] = arg3
                                            mem[_6894 + 196] = 64
                                            mem[_6894 + 260] = mem[_6894]
                                            idx = 0
                                            while idx < 32 * mem[_6894]:
                                                mem[idx + _6894 + 292] = mem[idx + _6894 + 32]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                    gas gas_remaining wei
                                                   args 64, arg3, mem[_6894 + 260 len (32 * mem[_6894]) + 32]
                                            mem[_6894 + 192 len 64] = ext_call.return_data[0 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 64
                                            mem[_6801 + 32] = ext_call.return_data[0]
                                            if 2 < mem[(32 * arg5.length) + 128]:
                                                mem[(32 * arg5.length) + 224] = _6801
                                                if 0 < mem[(32 * arg5.length) + 128]:
                                                    if 0 < mem[(32 * arg5.length) + 128]:
                                                        idx = 1
                                                        s = mem[mem[(32 * arg5.length) + 160] + 32]
                                                        t = mem[mem[(32 * arg5.length) + 160]]
                                                        while idx < mem[(32 * arg5.length) + 128]:
                                                            require idx < mem[(32 * arg5.length) + 128]
                                                            if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                                                idx = idx + 1
                                                                s = s
                                                                t = t
                                                                continue 
                                                            require idx < mem[(32 * arg5.length) + 128]
                                                            require idx < mem[(32 * arg5.length) + 128]
                                                            idx = idx + 1
                                                            s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                                            t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                                            continue 
                                                        mem[_6894 + 192] = mem[96] + 1
                                                        mem[64] = _6894 + (32 * mem[96] + 1) + 224
                                                        if mem[96] + 1:
                                                            mem[_6894 + 224 len 32 * mem[96] + 1] = code.data[11633 len 32 * mem[96] + 1]
                                                        idx = 0
                                                        while idx < mem[96]:
                                                            require idx < mem[96]
                                                            require idx < mem[_6894 + 192]
                                                            require mem[(32 * idx) + 128] <= 2
                                                            mem[(32 * idx) + _6894 + 224] = mem[(32 * idx) + 128]
                                                            idx = idx + 1
                                                            continue 
        revert
    _3399 = mem[64]
    mem[64] = mem[64] + 64
    mem[_3399] = 0
    mem[mem[64] + 36] = arg1
    mem[mem[64] + 68] = arg3
    require ext_code.size(address(stor1))
    staticcall address(stor1).getExpectedRate(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(arg1), arg3
    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[32]:
        mem[_3399 + 32] = 0
        if 0 < mem[(32 * arg5.length) + 128]:
            mem[(32 * arg5.length) + 160] = _3399
            idx = 0
            while idx < mem[96]:
                require idx < mem[96]
                require mem[(32 * idx) + 128] <= 2
                if mem[(32 * idx) + 128] != 1:
                    idx = idx + 1
                    continue 
                _5112 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5112] = 1
                mem[_5112 + 32] = 0
                require 1 < mem[(32 * arg5.length) + 128]
                mem[(32 * arg5.length) + 192] = _5112
                idx = 0
                while idx < mem[96]:
                    require idx < mem[96]
                    require mem[(32 * idx) + 128] <= 2
                    if mem[(32 * idx) + 128] != 2:
                        idx = idx + 1
                        continue 
                    _6843 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6843] = 2
                    mem[_6843 + 32] = 0
                    require 2 < mem[(32 * arg5.length) + 128]
                    mem[(32 * arg5.length) + 224] = _6843
                    require 0 < mem[(32 * arg5.length) + 128]
                    require 0 < mem[(32 * arg5.length) + 128]
                    idx = 1
                    s = 0
                    t = 0
                    while idx < mem[(32 * arg5.length) + 128]:
                        require idx < mem[(32 * arg5.length) + 128]
                        if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        require idx < mem[(32 * arg5.length) + 128]
                        require idx < mem[(32 * arg5.length) + 128]
                        idx = idx + 1
                        s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                        t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                        continue 
                    _8512 = mem[96]
                    _8513 = mem[64]
                    mem[mem[64]] = mem[96] + 1
                    mem[64] = mem[64] + (32 * _8512 + 1) + 32
                    if not _8512 + 1:
                        _9420 = mem[96]
                        idx = 0
                        while idx < _9420:
                            require idx < mem[96]
                            require idx < mem[_8513]
                            require mem[(32 * idx) + 128] <= 2
                            mem[(32 * idx) + _8513 + 32] = mem[(32 * idx) + 128]
                            idx = idx + 1
                            continue 
                    else:
                        mem[_8513 + 32 len 32 * _8512 + 1] = code.data[11633 len 32 * _8512 + 1]
                        _9421 = mem[96]
                        idx = 0
                        while idx < _9421:
                            require idx < mem[96]
                            require idx < mem[_8513]
                            require mem[(32 * idx) + 128] <= 2
                            mem[(32 * idx) + _8513 + 32] = mem[(32 * idx) + 128]
                            idx = idx + 1
                            continue 
                    revert
                _6799 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6799] = 2
                if not arg2:
                    mem[_6799 + 32] = 0
                    if 2 < mem[(32 * arg5.length) + 128]:
                        mem[(32 * arg5.length) + 224] = _6799
                        if 0 < mem[(32 * arg5.length) + 128]:
                            if 0 < mem[(32 * arg5.length) + 128]:
                                idx = 1
                                s = 0
                                t = 0
                                while idx < mem[(32 * arg5.length) + 128]:
                                    require idx < mem[(32 * arg5.length) + 128]
                                    if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        continue 
                                    require idx < mem[(32 * arg5.length) + 128]
                                    require idx < mem[(32 * arg5.length) + 128]
                                    idx = idx + 1
                                    s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                    t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                    continue 
                                _8508 = mem[96]
                                _8509 = mem[64]
                                mem[mem[64]] = mem[96] + 1
                                mem[64] = mem[64] + (32 * _8508 + 1) + 32
                                if not _8508 + 1:
                                    _9416 = mem[96]
                                    idx = 0
                                    while idx < _9416:
                                        require idx < mem[96]
                                        require idx < mem[_8509]
                                        require mem[(32 * idx) + 128] <= 2
                                        mem[(32 * idx) + _8509 + 32] = mem[(32 * idx) + 128]
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[_8509 + 32 len 32 * _8508 + 1] = code.data[11633 len 32 * _8508 + 1]
                                    _9417 = mem[96]
                                    idx = 0
                                    while idx < _9417:
                                        require idx < mem[96]
                                        require idx < mem[_8509]
                                        require mem[(32 * idx) + 128] <= 2
                                        mem[(32 * idx) + _8509 + 32] = mem[(32 * idx) + 128]
                                        idx = idx + 1
                                        continue 
                else:
                    require ext_code.size(address(stor3))
                    staticcall address(stor3).token() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == arg1:
                        _6888 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if mem[_6888]:
                            mem[_6888 + 32] = stor4
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 1 < mem[_6888]:
                                mem[_6888 + 64] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 < mem[_6888]:
                                    mem[_6888 + 96] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).0x7b103999 with:
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
                                    mem[_6888 + 128] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                    mem[_6888 + 164] = arg3
                                    mem[_6888 + 132] = 64
                                    mem[_6888 + 196] = mem[_6888]
                                    idx = 0
                                    while idx < 32 * mem[_6888]:
                                        mem[idx + _6888 + 228] = mem[idx + _6888 + 32]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                            gas gas_remaining wei
                                           args 64, arg3, mem[_6888 + 196 len (32 * mem[_6888]) + 32]
                                    mem[_6888 + 128 len 64] = ext_call.return_data[0 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 64
                                    mem[_6799 + 32] = ext_call.return_data[0]
                                    if 2 < mem[(32 * arg5.length) + 128]:
                                        mem[(32 * arg5.length) + 224] = _6799
                                        if 0 < mem[(32 * arg5.length) + 128]:
                                            if 0 < mem[(32 * arg5.length) + 128]:
                                                idx = 1
                                                s = mem[mem[(32 * arg5.length) + 160] + 32]
                                                t = mem[mem[(32 * arg5.length) + 160]]
                                                while idx < mem[(32 * arg5.length) + 128]:
                                                    require idx < mem[(32 * arg5.length) + 128]
                                                    if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                                        idx = idx + 1
                                                        s = s
                                                        t = t
                                                        continue 
                                                    require idx < mem[(32 * arg5.length) + 128]
                                                    require idx < mem[(32 * arg5.length) + 128]
                                                    idx = idx + 1
                                                    s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                                    t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                                    continue 
                                                mem[_6888 + 128] = mem[96] + 1
                                                mem[64] = _6888 + (32 * mem[96] + 1) + 160
                                                if mem[96] + 1:
                                                    mem[_6888 + 160 len 32 * mem[96] + 1] = code.data[11633 len 32 * mem[96] + 1]
                                                idx = 0
                                                while idx < mem[96]:
                                                    require idx < mem[96]
                                                    require idx < mem[_6888 + 128]
                                                    require mem[(32 * idx) + 128] <= 2
                                                    mem[(32 * idx) + _6888 + 160] = mem[(32 * idx) + 128]
                                                    idx = idx + 1
                                                    continue 
                    else:
                        _6886 = mem[64]
                        mem[mem[64]] = 5
                        mem[64] = mem[64] + 192
                        if mem[_6886]:
                            mem[_6886 + 32] = stor4
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 1 < mem[_6886]:
                                mem[_6886 + 64] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 < mem[_6886]:
                                    mem[_6886 + 96] = ext_call.return_data[12 len 20]
                                    if 3 < mem[_6886]:
                                        mem[_6886 + 128] = arg2
                                        if 4 < mem[_6886]:
                                            mem[_6886 + 160] = arg1
                                            require ext_code.size(address(stor3))
                                            staticcall address(stor3).0x7b103999 with:
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
                                            mem[_6886 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                            mem[_6886 + 228] = arg3
                                            mem[_6886 + 196] = 64
                                            mem[_6886 + 260] = mem[_6886]
                                            idx = 0
                                            while idx < 32 * mem[_6886]:
                                                mem[idx + _6886 + 292] = mem[idx + _6886 + 32]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                    gas gas_remaining wei
                                                   args 64, arg3, mem[_6886 + 260 len (32 * mem[_6886]) + 32]
                                            mem[_6886 + 192 len 64] = ext_call.return_data[0 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 64
                                            mem[_6799 + 32] = ext_call.return_data[0]
                                            if 2 < mem[(32 * arg5.length) + 128]:
                                                mem[(32 * arg5.length) + 224] = _6799
                                                if 0 < mem[(32 * arg5.length) + 128]:
                                                    if 0 < mem[(32 * arg5.length) + 128]:
                                                        idx = 1
                                                        s = mem[mem[(32 * arg5.length) + 160] + 32]
                                                        t = mem[mem[(32 * arg5.length) + 160]]
                                                        while idx < mem[(32 * arg5.length) + 128]:
                                                            require idx < mem[(32 * arg5.length) + 128]
                                                            if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                                                idx = idx + 1
                                                                s = s
                                                                t = t
                                                                continue 
                                                            require idx < mem[(32 * arg5.length) + 128]
                                                            require idx < mem[(32 * arg5.length) + 128]
                                                            idx = idx + 1
                                                            s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                                            t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                                            continue 
                                                        mem[_6886 + 192] = mem[96] + 1
                                                        mem[64] = _6886 + (32 * mem[96] + 1) + 224
                                                        if mem[96] + 1:
                                                            mem[_6886 + 224 len 32 * mem[96] + 1] = code.data[11633 len 32 * mem[96] + 1]
                                                        idx = 0
                                                        while idx < mem[96]:
                                                            require idx < mem[96]
                                                            require idx < mem[_6886 + 192]
                                                            require mem[(32 * idx) + 128] <= 2
                                                            mem[(32 * idx) + _6886 + 224] = mem[(32 * idx) + 128]
                                                            idx = idx + 1
                                                            continue 
                revert
            _5100 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5100] = 1
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
                mem[_5100 + 32] = 0
                if 1 < mem[(32 * arg5.length) + 128]:
                    mem[(32 * arg5.length) + 192] = _5100
                    idx = 0
                    while idx < mem[96]:
                        require idx < mem[96]
                        require mem[(32 * idx) + 128] <= 2
                        if mem[(32 * idx) + 128] != 2:
                            idx = idx + 1
                            continue 
                        _6835 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6835] = 2
                        mem[_6835 + 32] = 0
                        require 2 < mem[(32 * arg5.length) + 128]
                        mem[(32 * arg5.length) + 224] = _6835
                        require 0 < mem[(32 * arg5.length) + 128]
                        require 0 < mem[(32 * arg5.length) + 128]
                        idx = 1
                        s = 0
                        t = 0
                        while idx < mem[(32 * arg5.length) + 128]:
                            require idx < mem[(32 * arg5.length) + 128]
                            if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                idx = idx + 1
                                s = s
                                t = t
                                continue 
                            require idx < mem[(32 * arg5.length) + 128]
                            require idx < mem[(32 * arg5.length) + 128]
                            idx = idx + 1
                            s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                            t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                            continue 
                        _8496 = mem[96]
                        _8497 = mem[64]
                        mem[mem[64]] = mem[96] + 1
                        mem[64] = mem[64] + (32 * _8496 + 1) + 32
                        if not _8496 + 1:
                            _9408 = mem[96]
                            idx = 0
                            while idx < _9408:
                                require idx < mem[96]
                                require idx < mem[_8497]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _8497 + 32] = mem[(32 * idx) + 128]
                                idx = idx + 1
                                continue 
                        else:
                            mem[_8497 + 32 len 32 * _8496 + 1] = code.data[11633 len 32 * _8496 + 1]
                            _9409 = mem[96]
                            idx = 0
                            while idx < _9409:
                                require idx < mem[96]
                                require idx < mem[_8497]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _8497 + 32] = mem[(32 * idx) + 128]
                                idx = idx + 1
                                continue 
                        revert
                    _6797 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6797] = 2
                    if not arg2:
                        mem[_6797 + 32] = 0
                        if 2 < mem[(32 * arg5.length) + 128]:
                            mem[(32 * arg5.length) + 224] = _6797
                            if 0 < mem[(32 * arg5.length) + 128]:
                                if 0 < mem[(32 * arg5.length) + 128]:
                                    idx = 1
                                    s = 0
                                    t = 0
                                    while idx < mem[(32 * arg5.length) + 128]:
                                        require idx < mem[(32 * arg5.length) + 128]
                                        if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                            idx = idx + 1
                                            s = s
                                            t = t
                                            continue 
                                        require idx < mem[(32 * arg5.length) + 128]
                                        require idx < mem[(32 * arg5.length) + 128]
                                        idx = idx + 1
                                        s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                        t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                        continue 
                                    _8492 = mem[96]
                                    _8493 = mem[64]
                                    mem[mem[64]] = mem[96] + 1
                                    mem[64] = mem[64] + (32 * _8492 + 1) + 32
                                    if not _8492 + 1:
                                        _9404 = mem[96]
                                        idx = 0
                                        while idx < _9404:
                                            require idx < mem[96]
                                            require idx < mem[_8493]
                                            require mem[(32 * idx) + 128] <= 2
                                            mem[(32 * idx) + _8493 + 32] = mem[(32 * idx) + 128]
                                            idx = idx + 1
                                            continue 
                                    else:
                                        mem[_8493 + 32 len 32 * _8492 + 1] = code.data[11633 len 32 * _8492 + 1]
                                        _9405 = mem[96]
                                        idx = 0
                                        while idx < _9405:
                                            require idx < mem[96]
                                            require idx < mem[_8493]
                                            require mem[(32 * idx) + 128] <= 2
                                            mem[(32 * idx) + _8493 + 32] = mem[(32 * idx) + 128]
                                            idx = idx + 1
                                            continue 
                    else:
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).token() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == arg1:
                            _6880 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if mem[_6880]:
                                mem[_6880 + 32] = stor4
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 1 < mem[_6880]:
                                    mem[_6880 + 64] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).token() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 < mem[_6880]:
                                        mem[_6880 + 96] = ext_call.return_data[12 len 20]
                                        require ext_code.size(address(stor3))
                                        staticcall address(stor3).0x7b103999 with:
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
                                        mem[_6880 + 128] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                        mem[_6880 + 164] = arg3
                                        mem[_6880 + 132] = 64
                                        mem[_6880 + 196] = mem[_6880]
                                        mem[_6880 + 228 len floor32(mem[_6880])] = mem[_6880 + 32 len floor32(mem[_6880])]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                gas gas_remaining wei
                                               args 64, arg3, mem[_6880 + 196 len (32 * mem[_6880]) + 32]
                                        mem[_6880 + 128 len 64] = ext_call.return_data[0 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 64
                                        mem[_6797 + 32] = ext_call.return_data[0]
                                        if 2 < mem[(32 * arg5.length) + 128]:
                                            mem[(32 * arg5.length) + 224] = _6797
                                            if 0 < mem[(32 * arg5.length) + 128]:
                                                if 0 < mem[(32 * arg5.length) + 128]:
                                                    idx = 1
                                                    s = 0
                                                    t = 0
                                                    while idx < mem[(32 * arg5.length) + 128]:
                                                        require idx < mem[(32 * arg5.length) + 128]
                                                        if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                                            idx = idx + 1
                                                            s = s
                                                            t = t
                                                            continue 
                                                        require idx < mem[(32 * arg5.length) + 128]
                                                        require idx < mem[(32 * arg5.length) + 128]
                                                        idx = idx + 1
                                                        s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                                        t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                                        continue 
                                                    mem[_6880 + 128] = mem[96] + 1
                                                    mem[64] = _6880 + (32 * mem[96] + 1) + 160
                                                    if mem[96] + 1:
                                                        mem[_6880 + 160 len 32 * mem[96] + 1] = code.data[11633 len 32 * mem[96] + 1]
                                                    idx = 0
                                                    while idx < mem[96]:
                                                        require idx < mem[96]
                                                        require idx < mem[_6880 + 128]
                                                        require mem[(32 * idx) + 128] <= 2
                                                        mem[(32 * idx) + _6880 + 160] = mem[(32 * idx) + 128]
                                                        idx = idx + 1
                                                        continue 
                        else:
                            _6878 = mem[64]
                            mem[mem[64]] = 5
                            mem[64] = mem[64] + 192
                            if mem[_6878]:
                                mem[_6878 + 32] = stor4
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 1 < mem[_6878]:
                                    mem[_6878 + 64] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).token() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 < mem[_6878]:
                                        mem[_6878 + 96] = ext_call.return_data[12 len 20]
                                        if 3 < mem[_6878]:
                                            mem[_6878 + 128] = arg2
                                            if 4 < mem[_6878]:
                                                mem[_6878 + 160] = arg1
                                                require ext_code.size(address(stor3))
                                                staticcall address(stor3).0x7b103999 with:
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
                                                mem[_6878 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                                mem[_6878 + 228] = arg3
                                                mem[_6878 + 196] = 64
                                                mem[_6878 + 260] = mem[_6878]
                                                mem[_6878 + 292 len floor32(mem[_6878])] = mem[_6878 + 32 len floor32(mem[_6878])]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 64, arg3, mem[_6878 + 260 len (32 * mem[_6878]) + 32]
                                                mem[_6878 + 192 len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 64
                                                mem[_6797 + 32] = ext_call.return_data[0]
                                                if 2 < mem[(32 * arg5.length) + 128]:
                                                    mem[(32 * arg5.length) + 224] = _6797
                                                    if 0 < mem[(32 * arg5.length) + 128]:
                                                        if 0 < mem[(32 * arg5.length) + 128]:
                                                            idx = 1
                                                            s = 0
                                                            t = 0
                                                            while idx < mem[(32 * arg5.length) + 128]:
                                                                require idx < mem[(32 * arg5.length) + 128]
                                                                if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                                                    idx = idx + 1
                                                                    s = s
                                                                    t = t
                                                                    continue 
                                                                require idx < mem[(32 * arg5.length) + 128]
                                                                require idx < mem[(32 * arg5.length) + 128]
                                                                idx = idx + 1
                                                                s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                                                t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                                                continue 
                                                            mem[_6878 + 192] = mem[96] + 1
                                                            mem[64] = _6878 + (32 * mem[96] + 1) + 224
                                                            if mem[96] + 1:
                                                                mem[_6878 + 224 len 32 * mem[96] + 1] = code.data[11633 len 32 * mem[96] + 1]
                                                            idx = 0
                                                            while idx < mem[96]:
                                                                require idx < mem[96]
                                                                require idx < mem[_6878 + 192]
                                                                require mem[(32 * idx) + 128] <= 2
                                                                mem[(32 * idx) + _6878 + 224] = mem[(32 * idx) + 128]
                                                                idx = idx + 1
                                                                continue 
            else:
                mem[mem[64] + 4] = arg3
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getEthToTokenInputPrice(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg3
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_5100 + 32] = ext_call.return_data[0]
                if 1 < mem[(32 * arg5.length) + 128]:
                    mem[(32 * arg5.length) + 192] = _5100
                    idx = 0
                    while idx < mem[96]:
                        require idx < mem[96]
                        require mem[(32 * idx) + 128] <= 2
                        if mem[(32 * idx) + 128] != 2:
                            idx = idx + 1
                            continue 
                        _6839 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6839] = 2
                        mem[_6839 + 32] = 0
                        require 2 < mem[(32 * arg5.length) + 128]
                        mem[(32 * arg5.length) + 224] = _6839
                        require 0 < mem[(32 * arg5.length) + 128]
                        require 0 < mem[(32 * arg5.length) + 128]
                        idx = 1
                        s = 0
                        t = 0
                        while idx < mem[(32 * arg5.length) + 128]:
                            require idx < mem[(32 * arg5.length) + 128]
                            if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                idx = idx + 1
                                s = s
                                t = t
                                continue 
                            require idx < mem[(32 * arg5.length) + 128]
                            require idx < mem[(32 * arg5.length) + 128]
                            idx = idx + 1
                            s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                            t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                            continue 
                        _8504 = mem[96]
                        _8505 = mem[64]
                        mem[mem[64]] = mem[96] + 1
                        mem[64] = mem[64] + (32 * _8504 + 1) + 32
                        if not _8504 + 1:
                            _9414 = mem[96]
                            idx = 0
                            while idx < _9414:
                                require idx < mem[96]
                                require idx < mem[_8505]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _8505 + 32] = mem[(32 * idx) + 128]
                                idx = idx + 1
                                continue 
                        else:
                            mem[_8505 + 32 len 32 * _8504 + 1] = code.data[11633 len 32 * _8504 + 1]
                            _9415 = mem[96]
                            idx = 0
                            while idx < _9415:
                                require idx < mem[96]
                                require idx < mem[_8505]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _8505 + 32] = mem[(32 * idx) + 128]
                                idx = idx + 1
                                continue 
                        revert
                    _6798 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6798] = 2
                    if not arg2:
                        mem[_6798 + 32] = 0
                        if 2 < mem[(32 * arg5.length) + 128]:
                            mem[(32 * arg5.length) + 224] = _6798
                            if 0 < mem[(32 * arg5.length) + 128]:
                                if 0 < mem[(32 * arg5.length) + 128]:
                                    idx = 1
                                    s = 0
                                    t = 0
                                    while idx < mem[(32 * arg5.length) + 128]:
                                        require idx < mem[(32 * arg5.length) + 128]
                                        if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                            idx = idx + 1
                                            s = s
                                            t = t
                                            continue 
                                        require idx < mem[(32 * arg5.length) + 128]
                                        require idx < mem[(32 * arg5.length) + 128]
                                        idx = idx + 1
                                        s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                        t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                        continue 
                                    _8500 = mem[96]
                                    _8501 = mem[64]
                                    mem[mem[64]] = mem[96] + 1
                                    mem[64] = mem[64] + (32 * _8500 + 1) + 32
                                    if not _8500 + 1:
                                        _9410 = mem[96]
                                        idx = 0
                                        while idx < _9410:
                                            require idx < mem[96]
                                            require idx < mem[_8501]
                                            require mem[(32 * idx) + 128] <= 2
                                            mem[(32 * idx) + _8501 + 32] = mem[(32 * idx) + 128]
                                            idx = idx + 1
                                            continue 
                                    else:
                                        mem[_8501 + 32 len 32 * _8500 + 1] = code.data[11633 len 32 * _8500 + 1]
                                        _9411 = mem[96]
                                        idx = 0
                                        while idx < _9411:
                                            require idx < mem[96]
                                            require idx < mem[_8501]
                                            require mem[(32 * idx) + 128] <= 2
                                            mem[(32 * idx) + _8501 + 32] = mem[(32 * idx) + 128]
                                            idx = idx + 1
                                            continue 
                    else:
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).token() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == arg1:
                            _6884 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if mem[_6884]:
                                mem[_6884 + 32] = stor4
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 1 < mem[_6884]:
                                    mem[_6884 + 64] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).token() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 < mem[_6884]:
                                        mem[_6884 + 96] = ext_call.return_data[12 len 20]
                                        require ext_code.size(address(stor3))
                                        staticcall address(stor3).0x7b103999 with:
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
                                        mem[_6884 + 128] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                        mem[_6884 + 164] = arg3
                                        mem[_6884 + 132] = 64
                                        mem[_6884 + 196] = mem[_6884]
                                        mem[_6884 + 228 len floor32(mem[_6884])] = mem[_6884 + 32 len floor32(mem[_6884])]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                gas gas_remaining wei
                                               args 64, arg3, mem[_6884 + 196 len (32 * mem[_6884]) + 32]
                                        mem[_6884 + 128 len 64] = ext_call.return_data[0 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 64
                                        mem[_6798 + 32] = ext_call.return_data[0]
                                        if 2 < mem[(32 * arg5.length) + 128]:
                                            mem[(32 * arg5.length) + 224] = _6798
                                            if 0 < mem[(32 * arg5.length) + 128]:
                                                if 0 < mem[(32 * arg5.length) + 128]:
                                                    idx = 1
                                                    s = 0
                                                    t = 0
                                                    while idx < mem[(32 * arg5.length) + 128]:
                                                        require idx < mem[(32 * arg5.length) + 128]
                                                        if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                                            idx = idx + 1
                                                            s = s
                                                            t = t
                                                            continue 
                                                        require idx < mem[(32 * arg5.length) + 128]
                                                        require idx < mem[(32 * arg5.length) + 128]
                                                        idx = idx + 1
                                                        s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                                        t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                                        continue 
                                                    mem[_6884 + 128] = mem[96] + 1
                                                    mem[64] = _6884 + (32 * mem[96] + 1) + 160
                                                    if mem[96] + 1:
                                                        mem[_6884 + 160 len 32 * mem[96] + 1] = code.data[11633 len 32 * mem[96] + 1]
                                                    idx = 0
                                                    while idx < mem[96]:
                                                        require idx < mem[96]
                                                        require idx < mem[_6884 + 128]
                                                        require mem[(32 * idx) + 128] <= 2
                                                        mem[(32 * idx) + _6884 + 160] = mem[(32 * idx) + 128]
                                                        idx = idx + 1
                                                        continue 
                        else:
                            _6882 = mem[64]
                            mem[mem[64]] = 5
                            mem[64] = mem[64] + 192
                            if mem[_6882]:
                                mem[_6882 + 32] = stor4
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 1 < mem[_6882]:
                                    mem[_6882 + 64] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).token() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 < mem[_6882]:
                                        mem[_6882 + 96] = ext_call.return_data[12 len 20]
                                        if 3 < mem[_6882]:
                                            mem[_6882 + 128] = arg2
                                            if 4 < mem[_6882]:
                                                mem[_6882 + 160] = arg1
                                                require ext_code.size(address(stor3))
                                                staticcall address(stor3).0x7b103999 with:
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
                                                mem[_6882 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                                mem[_6882 + 228] = arg3
                                                mem[_6882 + 196] = 64
                                                mem[_6882 + 260] = mem[_6882]
                                                mem[_6882 + 292 len floor32(mem[_6882])] = mem[_6882 + 32 len floor32(mem[_6882])]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 64, arg3, mem[_6882 + 260 len (32 * mem[_6882]) + 32]
                                                mem[_6882 + 192 len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 64
                                                mem[_6798 + 32] = ext_call.return_data[0]
                                                if 2 < mem[(32 * arg5.length) + 128]:
                                                    mem[(32 * arg5.length) + 224] = _6798
                                                    if 0 < mem[(32 * arg5.length) + 128]:
                                                        if 0 < mem[(32 * arg5.length) + 128]:
                                                            idx = 1
                                                            s = 0
                                                            t = 0
                                                            while idx < mem[(32 * arg5.length) + 128]:
                                                                require idx < mem[(32 * arg5.length) + 128]
                                                                if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                                                    idx = idx + 1
                                                                    s = s
                                                                    t = t
                                                                    continue 
                                                                require idx < mem[(32 * arg5.length) + 128]
                                                                require idx < mem[(32 * arg5.length) + 128]
                                                                idx = idx + 1
                                                                s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                                                t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                                                continue 
                                                            mem[_6882 + 192] = mem[96] + 1
                                                            mem[64] = _6882 + (32 * mem[96] + 1) + 224
                                                            if mem[96] + 1:
                                                                mem[_6882 + 224 len 32 * mem[96] + 1] = code.data[11633 len 32 * mem[96] + 1]
                                                            idx = 0
                                                            while idx < mem[96]:
                                                                require idx < mem[96]
                                                                require idx < mem[_6882 + 192]
                                                                require mem[(32 * idx) + 128] <= 2
                                                                mem[(32 * idx) + _6882 + 224] = mem[(32 * idx) + 128]
                                                                idx = idx + 1
                                                                continue 
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_3399 + 32] = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
        if 0 < mem[(32 * arg5.length) + 128]:
            mem[(32 * arg5.length) + 160] = _3399
            idx = 0
            while idx < mem[96]:
                require idx < mem[96]
                require mem[(32 * idx) + 128] <= 2
                if mem[(32 * idx) + 128] != 1:
                    idx = idx + 1
                    continue 
                _5109 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5109] = 1
                mem[_5109 + 32] = 0
                require 1 < mem[(32 * arg5.length) + 128]
                mem[(32 * arg5.length) + 192] = _5109
                idx = 0
                while idx < mem[96]:
                    require idx < mem[96]
                    require mem[(32 * idx) + 128] <= 2
                    if mem[(32 * idx) + 128] != 2:
                        idx = idx + 1
                        continue 
                    _6831 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6831] = 2
                    mem[_6831 + 32] = 0
                    require 2 < mem[(32 * arg5.length) + 128]
                    mem[(32 * arg5.length) + 224] = _6831
                    require 0 < mem[(32 * arg5.length) + 128]
                    require 0 < mem[(32 * arg5.length) + 128]
                    idx = 1
                    s = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                    t = 0
                    while idx < mem[(32 * arg5.length) + 128]:
                        require idx < mem[(32 * arg5.length) + 128]
                        if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        require idx < mem[(32 * arg5.length) + 128]
                        require idx < mem[(32 * arg5.length) + 128]
                        idx = idx + 1
                        s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                        t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                        continue 
                    _8488 = mem[96]
                    _8489 = mem[64]
                    mem[mem[64]] = mem[96] + 1
                    mem[64] = mem[64] + (32 * _8488 + 1) + 32
                    if not _8488 + 1:
                        _9402 = mem[96]
                        idx = 0
                        while idx < _9402:
                            require idx < mem[96]
                            require idx < mem[_8489]
                            require mem[(32 * idx) + 128] <= 2
                            mem[(32 * idx) + _8489 + 32] = mem[(32 * idx) + 128]
                            idx = idx + 1
                            continue 
                    else:
                        mem[_8489 + 32 len 32 * _8488 + 1] = code.data[11633 len 32 * _8488 + 1]
                        _9403 = mem[96]
                        idx = 0
                        while idx < _9403:
                            require idx < mem[96]
                            require idx < mem[_8489]
                            require mem[(32 * idx) + 128] <= 2
                            mem[(32 * idx) + _8489 + 32] = mem[(32 * idx) + 128]
                            idx = idx + 1
                            continue 
                    revert
                _6796 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6796] = 2
                if not arg2:
                    mem[_6796 + 32] = 0
                    if 2 < mem[(32 * arg5.length) + 128]:
                        mem[(32 * arg5.length) + 224] = _6796
                        if 0 < mem[(32 * arg5.length) + 128]:
                            if 0 < mem[(32 * arg5.length) + 128]:
                                idx = 1
                                s = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                t = 0
                                while idx < mem[(32 * arg5.length) + 128]:
                                    require idx < mem[(32 * arg5.length) + 128]
                                    if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        continue 
                                    require idx < mem[(32 * arg5.length) + 128]
                                    require idx < mem[(32 * arg5.length) + 128]
                                    idx = idx + 1
                                    s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                    t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                    continue 
                                _8484 = mem[96]
                                _8485 = mem[64]
                                mem[mem[64]] = mem[96] + 1
                                mem[64] = mem[64] + (32 * _8484 + 1) + 32
                                if not _8484 + 1:
                                    _9398 = mem[96]
                                    idx = 0
                                    while idx < _9398:
                                        require idx < mem[96]
                                        require idx < mem[_8485]
                                        require mem[(32 * idx) + 128] <= 2
                                        mem[(32 * idx) + _8485 + 32] = mem[(32 * idx) + 128]
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[_8485 + 32 len 32 * _8484 + 1] = code.data[11633 len 32 * _8484 + 1]
                                    _9399 = mem[96]
                                    idx = 0
                                    while idx < _9399:
                                        require idx < mem[96]
                                        require idx < mem[_8485]
                                        require mem[(32 * idx) + 128] <= 2
                                        mem[(32 * idx) + _8485 + 32] = mem[(32 * idx) + 128]
                                        idx = idx + 1
                                        continue 
                else:
                    require ext_code.size(address(stor3))
                    staticcall address(stor3).token() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == arg1:
                        _6876 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if mem[_6876]:
                            mem[_6876 + 32] = stor4
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 1 < mem[_6876]:
                                mem[_6876 + 64] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 < mem[_6876]:
                                    mem[_6876 + 96] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).0x7b103999 with:
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
                                    mem[_6876 + 128] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                    mem[_6876 + 164] = arg3
                                    mem[_6876 + 132] = 64
                                    mem[_6876 + 196] = mem[_6876]
                                    idx = 0
                                    while idx < 32 * mem[_6876]:
                                        mem[idx + _6876 + 228] = mem[idx + _6876 + 32]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                            gas gas_remaining wei
                                           args 64, arg3, mem[_6876 + 196 len (32 * mem[_6876]) + 32]
                                    mem[_6876 + 128 len 64] = ext_call.return_data[0 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 64
                                    mem[_6796 + 32] = ext_call.return_data[0]
                                    if 2 < mem[(32 * arg5.length) + 128]:
                                        mem[(32 * arg5.length) + 224] = _6796
                                        if 0 < mem[(32 * arg5.length) + 128]:
                                            if 0 < mem[(32 * arg5.length) + 128]:
                                                idx = 1
                                                s = mem[mem[(32 * arg5.length) + 160] + 32]
                                                t = mem[mem[(32 * arg5.length) + 160]]
                                                while idx < mem[(32 * arg5.length) + 128]:
                                                    require idx < mem[(32 * arg5.length) + 128]
                                                    if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                                        idx = idx + 1
                                                        s = s
                                                        t = t
                                                        continue 
                                                    require idx < mem[(32 * arg5.length) + 128]
                                                    require idx < mem[(32 * arg5.length) + 128]
                                                    idx = idx + 1
                                                    s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                                    t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                                    continue 
                                                mem[_6876 + 128] = mem[96] + 1
                                                mem[64] = _6876 + (32 * mem[96] + 1) + 160
                                                if mem[96] + 1:
                                                    mem[_6876 + 160 len 32 * mem[96] + 1] = code.data[11633 len 32 * mem[96] + 1]
                                                idx = 0
                                                while idx < mem[96]:
                                                    require idx < mem[96]
                                                    require idx < mem[_6876 + 128]
                                                    require mem[(32 * idx) + 128] <= 2
                                                    mem[(32 * idx) + _6876 + 160] = mem[(32 * idx) + 128]
                                                    idx = idx + 1
                                                    continue 
                    else:
                        _6874 = mem[64]
                        mem[mem[64]] = 5
                        mem[64] = mem[64] + 192
                        if mem[_6874]:
                            mem[_6874 + 32] = stor4
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 1 < mem[_6874]:
                                mem[_6874 + 64] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 < mem[_6874]:
                                    mem[_6874 + 96] = ext_call.return_data[12 len 20]
                                    if 3 < mem[_6874]:
                                        mem[_6874 + 128] = arg2
                                        if 4 < mem[_6874]:
                                            mem[_6874 + 160] = arg1
                                            require ext_code.size(address(stor3))
                                            staticcall address(stor3).0x7b103999 with:
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
                                            mem[_6874 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                            mem[_6874 + 228] = arg3
                                            mem[_6874 + 196] = 64
                                            mem[_6874 + 260] = mem[_6874]
                                            idx = 0
                                            while idx < 32 * mem[_6874]:
                                                mem[idx + _6874 + 292] = mem[idx + _6874 + 32]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                    gas gas_remaining wei
                                                   args 64, arg3, mem[_6874 + 260 len (32 * mem[_6874]) + 32]
                                            mem[_6874 + 192 len 64] = ext_call.return_data[0 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 64
                                            mem[_6796 + 32] = ext_call.return_data[0]
                                            if 2 < mem[(32 * arg5.length) + 128]:
                                                mem[(32 * arg5.length) + 224] = _6796
                                                if 0 < mem[(32 * arg5.length) + 128]:
                                                    if 0 < mem[(32 * arg5.length) + 128]:
                                                        idx = 1
                                                        s = mem[mem[(32 * arg5.length) + 160] + 32]
                                                        t = mem[mem[(32 * arg5.length) + 160]]
                                                        while idx < mem[(32 * arg5.length) + 128]:
                                                            require idx < mem[(32 * arg5.length) + 128]
                                                            if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                                                idx = idx + 1
                                                                s = s
                                                                t = t
                                                                continue 
                                                            require idx < mem[(32 * arg5.length) + 128]
                                                            require idx < mem[(32 * arg5.length) + 128]
                                                            idx = idx + 1
                                                            s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                                            t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                                            continue 
                                                        mem[_6874 + 192] = mem[96] + 1
                                                        mem[64] = _6874 + (32 * mem[96] + 1) + 224
                                                        if mem[96] + 1:
                                                            mem[_6874 + 224 len 32 * mem[96] + 1] = code.data[11633 len 32 * mem[96] + 1]
                                                        idx = 0
                                                        while idx < mem[96]:
                                                            require idx < mem[96]
                                                            require idx < mem[_6874 + 192]
                                                            require mem[(32 * idx) + 128] <= 2
                                                            mem[(32 * idx) + _6874 + 224] = mem[(32 * idx) + 128]
                                                            idx = idx + 1
                                                            continue 
                revert
            _5099 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5099] = 1
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
                mem[_5099 + 32] = 0
                if 1 < mem[(32 * arg5.length) + 128]:
                    mem[(32 * arg5.length) + 192] = _5099
                    idx = 0
                    while idx < mem[96]:
                        require idx < mem[96]
                        require mem[(32 * idx) + 128] <= 2
                        if mem[(32 * idx) + 128] != 2:
                            idx = idx + 1
                            continue 
                        _6823 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6823] = 2
                        mem[_6823 + 32] = 0
                        require 2 < mem[(32 * arg5.length) + 128]
                        mem[(32 * arg5.length) + 224] = _6823
                        require 0 < mem[(32 * arg5.length) + 128]
                        require 0 < mem[(32 * arg5.length) + 128]
                        idx = 1
                        s = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                        t = 0
                        while idx < mem[(32 * arg5.length) + 128]:
                            require idx < mem[(32 * arg5.length) + 128]
                            if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                idx = idx + 1
                                s = s
                                t = t
                                continue 
                            require idx < mem[(32 * arg5.length) + 128]
                            require idx < mem[(32 * arg5.length) + 128]
                            idx = idx + 1
                            s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                            t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                            continue 
                        _8472 = mem[96]
                        _8473 = mem[64]
                        mem[mem[64]] = mem[96] + 1
                        mem[64] = mem[64] + (32 * _8472 + 1) + 32
                        if not _8472 + 1:
                            _9390 = mem[96]
                            idx = 0
                            while idx < _9390:
                                require idx < mem[96]
                                require idx < mem[_8473]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _8473 + 32] = mem[(32 * idx) + 128]
                                idx = idx + 1
                                continue 
                        else:
                            mem[_8473 + 32 len 32 * _8472 + 1] = code.data[11633 len 32 * _8472 + 1]
                            _9391 = mem[96]
                            idx = 0
                            while idx < _9391:
                                require idx < mem[96]
                                require idx < mem[_8473]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _8473 + 32] = mem[(32 * idx) + 128]
                                idx = idx + 1
                                continue 
                        revert
                    _6794 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6794] = 2
                    if not arg2:
                        mem[_6794 + 32] = 0
                        if 2 < mem[(32 * arg5.length) + 128]:
                            mem[(32 * arg5.length) + 224] = _6794
                            if 0 < mem[(32 * arg5.length) + 128]:
                                if 0 < mem[(32 * arg5.length) + 128]:
                                    idx = 1
                                    s = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                    t = 0
                                    while idx < mem[(32 * arg5.length) + 128]:
                                        require idx < mem[(32 * arg5.length) + 128]
                                        if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                            idx = idx + 1
                                            s = s
                                            t = t
                                            continue 
                                        require idx < mem[(32 * arg5.length) + 128]
                                        require idx < mem[(32 * arg5.length) + 128]
                                        idx = idx + 1
                                        s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                        t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                        continue 
                                    _8468 = mem[96]
                                    _8469 = mem[64]
                                    mem[mem[64]] = mem[96] + 1
                                    mem[64] = mem[64] + (32 * _8468 + 1) + 32
                                    if not _8468 + 1:
                                        _9386 = mem[96]
                                        idx = 0
                                        while idx < _9386:
                                            require idx < mem[96]
                                            require idx < mem[_8469]
                                            require mem[(32 * idx) + 128] <= 2
                                            mem[(32 * idx) + _8469 + 32] = mem[(32 * idx) + 128]
                                            idx = idx + 1
                                            continue 
                                    else:
                                        mem[_8469 + 32 len 32 * _8468 + 1] = code.data[11633 len 32 * _8468 + 1]
                                        _9387 = mem[96]
                                        idx = 0
                                        while idx < _9387:
                                            require idx < mem[96]
                                            require idx < mem[_8469]
                                            require mem[(32 * idx) + 128] <= 2
                                            mem[(32 * idx) + _8469 + 32] = mem[(32 * idx) + 128]
                                            idx = idx + 1
                                            continue 
                    else:
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).token() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == arg1:
                            _6868 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if mem[_6868]:
                                mem[_6868 + 32] = stor4
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 1 < mem[_6868]:
                                    mem[_6868 + 64] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).token() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 < mem[_6868]:
                                        mem[_6868 + 96] = ext_call.return_data[12 len 20]
                                        require ext_code.size(address(stor3))
                                        staticcall address(stor3).0x7b103999 with:
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
                                        mem[_6868 + 128] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                        mem[_6868 + 164] = arg3
                                        mem[_6868 + 132] = 64
                                        mem[_6868 + 196] = mem[_6868]
                                        mem[_6868 + 228 len floor32(mem[_6868])] = mem[_6868 + 32 len floor32(mem[_6868])]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                gas gas_remaining wei
                                               args 64, arg3, mem[_6868 + 196 len (32 * mem[_6868]) + 32]
                                        mem[_6868 + 128 len 64] = ext_call.return_data[0 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 64
                                        mem[_6794 + 32] = ext_call.return_data[0]
                                        if 2 < mem[(32 * arg5.length) + 128]:
                                            mem[(32 * arg5.length) + 224] = _6794
                                            if 0 < mem[(32 * arg5.length) + 128]:
                                                if 0 < mem[(32 * arg5.length) + 128]:
                                                    idx = 1
                                                    s = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                                    t = 0
                                                    while idx < mem[(32 * arg5.length) + 128]:
                                                        require idx < mem[(32 * arg5.length) + 128]
                                                        if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                                            idx = idx + 1
                                                            s = s
                                                            t = t
                                                            continue 
                                                        require idx < mem[(32 * arg5.length) + 128]
                                                        require idx < mem[(32 * arg5.length) + 128]
                                                        idx = idx + 1
                                                        s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                                        t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                                        continue 
                                                    mem[_6868 + 128] = mem[96] + 1
                                                    mem[64] = _6868 + (32 * mem[96] + 1) + 160
                                                    if mem[96] + 1:
                                                        mem[_6868 + 160 len 32 * mem[96] + 1] = code.data[11633 len 32 * mem[96] + 1]
                                                    idx = 0
                                                    while idx < mem[96]:
                                                        require idx < mem[96]
                                                        require idx < mem[_6868 + 128]
                                                        require mem[(32 * idx) + 128] <= 2
                                                        mem[(32 * idx) + _6868 + 160] = mem[(32 * idx) + 128]
                                                        idx = idx + 1
                                                        continue 
                        else:
                            _6866 = mem[64]
                            mem[mem[64]] = 5
                            mem[64] = mem[64] + 192
                            if mem[_6866]:
                                mem[_6866 + 32] = stor4
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 1 < mem[_6866]:
                                    mem[_6866 + 64] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).token() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 < mem[_6866]:
                                        mem[_6866 + 96] = ext_call.return_data[12 len 20]
                                        if 3 < mem[_6866]:
                                            mem[_6866 + 128] = arg2
                                            if 4 < mem[_6866]:
                                                mem[_6866 + 160] = arg1
                                                require ext_code.size(address(stor3))
                                                staticcall address(stor3).0x7b103999 with:
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
                                                mem[_6866 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                                mem[_6866 + 228] = arg3
                                                mem[_6866 + 196] = 64
                                                mem[_6866 + 260] = mem[_6866]
                                                mem[_6866 + 292 len floor32(mem[_6866])] = mem[_6866 + 32 len floor32(mem[_6866])]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 64, arg3, mem[_6866 + 260 len (32 * mem[_6866]) + 32]
                                                mem[_6866 + 192 len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 64
                                                mem[_6794 + 32] = ext_call.return_data[0]
                                                if 2 < mem[(32 * arg5.length) + 128]:
                                                    mem[(32 * arg5.length) + 224] = _6794
                                                    if 0 < mem[(32 * arg5.length) + 128]:
                                                        if 0 < mem[(32 * arg5.length) + 128]:
                                                            idx = 1
                                                            s = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                                            t = 0
                                                            while idx < mem[(32 * arg5.length) + 128]:
                                                                require idx < mem[(32 * arg5.length) + 128]
                                                                if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                                                    idx = idx + 1
                                                                    s = s
                                                                    t = t
                                                                    continue 
                                                                require idx < mem[(32 * arg5.length) + 128]
                                                                require idx < mem[(32 * arg5.length) + 128]
                                                                idx = idx + 1
                                                                s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                                                t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                                                continue 
                                                            mem[_6866 + 192] = mem[96] + 1
                                                            mem[64] = _6866 + (32 * mem[96] + 1) + 224
                                                            if mem[96] + 1:
                                                                mem[_6866 + 224 len 32 * mem[96] + 1] = code.data[11633 len 32 * mem[96] + 1]
                                                            idx = 0
                                                            while idx < mem[96]:
                                                                require idx < mem[96]
                                                                require idx < mem[_6866 + 192]
                                                                require mem[(32 * idx) + 128] <= 2
                                                                mem[(32 * idx) + _6866 + 224] = mem[(32 * idx) + 128]
                                                                idx = idx + 1
                                                                continue 
            else:
                mem[mem[64] + 4] = arg3
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getEthToTokenInputPrice(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg3
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_5099 + 32] = ext_call.return_data[0]
                if 1 < mem[(32 * arg5.length) + 128]:
                    mem[(32 * arg5.length) + 192] = _5099
                    idx = 0
                    while idx < mem[96]:
                        require idx < mem[96]
                        require mem[(32 * idx) + 128] <= 2
                        if mem[(32 * idx) + 128] != 2:
                            idx = idx + 1
                            continue 
                        _6827 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6827] = 2
                        mem[_6827 + 32] = 0
                        require 2 < mem[(32 * arg5.length) + 128]
                        mem[(32 * arg5.length) + 224] = _6827
                        require 0 < mem[(32 * arg5.length) + 128]
                        require 0 < mem[(32 * arg5.length) + 128]
                        idx = 1
                        s = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                        t = 0
                        while idx < mem[(32 * arg5.length) + 128]:
                            require idx < mem[(32 * arg5.length) + 128]
                            if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                idx = idx + 1
                                s = s
                                t = t
                                continue 
                            require idx < mem[(32 * arg5.length) + 128]
                            require idx < mem[(32 * arg5.length) + 128]
                            idx = idx + 1
                            s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                            t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                            continue 
                        _8480 = mem[96]
                        _8481 = mem[64]
                        mem[mem[64]] = mem[96] + 1
                        mem[64] = mem[64] + (32 * _8480 + 1) + 32
                        if not _8480 + 1:
                            _9396 = mem[96]
                            idx = 0
                            while idx < _9396:
                                require idx < mem[96]
                                require idx < mem[_8481]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _8481 + 32] = mem[(32 * idx) + 128]
                                idx = idx + 1
                                continue 
                        else:
                            mem[_8481 + 32 len 32 * _8480 + 1] = code.data[11633 len 32 * _8480 + 1]
                            _9397 = mem[96]
                            idx = 0
                            while idx < _9397:
                                require idx < mem[96]
                                require idx < mem[_8481]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _8481 + 32] = mem[(32 * idx) + 128]
                                idx = idx + 1
                                continue 
                        revert
                    _6795 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6795] = 2
                    if not arg2:
                        mem[_6795 + 32] = 0
                        if 2 < mem[(32 * arg5.length) + 128]:
                            mem[(32 * arg5.length) + 224] = _6795
                            if 0 < mem[(32 * arg5.length) + 128]:
                                if 0 < mem[(32 * arg5.length) + 128]:
                                    idx = 1
                                    s = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                    t = 0
                                    while idx < mem[(32 * arg5.length) + 128]:
                                        require idx < mem[(32 * arg5.length) + 128]
                                        if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                            idx = idx + 1
                                            s = s
                                            t = t
                                            continue 
                                        require idx < mem[(32 * arg5.length) + 128]
                                        require idx < mem[(32 * arg5.length) + 128]
                                        idx = idx + 1
                                        s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                        t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                        continue 
                                    _8476 = mem[96]
                                    _8477 = mem[64]
                                    mem[mem[64]] = mem[96] + 1
                                    mem[64] = mem[64] + (32 * _8476 + 1) + 32
                                    if not _8476 + 1:
                                        _9392 = mem[96]
                                        idx = 0
                                        while idx < _9392:
                                            require idx < mem[96]
                                            require idx < mem[_8477]
                                            require mem[(32 * idx) + 128] <= 2
                                            mem[(32 * idx) + _8477 + 32] = mem[(32 * idx) + 128]
                                            idx = idx + 1
                                            continue 
                                    else:
                                        mem[_8477 + 32 len 32 * _8476 + 1] = code.data[11633 len 32 * _8476 + 1]
                                        _9393 = mem[96]
                                        idx = 0
                                        while idx < _9393:
                                            require idx < mem[96]
                                            require idx < mem[_8477]
                                            require mem[(32 * idx) + 128] <= 2
                                            mem[(32 * idx) + _8477 + 32] = mem[(32 * idx) + 128]
                                            idx = idx + 1
                                            continue 
                    else:
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).token() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == arg1:
                            _6872 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if mem[_6872]:
                                mem[_6872 + 32] = stor4
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 1 < mem[_6872]:
                                    mem[_6872 + 64] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).token() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 < mem[_6872]:
                                        mem[_6872 + 96] = ext_call.return_data[12 len 20]
                                        require ext_code.size(address(stor3))
                                        staticcall address(stor3).0x7b103999 with:
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
                                        mem[_6872 + 128] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                        mem[_6872 + 164] = arg3
                                        mem[_6872 + 132] = 64
                                        mem[_6872 + 196] = mem[_6872]
                                        mem[_6872 + 228 len floor32(mem[_6872])] = mem[_6872 + 32 len floor32(mem[_6872])]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                gas gas_remaining wei
                                               args 64, arg3, mem[_6872 + 196 len (32 * mem[_6872]) + 32]
                                        mem[_6872 + 128 len 64] = ext_call.return_data[0 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 64
                                        mem[_6795 + 32] = ext_call.return_data[0]
                                        if 2 < mem[(32 * arg5.length) + 128]:
                                            mem[(32 * arg5.length) + 224] = _6795
                                            if 0 < mem[(32 * arg5.length) + 128]:
                                                if 0 < mem[(32 * arg5.length) + 128]:
                                                    idx = 1
                                                    s = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                                    t = 0
                                                    while idx < mem[(32 * arg5.length) + 128]:
                                                        require idx < mem[(32 * arg5.length) + 128]
                                                        if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                                            idx = idx + 1
                                                            s = s
                                                            t = t
                                                            continue 
                                                        require idx < mem[(32 * arg5.length) + 128]
                                                        require idx < mem[(32 * arg5.length) + 128]
                                                        idx = idx + 1
                                                        s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                                        t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                                        continue 
                                                    mem[_6872 + 128] = mem[96] + 1
                                                    mem[64] = _6872 + (32 * mem[96] + 1) + 160
                                                    if mem[96] + 1:
                                                        mem[_6872 + 160 len 32 * mem[96] + 1] = code.data[11633 len 32 * mem[96] + 1]
                                                    idx = 0
                                                    while idx < mem[96]:
                                                        require idx < mem[96]
                                                        require idx < mem[_6872 + 128]
                                                        require mem[(32 * idx) + 128] <= 2
                                                        mem[(32 * idx) + _6872 + 160] = mem[(32 * idx) + 128]
                                                        idx = idx + 1
                                                        continue 
                        else:
                            _6870 = mem[64]
                            mem[mem[64]] = 5
                            mem[64] = mem[64] + 192
                            if mem[_6870]:
                                mem[_6870 + 32] = stor4
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 1 < mem[_6870]:
                                    mem[_6870 + 64] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).token() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 < mem[_6870]:
                                        mem[_6870 + 96] = ext_call.return_data[12 len 20]
                                        if 3 < mem[_6870]:
                                            mem[_6870 + 128] = arg2
                                            if 4 < mem[_6870]:
                                                mem[_6870 + 160] = arg1
                                                require ext_code.size(address(stor3))
                                                staticcall address(stor3).0x7b103999 with:
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
                                                mem[_6870 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                                mem[_6870 + 228] = arg3
                                                mem[_6870 + 196] = 64
                                                mem[_6870 + 260] = mem[_6870]
                                                mem[_6870 + 292 len floor32(mem[_6870])] = mem[_6870 + 32 len floor32(mem[_6870])]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 64, arg3, mem[_6870 + 260 len (32 * mem[_6870]) + 32]
                                                mem[_6870 + 192 len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 64
                                                mem[_6795 + 32] = ext_call.return_data[0]
                                                if 2 < mem[(32 * arg5.length) + 128]:
                                                    mem[(32 * arg5.length) + 224] = _6795
                                                    if 0 < mem[(32 * arg5.length) + 128]:
                                                        if 0 < mem[(32 * arg5.length) + 128]:
                                                            idx = 1
                                                            s = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                                            t = 0
                                                            while idx < mem[(32 * arg5.length) + 128]:
                                                                require idx < mem[(32 * arg5.length) + 128]
                                                                if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                                                    idx = idx + 1
                                                                    s = s
                                                                    t = t
                                                                    continue 
                                                                require idx < mem[(32 * arg5.length) + 128]
                                                                require idx < mem[(32 * arg5.length) + 128]
                                                                idx = idx + 1
                                                                s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                                                t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                                                continue 
                                                            mem[_6870 + 192] = mem[96] + 1
                                                            mem[64] = _6870 + (32 * mem[96] + 1) + 224
                                                            if mem[96] + 1:
                                                                mem[_6870 + 224 len 32 * mem[96] + 1] = code.data[11633 len 32 * mem[96] + 1]
                                                            idx = 0
                                                            while idx < mem[96]:
                                                                require idx < mem[96]
                                                                require idx < mem[_6870 + 192]
                                                                require mem[(32 * idx) + 128] <= 2
                                                                mem[(32 * idx) + _6870 + 224] = mem[(32 * idx) + 128]
                                                                idx = idx + 1
                                                                continue 
    revert
}



}
