contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function getReturnByPath(address[] arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require 0 < arg1.length
    _3 = mem[128]
    mem[(32 * arg1.length) + 132] = 'BancorFormula'
    require ext_code.size(stor0)
    staticcall stor0.getAddress(bytes32 arg1) with:
            gas gas_remaining wei
           args 'BancorFormula'
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 1
    s = 0
    t = _3
    u = 0
    v = arg2
    while idx < arg1.length:
        require idx < arg1.length
        _163 = mem[(32 * idx) + 128]
        require idx + 1 < arg1.length
        _165 = mem[(32 * idx + 1) + 128]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if mem[(32 * idx + 1) + 140 len 20] != mem[(32 * idx) + 140 len 20]:
            if address(t) != mem[(32 * idx) + 140 len 20]:
                mem[(32 * arg1.length) + 132] = address(t)
                mem[(32 * arg1.length) + 164] = address(_165)
                mem[(32 * arg1.length) + 196] = v
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args address(t), address(_165), v
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 2
                s = _163
                t = _165
                u = u
                v = ext_call.return_data[0]
                continue 
            if mem[(32 * idx) + 140 len 20] == address(s):
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getConnectorBalance(address arg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx + 1) + 128])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).connectors(address arg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx + 1) + 128])
                mem[(32 * arg1.length) + 128 len 160] = ext_call.return_data[0 len 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                mem[(32 * arg1.length) + 132] = u
                mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                mem[(32 * arg1.length) + 196] = uint32(ext_call.return_data[32])
                mem[(32 * arg1.length) + 228] = v
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).calculateSaleReturn(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) with:
                        gas gas_remaining wei
                       args u, ext_call.return_data[0], ext_call.return_data[32] << 224, v
            else:
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getConnectorBalance(address arg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx + 1) + 128])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).connectors(address arg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx + 1) + 128])
                mem[(32 * arg1.length) + 128 len 160] = ext_call.return_data[0 len 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                mem[(32 * arg1.length) + 132] = ext_call.return_data[0]
                mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                mem[(32 * arg1.length) + 196] = uint32(ext_call.return_data[32])
                mem[(32 * arg1.length) + 228] = v
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).calculateSaleReturn(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[32] << 224, v
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).conversionFee() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(address(_163))
                staticcall address(_163).0x18160ddd with:
                        gas gas_remaining wei
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 2
                s = _163
                t = _165
                u = 0
                v = ext_call.return_data[0]
                continue 
            require ext_call.return_data[0]
            require ext_call.return_data[0] * uint32(ext_call.return_data[0]) / ext_call.return_data[0] == uint32(ext_call.return_data[0])
            require ext_code.size(address(_163))
            staticcall address(_163).0x18160ddd with:
                    gas gas_remaining wei
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 2
            s = _163
            t = _165
            u = ext_call.return_data[0] * uint32(ext_call.return_data[0]) / 10^6
            v = ext_call.return_data[0] - (ext_call.return_data[0] * uint32(ext_call.return_data[0]) / 10^6)
            continue 
        if mem[(32 * idx) + 140 len 20] == address(s):
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).connectors(address arg1) with:
                    gas gas_remaining wei
                   args address(t)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[96]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getConnectorBalance(address arg1) with:
                    gas gas_remaining wei
                   args address(t)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).connectors(address arg1) with:
                    gas gas_remaining wei
                   args address(t)
            mem[(32 * arg1.length) + 128 len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            mem[(32 * arg1.length) + 132] = u
            mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
            mem[(32 * arg1.length) + 196] = uint32(ext_call.return_data[32])
            mem[(32 * arg1.length) + 228] = v
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).calculatePurchaseReturn(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) with:
                    gas gas_remaining wei
                   args u, ext_call.return_data[0], ext_call.return_data[32] << 224, v
        else:
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).connectors(address arg1) with:
                    gas gas_remaining wei
                   args address(t)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[96]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getConnectorBalance(address arg1) with:
                    gas gas_remaining wei
                   args address(t)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).connectors(address arg1) with:
                    gas gas_remaining wei
                   args address(t)
            mem[(32 * arg1.length) + 128 len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            mem[(32 * arg1.length) + 132] = ext_call.return_data[0]
            mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
            mem[(32 * arg1.length) + 196] = uint32(ext_call.return_data[32])
            mem[(32 * arg1.length) + 228] = v
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).calculatePurchaseReturn(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[32] << 224, v
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).conversionFee() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(address(_163))
            staticcall address(_163).0x18160ddd with:
                    gas gas_remaining wei
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 2
            s = _163
            t = _165
            u = 2 * ext_call.return_data[0]
            v = ext_call.return_data[0]
            continue 
        require ext_call.return_data[0]
        require ext_call.return_data[0] * uint32(ext_call.return_data[0]) / ext_call.return_data[0] == uint32(ext_call.return_data[0])
        require ext_code.size(address(_163))
        staticcall address(_163).0x18160ddd with:
                gas gas_remaining wei
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 2
        s = _163
        t = _165
        u = (2 * ext_call.return_data[0]) - (ext_call.return_data[0] * uint32(ext_call.return_data[0]) / 10^6)
        v = ext_call.return_data[0] - (ext_call.return_data[0] * uint32(ext_call.return_data[0]) / 10^6)
        continue 
    return v
}

