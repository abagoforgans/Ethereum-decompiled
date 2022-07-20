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

function sub_9b91dfc6(?) {
    require calldata.size - 4 >= 192
    require arg3 <= 2
    if not arg3:
        mem[292] = stor0
        mem[324] = 256
        mem[356] = 0
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
                         gas gas_remaining wei
                        args Mask(480, -256, approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, 0
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
                    mem[288 len 4] = test266151307()
                    mem[260 len 28] = 0
                    call arg1 with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, 0
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
                                args Mask(480, -256, approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[452 len 4]
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
                           funct uint32(stor1)
                             gas gas_remaining wei
                            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[388 len 4]
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
        _2973 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2973] = 0
        mem[_2973 + 32] = 0
        require 0 < mem[(32 * arg5.length) + 128]
        mem[(32 * arg5.length) + 160] = _2973
        idx = 0
        while idx < mem[96]:
            require idx < mem[96]
            require mem[(32 * idx) + 128] <= 2
            if mem[(32 * idx) + 128] != 1:
                idx = idx + 1
                continue 
            _4467 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4467] = 1
            mem[_4467 + 32] = 0
            require 1 < mem[(32 * arg5.length) + 128]
            mem[(32 * arg5.length) + 192] = _4467
            idx = 0
            while idx < mem[96]:
                require idx < mem[96]
                require mem[(32 * idx) + 128] <= 2
                if mem[(32 * idx) + 128] != 2:
                    idx = idx + 1
                    continue 
                _5991 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5991] = 2
                mem[_5991 + 32] = 0
                require 2 < mem[(32 * arg5.length) + 128]
                mem[(32 * arg5.length) + 224] = _5991
                idx = 0
                s = 0
                t = 0
                while idx < mem[(32 * arg5.length) + 128]:
                    require idx < mem[(32 * arg5.length) + 128]
                    if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] < s:
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
                _7456 = mem[96]
                _7457 = mem[64]
                mem[mem[64]] = mem[96] + 1
                mem[64] = mem[64] + (32 * _7456 + 1) + 32
                if not _7456 + 1:
                    _8250 = mem[96]
                    idx = 0
                    while idx < _8250:
                        require idx < mem[96]
                        require idx < mem[_7457]
                        require mem[(32 * idx) + 128] <= 2
                        mem[(32 * idx) + _7457 + 32] = mem[(32 * idx) + 128]
                        idx = idx + 1
                        continue 
                else:
                    mem[_7457 + 32 len 32 * _7456 + 1] = code.data[11851 len 32 * _7456 + 1]
                    _8251 = mem[96]
                    idx = 0
                    while idx < _8251:
                        require idx < mem[96]
                        require idx < mem[_7457]
                        require mem[(32 * idx) + 128] <= 2
                        mem[(32 * idx) + _7457 + 32] = mem[(32 * idx) + 128]
                        idx = idx + 1
                        continue 
                revert
            _5938 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5938] = 2
            if not arg2:
                mem[_5938 + 32] = 0
                if 2 < mem[(32 * arg5.length) + 128]:
                    mem[(32 * arg5.length) + 224] = _5938
                    idx = 0
                    s = 0
                    t = 0
                    while idx < mem[(32 * arg5.length) + 128]:
                        require idx < mem[(32 * arg5.length) + 128]
                        if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] < s:
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
                    _7452 = mem[96]
                    _7453 = mem[64]
                    mem[mem[64]] = mem[96] + 1
                    mem[64] = mem[64] + (32 * _7452 + 1) + 32
                    if not _7452 + 1:
                        _8246 = mem[96]
                        idx = 0
                        while idx < _8246:
                            require idx < mem[96]
                            require idx < mem[_7453]
                            require mem[(32 * idx) + 128] <= 2
                            mem[(32 * idx) + _7453 + 32] = mem[(32 * idx) + 128]
                            idx = idx + 1
                            continue 
                    else:
                        mem[_7453 + 32 len 32 * _7452 + 1] = code.data[11851 len 32 * _7452 + 1]
                        _8247 = mem[96]
                        idx = 0
                        while idx < _8247:
                            require idx < mem[96]
                            require idx < mem[_7453]
                            require mem[(32 * idx) + 128] <= 2
                            mem[(32 * idx) + _7453 + 32] = mem[(32 * idx) + 128]
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
                    _6036 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if mem[_6036]:
                        mem[_6036 + 32] = stor4
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).token() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 1 < mem[_6036]:
                            mem[_6036 + 64] = ext_call.return_data[12 len 20]
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 < mem[_6036]:
                                mem[_6036 + 96] = ext_call.return_data[12 len 20]
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
                                mem[_6036 + 128] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                mem[_6036 + 164] = arg3
                                mem[_6036 + 132] = 64
                                mem[_6036 + 196] = mem[_6036]
                                idx = 0
                                while idx < 32 * mem[_6036]:
                                    mem[idx + _6036 + 228] = mem[idx + _6036 + 32]
                                    idx = idx + 32
                                    continue 
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 64, arg3, mem[_6036 + 196 len (32 * mem[_6036]) + 32]
                                mem[_6036 + 128 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[_5938 + 32] = ext_call.return_data[0]
                                if 2 < mem[(32 * arg5.length) + 128]:
                                    mem[(32 * arg5.length) + 224] = _5938
                                    idx = 0
                                    s = 0
                                    t = 0
                                    while idx < mem[(32 * arg5.length) + 128]:
                                        require idx < mem[(32 * arg5.length) + 128]
                                        if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] < s:
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
                                    mem[_6036 + 128] = mem[96] + 1
                                    mem[64] = _6036 + (32 * mem[96] + 1) + 160
                                    if mem[96] + 1:
                                        mem[_6036 + 160 len 32 * mem[96] + 1] = code.data[11851 len 32 * mem[96] + 1]
                                    idx = 0
                                    while idx < mem[96]:
                                        require idx < mem[96]
                                        require idx < mem[_6036 + 128]
                                        require mem[(32 * idx) + 128] <= 2
                                        mem[(32 * idx) + _6036 + 160] = mem[(32 * idx) + 128]
                                        idx = idx + 1
                                        continue 
                else:
                    _6034 = mem[64]
                    mem[mem[64]] = 5
                    mem[64] = mem[64] + 192
                    if mem[_6034]:
                        mem[_6034 + 32] = stor4
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).token() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 1 < mem[_6034]:
                            mem[_6034 + 64] = ext_call.return_data[12 len 20]
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 < mem[_6034]:
                                mem[_6034 + 96] = ext_call.return_data[12 len 20]
                                if 3 < mem[_6034]:
                                    mem[_6034 + 128] = arg2
                                    if 4 < mem[_6034]:
                                        mem[_6034 + 160] = arg1
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
                                        mem[_6034 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                        mem[_6034 + 228] = arg3
                                        mem[_6034 + 196] = 64
                                        mem[_6034 + 260] = mem[_6034]
                                        idx = 0
                                        while idx < 32 * mem[_6034]:
                                            mem[idx + _6034 + 292] = mem[idx + _6034 + 32]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                gas gas_remaining wei
                                               args 64, arg3, mem[_6034 + 260 len (32 * mem[_6034]) + 32]
                                        mem[_6034 + 192 len 64] = ext_call.return_data[0 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 64
                                        mem[_5938 + 32] = ext_call.return_data[0]
                                        if 2 < mem[(32 * arg5.length) + 128]:
                                            mem[(32 * arg5.length) + 224] = _5938
                                            idx = 0
                                            s = 0
                                            t = 0
                                            while idx < mem[(32 * arg5.length) + 128]:
                                                require idx < mem[(32 * arg5.length) + 128]
                                                if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] < s:
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
                                            mem[_6034 + 192] = mem[96] + 1
                                            mem[64] = _6034 + (32 * mem[96] + 1) + 224
                                            if mem[96] + 1:
                                                mem[_6034 + 224 len 32 * mem[96] + 1] = code.data[11851 len 32 * mem[96] + 1]
                                            idx = 0
                                            while idx < mem[96]:
                                                require idx < mem[96]
                                                require idx < mem[_6034 + 192]
                                                require mem[(32 * idx) + 128] <= 2
                                                mem[(32 * idx) + _6034 + 224] = mem[(32 * idx) + 128]
                                                idx = idx + 1
                                                continue 
            revert
        _4453 = mem[64]
        mem[64] = mem[64] + 64
        mem[_4453] = 1
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
            mem[_4453 + 32] = 0
            if 1 < mem[(32 * arg5.length) + 128]:
                mem[(32 * arg5.length) + 192] = _4453
                idx = 0
                while idx < mem[96]:
                    require idx < mem[96]
                    require mem[(32 * idx) + 128] <= 2
                    if mem[(32 * idx) + 128] != 2:
                        idx = idx + 1
                        continue 
                    _5983 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5983] = 2
                    mem[_5983 + 32] = 0
                    require 2 < mem[(32 * arg5.length) + 128]
                    mem[(32 * arg5.length) + 224] = _5983
                    idx = 0
                    s = 0
                    t = 0
                    while idx < mem[(32 * arg5.length) + 128]:
                        require idx < mem[(32 * arg5.length) + 128]
                        if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] < s:
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
                    _7440 = mem[96]
                    _7441 = mem[64]
                    mem[mem[64]] = mem[96] + 1
                    mem[64] = mem[64] + (32 * _7440 + 1) + 32
                    if not _7440 + 1:
                        _8238 = mem[96]
                        idx = 0
                        while idx < _8238:
                            require idx < mem[96]
                            require idx < mem[_7441]
                            require mem[(32 * idx) + 128] <= 2
                            mem[(32 * idx) + _7441 + 32] = mem[(32 * idx) + 128]
                            idx = idx + 1
                            continue 
                    else:
                        mem[_7441 + 32 len 32 * _7440 + 1] = code.data[11851 len 32 * _7440 + 1]
                        _8239 = mem[96]
                        idx = 0
                        while idx < _8239:
                            require idx < mem[96]
                            require idx < mem[_7441]
                            require mem[(32 * idx) + 128] <= 2
                            mem[(32 * idx) + _7441 + 32] = mem[(32 * idx) + 128]
                            idx = idx + 1
                            continue 
                    revert
                _5936 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5936] = 2
                if not arg2:
                    mem[_5936 + 32] = 0
                    if 2 < mem[(32 * arg5.length) + 128]:
                        mem[(32 * arg5.length) + 224] = _5936
                        idx = 0
                        s = 0
                        t = 0
                        while idx < mem[(32 * arg5.length) + 128]:
                            require idx < mem[(32 * arg5.length) + 128]
                            if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] < s:
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
                        _7436 = mem[96]
                        _7437 = mem[64]
                        mem[mem[64]] = mem[96] + 1
                        mem[64] = mem[64] + (32 * _7436 + 1) + 32
                        if not _7436 + 1:
                            _8234 = mem[96]
                            idx = 0
                            while idx < _8234:
                                require idx < mem[96]
                                require idx < mem[_7437]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _7437 + 32] = mem[(32 * idx) + 128]
                                idx = idx + 1
                                continue 
                        else:
                            mem[_7437 + 32 len 32 * _7436 + 1] = code.data[11851 len 32 * _7436 + 1]
                            _8235 = mem[96]
                            idx = 0
                            while idx < _8235:
                                require idx < mem[96]
                                require idx < mem[_7437]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _7437 + 32] = mem[(32 * idx) + 128]
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
                        _6028 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if mem[_6028]:
                            mem[_6028 + 32] = stor4
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 1 < mem[_6028]:
                                mem[_6028 + 64] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 < mem[_6028]:
                                    mem[_6028 + 96] = ext_call.return_data[12 len 20]
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
                                    mem[_6028 + 128] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                    mem[_6028 + 164] = arg3
                                    mem[_6028 + 132] = 64
                                    mem[_6028 + 196] = mem[_6028]
                                    idx = 0
                                    while idx < 32 * mem[_6028]:
                                        mem[idx + _6028 + 228] = mem[idx + _6028 + 32]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                            gas gas_remaining wei
                                           args 64, arg3, mem[_6028 + 196 len (32 * mem[_6028]) + 32]
                                    mem[_6028 + 128 len 64] = ext_call.return_data[0 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 64
                                    mem[_5936 + 32] = ext_call.return_data[0]
                                    if 2 < mem[(32 * arg5.length) + 128]:
                                        mem[(32 * arg5.length) + 224] = _5936
                                        idx = 0
                                        s = 0
                                        t = 0
                                        while idx < mem[(32 * arg5.length) + 128]:
                                            require idx < mem[(32 * arg5.length) + 128]
                                            if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] < s:
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
                                        mem[_6028 + 128] = mem[96] + 1
                                        mem[64] = _6028 + (32 * mem[96] + 1) + 160
                                        if mem[96] + 1:
                                            mem[_6028 + 160 len 32 * mem[96] + 1] = code.data[11851 len 32 * mem[96] + 1]
                                        idx = 0
                                        while idx < mem[96]:
                                            require idx < mem[96]
                                            require idx < mem[_6028 + 128]
                                            require mem[(32 * idx) + 128] <= 2
                                            mem[(32 * idx) + _6028 + 160] = mem[(32 * idx) + 128]
                                            idx = idx + 1
                                            continue 
                    else:
                        _6026 = mem[64]
                        mem[mem[64]] = 5
                        mem[64] = mem[64] + 192
                        if mem[_6026]:
                            mem[_6026 + 32] = stor4
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 1 < mem[_6026]:
                                mem[_6026 + 64] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 < mem[_6026]:
                                    mem[_6026 + 96] = ext_call.return_data[12 len 20]
                                    if 3 < mem[_6026]:
                                        mem[_6026 + 128] = arg2
                                        if 4 < mem[_6026]:
                                            mem[_6026 + 160] = arg1
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
                                            mem[_6026 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                            mem[_6026 + 228] = arg3
                                            mem[_6026 + 196] = 64
                                            mem[_6026 + 260] = mem[_6026]
                                            idx = 0
                                            while idx < 32 * mem[_6026]:
                                                mem[idx + _6026 + 292] = mem[idx + _6026 + 32]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                    gas gas_remaining wei
                                                   args 64, arg3, mem[_6026 + 260 len (32 * mem[_6026]) + 32]
                                            mem[_6026 + 192 len 64] = ext_call.return_data[0 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 64
                                            mem[_5936 + 32] = ext_call.return_data[0]
                                            if 2 < mem[(32 * arg5.length) + 128]:
                                                mem[(32 * arg5.length) + 224] = _5936
                                                idx = 0
                                                s = 0
                                                t = 0
                                                while idx < mem[(32 * arg5.length) + 128]:
                                                    require idx < mem[(32 * arg5.length) + 128]
                                                    if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] < s:
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
                                                mem[_6026 + 192] = mem[96] + 1
                                                mem[64] = _6026 + (32 * mem[96] + 1) + 224
                                                if mem[96] + 1:
                                                    mem[_6026 + 224 len 32 * mem[96] + 1] = code.data[11851 len 32 * mem[96] + 1]
                                                idx = 0
                                                while idx < mem[96]:
                                                    require idx < mem[96]
                                                    require idx < mem[_6026 + 192]
                                                    require mem[(32 * idx) + 128] <= 2
                                                    mem[(32 * idx) + _6026 + 224] = mem[(32 * idx) + 128]
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
            mem[_4453 + 32] = ext_call.return_data[0]
            if 1 < mem[(32 * arg5.length) + 128]:
                mem[(32 * arg5.length) + 192] = _4453
                idx = 0
                while idx < mem[96]:
                    require idx < mem[96]
                    require mem[(32 * idx) + 128] <= 2
                    if mem[(32 * idx) + 128] != 2:
                        idx = idx + 1
                        continue 
                    _5987 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5987] = 2
                    mem[_5987 + 32] = 0
                    require 2 < mem[(32 * arg5.length) + 128]
                    mem[(32 * arg5.length) + 224] = _5987
                    idx = 0
                    s = 0
                    t = 0
                    while idx < mem[(32 * arg5.length) + 128]:
                        require idx < mem[(32 * arg5.length) + 128]
                        if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] < s:
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
                    _7448 = mem[96]
                    _7449 = mem[64]
                    mem[mem[64]] = mem[96] + 1
                    mem[64] = mem[64] + (32 * _7448 + 1) + 32
                    if not _7448 + 1:
                        _8244 = mem[96]
                        idx = 0
                        while idx < _8244:
                            require idx < mem[96]
                            require idx < mem[_7449]
                            require mem[(32 * idx) + 128] <= 2
                            mem[(32 * idx) + _7449 + 32] = mem[(32 * idx) + 128]
                            idx = idx + 1
                            continue 
                    else:
                        mem[_7449 + 32 len 32 * _7448 + 1] = code.data[11851 len 32 * _7448 + 1]
                        _8245 = mem[96]
                        idx = 0
                        while idx < _8245:
                            require idx < mem[96]
                            require idx < mem[_7449]
                            require mem[(32 * idx) + 128] <= 2
                            mem[(32 * idx) + _7449 + 32] = mem[(32 * idx) + 128]
                            idx = idx + 1
                            continue 
                    revert
                _5937 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5937] = 2
                if not arg2:
                    mem[_5937 + 32] = 0
                    if 2 < mem[(32 * arg5.length) + 128]:
                        mem[(32 * arg5.length) + 224] = _5937
                        idx = 0
                        s = 0
                        t = 0
                        while idx < mem[(32 * arg5.length) + 128]:
                            require idx < mem[(32 * arg5.length) + 128]
                            if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] < s:
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
                        _7444 = mem[96]
                        _7445 = mem[64]
                        mem[mem[64]] = mem[96] + 1
                        mem[64] = mem[64] + (32 * _7444 + 1) + 32
                        if not _7444 + 1:
                            _8240 = mem[96]
                            idx = 0
                            while idx < _8240:
                                require idx < mem[96]
                                require idx < mem[_7445]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _7445 + 32] = mem[(32 * idx) + 128]
                                idx = idx + 1
                                continue 
                        else:
                            mem[_7445 + 32 len 32 * _7444 + 1] = code.data[11851 len 32 * _7444 + 1]
                            _8241 = mem[96]
                            idx = 0
                            while idx < _8241:
                                require idx < mem[96]
                                require idx < mem[_7445]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _7445 + 32] = mem[(32 * idx) + 128]
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
                        _6032 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if mem[_6032]:
                            mem[_6032 + 32] = stor4
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 1 < mem[_6032]:
                                mem[_6032 + 64] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 < mem[_6032]:
                                    mem[_6032 + 96] = ext_call.return_data[12 len 20]
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
                                    mem[_6032 + 128] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                    mem[_6032 + 164] = arg3
                                    mem[_6032 + 132] = 64
                                    mem[_6032 + 196] = mem[_6032]
                                    idx = 0
                                    while idx < 32 * mem[_6032]:
                                        mem[idx + _6032 + 228] = mem[idx + _6032 + 32]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                            gas gas_remaining wei
                                           args 64, arg3, mem[_6032 + 196 len (32 * mem[_6032]) + 32]
                                    mem[_6032 + 128 len 64] = ext_call.return_data[0 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 64
                                    mem[_5937 + 32] = ext_call.return_data[0]
                                    if 2 < mem[(32 * arg5.length) + 128]:
                                        mem[(32 * arg5.length) + 224] = _5937
                                        idx = 0
                                        s = 0
                                        t = 0
                                        while idx < mem[(32 * arg5.length) + 128]:
                                            require idx < mem[(32 * arg5.length) + 128]
                                            if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] < s:
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
                                        mem[_6032 + 128] = mem[96] + 1
                                        mem[64] = _6032 + (32 * mem[96] + 1) + 160
                                        if mem[96] + 1:
                                            mem[_6032 + 160 len 32 * mem[96] + 1] = code.data[11851 len 32 * mem[96] + 1]
                                        idx = 0
                                        while idx < mem[96]:
                                            require idx < mem[96]
                                            require idx < mem[_6032 + 128]
                                            require mem[(32 * idx) + 128] <= 2
                                            mem[(32 * idx) + _6032 + 160] = mem[(32 * idx) + 128]
                                            idx = idx + 1
                                            continue 
                    else:
                        _6030 = mem[64]
                        mem[mem[64]] = 5
                        mem[64] = mem[64] + 192
                        if mem[_6030]:
                            mem[_6030 + 32] = stor4
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 1 < mem[_6030]:
                                mem[_6030 + 64] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 < mem[_6030]:
                                    mem[_6030 + 96] = ext_call.return_data[12 len 20]
                                    if 3 < mem[_6030]:
                                        mem[_6030 + 128] = arg2
                                        if 4 < mem[_6030]:
                                            mem[_6030 + 160] = arg1
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
                                            mem[_6030 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                            mem[_6030 + 228] = arg3
                                            mem[_6030 + 196] = 64
                                            mem[_6030 + 260] = mem[_6030]
                                            idx = 0
                                            while idx < 32 * mem[_6030]:
                                                mem[idx + _6030 + 292] = mem[idx + _6030 + 32]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                    gas gas_remaining wei
                                                   args 64, arg3, mem[_6030 + 260 len (32 * mem[_6030]) + 32]
                                            mem[_6030 + 192 len 64] = ext_call.return_data[0 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 64
                                            mem[_5937 + 32] = ext_call.return_data[0]
                                            if 2 < mem[(32 * arg5.length) + 128]:
                                                mem[(32 * arg5.length) + 224] = _5937
                                                idx = 0
                                                s = 0
                                                t = 0
                                                while idx < mem[(32 * arg5.length) + 128]:
                                                    require idx < mem[(32 * arg5.length) + 128]
                                                    if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] < s:
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
                                                mem[_6030 + 192] = mem[96] + 1
                                                mem[64] = _6030 + (32 * mem[96] + 1) + 224
                                                if mem[96] + 1:
                                                    mem[_6030 + 224 len 32 * mem[96] + 1] = code.data[11851 len 32 * mem[96] + 1]
                                                idx = 0
                                                while idx < mem[96]:
                                                    require idx < mem[96]
                                                    require idx < mem[_6030 + 192]
                                                    require mem[(32 * idx) + 128] <= 2
                                                    mem[(32 * idx) + _6030 + 224] = mem[(32 * idx) + 128]
                                                    idx = idx + 1
                                                    continue 
        revert
    _2967 = mem[64]
    mem[64] = mem[64] + 64
    mem[_2967] = 0
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
        mem[_2967 + 32] = 0
        if 0 < mem[(32 * arg5.length) + 128]:
            mem[(32 * arg5.length) + 160] = _2967
            idx = 0
            while idx < mem[96]:
                require idx < mem[96]
                require mem[(32 * idx) + 128] <= 2
                if mem[(32 * idx) + 128] != 1:
                    idx = idx + 1
                    continue 
                _4464 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4464] = 1
                mem[_4464 + 32] = 0
                require 1 < mem[(32 * arg5.length) + 128]
                mem[(32 * arg5.length) + 192] = _4464
                idx = 0
                while idx < mem[96]:
                    require idx < mem[96]
                    require mem[(32 * idx) + 128] <= 2
                    if mem[(32 * idx) + 128] != 2:
                        idx = idx + 1
                        continue 
                    _5979 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5979] = 2
                    mem[_5979 + 32] = 0
                    require 2 < mem[(32 * arg5.length) + 128]
                    mem[(32 * arg5.length) + 224] = _5979
                    idx = 0
                    s = 0
                    t = 0
                    while idx < mem[(32 * arg5.length) + 128]:
                        require idx < mem[(32 * arg5.length) + 128]
                        if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] < s:
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
                    _7432 = mem[96]
                    _7433 = mem[64]
                    mem[mem[64]] = mem[96] + 1
                    mem[64] = mem[64] + (32 * _7432 + 1) + 32
                    if not _7432 + 1:
                        _8232 = mem[96]
                        idx = 0
                        while idx < _8232:
                            require idx < mem[96]
                            require idx < mem[_7433]
                            require mem[(32 * idx) + 128] <= 2
                            mem[(32 * idx) + _7433 + 32] = mem[(32 * idx) + 128]
                            idx = idx + 1
                            continue 
                    else:
                        mem[_7433 + 32 len 32 * _7432 + 1] = code.data[11851 len 32 * _7432 + 1]
                        _8233 = mem[96]
                        idx = 0
                        while idx < _8233:
                            require idx < mem[96]
                            require idx < mem[_7433]
                            require mem[(32 * idx) + 128] <= 2
                            mem[(32 * idx) + _7433 + 32] = mem[(32 * idx) + 128]
                            idx = idx + 1
                            continue 
                    revert
                _5935 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5935] = 2
                if not arg2:
                    mem[_5935 + 32] = 0
                    if 2 < mem[(32 * arg5.length) + 128]:
                        mem[(32 * arg5.length) + 224] = _5935
                        idx = 0
                        s = 0
                        t = 0
                        while idx < mem[(32 * arg5.length) + 128]:
                            require idx < mem[(32 * arg5.length) + 128]
                            if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] < s:
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
                        _7428 = mem[96]
                        _7429 = mem[64]
                        mem[mem[64]] = mem[96] + 1
                        mem[64] = mem[64] + (32 * _7428 + 1) + 32
                        if not _7428 + 1:
                            _8228 = mem[96]
                            idx = 0
                            while idx < _8228:
                                require idx < mem[96]
                                require idx < mem[_7429]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _7429 + 32] = mem[(32 * idx) + 128]
                                idx = idx + 1
                                continue 
                        else:
                            mem[_7429 + 32 len 32 * _7428 + 1] = code.data[11851 len 32 * _7428 + 1]
                            _8229 = mem[96]
                            idx = 0
                            while idx < _8229:
                                require idx < mem[96]
                                require idx < mem[_7429]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _7429 + 32] = mem[(32 * idx) + 128]
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
                        _6024 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if mem[_6024]:
                            mem[_6024 + 32] = stor4
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 1 < mem[_6024]:
                                mem[_6024 + 64] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 < mem[_6024]:
                                    mem[_6024 + 96] = ext_call.return_data[12 len 20]
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
                                    mem[_6024 + 128] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                    mem[_6024 + 164] = arg3
                                    mem[_6024 + 132] = 64
                                    mem[_6024 + 196] = mem[_6024]
                                    idx = 0
                                    while idx < 32 * mem[_6024]:
                                        mem[idx + _6024 + 228] = mem[idx + _6024 + 32]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                            gas gas_remaining wei
                                           args 64, arg3, mem[_6024 + 196 len (32 * mem[_6024]) + 32]
                                    mem[_6024 + 128 len 64] = ext_call.return_data[0 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 64
                                    mem[_5935 + 32] = ext_call.return_data[0]
                                    if 2 < mem[(32 * arg5.length) + 128]:
                                        mem[(32 * arg5.length) + 224] = _5935
                                        idx = 0
                                        s = 0
                                        t = 0
                                        while idx < mem[(32 * arg5.length) + 128]:
                                            require idx < mem[(32 * arg5.length) + 128]
                                            if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] < s:
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
                                        mem[_6024 + 128] = mem[96] + 1
                                        mem[64] = _6024 + (32 * mem[96] + 1) + 160
                                        if mem[96] + 1:
                                            mem[_6024 + 160 len 32 * mem[96] + 1] = code.data[11851 len 32 * mem[96] + 1]
                                        idx = 0
                                        while idx < mem[96]:
                                            require idx < mem[96]
                                            require idx < mem[_6024 + 128]
                                            require mem[(32 * idx) + 128] <= 2
                                            mem[(32 * idx) + _6024 + 160] = mem[(32 * idx) + 128]
                                            idx = idx + 1
                                            continue 
                    else:
                        _6022 = mem[64]
                        mem[mem[64]] = 5
                        mem[64] = mem[64] + 192
                        if mem[_6022]:
                            mem[_6022 + 32] = stor4
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 1 < mem[_6022]:
                                mem[_6022 + 64] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 < mem[_6022]:
                                    mem[_6022 + 96] = ext_call.return_data[12 len 20]
                                    if 3 < mem[_6022]:
                                        mem[_6022 + 128] = arg2
                                        if 4 < mem[_6022]:
                                            mem[_6022 + 160] = arg1
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
                                            mem[_6022 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                            mem[_6022 + 228] = arg3
                                            mem[_6022 + 196] = 64
                                            mem[_6022 + 260] = mem[_6022]
                                            idx = 0
                                            while idx < 32 * mem[_6022]:
                                                mem[idx + _6022 + 292] = mem[idx + _6022 + 32]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                    gas gas_remaining wei
                                                   args 64, arg3, mem[_6022 + 260 len (32 * mem[_6022]) + 32]
                                            mem[_6022 + 192 len 64] = ext_call.return_data[0 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 64
                                            mem[_5935 + 32] = ext_call.return_data[0]
                                            if 2 < mem[(32 * arg5.length) + 128]:
                                                mem[(32 * arg5.length) + 224] = _5935
                                                idx = 0
                                                s = 0
                                                t = 0
                                                while idx < mem[(32 * arg5.length) + 128]:
                                                    require idx < mem[(32 * arg5.length) + 128]
                                                    if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] < s:
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
                                                mem[_6022 + 192] = mem[96] + 1
                                                mem[64] = _6022 + (32 * mem[96] + 1) + 224
                                                if mem[96] + 1:
                                                    mem[_6022 + 224 len 32 * mem[96] + 1] = code.data[11851 len 32 * mem[96] + 1]
                                                idx = 0
                                                while idx < mem[96]:
                                                    require idx < mem[96]
                                                    require idx < mem[_6022 + 192]
                                                    require mem[(32 * idx) + 128] <= 2
                                                    mem[(32 * idx) + _6022 + 224] = mem[(32 * idx) + 128]
                                                    idx = idx + 1
                                                    continue 
                revert
            _4452 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4452] = 1
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
                mem[_4452 + 32] = 0
                if 1 < mem[(32 * arg5.length) + 128]:
                    mem[(32 * arg5.length) + 192] = _4452
                    idx = 0
                    while idx < mem[96]:
                        require idx < mem[96]
                        require mem[(32 * idx) + 128] <= 2
                        if mem[(32 * idx) + 128] != 2:
                            idx = idx + 1
                            continue 
                        _5971 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5971] = 2
                        mem[_5971 + 32] = 0
                        require 2 < mem[(32 * arg5.length) + 128]
                        mem[(32 * arg5.length) + 224] = _5971
                        idx = 0
                        s = 0
                        t = 0
                        while idx < mem[(32 * arg5.length) + 128]:
                            require idx < mem[(32 * arg5.length) + 128]
                            if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] < s:
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
                        _7416 = mem[96]
                        _7417 = mem[64]
                        mem[mem[64]] = mem[96] + 1
                        mem[64] = mem[64] + (32 * _7416 + 1) + 32
                        if not _7416 + 1:
                            _8220 = mem[96]
                            idx = 0
                            while idx < _8220:
                                require idx < mem[96]
                                require idx < mem[_7417]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _7417 + 32] = mem[(32 * idx) + 128]
                                idx = idx + 1
                                continue 
                        else:
                            mem[_7417 + 32 len 32 * _7416 + 1] = code.data[11851 len 32 * _7416 + 1]
                            _8221 = mem[96]
                            idx = 0
                            while idx < _8221:
                                require idx < mem[96]
                                require idx < mem[_7417]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _7417 + 32] = mem[(32 * idx) + 128]
                                idx = idx + 1
                                continue 
                        revert
                    _5933 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5933] = 2
                    if not arg2:
                        mem[_5933 + 32] = 0
                        if 2 < mem[(32 * arg5.length) + 128]:
                            mem[(32 * arg5.length) + 224] = _5933
                            idx = 0
                            s = 0
                            t = 0
                            while idx < mem[(32 * arg5.length) + 128]:
                                require idx < mem[(32 * arg5.length) + 128]
                                if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] < s:
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
                            _7412 = mem[96]
                            _7413 = mem[64]
                            mem[mem[64]] = mem[96] + 1
                            mem[64] = mem[64] + (32 * _7412 + 1) + 32
                            if not _7412 + 1:
                                _8216 = mem[96]
                                idx = 0
                                while idx < _8216:
                                    require idx < mem[96]
                                    require idx < mem[_7413]
                                    require mem[(32 * idx) + 128] <= 2
                                    mem[(32 * idx) + _7413 + 32] = mem[(32 * idx) + 128]
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[_7413 + 32 len 32 * _7412 + 1] = code.data[11851 len 32 * _7412 + 1]
                                _8217 = mem[96]
                                idx = 0
                                while idx < _8217:
                                    require idx < mem[96]
                                    require idx < mem[_7413]
                                    require mem[(32 * idx) + 128] <= 2
                                    mem[(32 * idx) + _7413 + 32] = mem[(32 * idx) + 128]
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
                            _6016 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if mem[_6016]:
                                mem[_6016 + 32] = stor4
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 1 < mem[_6016]:
                                    mem[_6016 + 64] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).token() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 < mem[_6016]:
                                        mem[_6016 + 96] = ext_call.return_data[12 len 20]
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
                                        mem[_6016 + 128] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                        mem[_6016 + 164] = arg3
                                        mem[_6016 + 132] = 64
                                        mem[_6016 + 196] = mem[_6016]
                                        mem[_6016 + 228 len floor32(mem[_6016])] = mem[_6016 + 32 len floor32(mem[_6016])]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                gas gas_remaining wei
                                               args 64, arg3, mem[_6016 + 196 len (32 * mem[_6016]) + 32]
                                        mem[_6016 + 128 len 64] = ext_call.return_data[0 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 64
                                        mem[_5933 + 32] = ext_call.return_data[0]
                                        if 2 < mem[(32 * arg5.length) + 128]:
                                            mem[(32 * arg5.length) + 224] = _5933
                                            idx = 0
                                            s = 0
                                            t = 0
                                            while idx < mem[(32 * arg5.length) + 128]:
                                                require idx < mem[(32 * arg5.length) + 128]
                                                if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] < s:
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
                                            mem[_6016 + 128] = mem[96] + 1
                                            mem[64] = _6016 + (32 * mem[96] + 1) + 160
                                            if mem[96] + 1:
                                                mem[_6016 + 160 len 32 * mem[96] + 1] = code.data[11851 len 32 * mem[96] + 1]
                                            idx = 0
                                            while idx < mem[96]:
                                                require idx < mem[96]
                                                require idx < mem[_6016 + 128]
                                                require mem[(32 * idx) + 128] <= 2
                                                mem[(32 * idx) + _6016 + 160] = mem[(32 * idx) + 128]
                                                idx = idx + 1
                                                continue 
                        else:
                            _6014 = mem[64]
                            mem[mem[64]] = 5
                            mem[64] = mem[64] + 192
                            if mem[_6014]:
                                mem[_6014 + 32] = stor4
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 1 < mem[_6014]:
                                    mem[_6014 + 64] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).token() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 < mem[_6014]:
                                        mem[_6014 + 96] = ext_call.return_data[12 len 20]
                                        if 3 < mem[_6014]:
                                            mem[_6014 + 128] = arg2
                                            if 4 < mem[_6014]:
                                                mem[_6014 + 160] = arg1
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
                                                mem[_6014 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                                mem[_6014 + 228] = arg3
                                                mem[_6014 + 196] = 64
                                                mem[_6014 + 260] = mem[_6014]
                                                mem[_6014 + 292 len floor32(mem[_6014])] = mem[_6014 + 32 len floor32(mem[_6014])]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 64, arg3, mem[_6014 + 260 len (32 * mem[_6014]) + 32]
                                                mem[_6014 + 192 len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 64
                                                mem[_5933 + 32] = ext_call.return_data[0]
                                                if 2 < mem[(32 * arg5.length) + 128]:
                                                    mem[(32 * arg5.length) + 224] = _5933
                                                    idx = 0
                                                    s = 0
                                                    t = 0
                                                    while idx < mem[(32 * arg5.length) + 128]:
                                                        require idx < mem[(32 * arg5.length) + 128]
                                                        if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] < s:
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
                                                    mem[_6014 + 192] = mem[96] + 1
                                                    mem[64] = _6014 + (32 * mem[96] + 1) + 224
                                                    if mem[96] + 1:
                                                        mem[_6014 + 224 len 32 * mem[96] + 1] = code.data[11851 len 32 * mem[96] + 1]
                                                    idx = 0
                                                    while idx < mem[96]:
                                                        require idx < mem[96]
                                                        require idx < mem[_6014 + 192]
                                                        require mem[(32 * idx) + 128] <= 2
                                                        mem[(32 * idx) + _6014 + 224] = mem[(32 * idx) + 128]
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
                mem[_4452 + 32] = ext_call.return_data[0]
                if 1 < mem[(32 * arg5.length) + 128]:
                    mem[(32 * arg5.length) + 192] = _4452
                    idx = 0
                    while idx < mem[96]:
                        require idx < mem[96]
                        require mem[(32 * idx) + 128] <= 2
                        if mem[(32 * idx) + 128] != 2:
                            idx = idx + 1
                            continue 
                        _5975 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5975] = 2
                        mem[_5975 + 32] = 0
                        require 2 < mem[(32 * arg5.length) + 128]
                        mem[(32 * arg5.length) + 224] = _5975
                        idx = 0
                        s = 0
                        t = 0
                        while idx < mem[(32 * arg5.length) + 128]:
                            require idx < mem[(32 * arg5.length) + 128]
                            if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] < s:
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
                        _7424 = mem[96]
                        _7425 = mem[64]
                        mem[mem[64]] = mem[96] + 1
                        mem[64] = mem[64] + (32 * _7424 + 1) + 32
                        if not _7424 + 1:
                            _8226 = mem[96]
                            idx = 0
                            while idx < _8226:
                                require idx < mem[96]
                                require idx < mem[_7425]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _7425 + 32] = mem[(32 * idx) + 128]
                                idx = idx + 1
                                continue 
                        else:
                            mem[_7425 + 32 len 32 * _7424 + 1] = code.data[11851 len 32 * _7424 + 1]
                            _8227 = mem[96]
                            idx = 0
                            while idx < _8227:
                                require idx < mem[96]
                                require idx < mem[_7425]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _7425 + 32] = mem[(32 * idx) + 128]
                                idx = idx + 1
                                continue 
                        revert
                    _5934 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5934] = 2
                    if not arg2:
                        mem[_5934 + 32] = 0
                        if 2 < mem[(32 * arg5.length) + 128]:
                            mem[(32 * arg5.length) + 224] = _5934
                            idx = 0
                            s = 0
                            t = 0
                            while idx < mem[(32 * arg5.length) + 128]:
                                require idx < mem[(32 * arg5.length) + 128]
                                if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] < s:
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
                            _7420 = mem[96]
                            _7421 = mem[64]
                            mem[mem[64]] = mem[96] + 1
                            mem[64] = mem[64] + (32 * _7420 + 1) + 32
                            if not _7420 + 1:
                                _8222 = mem[96]
                                idx = 0
                                while idx < _8222:
                                    require idx < mem[96]
                                    require idx < mem[_7421]
                                    require mem[(32 * idx) + 128] <= 2
                                    mem[(32 * idx) + _7421 + 32] = mem[(32 * idx) + 128]
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[_7421 + 32 len 32 * _7420 + 1] = code.data[11851 len 32 * _7420 + 1]
                                _8223 = mem[96]
                                idx = 0
                                while idx < _8223:
                                    require idx < mem[96]
                                    require idx < mem[_7421]
                                    require mem[(32 * idx) + 128] <= 2
                                    mem[(32 * idx) + _7421 + 32] = mem[(32 * idx) + 128]
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
                            _6020 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if mem[_6020]:
                                mem[_6020 + 32] = stor4
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 1 < mem[_6020]:
                                    mem[_6020 + 64] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).token() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 < mem[_6020]:
                                        mem[_6020 + 96] = ext_call.return_data[12 len 20]
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
                                        mem[_6020 + 128] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                        mem[_6020 + 164] = arg3
                                        mem[_6020 + 132] = 64
                                        mem[_6020 + 196] = mem[_6020]
                                        mem[_6020 + 228 len floor32(mem[_6020])] = mem[_6020 + 32 len floor32(mem[_6020])]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                gas gas_remaining wei
                                               args 64, arg3, mem[_6020 + 196 len (32 * mem[_6020]) + 32]
                                        mem[_6020 + 128 len 64] = ext_call.return_data[0 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 64
                                        mem[_5934 + 32] = ext_call.return_data[0]
                                        if 2 < mem[(32 * arg5.length) + 128]:
                                            mem[(32 * arg5.length) + 224] = _5934
                                            idx = 0
                                            s = 0
                                            t = 0
                                            while idx < mem[(32 * arg5.length) + 128]:
                                                require idx < mem[(32 * arg5.length) + 128]
                                                if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] < s:
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
                                            mem[_6020 + 128] = mem[96] + 1
                                            mem[64] = _6020 + (32 * mem[96] + 1) + 160
                                            if mem[96] + 1:
                                                mem[_6020 + 160 len 32 * mem[96] + 1] = code.data[11851 len 32 * mem[96] + 1]
                                            idx = 0
                                            while idx < mem[96]:
                                                require idx < mem[96]
                                                require idx < mem[_6020 + 128]
                                                require mem[(32 * idx) + 128] <= 2
                                                mem[(32 * idx) + _6020 + 160] = mem[(32 * idx) + 128]
                                                idx = idx + 1
                                                continue 
                        else:
                            _6018 = mem[64]
                            mem[mem[64]] = 5
                            mem[64] = mem[64] + 192
                            if mem[_6018]:
                                mem[_6018 + 32] = stor4
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 1 < mem[_6018]:
                                    mem[_6018 + 64] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).token() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 < mem[_6018]:
                                        mem[_6018 + 96] = ext_call.return_data[12 len 20]
                                        if 3 < mem[_6018]:
                                            mem[_6018 + 128] = arg2
                                            if 4 < mem[_6018]:
                                                mem[_6018 + 160] = arg1
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
                                                mem[_6018 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                                mem[_6018 + 228] = arg3
                                                mem[_6018 + 196] = 64
                                                mem[_6018 + 260] = mem[_6018]
                                                mem[_6018 + 292 len floor32(mem[_6018])] = mem[_6018 + 32 len floor32(mem[_6018])]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 64, arg3, mem[_6018 + 260 len (32 * mem[_6018]) + 32]
                                                mem[_6018 + 192 len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 64
                                                mem[_5934 + 32] = ext_call.return_data[0]
                                                if 2 < mem[(32 * arg5.length) + 128]:
                                                    mem[(32 * arg5.length) + 224] = _5934
                                                    idx = 0
                                                    s = 0
                                                    t = 0
                                                    while idx < mem[(32 * arg5.length) + 128]:
                                                        require idx < mem[(32 * arg5.length) + 128]
                                                        if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] < s:
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
                                                    mem[_6018 + 192] = mem[96] + 1
                                                    mem[64] = _6018 + (32 * mem[96] + 1) + 224
                                                    if mem[96] + 1:
                                                        mem[_6018 + 224 len 32 * mem[96] + 1] = code.data[11851 len 32 * mem[96] + 1]
                                                    idx = 0
                                                    while idx < mem[96]:
                                                        require idx < mem[96]
                                                        require idx < mem[_6018 + 192]
                                                        require mem[(32 * idx) + 128] <= 2
                                                        mem[(32 * idx) + _6018 + 224] = mem[(32 * idx) + 128]
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
        mem[_2967 + 32] = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
        if 0 < mem[(32 * arg5.length) + 128]:
            mem[(32 * arg5.length) + 160] = _2967
            idx = 0
            while idx < mem[96]:
                require idx < mem[96]
                require mem[(32 * idx) + 128] <= 2
                if mem[(32 * idx) + 128] != 1:
                    idx = idx + 1
                    continue 
                _4461 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4461] = 1
                mem[_4461 + 32] = 0
                require 1 < mem[(32 * arg5.length) + 128]
                mem[(32 * arg5.length) + 192] = _4461
                idx = 0
                while idx < mem[96]:
                    require idx < mem[96]
                    require mem[(32 * idx) + 128] <= 2
                    if mem[(32 * idx) + 128] != 2:
                        idx = idx + 1
                        continue 
                    _5967 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5967] = 2
                    mem[_5967 + 32] = 0
                    require 2 < mem[(32 * arg5.length) + 128]
                    mem[(32 * arg5.length) + 224] = _5967
                    idx = 0
                    s = 0
                    t = 0
                    while idx < mem[(32 * arg5.length) + 128]:
                        require idx < mem[(32 * arg5.length) + 128]
                        if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] < s:
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
                    _7408 = mem[96]
                    _7409 = mem[64]
                    mem[mem[64]] = mem[96] + 1
                    mem[64] = mem[64] + (32 * _7408 + 1) + 32
                    if not _7408 + 1:
                        _8214 = mem[96]
                        idx = 0
                        while idx < _8214:
                            require idx < mem[96]
                            require idx < mem[_7409]
                            require mem[(32 * idx) + 128] <= 2
                            mem[(32 * idx) + _7409 + 32] = mem[(32 * idx) + 128]
                            idx = idx + 1
                            continue 
                    else:
                        mem[_7409 + 32 len 32 * _7408 + 1] = code.data[11851 len 32 * _7408 + 1]
                        _8215 = mem[96]
                        idx = 0
                        while idx < _8215:
                            require idx < mem[96]
                            require idx < mem[_7409]
                            require mem[(32 * idx) + 128] <= 2
                            mem[(32 * idx) + _7409 + 32] = mem[(32 * idx) + 128]
                            idx = idx + 1
                            continue 
                    revert
                _5932 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5932] = 2
                if not arg2:
                    mem[_5932 + 32] = 0
                    if 2 < mem[(32 * arg5.length) + 128]:
                        mem[(32 * arg5.length) + 224] = _5932
                        idx = 0
                        s = 0
                        t = 0
                        while idx < mem[(32 * arg5.length) + 128]:
                            require idx < mem[(32 * arg5.length) + 128]
                            if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] < s:
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
                        _7404 = mem[96]
                        _7405 = mem[64]
                        mem[mem[64]] = mem[96] + 1
                        mem[64] = mem[64] + (32 * _7404 + 1) + 32
                        if not _7404 + 1:
                            _8210 = mem[96]
                            idx = 0
                            while idx < _8210:
                                require idx < mem[96]
                                require idx < mem[_7405]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _7405 + 32] = mem[(32 * idx) + 128]
                                idx = idx + 1
                                continue 
                        else:
                            mem[_7405 + 32 len 32 * _7404 + 1] = code.data[11851 len 32 * _7404 + 1]
                            _8211 = mem[96]
                            idx = 0
                            while idx < _8211:
                                require idx < mem[96]
                                require idx < mem[_7405]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _7405 + 32] = mem[(32 * idx) + 128]
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
                        _6012 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if mem[_6012]:
                            mem[_6012 + 32] = stor4
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 1 < mem[_6012]:
                                mem[_6012 + 64] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 < mem[_6012]:
                                    mem[_6012 + 96] = ext_call.return_data[12 len 20]
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
                                    mem[_6012 + 128] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                    mem[_6012 + 164] = arg3
                                    mem[_6012 + 132] = 64
                                    mem[_6012 + 196] = mem[_6012]
                                    idx = 0
                                    while idx < 32 * mem[_6012]:
                                        mem[idx + _6012 + 228] = mem[idx + _6012 + 32]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                            gas gas_remaining wei
                                           args 64, arg3, mem[_6012 + 196 len (32 * mem[_6012]) + 32]
                                    mem[_6012 + 128 len 64] = ext_call.return_data[0 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 64
                                    mem[_5932 + 32] = ext_call.return_data[0]
                                    if 2 < mem[(32 * arg5.length) + 128]:
                                        mem[(32 * arg5.length) + 224] = _5932
                                        idx = 0
                                        s = 0
                                        t = 0
                                        while idx < mem[(32 * arg5.length) + 128]:
                                            require idx < mem[(32 * arg5.length) + 128]
                                            if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] < s:
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
                                        mem[_6012 + 128] = mem[96] + 1
                                        mem[64] = _6012 + (32 * mem[96] + 1) + 160
                                        if mem[96] + 1:
                                            mem[_6012 + 160 len 32 * mem[96] + 1] = code.data[11851 len 32 * mem[96] + 1]
                                        idx = 0
                                        while idx < mem[96]:
                                            require idx < mem[96]
                                            require idx < mem[_6012 + 128]
                                            require mem[(32 * idx) + 128] <= 2
                                            mem[(32 * idx) + _6012 + 160] = mem[(32 * idx) + 128]
                                            idx = idx + 1
                                            continue 
                    else:
                        _6010 = mem[64]
                        mem[mem[64]] = 5
                        mem[64] = mem[64] + 192
                        if mem[_6010]:
                            mem[_6010 + 32] = stor4
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 1 < mem[_6010]:
                                mem[_6010 + 64] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 < mem[_6010]:
                                    mem[_6010 + 96] = ext_call.return_data[12 len 20]
                                    if 3 < mem[_6010]:
                                        mem[_6010 + 128] = arg2
                                        if 4 < mem[_6010]:
                                            mem[_6010 + 160] = arg1
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
                                            mem[_6010 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                            mem[_6010 + 228] = arg3
                                            mem[_6010 + 196] = 64
                                            mem[_6010 + 260] = mem[_6010]
                                            idx = 0
                                            while idx < 32 * mem[_6010]:
                                                mem[idx + _6010 + 292] = mem[idx + _6010 + 32]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                    gas gas_remaining wei
                                                   args 64, arg3, mem[_6010 + 260 len (32 * mem[_6010]) + 32]
                                            mem[_6010 + 192 len 64] = ext_call.return_data[0 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 64
                                            mem[_5932 + 32] = ext_call.return_data[0]
                                            if 2 < mem[(32 * arg5.length) + 128]:
                                                mem[(32 * arg5.length) + 224] = _5932
                                                idx = 0
                                                s = 0
                                                t = 0
                                                while idx < mem[(32 * arg5.length) + 128]:
                                                    require idx < mem[(32 * arg5.length) + 128]
                                                    if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] < s:
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
                                                mem[_6010 + 192] = mem[96] + 1
                                                mem[64] = _6010 + (32 * mem[96] + 1) + 224
                                                if mem[96] + 1:
                                                    mem[_6010 + 224 len 32 * mem[96] + 1] = code.data[11851 len 32 * mem[96] + 1]
                                                idx = 0
                                                while idx < mem[96]:
                                                    require idx < mem[96]
                                                    require idx < mem[_6010 + 192]
                                                    require mem[(32 * idx) + 128] <= 2
                                                    mem[(32 * idx) + _6010 + 224] = mem[(32 * idx) + 128]
                                                    idx = idx + 1
                                                    continue 
                revert
            _4451 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4451] = 1
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
                mem[_4451 + 32] = 0
                if 1 < mem[(32 * arg5.length) + 128]:
                    mem[(32 * arg5.length) + 192] = _4451
                    idx = 0
                    while idx < mem[96]:
                        require idx < mem[96]
                        require mem[(32 * idx) + 128] <= 2
                        if mem[(32 * idx) + 128] != 2:
                            idx = idx + 1
                            continue 
                        _5959 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5959] = 2
                        mem[_5959 + 32] = 0
                        require 2 < mem[(32 * arg5.length) + 128]
                        mem[(32 * arg5.length) + 224] = _5959
                        idx = 0
                        s = 0
                        t = 0
                        while idx < mem[(32 * arg5.length) + 128]:
                            require idx < mem[(32 * arg5.length) + 128]
                            if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] < s:
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
                        _7392 = mem[96]
                        _7393 = mem[64]
                        mem[mem[64]] = mem[96] + 1
                        mem[64] = mem[64] + (32 * _7392 + 1) + 32
                        if not _7392 + 1:
                            _8202 = mem[96]
                            idx = 0
                            while idx < _8202:
                                require idx < mem[96]
                                require idx < mem[_7393]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _7393 + 32] = mem[(32 * idx) + 128]
                                idx = idx + 1
                                continue 
                        else:
                            mem[_7393 + 32 len 32 * _7392 + 1] = code.data[11851 len 32 * _7392 + 1]
                            _8203 = mem[96]
                            idx = 0
                            while idx < _8203:
                                require idx < mem[96]
                                require idx < mem[_7393]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _7393 + 32] = mem[(32 * idx) + 128]
                                idx = idx + 1
                                continue 
                        revert
                    _5930 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5930] = 2
                    if not arg2:
                        mem[_5930 + 32] = 0
                        if 2 < mem[(32 * arg5.length) + 128]:
                            mem[(32 * arg5.length) + 224] = _5930
                            idx = 0
                            s = 0
                            t = 0
                            while idx < mem[(32 * arg5.length) + 128]:
                                require idx < mem[(32 * arg5.length) + 128]
                                if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] < s:
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
                            _7388 = mem[96]
                            _7389 = mem[64]
                            mem[mem[64]] = mem[96] + 1
                            mem[64] = mem[64] + (32 * _7388 + 1) + 32
                            if not _7388 + 1:
                                _8198 = mem[96]
                                idx = 0
                                while idx < _8198:
                                    require idx < mem[96]
                                    require idx < mem[_7389]
                                    require mem[(32 * idx) + 128] <= 2
                                    mem[(32 * idx) + _7389 + 32] = mem[(32 * idx) + 128]
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[_7389 + 32 len 32 * _7388 + 1] = code.data[11851 len 32 * _7388 + 1]
                                _8199 = mem[96]
                                idx = 0
                                while idx < _8199:
                                    require idx < mem[96]
                                    require idx < mem[_7389]
                                    require mem[(32 * idx) + 128] <= 2
                                    mem[(32 * idx) + _7389 + 32] = mem[(32 * idx) + 128]
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
                            _6004 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if mem[_6004]:
                                mem[_6004 + 32] = stor4
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 1 < mem[_6004]:
                                    mem[_6004 + 64] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).token() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 < mem[_6004]:
                                        mem[_6004 + 96] = ext_call.return_data[12 len 20]
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
                                        mem[_6004 + 128] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                        mem[_6004 + 164] = arg3
                                        mem[_6004 + 132] = 64
                                        mem[_6004 + 196] = mem[_6004]
                                        mem[_6004 + 228 len floor32(mem[_6004])] = mem[_6004 + 32 len floor32(mem[_6004])]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                gas gas_remaining wei
                                               args 64, arg3, mem[_6004 + 196 len (32 * mem[_6004]) + 32]
                                        mem[_6004 + 128 len 64] = ext_call.return_data[0 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 64
                                        mem[_5930 + 32] = ext_call.return_data[0]
                                        if 2 < mem[(32 * arg5.length) + 128]:
                                            mem[(32 * arg5.length) + 224] = _5930
                                            idx = 0
                                            s = 0
                                            t = 0
                                            while idx < mem[(32 * arg5.length) + 128]:
                                                require idx < mem[(32 * arg5.length) + 128]
                                                if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] < s:
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
                                            mem[_6004 + 128] = mem[96] + 1
                                            mem[64] = _6004 + (32 * mem[96] + 1) + 160
                                            if mem[96] + 1:
                                                mem[_6004 + 160 len 32 * mem[96] + 1] = code.data[11851 len 32 * mem[96] + 1]
                                            idx = 0
                                            while idx < mem[96]:
                                                require idx < mem[96]
                                                require idx < mem[_6004 + 128]
                                                require mem[(32 * idx) + 128] <= 2
                                                mem[(32 * idx) + _6004 + 160] = mem[(32 * idx) + 128]
                                                idx = idx + 1
                                                continue 
                        else:
                            _6002 = mem[64]
                            mem[mem[64]] = 5
                            mem[64] = mem[64] + 192
                            if mem[_6002]:
                                mem[_6002 + 32] = stor4
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 1 < mem[_6002]:
                                    mem[_6002 + 64] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).token() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 < mem[_6002]:
                                        mem[_6002 + 96] = ext_call.return_data[12 len 20]
                                        if 3 < mem[_6002]:
                                            mem[_6002 + 128] = arg2
                                            if 4 < mem[_6002]:
                                                mem[_6002 + 160] = arg1
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
                                                mem[_6002 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                                mem[_6002 + 228] = arg3
                                                mem[_6002 + 196] = 64
                                                mem[_6002 + 260] = mem[_6002]
                                                mem[_6002 + 292 len floor32(mem[_6002])] = mem[_6002 + 32 len floor32(mem[_6002])]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 64, arg3, mem[_6002 + 260 len (32 * mem[_6002]) + 32]
                                                mem[_6002 + 192 len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 64
                                                mem[_5930 + 32] = ext_call.return_data[0]
                                                if 2 < mem[(32 * arg5.length) + 128]:
                                                    mem[(32 * arg5.length) + 224] = _5930
                                                    idx = 0
                                                    s = 0
                                                    t = 0
                                                    while idx < mem[(32 * arg5.length) + 128]:
                                                        require idx < mem[(32 * arg5.length) + 128]
                                                        if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] < s:
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
                                                    mem[_6002 + 192] = mem[96] + 1
                                                    mem[64] = _6002 + (32 * mem[96] + 1) + 224
                                                    if mem[96] + 1:
                                                        mem[_6002 + 224 len 32 * mem[96] + 1] = code.data[11851 len 32 * mem[96] + 1]
                                                    idx = 0
                                                    while idx < mem[96]:
                                                        require idx < mem[96]
                                                        require idx < mem[_6002 + 192]
                                                        require mem[(32 * idx) + 128] <= 2
                                                        mem[(32 * idx) + _6002 + 224] = mem[(32 * idx) + 128]
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
                mem[_4451 + 32] = ext_call.return_data[0]
                if 1 < mem[(32 * arg5.length) + 128]:
                    mem[(32 * arg5.length) + 192] = _4451
                    idx = 0
                    while idx < mem[96]:
                        require idx < mem[96]
                        require mem[(32 * idx) + 128] <= 2
                        if mem[(32 * idx) + 128] != 2:
                            idx = idx + 1
                            continue 
                        _5963 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5963] = 2
                        mem[_5963 + 32] = 0
                        require 2 < mem[(32 * arg5.length) + 128]
                        mem[(32 * arg5.length) + 224] = _5963
                        idx = 0
                        s = 0
                        t = 0
                        while idx < mem[(32 * arg5.length) + 128]:
                            require idx < mem[(32 * arg5.length) + 128]
                            if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] < s:
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
                        _7400 = mem[96]
                        _7401 = mem[64]
                        mem[mem[64]] = mem[96] + 1
                        mem[64] = mem[64] + (32 * _7400 + 1) + 32
                        if not _7400 + 1:
                            _8208 = mem[96]
                            idx = 0
                            while idx < _8208:
                                require idx < mem[96]
                                require idx < mem[_7401]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _7401 + 32] = mem[(32 * idx) + 128]
                                idx = idx + 1
                                continue 
                        else:
                            mem[_7401 + 32 len 32 * _7400 + 1] = code.data[11851 len 32 * _7400 + 1]
                            _8209 = mem[96]
                            idx = 0
                            while idx < _8209:
                                require idx < mem[96]
                                require idx < mem[_7401]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _7401 + 32] = mem[(32 * idx) + 128]
                                idx = idx + 1
                                continue 
                        revert
                    _5931 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5931] = 2
                    if not arg2:
                        mem[_5931 + 32] = 0
                        if 2 < mem[(32 * arg5.length) + 128]:
                            mem[(32 * arg5.length) + 224] = _5931
                            idx = 0
                            s = 0
                            t = 0
                            while idx < mem[(32 * arg5.length) + 128]:
                                require idx < mem[(32 * arg5.length) + 128]
                                if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] < s:
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
                            _7396 = mem[96]
                            _7397 = mem[64]
                            mem[mem[64]] = mem[96] + 1
                            mem[64] = mem[64] + (32 * _7396 + 1) + 32
                            if not _7396 + 1:
                                _8204 = mem[96]
                                idx = 0
                                while idx < _8204:
                                    require idx < mem[96]
                                    require idx < mem[_7397]
                                    require mem[(32 * idx) + 128] <= 2
                                    mem[(32 * idx) + _7397 + 32] = mem[(32 * idx) + 128]
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[_7397 + 32 len 32 * _7396 + 1] = code.data[11851 len 32 * _7396 + 1]
                                _8205 = mem[96]
                                idx = 0
                                while idx < _8205:
                                    require idx < mem[96]
                                    require idx < mem[_7397]
                                    require mem[(32 * idx) + 128] <= 2
                                    mem[(32 * idx) + _7397 + 32] = mem[(32 * idx) + 128]
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
                            _6008 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if mem[_6008]:
                                mem[_6008 + 32] = stor4
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 1 < mem[_6008]:
                                    mem[_6008 + 64] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).token() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 < mem[_6008]:
                                        mem[_6008 + 96] = ext_call.return_data[12 len 20]
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
                                        mem[_6008 + 128] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                        mem[_6008 + 164] = arg3
                                        mem[_6008 + 132] = 64
                                        mem[_6008 + 196] = mem[_6008]
                                        mem[_6008 + 228 len floor32(mem[_6008])] = mem[_6008 + 32 len floor32(mem[_6008])]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                gas gas_remaining wei
                                               args 64, arg3, mem[_6008 + 196 len (32 * mem[_6008]) + 32]
                                        mem[_6008 + 128 len 64] = ext_call.return_data[0 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 64
                                        mem[_5931 + 32] = ext_call.return_data[0]
                                        if 2 < mem[(32 * arg5.length) + 128]:
                                            mem[(32 * arg5.length) + 224] = _5931
                                            idx = 0
                                            s = 0
                                            t = 0
                                            while idx < mem[(32 * arg5.length) + 128]:
                                                require idx < mem[(32 * arg5.length) + 128]
                                                if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] < s:
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
                                            mem[_6008 + 128] = mem[96] + 1
                                            mem[64] = _6008 + (32 * mem[96] + 1) + 160
                                            if mem[96] + 1:
                                                mem[_6008 + 160 len 32 * mem[96] + 1] = code.data[11851 len 32 * mem[96] + 1]
                                            idx = 0
                                            while idx < mem[96]:
                                                require idx < mem[96]
                                                require idx < mem[_6008 + 128]
                                                require mem[(32 * idx) + 128] <= 2
                                                mem[(32 * idx) + _6008 + 160] = mem[(32 * idx) + 128]
                                                idx = idx + 1
                                                continue 
                        else:
                            _6006 = mem[64]
                            mem[mem[64]] = 5
                            mem[64] = mem[64] + 192
                            if mem[_6006]:
                                mem[_6006 + 32] = stor4
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 1 < mem[_6006]:
                                    mem[_6006 + 64] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).token() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 < mem[_6006]:
                                        mem[_6006 + 96] = ext_call.return_data[12 len 20]
                                        if 3 < mem[_6006]:
                                            mem[_6006 + 128] = arg2
                                            if 4 < mem[_6006]:
                                                mem[_6006 + 160] = arg1
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
                                                mem[_6006 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                                mem[_6006 + 228] = arg3
                                                mem[_6006 + 196] = 64
                                                mem[_6006 + 260] = mem[_6006]
                                                mem[_6006 + 292 len floor32(mem[_6006])] = mem[_6006 + 32 len floor32(mem[_6006])]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 64, arg3, mem[_6006 + 260 len (32 * mem[_6006]) + 32]
                                                mem[_6006 + 192 len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 64
                                                mem[_5931 + 32] = ext_call.return_data[0]
                                                if 2 < mem[(32 * arg5.length) + 128]:
                                                    mem[(32 * arg5.length) + 224] = _5931
                                                    idx = 0
                                                    s = 0
                                                    t = 0
                                                    while idx < mem[(32 * arg5.length) + 128]:
                                                        require idx < mem[(32 * arg5.length) + 128]
                                                        if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] < s:
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
                                                    mem[_6006 + 192] = mem[96] + 1
                                                    mem[64] = _6006 + (32 * mem[96] + 1) + 224
                                                    if mem[96] + 1:
                                                        mem[_6006 + 224 len 32 * mem[96] + 1] = code.data[11851 len 32 * mem[96] + 1]
                                                    idx = 0
                                                    while idx < mem[96]:
                                                        require idx < mem[96]
                                                        require idx < mem[_6006 + 192]
                                                        require mem[(32 * idx) + 128] <= 2
                                                        mem[(32 * idx) + _6006 + 224] = mem[(32 * idx) + 128]
                                                        idx = idx + 1
                                                        continue 
    revert
}



}
