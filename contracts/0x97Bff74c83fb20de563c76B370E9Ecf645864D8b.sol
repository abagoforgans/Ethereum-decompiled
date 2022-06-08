contract main {




// =====================  Runtime code  =====================


#
#  - getStats(uint256 arg1, uint256[7] arg2)
#
address tokenAddress;
address allocatorAddress;
address crowdsaleAddress;
address pricingAddress;

function pricing() {
    return pricingAddress
}

function crowdsale() {
    return crowdsaleAddress
}

function allocator() {
    return allocatorAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function getWeis(uint256 arg1, uint256 arg2) {
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.0x518ab2a8 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.0x3130c46 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pricingAddress)
    call pricingAddress.0x25b16c4a with:
         gas gas_remaining wei
        args ext_call.return_data[0], ext_call.return_data[0], arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32]
}

function getUSDAmount(uint256 arg1, uint256 arg2) {
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.0x3130c46 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.0x518ab2a8 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pricingAddress)
    call pricingAddress.0xe7eee094 with:
         gas gas_remaining wei
        args ext_call.return_data[0], ext_call.return_data[0], arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32]
}

function getTokens(uint256 arg1, uint256 arg2) {
    require ext_code.size(allocatorAddress)
    call allocatorAddress.0x60659a92 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.0x518ab2a8 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.0x3130c46 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pricingAddress)
    call pricingAddress.0x5127ad4c with:
         gas gas_remaining wei
        args 0, 0, ext_call.return_data[0], ext_call.return_data[0], arg2, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
}

function getCurrencyContrData(uint256 arg1, uint256[7] arg2) {
    mem[96 len 224] = call.data[36 len 224]
    mem[320 len 672] = code.data[5354 len 672]
    idx = 0
    s = 0
    while idx < 7:
        require ext_code.size(crowdsaleAddress)
        call crowdsaleAddress.0x518ab2a8 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(crowdsaleAddress)
        call crowdsaleAddress.0x3130c46 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[996] = mem[(32 * idx) + 96]
        mem[1060] = ext_call.return_data[0]
        require ext_code.size(pricingAddress)
        call pricingAddress.0xe0e4fbfd with:
             gas gas_remaining wei
            args mem[996], ext_call.return_data[0], ext_call.return_data[0]
        mem[992 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require s < 21
        require s + 1 < 21
        require s + 2 < 21
        mem[(32 * s + 2) + 320] = ext_call.return_data[64]
        mem[(32 * s + 1) + 320] = ext_call.return_data[32]
        mem[(32 * s) + 320] = ext_call.return_data[0]
        idx = idx + 1
        s = s + 3
        continue 
    return memory
      from 320
       len 672
}

function getStatsData(uint256 arg1) {
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.0x518ab2a8 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pricingAddress)
    call pricingAddress.0x6a9d6e20 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xd5abeb01 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.0xb29418d5 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.currentState() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 6
    require ext_code.size(pricingAddress)
    call pricingAddress.0x20adacc9 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pricingAddress)
    call pricingAddress.0x885a5ef2 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], 
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0]
}

function getTiersData(uint256 arg1) {
    mem[96 len 2080] = code.data[5354 len 2080]
    require ext_code.size(pricingAddress)
    call pricingAddress.0xcda6239d with:
         gas gas_remaining wei
    mem[3616 len 1440] = ext_call.return_data[0 len 1440]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 1440
    idx = 0
    s = 0
    while idx < 5:
        if not idx:
            require mem[3616]
            require s < 65
            mem[(32 * s) + 96] = 100000 * 10^18 / mem[3616]
        else:
            require 9 * idx / idx == 9
            require 9 * idx < 45
            require mem[(32 * 9 * idx) + 3616]
            require s < 65
            mem[(32 * s) + 96] = 100000 * 10^18 / mem[(32 * 9 * idx) + 3616]
        require s + 1 < 65
        mem[(32 * s + 1) + 96] = 0
        if not idx:
            require s + 2 < 65
            mem[(32 * s + 2) + 96] = mem[3648]
        else:
            require 9 * idx / idx == 9
            require (9 * idx) + 1 >= 9 * idx
            require (9 * idx) + 1 < 45
            require s + 2 < 65
            mem[(32 * s + 2) + 96] = mem[(32 * (9 * idx) + 1) + 3616]
        if not idx:
            require s + 3 < 65
            mem[(32 * s + 3) + 96] = mem[3680]
        else:
            require 9 * idx / idx == 9
            require (9 * idx) + 2 >= 9 * idx
            require (9 * idx) + 2 < 45
            require s + 3 < 65
            mem[(32 * s + 3) + 96] = mem[(32 * (9 * idx) + 2) + 3616]
        if not idx:
            require s + 4 < 65
            mem[(32 * s + 4) + 96] = mem[3712]
        else:
            require 9 * idx / idx == 9
            require (9 * idx) + 3 >= 9 * idx
            require (9 * idx) + 3 < 45
            require s + 4 < 65
            mem[(32 * s + 4) + 96] = mem[(32 * (9 * idx) + 3) + 3616]
        if not idx:
            require s + 5 < 65
            mem[(32 * s + 5) + 96] = mem[3744]
        else:
            require 9 * idx / idx == 9
            require (9 * idx) + 4 >= 9 * idx
            require (9 * idx) + 4 < 45
            require s + 5 < 65
            mem[(32 * s + 5) + 96] = mem[(32 * (9 * idx) + 4) + 3616]
        if not idx:
            require s + 6 < 65
            mem[(32 * s + 6) + 96] = mem[3776]
        else:
            require 9 * idx / idx == 9
            require (9 * idx) + 5 >= 9 * idx
            require (9 * idx) + 5 < 45
            require s + 6 < 65
            mem[(32 * s + 6) + 96] = mem[(32 * (9 * idx) + 5) + 3616]
        require s + 7 < 65
        mem[(32 * s + 7) + 96] = 0
        if not idx:
            require s + 8 < 65
            mem[(32 * s + 8) + 96] = mem[3808]
        else:
            require 9 * idx / idx == 9
            require (9 * idx) + 6 >= 9 * idx
            require (9 * idx) + 6 < 45
            require s + 8 < 65
            mem[(32 * s + 8) + 96] = mem[(32 * (9 * idx) + 6) + 3616]
        require s + 9 < 65
        mem[(32 * s + 9) + 96] = 0
        if not idx:
            require s + 10 < 65
            mem[(32 * s + 10) + 96] = mem[3840]
        else:
            require 9 * idx / idx == 9
            require (9 * idx) + 7 >= 9 * idx
            require (9 * idx) + 7 < 45
            require s + 10 < 65
            mem[(32 * s + 10) + 96] = mem[(32 * (9 * idx) + 7) + 3616]
        if not idx:
            require s + 11 < 65
            mem[(32 * s + 11) + 96] = mem[3872]
        else:
            require 9 * idx / idx == 9
            require (9 * idx) + 8 >= 9 * idx
            require (9 * idx) + 8 < 45
            require s + 11 < 65
            mem[(32 * s + 11) + 96] = mem[(32 * (9 * idx) + 8) + 3616]
        require s + 12 < 65
        mem[(32 * s + 12) + 96] = 1
        idx = idx + 1
        s = s + 13
        continue 
    return mem[96], mem[128 len 2016], 2
}



}
