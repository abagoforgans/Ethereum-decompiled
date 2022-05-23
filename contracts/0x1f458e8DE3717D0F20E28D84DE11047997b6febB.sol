contract main {




// =====================  Runtime code  =====================


address owner;
mapping of address exchangeAdapters;
array of struct exchanges;
uint128 stor3; offset 160
address stor3;
uint256 stor3;
mapping of uint256 stor4;

function getExchangeAdapter(bytes32 arg1) {
    return exchangeAdapters[arg1]
}

function exchanges(uint256 arg1) {
    require arg1 < exchanges.length
    return exchanges[arg1].field_0
}

function owner() {
    return owner
}

function exchangeAdapters(bytes32 arg1) {
    return exchangeAdapters[arg1]
}

function _fallback() payable {
    revert
}

function isValidAdapter(address arg1) {
    return (stor4[address(arg1)] > 0)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getExchangeInfo(bytes32 arg1) {
    require exchangeAdapters[arg1]
    require ext_code.size(exchangeAdapters[arg1])
    call exchangeAdapters[arg1].getExchangeDetails() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], bool(ext_call.return_data[32])
}

function sub_4fbe0858(?) {
    require msg.sender == owner
    idx = 0
    while idx < exchanges.length:
        mem[0] = 2
        if exchanges[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        if idx >= exchanges.length:
            return 0
        s = idx
        while s < exchanges.length - 1:
            require s + 1 < exchanges.length
            require s < exchanges.length
            mem[0] = 2
            exchanges[s].field_0 = exchanges[s].field_256
            s = s + 1
            continue 
        exchanges.length--
        if exchanges.length > exchanges.length - 1:
            idx = exchanges.length + sha3(2) - 1
            while sha3(2) + exchanges.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        return 1
    return 0
}

function addExchange(bytes32 arg1, address arg2) {
    require msg.sender == owner
    require arg2
    uint256(stor3.field_0)++
    require ext_code.size(arg2)
    call arg2.setExchangeDetails(bytes32 arg1, bytes32 arg2) with:
         gas gas_remaining wei
        args sha3(arg2, Mask(96, 0, stor3.field_160), address(stor3.field_0)), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    exchanges.length++
    exchanges[exchanges.length].field_0 = sha3(arg2, Mask(96, 0, stor3.field_160), address(stor3.field_0))
    exchangeAdapters[arg2][Mask(96, 0, stor3.field_160)][address(stor3.field_0)] = arg2
    stor4[address(arg2)]++
    emit AddedExchange(sha3(arg2, Mask(96, 0, stor3.field_160), address(stor3.field_0)));
    return 1
}

function getExchanges() {
    if not exchanges.length:
        mem[(32 * exchanges.length) + 128] = 32
        mem[(32 * exchanges.length) + 160] = exchanges.length
        mem[(32 * exchanges.length) + 192 len floor32(exchanges.length)] = mem[128 len floor32(exchanges.length)]
        return memory
          from (32 * exchanges.length) + 128
           len (96 * exchanges.length) + 64
    mem[128] = uint256(exchanges.field_0)
    idx = 128
    s = 0
    while (32 * exchanges.length) + 96 > idx:
        mem[idx + 32] = exchanges[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * exchanges.length) + 192 len floor32(exchanges.length)] = mem[128 len floor32(exchanges.length)]
    return Array(len=exchanges.length, data=mem[128 len floor32(exchanges.length)], mem[(32 * exchanges.length) + floor32(exchanges.length) + 192 len (32 * exchanges.length) - floor32(exchanges.length)]), 
}

function supportsTradingPair(address arg1, address arg2, bytes32 arg3) {
    if not arg3:
        s = 0
        idx = 0
        s = 0
        while idx < exchanges.length:
            mem[0] = exchanges[idx].field_0
            mem[32] = 1
            require ext_code.size(exchangeAdapters[stor2[idx].field_0])
            call exchangeAdapters[stor2[idx].field_0].isEnabled() with:
                 gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                s = exchanges[idx].field_0
                idx = idx + 1
                s = exchangeAdapters[stor2[idx].field_0]
                continue 
            mem[100] = arg1
            mem[132] = arg2
            require ext_code.size(exchangeAdapters[stor2[idx].field_0])
            call exchangeAdapters[stor2[idx].field_0].supportsTradingPair(address arg1, address arg2) with:
                 gas gas_remaining wei
                args address(arg1), arg2
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                s = exchanges[idx].field_0
                idx = idx + 1
                s = exchangeAdapters[stor2[idx].field_0]
                continue 
            return 1
        return 0
    require ext_code.size(exchangeAdapters[0])
    call exchangeAdapters[0].isEnabled() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(exchangeAdapters[0])
    call exchangeAdapters[0].supportsTradingPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    return 1
}

function pickExchange(address arg1, uint256 arg2, uint256 arg3, bool arg4) {
    s = 0
    s = 0
    idx = 0
    while idx < exchanges.length:
        mem[0] = exchanges[idx].field_0
        mem[32] = 1
        require ext_code.size(exchangeAdapters[stor2[idx].field_0])
        call exchangeAdapters[stor2[idx].field_0].isEnabled() with:
             gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            s = exchangeAdapters[stor2[idx].field_0]
            s = exchanges[idx].field_0
            idx = idx + 1
            continue 
        if not arg4:
            mem[132] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
            mem[164] = arg2
            require ext_code.size(exchangeAdapters[stor2[idx].field_0])
            call exchangeAdapters[stor2[idx].field_0].getPrice(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, arg2
        else:
            mem[132] = arg1
            mem[164] = arg2
            require ext_code.size(exchangeAdapters[stor2[idx].field_0])
            call exchangeAdapters[stor2[idx].field_0].getPrice(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(arg1), arg2
        mem[96 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not ext_call.return_data[0]:
            s = exchangeAdapters[stor2[idx].field_0]
            s = exchanges[idx].field_0
            idx = idx + 1
            continue 
        if ext_call.return_data[32] < arg3:
            s = exchangeAdapters[stor2[idx].field_0]
            s = exchanges[idx].field_0
            idx = idx + 1
            continue 
        if ext_call.return_data[32] < -1:
            s = exchangeAdapters[stor2[idx].field_0]
            s = exchanges[idx].field_0
            idx = idx + 1
            continue 
        return exchanges[idx].field_0
    return 0
}

function getPrice(address arg1, address arg2, uint256 arg3, bytes32 arg4) {
    if not arg4:
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
            s = 0
            s = 0
            idx = 0
            while idx < exchanges.length:
                mem[0] = exchanges[idx].field_0
                mem[32] = 1
                require ext_code.size(exchangeAdapters[stor2[idx].field_0])
                call exchangeAdapters[stor2[idx].field_0].isEnabled() with:
                     gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    s = exchangeAdapters[stor2[idx].field_0]
                    s = exchanges[idx].field_0
                    idx = idx + 1
                    continue 
                mem[132] = arg2
                mem[164] = arg3
                require ext_code.size(exchangeAdapters[stor2[idx].field_0])
                call exchangeAdapters[stor2[idx].field_0].getPrice(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(arg2), arg3
                mem[96 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if not ext_call.return_data[0]:
                    s = exchangeAdapters[stor2[idx].field_0]
                    s = exchanges[idx].field_0
                    idx = idx + 1
                    continue 
                if ext_call.return_data[32] < 0:
                    s = exchangeAdapters[stor2[idx].field_0]
                    s = exchanges[idx].field_0
                    idx = idx + 1
                    continue 
                if ext_call.return_data[32] < -1:
                    s = exchangeAdapters[stor2[idx].field_0]
                    s = exchanges[idx].field_0
                    idx = idx + 1
                    continue 
                if not exchanges[idx].field_0:
                    return 0
                require ext_code.size(exchangeAdapters[stor2[idx].field_0])
                call exchangeAdapters[stor2[idx].field_0].getPrice(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(arg1), address(arg2), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                return ext_call.return_data[0], ext_call.return_data[32]
        else:
            s = 0
            s = 0
            idx = 0
            while idx < exchanges.length:
                mem[0] = exchanges[idx].field_0
                mem[32] = 1
                require ext_code.size(exchangeAdapters[stor2[idx].field_0])
                call exchangeAdapters[stor2[idx].field_0].isEnabled() with:
                     gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    s = exchangeAdapters[stor2[idx].field_0]
                    s = exchanges[idx].field_0
                    idx = idx + 1
                    continue 
                mem[132] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                mem[164] = arg3
                require ext_code.size(exchangeAdapters[stor2[idx].field_0])
                call exchangeAdapters[stor2[idx].field_0].getPrice(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, arg3
                mem[96 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if not ext_call.return_data[0]:
                    s = exchangeAdapters[stor2[idx].field_0]
                    s = exchanges[idx].field_0
                    idx = idx + 1
                    continue 
                if ext_call.return_data[32] < 0:
                    s = exchangeAdapters[stor2[idx].field_0]
                    s = exchanges[idx].field_0
                    idx = idx + 1
                    continue 
                if ext_call.return_data[32] < -1:
                    s = exchangeAdapters[stor2[idx].field_0]
                    s = exchanges[idx].field_0
                    idx = idx + 1
                    continue 
                if not exchanges[idx].field_0:
                    return 0
                require ext_code.size(exchangeAdapters[stor2[idx].field_0])
                call exchangeAdapters[stor2[idx].field_0].getPrice(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(arg1), address(arg2), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                return ext_call.return_data[0], ext_call.return_data[32]
        return 0
    require ext_code.size(exchangeAdapters[arg4])
    call exchangeAdapters[arg4].getPrice(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32]
}



}
