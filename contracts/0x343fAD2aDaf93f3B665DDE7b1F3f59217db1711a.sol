contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function getOutputAmount(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(stor0)
    staticcall stor0.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if stor1 == stor1:
        if arg2 == stor1:
            return (10^18 * ext_call.return_data[0] / 10^18)
        require ext_code.size(arg2)
        staticcall arg2.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return (ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^18)
    require ext_code.size(stor1)
    staticcall stor1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 == stor1:
        if 10^ext_call.return_data[31 len 1]:
            return (10^18 * ext_call.return_data[0] / 10^ext_call.return_data[31 len 1])
    else:
        require ext_code.size(arg2)
        staticcall arg2.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 10^uint8(ext_call.return_data[0]):
            return (ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]))
    revert
}

function sub_96126204(?) payable {
    require calldata.size - 4 >= 96
    if arg1 == stor1:
        require ext_code.size(stor0)
        staticcall stor0.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args address(arg1), address(arg2), 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if stor1 == stor1:
            if arg2 == stor1:
                if 10^18 * ext_call.return_data[0] / 10^18:
                    require ext_code.size(stor0)
                    staticcall stor0.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args address(arg1), address(arg2), 10^18 * arg3 / 10^18 * ext_call.return_data[0] / 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if stor1 == stor1:
                        if arg2 == stor1:
                            if 10^18 * ext_call.return_data[0] / 10^18:
                                return (arg3 * 10^18 * arg3 / 10^18 * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18)
                        else:
                            require ext_code.size(arg2)
                            staticcall arg2.0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^18:
                                return (arg3 * 10^18 * arg3 / 10^18 * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^18)
                    else:
                        require ext_code.size(stor1)
                        staticcall stor1.0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 == stor1:
                            if 10^ext_call.return_data[31 len 1]:
                                if 10^18 * ext_call.return_data[0] / 10^ext_call.return_data[31 len 1]:
                                    return (arg3 * 10^18 * arg3 / 10^18 * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^ext_call.return_data[31 len 1])
                        else:
                            require ext_code.size(arg2)
                            staticcall arg2.0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 10^uint8(ext_call.return_data[0]):
                                if ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]):
                                    return (arg3 * 10^18 * arg3 / 10^18 * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]))
            else:
                require ext_code.size(arg2)
                staticcall arg2.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^18:
                    require ext_code.size(stor0)
                    staticcall stor0.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args address(arg1), address(arg2), 10^18 * arg3 / ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if stor1 == stor1:
                        if arg2 == stor1:
                            if 10^18 * ext_call.return_data[0] / 10^18:
                                return (arg3 * 10^18 * arg3 / ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18 * ext_call.return_data[0] / 10^18)
                        else:
                            require ext_code.size(arg2)
                            staticcall arg2.0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^18:
                                return (arg3 * 10^18 * arg3 / ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18 / ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^18)
                    else:
                        require ext_code.size(stor1)
                        staticcall stor1.0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 == stor1:
                            if 10^ext_call.return_data[31 len 1]:
                                if 10^18 * ext_call.return_data[0] / 10^ext_call.return_data[31 len 1]:
                                    return (arg3 * 10^18 * arg3 / ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18 * ext_call.return_data[0] / 10^ext_call.return_data[31 len 1])
                        else:
                            require ext_code.size(arg2)
                            staticcall arg2.0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 10^uint8(ext_call.return_data[0]):
                                if ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]):
                                    return (arg3 * 10^18 * arg3 / ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18 / ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]))
        else:
            require ext_code.size(stor1)
            staticcall stor1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg2 == stor1:
                if 10^ext_call.return_data[31 len 1]:
                    if 10^18 * ext_call.return_data[0] / 10^ext_call.return_data[31 len 1]:
                        require ext_code.size(stor0)
                        staticcall stor0.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args address(arg1), address(arg2), 10^18 * arg3 / 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if stor1 == stor1:
                            if arg2 == stor1:
                                if 10^18 * ext_call.return_data[0] / 10^18:
                                    return (arg3 * 10^18 * arg3 / 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18)
                            else:
                                require ext_code.size(arg2)
                                staticcall arg2.0x313ce567 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^18:
                                    return (arg3 * 10^18 * arg3 / 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^18)
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 == stor1:
                                if 10^ext_call.return_data[31 len 1]:
                                    if 10^18 * ext_call.return_data[0] / 10^ext_call.return_data[31 len 1]:
                                        return (arg3 * 10^18 * arg3 / 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^ext_call.return_data[31 len 1])
                            else:
                                require ext_code.size(arg2)
                                staticcall arg2.0x313ce567 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 10^uint8(ext_call.return_data[0]):
                                    if ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]):
                                        return (arg3 * 10^18 * arg3 / 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]))
            else:
                require ext_code.size(arg2)
                staticcall arg2.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 10^uint8(ext_call.return_data[0]):
                    if ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]):
                        require ext_code.size(stor0)
                        staticcall stor0.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args address(arg1), address(arg2), 10^18 * arg3 / ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if stor1 == stor1:
                            if arg2 == stor1:
                                if 10^18 * ext_call.return_data[0] / 10^18:
                                    return (arg3 * 10^18 * arg3 / ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18)
                            else:
                                require ext_code.size(arg2)
                                staticcall arg2.0x313ce567 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^18:
                                    return (arg3 * 10^18 * arg3 / ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^18)
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 == stor1:
                                if 10^ext_call.return_data[31 len 1]:
                                    if 10^18 * ext_call.return_data[0] / 10^ext_call.return_data[31 len 1]:
                                        return (arg3 * 10^18 * arg3 / ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^ext_call.return_data[31 len 1])
                            else:
                                require ext_code.size(arg2)
                                staticcall arg2.0x313ce567 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 10^uint8(ext_call.return_data[0]):
                                    if ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]):
                                        return (arg3 * 10^18 * arg3 / ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]))
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor0)
        staticcall stor0.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args address(arg1), address(arg2), 10^uint8(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if stor1 == stor1:
            if arg2 == stor1:
                if 10^18 * ext_call.return_data[0] / 10^18:
                    require ext_code.size(stor0)
                    staticcall stor0.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args address(arg1), address(arg2), arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if stor1 == stor1:
                        if arg2 == stor1:
                            if 10^18 * ext_call.return_data[0] / 10^18:
                                return (arg3 * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18)
                        else:
                            require ext_code.size(arg2)
                            staticcall arg2.0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^18:
                                return (arg3 * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^18)
                    else:
                        require ext_code.size(stor1)
                        staticcall stor1.0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 == stor1:
                            if 10^ext_call.return_data[31 len 1]:
                                if 10^18 * ext_call.return_data[0] / 10^ext_call.return_data[31 len 1]:
                                    return (arg3 * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^ext_call.return_data[31 len 1])
                        else:
                            require ext_code.size(arg2)
                            staticcall arg2.0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 10^uint8(ext_call.return_data[0]):
                                if ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]):
                                    return (arg3 * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]))
            else:
                require ext_code.size(arg2)
                staticcall arg2.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^18:
                    require ext_code.size(stor0)
                    staticcall stor0.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args address(arg1), address(arg2), arg3 * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if stor1 == stor1:
                        if arg2 == stor1:
                            if 10^18 * ext_call.return_data[0] / 10^18:
                                return (arg3 * arg3 * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18 * ext_call.return_data[0] / 10^18)
                        else:
                            require ext_code.size(arg2)
                            staticcall arg2.0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^18:
                                return (arg3 * arg3 * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18 / ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^18)
                    else:
                        require ext_code.size(stor1)
                        staticcall stor1.0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 == stor1:
                            if 10^ext_call.return_data[31 len 1]:
                                if 10^18 * ext_call.return_data[0] / 10^ext_call.return_data[31 len 1]:
                                    return (arg3 * arg3 * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18 * ext_call.return_data[0] / 10^ext_call.return_data[31 len 1])
                        else:
                            require ext_code.size(arg2)
                            staticcall arg2.0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 10^uint8(ext_call.return_data[0]):
                                if ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]):
                                    return (arg3 * arg3 * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18 / ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]))
        else:
            require ext_code.size(stor1)
            staticcall stor1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg2 == stor1:
                if 10^ext_call.return_data[31 len 1]:
                    if 10^18 * ext_call.return_data[0] / 10^ext_call.return_data[31 len 1]:
                        require ext_code.size(stor0)
                        staticcall stor0.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args address(arg1), address(arg2), arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if stor1 == stor1:
                            if arg2 == stor1:
                                if 10^18 * ext_call.return_data[0] / 10^18:
                                    return (arg3 * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18)
                            else:
                                require ext_code.size(arg2)
                                staticcall arg2.0x313ce567 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^18:
                                    return (arg3 * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^18)
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 == stor1:
                                if 10^ext_call.return_data[31 len 1]:
                                    if 10^18 * ext_call.return_data[0] / 10^ext_call.return_data[31 len 1]:
                                        return (arg3 * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^ext_call.return_data[31 len 1])
                            else:
                                require ext_code.size(arg2)
                                staticcall arg2.0x313ce567 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 10^uint8(ext_call.return_data[0]):
                                    if ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]):
                                        return (arg3 * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]))
            else:
                require ext_code.size(arg2)
                staticcall arg2.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 10^uint8(ext_call.return_data[0]):
                    if ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]):
                        require ext_code.size(stor0)
                        staticcall stor0.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args address(arg1), address(arg2), arg3 * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if stor1 == stor1:
                            if arg2 == stor1:
                                if 10^18 * ext_call.return_data[0] / 10^18:
                                    return (arg3 * arg3 * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18)
                            else:
                                require ext_code.size(arg2)
                                staticcall arg2.0x313ce567 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^18:
                                    return (arg3 * arg3 * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^18)
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 == stor1:
                                if 10^ext_call.return_data[31 len 1]:
                                    if 10^18 * ext_call.return_data[0] / 10^ext_call.return_data[31 len 1]:
                                        return (arg3 * arg3 * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^ext_call.return_data[31 len 1])
                            else:
                                require ext_code.size(arg2)
                                staticcall arg2.0x313ce567 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 10^uint8(ext_call.return_data[0]):
                                    if ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]):
                                        return (arg3 * arg3 * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]))
    revert
}



}
