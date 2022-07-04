contract main {




// =====================  Runtime code  =====================


address sub_b7a77bf8Address;

function sub_b7a77bf8(?) {
    return sub_b7a77bf8Address
}

function _fallback() payable {
    revert
}

function getExchangeCost(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require arg3 + 1 >= arg3
    mem[100] = arg2
    require ext_code.size(sub_b7a77bf8Address)
    staticcall sub_b7a77bf8Address.getPayAmount(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args address(arg2), address(arg1), arg3 + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + 1 >= ext_call.return_data[0]
    mem[128 len arg4.length] = arg4[all]
    if arg4.length != 0:
        if arg4.length != 64:
            revert with 0, 'OasisV3MatchingExchangeWrapper#getMaximumPrice: orderData is not the right length'
        if mem[128 len 4], address(arg1) << 64 != uint64(arg1) << 64:
            revert with 0, 'OasisV3MatchingExchangeWrapper#getMaximumPrice: takerAmountRatio > 128 bits'
        if 0, Mask(224, 32, arg3 + 1) >> 32 != Mask(128, 32, arg3 + 1) >> 32:
            revert with 0, 'OasisV3MatchingExchangeWrapper#getMaximumPrice: makerAmountRatio > 128 bits'
        if 0, Mask(224, 32, arg3 + 1) >> 32 <= 0:
            revert with 0, 'OasisV3MatchingExchangeWrapper#getMaximumPrice: makerAmountRatio cannot be zero'
        if 0, Mask(224, 32, arg3 + 1) >> 32:
            if not arg3:
                if ext_call.return_data[0] + 1:
                    require 0, Mask(224, 32, arg3 + 1) >> 32 + (ext_call.return_data[0] * 0, Mask(224, 32, arg3 + 1) >> 32) / ext_call.return_data[0] + 1 == 0, Mask(224, 32, arg3 + 1) >> 32
                    if 0, Mask(224, 32, arg3 + 1) >> 32 + (ext_call.return_data[0] * 0, Mask(224, 32, arg3 + 1) >> 32) > 0:
                        revert with 0, 'OasisV3MatchingExchangeWrapper#requireBelowMaximumPrice: price is too high'
            else:
                require mem[128 len 4], address(arg1) << 64 * arg3 / arg3 == mem[128 len 4], address(arg1) << 64
                if not ext_call.return_data[0] + 1:
                    if 0 > mem[128 len 4], address(arg1) << 64 * arg3:
                        revert with 0, 'OasisV3MatchingExchangeWrapper#requireBelowMaximumPrice: price is too high'
                else:
                    require 0, Mask(224, 32, arg3 + 1) >> 32 + (ext_call.return_data[0] * 0, Mask(224, 32, arg3 + 1) >> 32) / ext_call.return_data[0] + 1 == 0, Mask(224, 32, arg3 + 1) >> 32
                    if 0, Mask(224, 32, arg3 + 1) >> 32 + (ext_call.return_data[0] * 0, Mask(224, 32, arg3 + 1) >> 32) > mem[128 len 4], address(arg1) << 64 * arg3:
                        revert with 0, 'OasisV3MatchingExchangeWrapper#requireBelowMaximumPrice: price is too high'
    return (ext_call.return_data[0] + 1)
}

function getMaxMakerAmount(address arg1, address arg2, bytes arg3) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[64] = ceil32(arg3.length) + 256
    mem[224] = arg3.length
    mem[256 len arg3.length] = arg3[all]
    if 0 == arg3.length:
        revert with 0, 'OasisV3MatchingExchangeWrapper#getMaxMakerAmount: No maximum price given'
    if arg3.length != 64:
        revert with 0, 'OasisV3MatchingExchangeWrapper#getMaximumPrice: orderData is not the right length'
    _5 = mem[256]
    _6 = mem[288]
    if mem[256] != mem[272 len 16]:
        revert with 0, 'OasisV3MatchingExchangeWrapper#getMaximumPrice: takerAmountRatio > 128 bits'
    if mem[288] != mem[304 len 16]:
        revert with 0, 'OasisV3MatchingExchangeWrapper#getMaximumPrice: makerAmountRatio > 128 bits'
    if mem[288] <= 0:
        revert with 0, 'OasisV3MatchingExchangeWrapper#getMaximumPrice: makerAmountRatio cannot be zero'
    if not mem[288]:
        revert with 0, 'OasisV3MatchingExchangeWrapper#getMaxMakerAmount: No maximum price given'
    mem[ceil32(arg3.length) + 260] = arg1
    mem[ceil32(arg3.length) + 292] = arg2
    require ext_code.size(sub_b7a77bf8Address)
    staticcall sub_b7a77bf8Address.getBestOffer(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    mem[ceil32(arg3.length) + 256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    s = 96
    s = 0
    idx = mem[mem[64]]
    while idx:
        _67 = mem[64]
        mem[64] = mem[64] + 128
        mem[_67] = 0
        mem[_67 + 32] = 0
        mem[_67 + 64] = 0
        mem[_67 + 96] = 0
        require ext_code.size(sub_b7a77bf8Address)
        staticcall sub_b7a77bf8Address.getOffer(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        _75 = mem[64]
        mem[64] = mem[64] + 128
        mem[_75] = ext_call.return_data[0]
        mem[_75 + 32] = address(ext_call.return_data[32])
        mem[_75 + 64] = ext_call.return_data[64]
        mem[_75 + 96] = address(ext_call.return_data[96])
        require arg1 == address(ext_call.return_data[32])
        require address(ext_call.return_data[96]) == arg2
        if not ext_call.return_data[64]:
            if ext_call.return_data[0]:
                require _5 * ext_call.return_data[0] / ext_call.return_data[0] == _5
                if _5 * ext_call.return_data[0] < 0:
                    return s
        else:
            require _6 * ext_call.return_data[64] / ext_call.return_data[64] == _6
            if not ext_call.return_data[0]:
                if 0 < _6 * ext_call.return_data[64]:
                    return s
            else:
                require _5 * ext_call.return_data[0] / ext_call.return_data[0] == _5
                if _5 * ext_call.return_data[0] < _6 * ext_call.return_data[64]:
                    return s
        require ext_call.return_data[0] + s >= s
        mem[mem[64] + 4] = idx
        require ext_code.size(sub_b7a77bf8Address)
        staticcall sub_b7a77bf8Address.getWorseOffer(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = _75
        s = ext_call.return_data[0] + s
        idx = ext_call.return_data[0]
        continue 
    return s
}

function exchange(address arg1, address arg2, address arg3, address arg4, uint256 arg5, bytes arg6) {
    require ext_code.size(arg4)
    staticcall arg4.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), sub_b7a77bf8Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg5:
        require ext_code.size(arg4)
        call arg4.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_b7a77bf8Address, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            if 32 != return_data.size:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenInteract#approve: Approval failed'
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenInteract#approve: Approval failed'
    mem[100] = arg4
    require ext_code.size(sub_b7a77bf8Address)
    call sub_b7a77bf8Address.sellAllAmount(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, 0, arg5, address(arg3), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[128 len arg6.length] = arg6[all]
    if arg6.length != 0:
        if arg6.length != 64:
            revert with 0, 'OasisV3MatchingExchangeWrapper#getMaximumPrice: orderData is not the right length'
        if mem[128 len 4], Mask(224, 32, arg5) >> 32 != uint128(arg5):
            revert with 0, 'OasisV3MatchingExchangeWrapper#getMaximumPrice: takerAmountRatio > 128 bits'
        if uint32(arg5), address(arg3) << 64 != uint64(arg3) << 64:
            revert with 0, 'OasisV3MatchingExchangeWrapper#getMaximumPrice: makerAmountRatio > 128 bits'
        if uint32(arg5), address(arg3) << 64 <= 0:
            revert with 0, 'OasisV3MatchingExchangeWrapper#getMaximumPrice: makerAmountRatio cannot be zero'
        if uint32(arg5), address(arg3) << 64:
            if not ext_call.return_data[0]:
                if arg5:
                    require uint32(arg5), address(arg3) << 64 * arg5 / arg5 == uint32(arg5), address(arg3) << 64
                    if uint32(arg5), address(arg3) << 64 * arg5 > 0:
                        revert with 0, 'OasisV3MatchingExchangeWrapper#requireBelowMaximumPrice: price is too high'
            else:
                require mem[128 len 4], Mask(224, 32, arg5) >> 32 * ext_call.return_data[0] / ext_call.return_data[0] == mem[128 len 4], Mask(224, 32, arg5) >> 32
                if not arg5:
                    if 0 > mem[128 len 4], Mask(224, 32, arg5) >> 32 * ext_call.return_data[0]:
                        revert with 0, 'OasisV3MatchingExchangeWrapper#requireBelowMaximumPrice: price is too high'
                else:
                    require uint32(arg5), address(arg3) << 64 * arg5 / arg5 == uint32(arg5), address(arg3) << 64
                    if uint32(arg5), address(arg3) << 64 * arg5 > mem[128 len 4], Mask(224, 32, arg5) >> 32 * ext_call.return_data[0]:
                        revert with 0, 'OasisV3MatchingExchangeWrapper#requireBelowMaximumPrice: price is too high'
    require ext_code.size(arg3)
    staticcall arg3.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        require ext_code.size(arg3)
        call arg3.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            if 32 != return_data.size:
                revert with 0, 'TokenInteract#approve: Approval failed'
            if not ext_call.return_data[0]:
                revert with 0, 'TokenInteract#approve: Approval failed'
    return ext_call.return_data[0]
}



}
