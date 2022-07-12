contract main {


// =======================  Init code  ======================


uint8 stor0;
address stor0; offset 8
address stor1;
uint256 stor2;

function _fallback() payable {
    uint8(stor0.field_0) = 0
    stor2 = 0
    require not msg.value
    address(stor0.field_8) = code.data[3321 len 20]
    stor1 = code.data[3353 len 20]
    return code.data[132 len 3177]
}



// =====================  Runtime code  =====================


const isFinalizeAgent = 1


uint8 stor0;
address tokenAddress; offset 8
address crowdsaleAddress;
uint256 distributedReservedTokensDestinationsLen;

function crowdsale() {
    return crowdsaleAddress
}

function distributedReservedTokensDestinationsLen() {
    return distributedReservedTokensDestinationsLen
}

function reservedTokensAreDistributed() {
    return bool(stor0)
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function isSane() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0xd1f276d3 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return (ext_call.return_data[12 len 20] == this.address)
}

function finalizeCrowdsale() {
    require crowdsaleAddress == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0xc3310517 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0] <= 0:
        if ext_code.size(tokenAddress):
            call tokenAddress.'_A-O' with:
                 gas gas_remaining - 710 wei
            if ext_call.success:
    else:
        if stor0:
            if ext_code.size(tokenAddress):
                call tokenAddress.'_A-O' with:
                     gas gas_remaining - 710 wei
                if ext_call.success:
    revert
}

