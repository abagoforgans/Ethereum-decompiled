contract main {




// =====================  Runtime code  =====================


const sub_f5286b9c(?) = 'NonStandardTokenRegistry'

const BANCOR_CONVERTER_UPGRADER = 'BancorConverterUpgrader'

const BNT_TOKEN = 'BNTToken'

const CONTRACT_REGISTRY = 'ContractRegistry'

const BANCOR_CONVERTER_FACTORY = 'BancorConverterFactory'

const BNT_CONVERTER = 'BNTConverter'

const BANCOR_FORMULA = 'BancorFormula'

const CONTRACT_FEATURES = 'ContractFeatures'

const BANCOR_NETWORK = 'BancorNetwork'

const BANCOR_GAS_PRICE_LIMIT = 'BancorGasPriceLimit'

const BANCOR_X = 'BancorX'

const BANCOR_X_UPGRADER = 'BancorXUpgrader'


address registryAddress;

function registry() {
    return registryAddress
}

function _fallback() payable {
    revert
}

function getReturnByPath(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 132] = 'BancorFormula'
    require ext_code.size(registryAddress)
    call registryAddress.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args 'BancorFormula'
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < arg1.length
    idx = 1
    s = 0
    t = 0
    u = 0
    v = 0
    w = arg2
    x = 0
    x = 0
    x = 0
    x = mem[128]
    while idx < arg1.length:
        require idx < arg1.length
        _139 = mem[(32 * idx) + 128]
        require idx + 1 < arg1.length
        _141 = mem[(32 * idx + 1) + 128]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        call mem[(32 * idx) + 140 len 20].0x8da5cb5b with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if mem[(32 * idx) + 140 len 20] != mem[(32 * idx + 1) + 140 len 20]:
            if address(x) != mem[(32 * idx) + 140 len 20]:
                mem[(32 * arg1.length) + 132] = address(x)
                mem[(32 * arg1.length) + 164] = address(_141)
                mem[(32 * arg1.length) + 196] = w
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(x), address(_141), w
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 2
                s = _139
                t = t
                u = u
                v = v
                w = ext_call.return_data[0]
                x = ext_call.return_data[0]
                x = _141
                x = _139
                x = _141
                continue 
            if mem[(32 * idx) + 140 len 20] == address(s):
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).getConnectorBalance(address arg1) with:
                     gas gas_remaining wei
                    args address(mem[(32 * idx + 1) + 128])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).connectors(address arg1) with:
                     gas gas_remaining wei
                    args address(mem[(32 * idx + 1) + 128])
                mem[(32 * arg1.length) + 128 len 160] = ext_call.return_data[0 len 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                mem[(32 * arg1.length) + 132] = v
                mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                mem[(32 * arg1.length) + 196] = uint32(ext_call.return_data[32])
                mem[(32 * arg1.length) + 228] = w
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).calculateSaleReturn(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args v, ext_call.return_data[0], ext_call.return_data[32] << 224, w
            else:
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                call mem[(32 * idx) + 140 len 20].0x18160ddd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).getConnectorBalance(address arg1) with:
                     gas gas_remaining wei
                    args address(mem[(32 * idx + 1) + 128])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).connectors(address arg1) with:
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
                call address(ext_call.return_data[0]).calculateSaleReturn(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[32] << 224, w
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).conversionFee() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(address(_139))
                call address(_139).0x18160ddd with:
                     gas gas_remaining wei
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 2
                s = _139
                t = ext_call.return_data[32]
                u = ext_call.return_data[0]
                v = 0
                w = ext_call.return_data[0]
                x = ext_call.return_data[0]
                x = _141
                x = _139
                x = _141
                continue 
            require uint32(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] == uint32(ext_call.return_data[0])
            require ext_code.size(address(_139))
            call address(_139).0x18160ddd with:
                 gas gas_remaining wei
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 2
            s = _139
            t = ext_call.return_data[32]
            u = ext_call.return_data[0]
            v = uint32(ext_call.return_data[0]) * ext_call.return_data[0] / 10^6
            w = ext_call.return_data[0] - (uint32(ext_call.return_data[0]) * ext_call.return_data[0] / 10^6)
            x = ext_call.return_data[0]
            x = _141
            x = _139
            x = _141
            continue 
        if mem[(32 * idx) + 140 len 20] == address(s):
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).connectors(address arg1) with:
                 gas gas_remaining wei
                args address(x)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[96]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getConnectorBalance(address arg1) with:
                 gas gas_remaining wei
                args address(x)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).connectors(address arg1) with:
                 gas gas_remaining wei
                args address(x)
            mem[(32 * arg1.length) + 128 len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            mem[(32 * arg1.length) + 132] = v
            mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
            mem[(32 * arg1.length) + 196] = uint32(ext_call.return_data[32])
            mem[(32 * arg1.length) + 228] = w
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).calculatePurchaseReturn(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args v, ext_call.return_data[0], ext_call.return_data[32] << 224, w
        else:
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            call mem[(32 * idx) + 140 len 20].0x18160ddd with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).connectors(address arg1) with:
                 gas gas_remaining wei
                args address(x)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[96]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getConnectorBalance(address arg1) with:
                 gas gas_remaining wei
                args address(x)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).connectors(address arg1) with:
                 gas gas_remaining wei
                args address(x)
            mem[(32 * arg1.length) + 128 len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            mem[(32 * arg1.length) + 132] = ext_call.return_data[0]
            mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
            mem[(32 * arg1.length) + 196] = uint32(ext_call.return_data[32])
            mem[(32 * arg1.length) + 228] = w
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).calculatePurchaseReturn(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[32] << 224, w
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).conversionFee() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(address(_139))
            call address(_139).0x18160ddd with:
                 gas gas_remaining wei
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 2
            s = _139
            t = ext_call.return_data[32]
            u = ext_call.return_data[0]
            v = 2 * ext_call.return_data[0]
            w = ext_call.return_data[0]
            x = ext_call.return_data[0]
            x = _141
            x = _139
            x = _141
            continue 
        require uint32(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] == uint32(ext_call.return_data[0])
        require ext_code.size(address(_139))
        call address(_139).0x18160ddd with:
             gas gas_remaining wei
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 2
        s = _139
        t = ext_call.return_data[32]
        u = ext_call.return_data[0]
        v = (2 * ext_call.return_data[0]) - (uint32(ext_call.return_data[0]) * ext_call.return_data[0] / 10^6)
        w = ext_call.return_data[0] - (uint32(ext_call.return_data[0]) * ext_call.return_data[0] / 10^6)
        x = ext_call.return_data[0]
        x = _141
        x = _139
        x = _141
        continue 
    return w, 0
}