function sub_27a1bd21(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require 0 < arg1.length
    require ext_code.size(mem[140 len 20])
    staticcall mem[140 len 20].0x313ce567 with:
            gas gas_remaining wei
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < arg1.length
    _9 = mem[128]
    mem[(32 * arg1.length) + 132] = 'BancorFormula'
    require ext_code.size(stor0)
    staticcall stor0.getAddress(bytes32 arg1) with:
            gas gas_remaining wei
           args 'BancorFormula'
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 1
    s = 0
    t = _9
    u = 0
    v = 10^uint8(ext_call.return_data[0])
    while idx < arg1.length:
        require idx < arg1.length
        _483 = mem[(32 * idx) + 128]
        require idx + 1 < arg1.length
        _485 = mem[(32 * idx + 1) + 128]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if mem[(32 * idx + 1) + 140 len 20] != mem[(32 * idx) + 140 len 20]:
            if address(t) != mem[(32 * idx) + 140 len 20]:
                mem[(32 * arg1.length) + 132] = address(t)
                mem[(32 * arg1.length) + 164] = address(_485)
                mem[(32 * arg1.length) + 196] = v
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args address(t), address(_485), v
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 2
                s = _483
                t = _485
                u = u
                v = ext_call.return_data[0]
                continue 
            if mem[(32 * idx) + 140 len 20] == address(s):
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getConnectorBalance(address arg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx + 1) + 128])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).connectors(address arg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx + 1) + 128])
                mem[(32 * arg1.length) + 128 len 160] = ext_call.return_data[0 len 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                mem[(32 * arg1.length) + 132] = u
                mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                mem[(32 * arg1.length) + 196] = uint32(ext_call.return_data[32])
                mem[(32 * arg1.length) + 228] = v
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).calculateSaleReturn(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) with:
                        gas gas_remaining wei
                       args u, ext_call.return_data[0], ext_call.return_data[32] << 224, v
            else:
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getConnectorBalance(address arg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx + 1) + 128])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).connectors(address arg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx + 1) + 128])
                mem[(32 * arg1.length) + 128 len 160] = ext_call.return_data[0 len 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                mem[(32 * arg1.length) + 132] = ext_call.return_data[0]
                mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                mem[(32 * arg1.length) + 196] = uint32(ext_call.return_data[32])
                mem[(32 * arg1.length) + 228] = v
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).calculateSaleReturn(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[32] << 224, v
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).conversionFee() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(address(_483))
                staticcall address(_483).0x18160ddd with:
                        gas gas_remaining wei
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 2
                s = _483
                t = _485
                u = 0
                v = ext_call.return_data[0]
                continue 
            require ext_call.return_data[0]
            require ext_call.return_data[0] * uint32(ext_call.return_data[0]) / ext_call.return_data[0] == uint32(ext_call.return_data[0])
            require ext_code.size(address(_483))
            staticcall address(_483).0x18160ddd with:
                    gas gas_remaining wei
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 2
            s = _483
            t = _485
            u = ext_call.return_data[0] * uint32(ext_call.return_data[0]) / 10^6
            v = ext_call.return_data[0] - (ext_call.return_data[0] * uint32(ext_call.return_data[0]) / 10^6)
            continue 
        if mem[(32 * idx) + 140 len 20] == address(s):
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).connectors(address arg1) with:
                    gas gas_remaining wei
                   args address(t)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[96]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getConnectorBalance(address arg1) with:
                    gas gas_remaining wei
                   args address(t)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).connectors(address arg1) with:
                    gas gas_remaining wei
                   args address(t)
            mem[(32 * arg1.length) + 128 len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            mem[(32 * arg1.length) + 132] = u
            mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
            mem[(32 * arg1.length) + 196] = uint32(ext_call.return_data[32])
            mem[(32 * arg1.length) + 228] = v
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).calculatePurchaseReturn(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) with:
                    gas gas_remaining wei
                   args u, ext_call.return_data[0], ext_call.return_data[32] << 224, v
        else:
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).connectors(address arg1) with:
                    gas gas_remaining wei
                   args address(t)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[96]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getConnectorBalance(address arg1) with:
                    gas gas_remaining wei
                   args address(t)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).connectors(address arg1) with:
                    gas gas_remaining wei
                   args address(t)
            mem[(32 * arg1.length) + 128 len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            mem[(32 * arg1.length) + 132] = ext_call.return_data[0]
            mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
            mem[(32 * arg1.length) + 196] = uint32(ext_call.return_data[32])
            mem[(32 * arg1.length) + 228] = v
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).calculatePurchaseReturn(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[32] << 224, v
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).conversionFee() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(address(_483))
            staticcall address(_483).0x18160ddd with:
                    gas gas_remaining wei
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 2
            s = _483
            t = _485
            u = 2 * ext_call.return_data[0]
            v = ext_call.return_data[0]
            continue 
        require ext_call.return_data[0]
        require ext_call.return_data[0] * uint32(ext_call.return_data[0]) / ext_call.return_data[0] == uint32(ext_call.return_data[0])
        require ext_code.size(address(_483))
        staticcall address(_483).0x18160ddd with:
                gas gas_remaining wei
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 2
        s = _483
        t = _485
        u = (2 * ext_call.return_data[0]) - (ext_call.return_data[0] * uint32(ext_call.return_data[0]) / 10^6)
        v = ext_call.return_data[0] - (ext_call.return_data[0] * uint32(ext_call.return_data[0]) / 10^6)
        continue 
    if not arg2:
        require v > 0
        if v:
            if 0 < arg1.length:
                _506 = mem[128]
                mem[(32 * arg1.length) + 132] = 'BancorFormula'
                require ext_code.size(stor0)
                staticcall stor0.getAddress(bytes32 arg1) with:
                        gas gas_remaining wei
                       args 'BancorFormula'
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = 1
                s = 0
                t = _506
                u = 0
                w = 0 / v
                while idx < arg1.length:
                    require idx < arg1.length
                    _954 = mem[(32 * idx) + 128]
                    require idx + 1 < arg1.length
                    _959 = mem[(32 * idx + 1) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x8da5cb5b with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[(32 * idx + 1) + 140 len 20] != mem[(32 * idx) + 140 len 20]:
                        if address(t) != mem[(32 * idx) + 140 len 20]:
                            mem[(32 * arg1.length) + 132] = address(t)
                            mem[(32 * arg1.length) + 164] = address(_959)
                            mem[(32 * arg1.length) + 196] = w
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args address(t), address(_959), w
                            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 2
                            s = _954
                            t = _959
                            u = u
                            w = ext_call.return_data[0]
                            continue 
                        if mem[(32 * idx) + 140 len 20] == address(s):
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getConnectorBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(mem[(32 * idx + 1) + 128])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).connectors(address arg1) with:
                                    gas gas_remaining wei
                                   args address(mem[(32 * idx + 1) + 128])
                            mem[(32 * arg1.length) + 128 len 160] = ext_call.return_data[0 len 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 160
                            mem[(32 * arg1.length) + 132] = u
                            mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + 196] = uint32(ext_call.return_data[32])
                            mem[(32 * arg1.length) + 228] = w
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).calculateSaleReturn(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) with:
                                    gas gas_remaining wei
                                   args u, ext_call.return_data[0], ext_call.return_data[32] << 224, w
                        else:
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getConnectorBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(mem[(32 * idx + 1) + 128])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).connectors(address arg1) with:
                                    gas gas_remaining wei
                                   args address(mem[(32 * idx + 1) + 128])
                            mem[(32 * arg1.length) + 128 len 160] = ext_call.return_data[0 len 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 160
                            mem[(32 * arg1.length) + 132] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + 196] = uint32(ext_call.return_data[32])
                            mem[(32 * arg1.length) + 228] = w
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).calculateSaleReturn(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[32] << 224, w
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).conversionFee() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require ext_code.size(address(_954))
                            staticcall address(_954).0x18160ddd with:
                                    gas gas_remaining wei
                            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 2
                            s = _954
                            t = _959
                            u = 0
                            w = ext_call.return_data[0]
                            continue 
                        require ext_call.return_data[0]
                        require ext_call.return_data[0] * uint32(ext_call.return_data[0]) / ext_call.return_data[0] == uint32(ext_call.return_data[0])
                        require ext_code.size(address(_954))
                        staticcall address(_954).0x18160ddd with:
                                gas gas_remaining wei
                        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 2
                        s = _954
                        t = _959
                        u = ext_call.return_data[0] * uint32(ext_call.return_data[0]) / 10^6
                        w = ext_call.return_data[0] - (ext_call.return_data[0] * uint32(ext_call.return_data[0]) / 10^6)
                        continue 
                    if mem[(32 * idx) + 140 len 20] == address(s):
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).connectors(address arg1) with:
                                gas gas_remaining wei
                               args address(t)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 160
                        require ext_call.return_data[96]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getConnectorBalance(address arg1) with:
                                gas gas_remaining wei
                               args address(t)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).connectors(address arg1) with:
                                gas gas_remaining wei
                               args address(t)
                        mem[(32 * arg1.length) + 128 len 160] = ext_call.return_data[0 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 160
                        mem[(32 * arg1.length) + 132] = u
                        mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                        mem[(32 * arg1.length) + 196] = uint32(ext_call.return_data[32])
                        mem[(32 * arg1.length) + 228] = w
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).calculatePurchaseReturn(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) with:
                                gas gas_remaining wei
                               args u, ext_call.return_data[0], ext_call.return_data[32] << 224, w
                    else:
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).connectors(address arg1) with:
                                gas gas_remaining wei
                               args address(t)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 160
                        require ext_call.return_data[96]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getConnectorBalance(address arg1) with:
                                gas gas_remaining wei
                               args address(t)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).connectors(address arg1) with:
                                gas gas_remaining wei
                               args address(t)
                        mem[(32 * arg1.length) + 128 len 160] = ext_call.return_data[0 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 160
                        mem[(32 * arg1.length) + 132] = ext_call.return_data[0]
                        mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                        mem[(32 * arg1.length) + 196] = uint32(ext_call.return_data[32])
                        mem[(32 * arg1.length) + 228] = w
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).calculatePurchaseReturn(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[32] << 224, w
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).conversionFee() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        require ext_code.size(address(_954))
                        staticcall address(_954).0x18160ddd with:
                                gas gas_remaining wei
                        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 2
                        s = _954
                        t = _959
                        u = 2 * ext_call.return_data[0]
                        w = ext_call.return_data[0]
                        continue 
                    require ext_call.return_data[0]
                    require ext_call.return_data[0] * uint32(ext_call.return_data[0]) / ext_call.return_data[0] == uint32(ext_call.return_data[0])
                    require ext_code.size(address(_954))
                    staticcall address(_954).0x18160ddd with:
                            gas gas_remaining wei
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 2
                    s = _954
                    t = _959
                    u = (2 * ext_call.return_data[0]) - (ext_call.return_data[0] * uint32(ext_call.return_data[0]) / 10^6)
                    w = ext_call.return_data[0] - (ext_call.return_data[0] * uint32(ext_call.return_data[0]) / 10^6)
                    continue 
                if not arg2:
                    require w > 0
                    if w:
                        return (0 / w)
                else:
                    if arg2:
                        require arg2 * 0 / v / arg2 == 0 / v
                        require w > 0
                        if w:
                            return (arg2 * 0 / v / w)
    else:
        if arg2:
            require arg2 * 10^uint8(ext_call.return_data[0]) / arg2 == 10^uint8(ext_call.return_data[0])
            require v > 0
            if v:
                if 0 < arg1.length:
                    _523 = mem[128]
                    mem[(32 * arg1.length) + 132] = 'BancorFormula'
                    require ext_code.size(stor0)
                    staticcall stor0.getAddress(bytes32 arg1) with:
                            gas gas_remaining wei
                           args 'BancorFormula'
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 1
                    s = 0
                    t = _523
                    u = 0
                    w = arg2 * 10^uint8(ext_call.return_data[0]) / v
                    while idx < arg1.length:
                        require idx < arg1.length
                        _952 = mem[(32 * idx) + 128]
                        require idx + 1 < arg1.length
                        _956 = mem[(32 * idx + 1) + 128]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].0x8da5cb5b with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if mem[(32 * idx + 1) + 140 len 20] != mem[(32 * idx) + 140 len 20]:
                            if address(t) != mem[(32 * idx) + 140 len 20]:
                                mem[(32 * arg1.length) + 132] = address(t)
                                mem[(32 * arg1.length) + 164] = address(_956)
                                mem[(32 * arg1.length) + 196] = w
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args address(t), address(_956), w
                                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 2
                                s = _952
                                t = _956
                                u = u
                                w = ext_call.return_data[0]
                                continue 
                            if mem[(32 * idx) + 140 len 20] == address(s):
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getConnectorBalance(address arg1) with:
                                        gas gas_remaining wei
                                       args address(mem[(32 * idx + 1) + 128])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).connectors(address arg1) with:
                                        gas gas_remaining wei
                                       args address(mem[(32 * idx + 1) + 128])
                                mem[(32 * arg1.length) + 128 len 160] = ext_call.return_data[0 len 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 160
                                mem[(32 * arg1.length) + 132] = u
                                mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                                mem[(32 * arg1.length) + 196] = uint32(ext_call.return_data[32])
                                mem[(32 * arg1.length) + 228] = w
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).calculateSaleReturn(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) with:
                                        gas gas_remaining wei
                                       args u, ext_call.return_data[0], ext_call.return_data[32] << 224, w
                            else:
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getConnectorBalance(address arg1) with:
                                        gas gas_remaining wei
                                       args address(mem[(32 * idx + 1) + 128])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).connectors(address arg1) with:
                                        gas gas_remaining wei
                                       args address(mem[(32 * idx + 1) + 128])
                                mem[(32 * arg1.length) + 128 len 160] = ext_call.return_data[0 len 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 160
                                mem[(32 * arg1.length) + 132] = ext_call.return_data[0]
                                mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                                mem[(32 * arg1.length) + 196] = uint32(ext_call.return_data[32])
                                mem[(32 * arg1.length) + 228] = w
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).calculateSaleReturn(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[32] << 224, w
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).conversionFee() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                require ext_code.size(address(_952))
                                staticcall address(_952).0x18160ddd with:
                                        gas gas_remaining wei
                                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 2
                                s = _952
                                t = _956
                                u = 0
                                w = ext_call.return_data[0]
                                continue 
                            require ext_call.return_data[0]
                            require ext_call.return_data[0] * uint32(ext_call.return_data[0]) / ext_call.return_data[0] == uint32(ext_call.return_data[0])
                            require ext_code.size(address(_952))
                            staticcall address(_952).0x18160ddd with:
                                    gas gas_remaining wei
                            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 2
                            s = _952
                            t = _956
                            u = ext_call.return_data[0] * uint32(ext_call.return_data[0]) / 10^6
                            w = ext_call.return_data[0] - (ext_call.return_data[0] * uint32(ext_call.return_data[0]) / 10^6)
                            continue 
                        if mem[(32 * idx) + 140 len 20] == address(s):
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).connectors(address arg1) with:
                                    gas gas_remaining wei
                                   args address(t)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 160
                            require ext_call.return_data[96]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getConnectorBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(t)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).connectors(address arg1) with:
                                    gas gas_remaining wei
                                   args address(t)
                            mem[(32 * arg1.length) + 128 len 160] = ext_call.return_data[0 len 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 160
                            mem[(32 * arg1.length) + 132] = u
                            mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + 196] = uint32(ext_call.return_data[32])
                            mem[(32 * arg1.length) + 228] = w
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).calculatePurchaseReturn(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) with:
                                    gas gas_remaining wei
                                   args u, ext_call.return_data[0], ext_call.return_data[32] << 224, w
                        else:
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).connectors(address arg1) with:
                                    gas gas_remaining wei
                                   args address(t)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 160
                            require ext_call.return_data[96]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getConnectorBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(t)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).connectors(address arg1) with:
                                    gas gas_remaining wei
                                   args address(t)
                            mem[(32 * arg1.length) + 128 len 160] = ext_call.return_data[0 len 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 160
                            mem[(32 * arg1.length) + 132] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + 196] = uint32(ext_call.return_data[32])
                            mem[(32 * arg1.length) + 228] = w
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).calculatePurchaseReturn(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[32] << 224, w
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).conversionFee() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require ext_code.size(address(_952))
                            staticcall address(_952).0x18160ddd with:
                                    gas gas_remaining wei
                            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 2
                            s = _952
                            t = _956
                            u = 2 * ext_call.return_data[0]
                            w = ext_call.return_data[0]
                            continue 
                        require ext_call.return_data[0]
                        require ext_call.return_data[0] * uint32(ext_call.return_data[0]) / ext_call.return_data[0] == uint32(ext_call.return_data[0])
                        require ext_code.size(address(_952))
                        staticcall address(_952).0x18160ddd with:
                                gas gas_remaining wei
                        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 2
                        s = _952
                        t = _956
                        u = (2 * ext_call.return_data[0]) - (ext_call.return_data[0] * uint32(ext_call.return_data[0]) / 10^6)
                        w = ext_call.return_data[0] - (ext_call.return_data[0] * uint32(ext_call.return_data[0]) / 10^6)
                        continue 
                    if not arg2:
                        require w > 0
                        if w:
                            return (0 / w)
                    else:
                        if arg2:
                            require arg2 * arg2 * 10^uint8(ext_call.return_data[0]) / v / arg2 == arg2 * 10^uint8(ext_call.return_data[0]) / v
                            require w > 0
                            if w:
                                return (arg2 * arg2 * 10^uint8(ext_call.return_data[0]) / v / w)
    revert
}



}