function distributeReservedTokens(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == crowdsaleAddress
    require arg1 > 0
    require not stor0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xc3310517 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require distributedReservedTokensDestinationsLen < ext_call.return_data[0]
    mem[128] = 0
    mem[96] = 0xebdfa45500000000000000000000000000000000000000000000000000000000
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.mem[var23003 len 4] with:
         gas gas_remaining - 710 wei
        args mem[var23003 + 4 len var23004 - 4]
    mem[var23005] = ext_call.return_data[0]
    require ext_call.success
    if uint8(var25014) >= 0:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xc3310517 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(0x290a75182efcef19090bb34810ab7d42bd015d80)
        delegate 0x290a75182efcef19090bb34810ab7d42bd015d80.0xf4f3bdc1 with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0], distributedReservedTokensDestinationsLen
        require delegate.return_code
        if delegate.return_data[0] < arg1:
            s = 0
            t = 0
            u = 0
            v = 0
            w = 0
            idx = distributedReservedTokensDestinationsLen
            while idx < distributedReservedTokensDestinationsLen + delegate.return_data[0]:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x7386f0a7 with:
                     gas gas_remaining - 710 wei
                    args idx
                require ext_call.success
                mem[128] = 0
                mem[100] = address(ext_call.return_data[0])
                require ext_code.size(tokenAddress)
                call tokenAddress.0xb4ecb847 with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0])
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                if ext_call.return_data[0]:
                    s = s
                    t = t
                    u = u
                    v = v
                    w = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                require ext_code.size(tokenAddress)
                call tokenAddress.0x612544b3 with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0])
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.0x3d0acdaa with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0])
                require ext_call.success
                mem[128] = 0
                require ext_code.size(tokenAddress)
                call tokenAddress.0x45e7e140 with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0])
                require ext_call.success
                if ext_call.return_data[0] <= 0:
                    if ext_call.return_data[0] > 0:
                        mem[132] = ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        require ext_call.success
                    mem[96] = 0x6ffc22b800000000000000000000000000000000000000000000000000000000
                    mem[100] = address(ext_call.return_data[0])
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x6ffc22b8 with:
                         gas gas_remaining - 710 wei
                        args address(ext_call.return_data[0])
                    require ext_call.success
                    distributedReservedTokensDestinationsLen++
                    s = ext_call.return_data[0]
                    t = ext_call.return_data[0]
                    u = ext_call.return_data[0]
                    v = v
                    w = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                require 10^ext_call.return_data[0]
                mem[132] = var25015 * ext_call.return_data[0] / 10^ext_call.return_data[0] / 100
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0]), var25015 * ext_call.return_data[0] / 10^ext_call.return_data[0] / 100
                require ext_call.success
                if ext_call.return_data[0] > 0:
                    mem[132] = ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(ext_call.return_data[0]), ext_call.return_data[0]
                    require ext_call.success
                mem[96] = 0x6ffc22b800000000000000000000000000000000000000000000000000000000
                mem[100] = address(ext_call.return_data[0])
                require ext_code.size(tokenAddress)
                call tokenAddress.0x6ffc22b8 with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0])
                require ext_call.success
                distributedReservedTokensDestinationsLen++
                s = ext_call.return_data[0]
                t = ext_call.return_data[0]
                u = ext_call.return_data[0]
                v = var25015 * ext_call.return_data[0] / 10^ext_call.return_data[0] / 100
                w = ext_call.return_data[0]
                idx = idx + 1
                continue 
        else:
            s = 0
            t = 0
            u = 0
            v = 0
            w = 0
            idx = distributedReservedTokensDestinationsLen
            while idx < distributedReservedTokensDestinationsLen + arg1:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x7386f0a7 with:
                     gas gas_remaining - 710 wei
                    args idx
                require ext_call.success
                mem[128] = 0
                mem[100] = address(ext_call.return_data[0])
                require ext_code.size(tokenAddress)
                call tokenAddress.0xb4ecb847 with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0])
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                if ext_call.return_data[0]:
                    s = s
                    t = t
                    u = u
                    v = v
                    w = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                require ext_code.size(tokenAddress)
                call tokenAddress.0x612544b3 with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0])
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.0x3d0acdaa with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0])
                require ext_call.success
                mem[128] = 0
                require ext_code.size(tokenAddress)
                call tokenAddress.0x45e7e140 with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0])
                require ext_call.success
                if ext_call.return_data[0] <= 0:
                    if ext_call.return_data[0] > 0:
                        mem[132] = ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        require ext_call.success
                    mem[96] = 0x6ffc22b800000000000000000000000000000000000000000000000000000000
                    mem[100] = address(ext_call.return_data[0])
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x6ffc22b8 with:
                         gas gas_remaining - 710 wei
                        args address(ext_call.return_data[0])
                    require ext_call.success
                    distributedReservedTokensDestinationsLen++
                    s = ext_call.return_data[0]
                    t = ext_call.return_data[0]
                    u = ext_call.return_data[0]
                    v = v
                    w = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                require 10^ext_call.return_data[0]
                mem[132] = var25015 * ext_call.return_data[0] / 10^ext_call.return_data[0] / 100
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0]), var25015 * ext_call.return_data[0] / 10^ext_call.return_data[0] / 100
                require ext_call.success
                if ext_call.return_data[0] > 0:
                    mem[132] = ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(ext_call.return_data[0]), ext_call.return_data[0]
                    require ext_call.success
                mem[96] = 0x6ffc22b800000000000000000000000000000000000000000000000000000000
                mem[100] = address(ext_call.return_data[0])
                require ext_code.size(tokenAddress)
                call tokenAddress.0x6ffc22b8 with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0])
                require ext_call.success
                distributedReservedTokensDestinationsLen++
                s = ext_call.return_data[0]
                t = ext_call.return_data[0]
                u = ext_call.return_data[0]
                v = var25015 * ext_call.return_data[0] / 10^ext_call.return_data[0] / 100
                w = ext_call.return_data[0]
                idx = idx + 1
                continue 
    else:
        mem[128] = 0
        mem[96] = 0xbede2cac00000000000000000000000000000000000000000000000000000000
        mem[100] = uint8(var27011)
        require ext_code.size(crowdsaleAddress)
        call crowdsaleAddress.mem[var29003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var29003 + 4 len var29004 - 4]
        mem[var29005] = ext_call.return_data[0]
        require ext_call.success
        mem[128] = 0
        mem[96] = 0x518ab2a800000000000000000000000000000000000000000000000000000000
        require ext_code.size(0)
        call var33001.mem[var33003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var33003 + 4 len var33004 - 4]
        mem[var33005] = ext_call.return_data[0]
        require ext_call.success
        mem[96] = 0x66098d4f00000000000000000000000000000000000000000000000000000000
        mem[100] = var35004
        mem[132] = 0x518ab2a800000000000000000000000000000000000000000000000000000000
        require ext_code.size(0x290a75182efcef19090bb34810ab7d42bd015d80)
        delegate 0x290a75182efcef19090bb34810ab7d42bd015d80.mem[var37002 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var37002 + 4 len var37003 - 4]
        require delegate.return_code
        require ext_code.size(crowdsaleAddress)
        call crowdsaleAddress.0xebdfa455 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        s = var39013
        idx = var39014
        s = 0x66098d4f00000000000000000000000000000000000000000000000000000000
        while uint8(idx + 1) < uint8(ext_call.return_data[0]):
            require ext_code.size(crowdsaleAddress)
            call crowdsaleAddress.0xbede2cac with:
                 gas gas_remaining - 710 wei
                args uint8(idx + 1)
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x518ab2a8 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            mem[132] = ext_call.return_data[0]
            require ext_code.size(0x290a75182efcef19090bb34810ab7d42bd015d80)
            delegate 0x290a75182efcef19090bb34810ab7d42bd015d80.0x66098d4f with:
                 gas gas_remaining - 710 wei
                args s, ext_call.return_data[0]
            require delegate.return_code
            mem[128] = 0
            require ext_code.size(crowdsaleAddress)
            call crowdsaleAddress.0xebdfa455 with:
                 gas gas_remaining - 710 wei
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            s = ext_call.return_data[0]
            idx = idx + 1
            s = delegate.return_data[0]
            continue 
        require ext_code.size(tokenAddress)
        call tokenAddress.0xc3310517 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(0x290a75182efcef19090bb34810ab7d42bd015d80)
        delegate 0x290a75182efcef19090bb34810ab7d42bd015d80.0xf4f3bdc1 with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0], distributedReservedTokensDestinationsLen
        require delegate.return_code
        if delegate.return_data[0] < arg1:
            s = 0
            t = 0
            u = 0
            v = 0
            w = 0
            idx = distributedReservedTokensDestinationsLen
            while idx < distributedReservedTokensDestinationsLen + delegate.return_data[0]:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x7386f0a7 with:
                     gas gas_remaining - 710 wei
                    args idx
                require ext_call.success
                mem[128] = 0
                mem[100] = address(ext_call.return_data[0])
                require ext_code.size(tokenAddress)
                call tokenAddress.0xb4ecb847 with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0])
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                if ext_call.return_data[0]:
                    s = s
                    t = t
                    u = u
                    v = v
                    w = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                require ext_code.size(tokenAddress)
                call tokenAddress.0x612544b3 with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0])
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.0x3d0acdaa with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0])
                require ext_call.success
                mem[128] = 0
                require ext_code.size(tokenAddress)
                call tokenAddress.0x45e7e140 with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0])
                require ext_call.success
                if ext_call.return_data[0] <= 0:
                    if ext_call.return_data[0] > 0:
                        mem[132] = ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        require ext_call.success
                    mem[96] = 0x6ffc22b800000000000000000000000000000000000000000000000000000000
                    mem[100] = address(ext_call.return_data[0])
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x6ffc22b8 with:
                         gas gas_remaining - 710 wei
                        args address(ext_call.return_data[0])
                    require ext_call.success
                    distributedReservedTokensDestinationsLen++
                    s = ext_call.return_data[0]
                    t = ext_call.return_data[0]
                    u = ext_call.return_data[0]
                    v = v
                    w = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                require 10^ext_call.return_data[0]
                mem[132] = (0x66098d4f00000000000000000000000000000000000000000000000000000000 * ext_call.return_data[0]) + (None * _1448 * ext_call.return_data[0]) - (var39014 * _1448 * ext_call.return_data[0]) / 10^ext_call.return_data[0] / 100
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0]), (0x66098d4f00000000000000000000000000000000000000000000000000000000 * ext_call.return_data[0]) + (None * _1448 * ext_call.return_data[0]) - (var39014 * _1448 * ext_call.return_data[0]) / 10^ext_call.return_data[0] / 100
                require ext_call.success
                if ext_call.return_data[0] > 0:
                    mem[132] = ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(ext_call.return_data[0]), ext_call.return_data[0]
                    require ext_call.success
                mem[96] = 0x6ffc22b800000000000000000000000000000000000000000000000000000000
                mem[100] = address(ext_call.return_data[0])
                require ext_code.size(tokenAddress)
                call tokenAddress.0x6ffc22b8 with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0])
                require ext_call.success
                distributedReservedTokensDestinationsLen++
                s = ext_call.return_data[0]
                t = ext_call.return_data[0]
                u = ext_call.return_data[0]
                v = (0x66098d4f00000000000000000000000000000000000000000000000000000000 * ext_call.return_data[0]) + (None * _1448 * ext_call.return_data[0]) - (var39014 * _1448 * ext_call.return_data[0]) / 10^ext_call.return_data[0] / 100
                w = ext_call.return_data[0]
                idx = idx + 1
                continue 
        else:
            s = 0
            t = 0
            u = 0
            v = 0
            w = 0
            idx = distributedReservedTokensDestinationsLen
            while idx < distributedReservedTokensDestinationsLen + arg1:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x7386f0a7 with:
                     gas gas_remaining - 710 wei
                    args idx
                require ext_call.success
                mem[128] = 0
                mem[100] = address(ext_call.return_data[0])
                require ext_code.size(tokenAddress)
                call tokenAddress.0xb4ecb847 with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0])
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                if ext_call.return_data[0]:
                    s = s
                    t = t
                    u = u
                    v = v
                    w = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                require ext_code.size(tokenAddress)
                call tokenAddress.0x612544b3 with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0])
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.0x3d0acdaa with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0])
                require ext_call.success
                mem[128] = 0
                require ext_code.size(tokenAddress)
                call tokenAddress.0x45e7e140 with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0])
                require ext_call.success
                if ext_call.return_data[0] <= 0:
                    if ext_call.return_data[0] > 0:
                        mem[132] = ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        require ext_call.success
                    mem[96] = 0x6ffc22b800000000000000000000000000000000000000000000000000000000
                    mem[100] = address(ext_call.return_data[0])
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x6ffc22b8 with:
                         gas gas_remaining - 710 wei
                        args address(ext_call.return_data[0])
                    require ext_call.success
                    distributedReservedTokensDestinationsLen++
                    s = ext_call.return_data[0]
                    t = ext_call.return_data[0]
                    u = ext_call.return_data[0]
                    v = v
                    w = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                require 10^ext_call.return_data[0]
                mem[132] = (0x66098d4f00000000000000000000000000000000000000000000000000000000 * ext_call.return_data[0]) + (None * _1448 * ext_call.return_data[0]) - (var39014 * _1448 * ext_call.return_data[0]) / 10^ext_call.return_data[0] / 100
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0]), (0x66098d4f00000000000000000000000000000000000000000000000000000000 * ext_call.return_data[0]) + (None * _1448 * ext_call.return_data[0]) - (var39014 * _1448 * ext_call.return_data[0]) / 10^ext_call.return_data[0] / 100
                require ext_call.success
                if ext_call.return_data[0] > 0:
                    mem[132] = ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(ext_call.return_data[0]), ext_call.return_data[0]
                    require ext_call.success
                mem[96] = 0x6ffc22b800000000000000000000000000000000000000000000000000000000
                mem[100] = address(ext_call.return_data[0])
                require ext_code.size(tokenAddress)
                call tokenAddress.0x6ffc22b8 with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0])
                require ext_call.success
                distributedReservedTokensDestinationsLen++
                s = ext_call.return_data[0]
                t = ext_call.return_data[0]
                u = ext_call.return_data[0]
                v = (0x66098d4f00000000000000000000000000000000000000000000000000000000 * ext_call.return_data[0]) + (None * _1448 * ext_call.return_data[0]) - (var39014 * _1448 * ext_call.return_data[0]) / 10^ext_call.return_data[0] / 100
                w = ext_call.return_data[0]
                idx = idx + 1
                continue 
    require ext_code.size(tokenAddress)
    call tokenAddress.0xc3310517 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if distributedReservedTokensDestinationsLen == ext_call.return_data[0]:
        stor0 = 1
}



}
