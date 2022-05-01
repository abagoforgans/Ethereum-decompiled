contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
address stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    stor1 = 421356 * 3600
    stor2 = 422100 * 3600
    stor3 = 0x36a3c000f8a3dc37fcd261d1844efaf851f81556
    stor4 = 0x8bedbe45aa345938d70388e381e2b6199a15b3c3
    stor5 = 2000
    stor6 = 16000 * 10^18
    require not msg.value
    stor0 = 0x99705a8b60d0fe21a4b8ee54db361b3c573d18bb
    return code.data[320 len 2217]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 startTime;
uint256 endTime;
address wallet1Address;
address wallet2Address;
uint256 rate;
uint256 cap;
uint256 weiRaised;

function wallet2() {
    return wallet2Address
}

function wallet1() {
    return wallet1Address
}

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function cap() {
    return cap
}

function weiRaised() {
    return weiRaised
}

function startTime() {
    return startTime
}

function token() {
    return tokenAddress
}

function hasEnded() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    return weiRaised >= cap
}

function buyTokens(address arg1) payable {
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require weiRaised < cap
    require weiRaised + msg.value >= weiRaised
    if weiRaised + msg.value <= cap:
        if msg.value < 5 * 10^18:
            if not rate / 100:
                require rate >= rate
                if not msg.value:
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.transferTokensFromVault(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(arg1), 0
                    require ext_call.success
                    emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                else:
                    require msg.value
                    require msg.value * rate / msg.value == rate
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.transferTokensFromVault(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(arg1), msg.value * rate
                    require ext_call.success
                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
            else:
                require rate / 100
                require 30 * rate / 100 / rate / 100 == 30
                require rate + (30 * rate / 100) >= rate
                if not msg.value:
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.transferTokensFromVault(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(arg1), 0
                    require ext_call.success
                    emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                else:
                    require msg.value
                    require (rate * msg.value) + (30 * rate / 100 * msg.value) / msg.value == rate + (30 * rate / 100)
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.transferTokensFromVault(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(arg1), (rate * msg.value) + (30 * rate / 100 * msg.value)
                    require ext_call.success
                    emit TokenPurchase(msg.value, (rate * msg.value) + (30 * rate / 100 * msg.value), msg.sender, arg1);
        else:
            if not rate / 100:
                require rate >= rate
                if not msg.value:
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.transferTokensFromVault(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(arg1), 0
                    require ext_call.success
                    emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                else:
                    require msg.value
                    require msg.value * rate / msg.value == rate
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.transferTokensFromVault(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(arg1), msg.value * rate
                    require ext_call.success
                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
            else:
                require rate / 100
                require 50 * rate / 100 / rate / 100 == 50
                require rate + (50 * rate / 100) >= rate
                if not msg.value:
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.transferTokensFromVault(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(arg1), 0
                    require ext_call.success
                    emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                else:
                    require msg.value
                    require (rate * msg.value) + (50 * rate / 100 * msg.value) / msg.value == rate + (50 * rate / 100)
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.transferTokensFromVault(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(arg1), (rate * msg.value) + (50 * rate / 100 * msg.value)
                    require ext_call.success
                    emit TokenPurchase(msg.value, (rate * msg.value) + (50 * rate / 100 * msg.value), msg.sender, arg1);
        if not Mask(255, 1, msg.value):
            if msg.value != 0:
                call wallet1Address with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                call wallet1Address with:
                   value msg.value / 2 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                call wallet2Address with:
                   value msg.value / 2 wei
                     gas 2300 * is_zero(value) wei
        else:
            require msg.value / 2
            require Mask(255, 1, msg.value) / msg.value / 2 == 2
            if Mask(255, 1, msg.value) != msg.value:
                call wallet1Address with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                call wallet1Address with:
                   value msg.value / 2 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                call wallet2Address with:
                   value msg.value / 2 wei
                     gas 2300 * is_zero(value) wei
    else:
        require cap <= weiRaised + msg.value
        require weiRaised + msg.value - cap <= msg.value
        call arg1 with:
           value weiRaised + msg.value - cap wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if -weiRaised + cap < 5 * 10^18:
            if not rate / 100:
                require rate >= rate
                if not -weiRaised + cap:
                    require cap >= weiRaised
                    weiRaised = cap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.transferTokensFromVault(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(arg1), 0
                    require ext_call.success
                    emit TokenPurchase(-weiRaised + cap, 0, msg.sender, arg1);
                else:
                    require -weiRaised + cap
                    require (-1 * weiRaised * rate) + (cap * rate) / -weiRaised + cap == rate
                    require cap >= weiRaised
                    weiRaised = cap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.transferTokensFromVault(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(arg1), (-1 * weiRaised * rate) + (cap * rate)
                    require ext_call.success
                    emit TokenPurchase(-weiRaised + cap, (-1 * weiRaised * rate) + (cap * rate), msg.sender, arg1);
            else:
                require rate / 100
                require 30 * rate / 100 / rate / 100 == 30
                require rate + (30 * rate / 100) >= rate
                if not -weiRaised + cap:
                    require cap >= weiRaised
                    weiRaised = cap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.transferTokensFromVault(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(arg1), 0
                    require ext_call.success
                    emit TokenPurchase(-weiRaised + cap, 0, msg.sender, arg1);
                else:
                    require -weiRaised + cap
                    require (-1 * rate * weiRaised) - (30 * rate / 100 * weiRaised) + (rate * cap) + (30 * rate / 100 * cap) / -weiRaised + cap == rate + (30 * rate / 100)
                    require cap >= weiRaised
                    weiRaised = cap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.transferTokensFromVault(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(arg1), (-1 * rate * weiRaised) - (30 * rate / 100 * weiRaised) + (rate * cap) + (30 * rate / 100 * cap)
                    require ext_call.success
                    emit TokenPurchase(-weiRaised + cap, (-1 * rate * weiRaised) - (30 * rate / 100 * weiRaised) + (rate * cap) + (30 * rate / 100 * cap), msg.sender, arg1);
        else:
            if not rate / 100:
                require rate >= rate
                if not -weiRaised + cap:
                    require cap >= weiRaised
                    weiRaised = cap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.transferTokensFromVault(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(arg1), 0
                    require ext_call.success
                    emit TokenPurchase(-weiRaised + cap, 0, msg.sender, arg1);
                else:
                    require -weiRaised + cap
                    require (-1 * weiRaised * rate) + (cap * rate) / -weiRaised + cap == rate
                    require cap >= weiRaised
                    weiRaised = cap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.transferTokensFromVault(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(arg1), (-1 * weiRaised * rate) + (cap * rate)
                    require ext_call.success
                    emit TokenPurchase(-weiRaised + cap, (-1 * weiRaised * rate) + (cap * rate), msg.sender, arg1);
            else:
                require rate / 100
                require 50 * rate / 100 / rate / 100 == 50
                require rate + (50 * rate / 100) >= rate
                if not -weiRaised + cap:
                    require cap >= weiRaised
                    weiRaised = cap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.transferTokensFromVault(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(arg1), 0
                    require ext_call.success
                    emit TokenPurchase(-weiRaised + cap, 0, msg.sender, arg1);
                else:
                    require -weiRaised + cap
                    require (-1 * rate * weiRaised) - (50 * rate / 100 * weiRaised) + (rate * cap) + (50 * rate / 100 * cap) / -weiRaised + cap == rate + (50 * rate / 100)
                    require cap >= weiRaised
                    weiRaised = cap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.transferTokensFromVault(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(arg1), (-1 * rate * weiRaised) - (50 * rate / 100 * weiRaised) + (rate * cap) + (50 * rate / 100 * cap)
                    require ext_call.success
                    emit TokenPurchase(-weiRaised + cap, (-1 * rate * weiRaised) - (50 * rate / 100 * weiRaised) + (rate * cap) + (50 * rate / 100 * cap), msg.sender, arg1);
        if not Mask(255, 1, -weiRaised + cap):
            if -weiRaised + cap != 0:
                call wallet1Address with:
                   value -weiRaised + cap wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                call wallet1Address with:
                   value -weiRaised + cap / 2 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                call wallet2Address with:
                   value -weiRaised + cap / 2 wei
                     gas 2300 * is_zero(value) wei
        else:
            require -weiRaised + cap / 2
            require Mask(255, 1, -weiRaised + cap) / -weiRaised + cap / 2 == 2
            if Mask(255, 1, -weiRaised + cap) != -weiRaised + cap:
                call wallet1Address with:
                   value -weiRaised + cap wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                call wallet1Address with:
                   value -weiRaised + cap / 2 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                call wallet2Address with:
                   value -weiRaised + cap / 2 wei
                     gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require weiRaised < cap
    require weiRaised + msg.value >= weiRaised
    if weiRaised + msg.value <= cap:
        if msg.value < 5 * 10^18:
            if not rate / 100:
                require rate >= rate
                if not msg.value:
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.transferTokensFromVault(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.sender, 0
                    require ext_call.success
                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                else:
                    require msg.value
                    require msg.value * rate / msg.value == rate
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.transferTokensFromVault(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.sender, msg.value * rate
                    require ext_call.success
                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
            else:
                require rate / 100
                require 30 * rate / 100 / rate / 100 == 30
                require rate + (30 * rate / 100) >= rate
                if not msg.value:
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.transferTokensFromVault(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.sender, 0
                    require ext_call.success
                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                else:
                    require msg.value
                    require (rate * msg.value) + (30 * rate / 100 * msg.value) / msg.value == rate + (30 * rate / 100)
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.transferTokensFromVault(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.sender, (rate * msg.value) + (30 * rate / 100 * msg.value)
                    require ext_call.success
                    emit TokenPurchase(msg.value, (rate * msg.value) + (30 * rate / 100 * msg.value), msg.sender, msg.sender);
        else:
            if not rate / 100:
                require rate >= rate
                if not msg.value:
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.transferTokensFromVault(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.sender, 0
                    require ext_call.success
                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                else:
                    require msg.value
                    require msg.value * rate / msg.value == rate
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.transferTokensFromVault(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.sender, msg.value * rate
                    require ext_call.success
                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
            else:
                require rate / 100
                require 50 * rate / 100 / rate / 100 == 50
                require rate + (50 * rate / 100) >= rate
                if not msg.value:
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.transferTokensFromVault(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.sender, 0
                    require ext_call.success
                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                else:
                    require msg.value
                    require (rate * msg.value) + (50 * rate / 100 * msg.value) / msg.value == rate + (50 * rate / 100)
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.transferTokensFromVault(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.sender, (rate * msg.value) + (50 * rate / 100 * msg.value)
                    require ext_call.success
                    emit TokenPurchase(msg.value, (rate * msg.value) + (50 * rate / 100 * msg.value), msg.sender, msg.sender);
        if not Mask(255, 1, msg.value):
            if msg.value != 0:
                call wallet1Address with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                call wallet1Address with:
                   value msg.value / 2 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                call wallet2Address with:
                   value msg.value / 2 wei
                     gas 2300 * is_zero(value) wei
        else:
            require msg.value / 2
            require Mask(255, 1, msg.value) / msg.value / 2 == 2
            if Mask(255, 1, msg.value) != msg.value:
                call wallet1Address with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                call wallet1Address with:
                   value msg.value / 2 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                call wallet2Address with:
                   value msg.value / 2 wei
                     gas 2300 * is_zero(value) wei
    else:
        require cap <= weiRaised + msg.value
        require weiRaised + msg.value - cap <= msg.value
        call msg.sender with:
           value weiRaised + msg.value - cap wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if -weiRaised + cap < 5 * 10^18:
            if not rate / 100:
                require rate >= rate
                if not -weiRaised + cap:
                    require cap >= weiRaised
                    weiRaised = cap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.transferTokensFromVault(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.sender, 0
                    require ext_call.success
                    emit TokenPurchase(-weiRaised + cap, 0, msg.sender, msg.sender);
                else:
                    require -weiRaised + cap
                    require (-1 * weiRaised * rate) + (cap * rate) / -weiRaised + cap == rate
                    require cap >= weiRaised
                    weiRaised = cap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.transferTokensFromVault(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.sender, (-1 * weiRaised * rate) + (cap * rate)
                    require ext_call.success
                    emit TokenPurchase(-weiRaised + cap, (-1 * weiRaised * rate) + (cap * rate), msg.sender, msg.sender);
            else:
                require rate / 100
                require 30 * rate / 100 / rate / 100 == 30
                require rate + (30 * rate / 100) >= rate
                if not -weiRaised + cap:
                    require cap >= weiRaised
                    weiRaised = cap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.transferTokensFromVault(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.sender, 0
                    require ext_call.success
                    emit TokenPurchase(-weiRaised + cap, 0, msg.sender, msg.sender);
                else:
                    require -weiRaised + cap
                    require (-1 * rate * weiRaised) - (30 * rate / 100 * weiRaised) + (rate * cap) + (30 * rate / 100 * cap) / -weiRaised + cap == rate + (30 * rate / 100)
                    require cap >= weiRaised
                    weiRaised = cap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.transferTokensFromVault(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.sender, (-1 * rate * weiRaised) - (30 * rate / 100 * weiRaised) + (rate * cap) + (30 * rate / 100 * cap)
                    require ext_call.success
                    emit TokenPurchase(-weiRaised + cap, (-1 * rate * weiRaised) - (30 * rate / 100 * weiRaised) + (rate * cap) + (30 * rate / 100 * cap), msg.sender, msg.sender);
        else:
            if not rate / 100:
                require rate >= rate
                if not -weiRaised + cap:
                    require cap >= weiRaised
                    weiRaised = cap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.transferTokensFromVault(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.sender, 0
                    require ext_call.success
                    emit TokenPurchase(-weiRaised + cap, 0, msg.sender, msg.sender);
                else:
                    require -weiRaised + cap
                    require (-1 * weiRaised * rate) + (cap * rate) / -weiRaised + cap == rate
                    require cap >= weiRaised
                    weiRaised = cap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.transferTokensFromVault(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.sender, (-1 * weiRaised * rate) + (cap * rate)
                    require ext_call.success
                    emit TokenPurchase(-weiRaised + cap, (-1 * weiRaised * rate) + (cap * rate), msg.sender, msg.sender);
            else:
                require rate / 100
                require 50 * rate / 100 / rate / 100 == 50
                require rate + (50 * rate / 100) >= rate
                if not -weiRaised + cap:
                    require cap >= weiRaised
                    weiRaised = cap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.transferTokensFromVault(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.sender, 0
                    require ext_call.success
                    emit TokenPurchase(-weiRaised + cap, 0, msg.sender, msg.sender);
                else:
                    require -weiRaised + cap
                    require (-1 * rate * weiRaised) - (50 * rate / 100 * weiRaised) + (rate * cap) + (50 * rate / 100 * cap) / -weiRaised + cap == rate + (50 * rate / 100)
                    require cap >= weiRaised
                    weiRaised = cap
                    require ext_code.size(tokenAddress)
                    call tokenAddress.transferTokensFromVault(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.sender, (-1 * rate * weiRaised) - (50 * rate / 100 * weiRaised) + (rate * cap) + (50 * rate / 100 * cap)
                    require ext_call.success
                    emit TokenPurchase(-weiRaised + cap, (-1 * rate * weiRaised) - (50 * rate / 100 * weiRaised) + (rate * cap) + (50 * rate / 100 * cap), msg.sender, msg.sender);
        if not Mask(255, 1, -weiRaised + cap):
            if -weiRaised + cap != 0:
                call wallet1Address with:
                   value -weiRaised + cap wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                call wallet1Address with:
                   value -weiRaised + cap / 2 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                call wallet2Address with:
                   value -weiRaised + cap / 2 wei
                     gas 2300 * is_zero(value) wei
        else:
            require -weiRaised + cap / 2
            require Mask(255, 1, -weiRaised + cap) / -weiRaised + cap / 2 == 2
            if Mask(255, 1, -weiRaised + cap) != -weiRaised + cap:
                call wallet1Address with:
                   value -weiRaised + cap wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                call wallet1Address with:
                   value -weiRaised + cap / 2 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                call wallet2Address with:
                   value -weiRaised + cap / 2 wei
                     gas 2300 * is_zero(value) wei
}



}
