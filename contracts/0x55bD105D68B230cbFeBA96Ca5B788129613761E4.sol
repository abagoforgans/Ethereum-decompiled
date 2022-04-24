contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 2763]




// =====================  Runtime code  =====================


address tokenAddress;
address crowdsaleAddress;
array of address beneficiaries;
uint256 collectedTokens;

function collectedTokens() {
    return collectedTokens
}

function crowdsale() {
    return crowdsaleAddress
}

function beneficiaries(uint256 arg1) {
    require arg1 < beneficiaries.length
    return beneficiaries[arg1]
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function setToken(address arg1) {
    require arg1
    idx = 0
    s = 0
    while idx < beneficiaries.length:
        mem[0] = 2
        if beneficiaries[idx] != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    require s
    tokenAddress = arg1
}

function sub_b7ec94b9(?) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg1
    require arg2
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        require mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
    tokenAddress = arg1
    crowdsaleAddress = arg2
    beneficiaries.length = arg3.length
    if not arg3.length:
        idx = 0
        while beneficiaries.length > idx:
            beneficiaries[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg3.length) + 128 > idx:
            beneficiaries[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
        while beneficiaries.length > idx:
            beneficiaries[idx] = 0
            idx = idx + 1
            continue 
}

function release() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] + collectedTokens >= ext_call.return_data[0]
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.0xfe67a189 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0] + 1800 >= ext_call.return_data[0]
    require ext_call.return_data[0] + 3600 >= ext_call.return_data[0]
    if block.timestamp < ext_call.return_data[0] + 1800:
        if ext_call.return_data[0] + collectedTokens:
            require ext_call.return_data[0] + collectedTokens
            require (20 * ext_call.return_data[0]) + (20 * collectedTokens) / ext_call.return_data[0] + collectedTokens == 20
        require collectedTokens <= (20 * ext_call.return_data[0]) + (20 * collectedTokens) / 100
        require ((20 * ext_call.return_data[0]) + (20 * collectedTokens) / 100) - collectedTokens > 0
        require (20 * ext_call.return_data[0]) + (20 * collectedTokens) / 100 >= collectedTokens
        collectedTokens = (20 * ext_call.return_data[0]) + (20 * collectedTokens) / 100
        idx = 0
        while idx < beneficiaries.length:
            mem[0] = 2
            mem[100] = beneficiaries[idx]
            mem[132] = ((20 * ext_call.return_data[0]) + (20 * collectedTokens) / 100) - collectedTokens / 3
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args beneficiaries[idx], ((20 * ext_call.return_data[0]) + (20 * collectedTokens) / 100) - collectedTokens / 3
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
        if block.timestamp < ext_call.return_data[0] + 3600:
            if ext_call.return_data[0] + collectedTokens:
                require ext_call.return_data[0] + collectedTokens
                require (50 * ext_call.return_data[0]) + (50 * collectedTokens) / ext_call.return_data[0] + collectedTokens == 50
            require collectedTokens <= (50 * ext_call.return_data[0]) + (50 * collectedTokens) / 100
            require ((50 * ext_call.return_data[0]) + (50 * collectedTokens) / 100) - collectedTokens > 0
            require (50 * ext_call.return_data[0]) + (50 * collectedTokens) / 100 >= collectedTokens
            collectedTokens = (50 * ext_call.return_data[0]) + (50 * collectedTokens) / 100
            idx = 0
            while idx < beneficiaries.length:
                mem[0] = 2
                mem[100] = beneficiaries[idx]
                mem[132] = ((50 * ext_call.return_data[0]) + (50 * collectedTokens) / 100) - collectedTokens / 3
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args beneficiaries[idx], ((50 * ext_call.return_data[0]) + (50 * collectedTokens) / 100) - collectedTokens / 3
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                require ext_call.return_data[0]
                idx = idx + 1
                continue 
        else:
            if ext_call.return_data[0] + collectedTokens:
                require ext_call.return_data[0] + collectedTokens
                require (100 * ext_call.return_data[0]) + (100 * collectedTokens) / ext_call.return_data[0] + collectedTokens == 100
            require collectedTokens <= (100 * ext_call.return_data[0]) + (100 * collectedTokens) / 100
            require ((100 * ext_call.return_data[0]) + (100 * collectedTokens) / 100) - collectedTokens > 0
            require (100 * ext_call.return_data[0]) + (100 * collectedTokens) / 100 >= collectedTokens
            collectedTokens = (100 * ext_call.return_data[0]) + (100 * collectedTokens) / 100
            idx = 0
            while idx < beneficiaries.length:
                mem[0] = 2
                mem[100] = beneficiaries[idx]
                mem[132] = ((100 * ext_call.return_data[0]) + (100 * collectedTokens) / 100) - collectedTokens / 3
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args beneficiaries[idx], ((100 * ext_call.return_data[0]) + (100 * collectedTokens) / 100) - collectedTokens / 3
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                require ext_call.return_data[0]
                idx = idx + 1
                continue 
}



}
