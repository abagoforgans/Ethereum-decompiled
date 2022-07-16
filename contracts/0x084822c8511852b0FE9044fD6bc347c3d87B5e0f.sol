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
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require 0 < arg1.length
    _3 = mem[128]
    mem[(32 * arg1.length) + 132] = 'BancorFormula'
    require ext_code.size(registryAddress)
    staticcall registryAddress.addressOf(bytes32 arg1) with:
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



}