function sub_78981741(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 0 < arg1.length
    s = 0
    s = 0
    idx = 1
    s = 10000000 * 10^18
    t = 0
    u = 0
    v = 0
    v = 0
    v = mem[128]
    w = 0
    w = 0
    while idx < arg1.length:
        require idx < arg1.length
        _55 = mem[(32 * idx) + 128]
        require idx + 1 < arg1.length
        _57 = mem[(32 * idx + 1) + 128]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        call mem[(32 * idx) + 140 len 20].0x8da5cb5b with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        call mem[(32 * idx) + 140 len 20].0x18160ddd with:
             gas gas_remaining wei
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(_55) == address(v):
            if address(_55) == address(_57):
                if not s:
                    s = 10000000 * 10^18
                    s = 10000000 * 10^18
                    idx = idx + 2
                    s = 0
                    t = t
                    u = u
                    v = ext_call.return_data[0]
                    v = _57
                    v = _57
                    w = _55
                    w = ext_call.return_data[0]
                    continue 
                require 10000000 * 10^18 * s / s == 10000000 * 10^18
                s = 10000000 * 10^18
                s = 10000000 * 10^18
                idx = idx + 2
                s = 10000000 * 10^18 * s / 10000000 * 10^18
                t = t
                u = u
                v = ext_call.return_data[0]
                v = _57
                v = _57
                w = _55
                w = ext_call.return_data[0]
                continue 
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getConnectorBalance(address arg1) with:
                 gas gas_remaining wei
                args address(_57)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).connectors(address arg1) with:
                 gas gas_remaining wei
                args address(_57)
            mem[(32 * arg1.length) + 128 len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require 10000000 * 10^18 * ext_call.return_data[0] / 10000000 * 10^18 == ext_call.return_data[0]
            require ext_call.return_data[0] > 0
            if ext_call.return_data[0]:
                if not 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    require uint32(ext_call.return_data[32]) > 0
                    if uint32(ext_call.return_data[32]):
                        if not s:
                            require 0 / uint32(ext_call.return_data[32]) > 0
                            if 0 / uint32(ext_call.return_data[32]):
                                s = 0 / uint32(ext_call.return_data[32])
                                s = 10000000 * 10^18
                                idx = idx + 2
                                s = 0 / 0 / uint32(ext_call.return_data[32])
                                t = uint32(ext_call.return_data[32])
                                u = ext_call.return_data[0]
                                v = ext_call.return_data[0]
                                v = _57
                                v = _57
                                w = _55
                                w = ext_call.return_data[0]
                                continue 
                        else:
                            require 10000000 * 10^18 * s / s == 10000000 * 10^18
                            require 0 / uint32(ext_call.return_data[32]) > 0
                            if 0 / uint32(ext_call.return_data[32]):
                                s = 0 / uint32(ext_call.return_data[32])
                                s = 10000000 * 10^18
                                idx = idx + 2
                                s = 10000000 * 10^18 * s / 0 / uint32(ext_call.return_data[32])
                                t = uint32(ext_call.return_data[32])
                                u = ext_call.return_data[0]
                                v = ext_call.return_data[0]
                                v = _57
                                v = _57
                                w = _55
                                w = ext_call.return_data[0]
                                continue 
                        ('iszero', ('div', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 32, 32))))
                else:
                    require 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^6
                    require uint32(ext_call.return_data[32]) > 0
                    if uint32(ext_call.return_data[32]):
                        if not s:
                            require 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32]) > 0
                            if 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32]):
                                s = 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32])
                                s = 10000000 * 10^18
                                idx = idx + 2
                                s = 0 / 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32])
                                t = uint32(ext_call.return_data[32])
                                u = ext_call.return_data[0]
                                v = ext_call.return_data[0]
                                v = _57
                                v = _57
                                w = _55
                                w = ext_call.return_data[0]
                                continue 
                        else:
                            require 10000000 * 10^18 * s / s == 10000000 * 10^18
                            require 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32]) > 0
                            if 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32]):
                                s = 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32])
                                s = 10000000 * 10^18
                                idx = idx + 2
                                s = 10000000 * 10^18 * s / 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32])
                                t = uint32(ext_call.return_data[32])
                                u = ext_call.return_data[0]
                                v = ext_call.return_data[0]
                                v = _57
                                v = _57
                                w = _55
                                w = ext_call.return_data[0]
                                continue 
                        ('iszero', ('div', ('mul', 1000000, ('div', ('mul', 10000000000000000000000000, ('ext_call.return_data', 0, 32)), ('ext_call.return_data', 0, 32))), ('mask_shl', 32, 0, 0, ('ext_call.return_data', 32, 32))))
        else:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getConnectorBalance(address arg1) with:
                 gas gas_remaining wei
                args address(v)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).connectors(address arg1) with:
                 gas gas_remaining wei
                args address(v)
            mem[(32 * arg1.length) + 128 len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require 10000000 * 10^18 * ext_call.return_data[0] / 10000000 * 10^18 == ext_call.return_data[0]
            require ext_call.return_data[0] > 0
            if ext_call.return_data[0]:
                if not 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    require uint32(ext_call.return_data[32]) > 0
                    if uint32(ext_call.return_data[32]):
                        if address(_55) == address(_57):
                            if not s:
                                s = 10000000 * 10^18
                                s = 0 / uint32(ext_call.return_data[32])
                                idx = idx + 2
                                s = 0
                                t = uint32(ext_call.return_data[32])
                                u = ext_call.return_data[0]
                                v = ext_call.return_data[0]
                                v = _57
                                v = _57
                                w = _55
                                w = ext_call.return_data[0]
                                continue 
                            require 0 / uint32(ext_call.return_data[32]) * s / s == 0 / uint32(ext_call.return_data[32])
                            s = 10000000 * 10^18
                            s = 0 / uint32(ext_call.return_data[32])
                            idx = idx + 2
                            s = 0 / uint32(ext_call.return_data[32]) * s / 10000000 * 10^18
                            t = uint32(ext_call.return_data[32])
                            u = ext_call.return_data[0]
                            v = ext_call.return_data[0]
                            v = _57
                            v = _57
                            w = _55
                            w = ext_call.return_data[0]
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).getConnectorBalance(address arg1) with:
                             gas gas_remaining wei
                            args address(_57)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).connectors(address arg1) with:
                             gas gas_remaining wei
                            args address(_57)
                        mem[(32 * arg1.length) + 128 len 160] = ext_call.return_data[0 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 160
                        require 10000000 * 10^18 * ext_call.return_data[0] / 10000000 * 10^18 == ext_call.return_data[0]
                        require ext_call.return_data[0] > 0
                        if ext_call.return_data[0]:
                            if not 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                                require uint32(ext_call.return_data[32]) > 0
                                if uint32(ext_call.return_data[32]):
                                    if not s:
                                        require 0 / uint32(ext_call.return_data[32]) > 0
                                        if 0 / uint32(ext_call.return_data[32]):
                                            s = 0 / uint32(ext_call.return_data[32])
                                            s = 0 / uint32(ext_call.return_data[32])
                                            idx = idx + 2
                                            s = 0 / 0 / uint32(ext_call.return_data[32])
                                            t = uint32(ext_call.return_data[32])
                                            u = ext_call.return_data[0]
                                            v = ext_call.return_data[0]
                                            v = _57
                                            v = _57
                                            w = _55
                                            w = ext_call.return_data[0]
                                            continue 
                                    else:
                                        require 0 / uint32(ext_call.return_data[32]) * s / s == 0 / uint32(ext_call.return_data[32])
                                        require 0 / uint32(ext_call.return_data[32]) > 0
                                        if 0 / uint32(ext_call.return_data[32]):
                                            s = 0 / uint32(ext_call.return_data[32])
                                            s = 0 / uint32(ext_call.return_data[32])
                                            idx = idx + 2
                                            s = 0 / uint32(ext_call.return_data[32]) * s / 0 / uint32(ext_call.return_data[32])
                                            t = uint32(ext_call.return_data[32])
                                            u = ext_call.return_data[0]
                                            v = ext_call.return_data[0]
                                            v = _57
                                            v = _57
                                            w = _55
                                            w = ext_call.return_data[0]
                                            continue 
                                    ('iszero', ('div', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 32, 32))))
                            else:
                                require 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^6
                                require uint32(ext_call.return_data[32]) > 0
                                if uint32(ext_call.return_data[32]):
                                    if not s:
                                        require 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32]) > 0
                                        if 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32]):
                                            s = 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32])
                                            s = 0 / uint32(ext_call.return_data[32])
                                            idx = idx + 2
                                            s = 0 / 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32])
                                            t = uint32(ext_call.return_data[32])
                                            u = ext_call.return_data[0]
                                            v = ext_call.return_data[0]
                                            v = _57
                                            v = _57
                                            w = _55
                                            w = ext_call.return_data[0]
                                            continue 
                                    else:
                                        require 0 / uint32(ext_call.return_data[32]) * s / s == 0 / uint32(ext_call.return_data[32])
                                        require 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32]) > 0
                                        if 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32]):
                                            s = 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32])
                                            s = 0 / uint32(ext_call.return_data[32])
                                            idx = idx + 2
                                            s = 0 / uint32(ext_call.return_data[32]) * s / 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32])
                                            t = uint32(ext_call.return_data[32])
                                            u = ext_call.return_data[0]
                                            v = ext_call.return_data[0]
                                            v = _57
                                            v = _57
                                            w = _55
                                            w = ext_call.return_data[0]
                                            continue 
                                    ('iszero', ('div', ('mul', 1000000, ('div', ('mul', 10000000000000000000000000, ('ext_call.return_data', 0, 32)), ('ext_call.return_data', 0, 32))), ('mask_shl', 32, 0, 0, ('ext_call.return_data', 32, 32))))
                else:
                    require 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^6
                    require uint32(ext_call.return_data[32]) > 0
                    if uint32(ext_call.return_data[32]):
                        if address(_55) == address(_57):
                            if not s:
                                s = 10000000 * 10^18
                                s = 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32])
                                idx = idx + 2
                                s = 0
                                t = uint32(ext_call.return_data[32])
                                u = ext_call.return_data[0]
                                v = ext_call.return_data[0]
                                v = _57
                                v = _57
                                w = _55
                                w = ext_call.return_data[0]
                                continue 
                            require 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32]) * s / s == 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32])
                            s = 10000000 * 10^18
                            s = 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32])
                            idx = idx + 2
                            s = 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32]) * s / 10000000 * 10^18
                            t = uint32(ext_call.return_data[32])
                            u = ext_call.return_data[0]
                            v = ext_call.return_data[0]
                            v = _57
                            v = _57
                            w = _55
                            w = ext_call.return_data[0]
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).getConnectorBalance(address arg1) with:
                             gas gas_remaining wei
                            args address(_57)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).connectors(address arg1) with:
                             gas gas_remaining wei
                            args address(_57)
                        mem[(32 * arg1.length) + 128 len 160] = ext_call.return_data[0 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 160
                        require 10000000 * 10^18 * ext_call.return_data[0] / 10000000 * 10^18 == ext_call.return_data[0]
                        require ext_call.return_data[0] > 0
                        if ext_call.return_data[0]:
                            if not 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                                require uint32(ext_call.return_data[32]) > 0
                                if uint32(ext_call.return_data[32]):
                                    if not s:
                                        require 0 / uint32(ext_call.return_data[32]) > 0
                                        if 0 / uint32(ext_call.return_data[32]):
                                            s = 0 / uint32(ext_call.return_data[32])
                                            s = 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32])
                                            idx = idx + 2
                                            s = 0 / 0 / uint32(ext_call.return_data[32])
                                            t = uint32(ext_call.return_data[32])
                                            u = ext_call.return_data[0]
                                            v = ext_call.return_data[0]
                                            v = _57
                                            v = _57
                                            w = _55
                                            w = ext_call.return_data[0]
                                            continue 
                                    else:
                                        require 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32]) * s / s == 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32])
                                        require 0 / uint32(ext_call.return_data[32]) > 0
                                        if 0 / uint32(ext_call.return_data[32]):
                                            s = 0 / uint32(ext_call.return_data[32])
                                            s = 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32])
                                            idx = idx + 2
                                            s = 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32]) * s / 0 / uint32(ext_call.return_data[32])
                                            t = uint32(ext_call.return_data[32])
                                            u = ext_call.return_data[0]
                                            v = ext_call.return_data[0]
                                            v = _57
                                            v = _57
                                            w = _55
                                            w = ext_call.return_data[0]
                                            continue 
                                    ('iszero', ('div', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 32, 32))))
                            else:
                                require 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^6
                                require uint32(ext_call.return_data[32]) > 0
                                if uint32(ext_call.return_data[32]):
                                    if not s:
                                        require 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32]) > 0
                                        if 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32]):
                                            s = 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32])
                                            s = 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32])
                                            idx = idx + 2
                                            s = 0 / 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32])
                                            t = uint32(ext_call.return_data[32])
                                            u = ext_call.return_data[0]
                                            v = ext_call.return_data[0]
                                            v = _57
                                            v = _57
                                            w = _55
                                            w = ext_call.return_data[0]
                                            continue 
                                    else:
                                        require 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32]) * s / s == 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32])
                                        require 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32]) > 0
                                        if 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32]):
                                            s = 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32])
                                            s = 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32])
                                            idx = idx + 2
                                            s = 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32]) * s / 10^6 * 10000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / uint32(ext_call.return_data[32])
                                            t = uint32(ext_call.return_data[32])
                                            u = ext_call.return_data[0]
                                            v = ext_call.return_data[0]
                                            v = _57
                                            v = _57
                                            w = _55
                                            w = ext_call.return_data[0]
                                            continue 
                                    ('iszero', ('div', ('mul', 1000000, ('div', ('mul', 10000000000000000000000000, ('ext_call.return_data', 0, 32)), ('ext_call.return_data', 0, 32))), ('mask_shl', 32, 0, 0, ('ext_call.return_data', 32, 32))))
        revert
    return s
}



}
