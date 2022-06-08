contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 cap;
uint256 openingTime;
uint256 closingTime;
array of address wallets;
uint256 sub_5bcb98c6;
uint256 sub_9a91871d;

function rate() {
    return rate
}

function cap() {
    return cap
}

function weiRaised() {
    return weiRaised
}

function closingTime() {
    return closingTime
}

function wallet() {
    return walletAddress
}

function sub_5bcb98c6(?) {
    return sub_5bcb98c6
}

function wallets(uint256 arg1) {
    require arg1 < wallets.length
    return wallets[arg1]
}

function sub_9a91871d(?) {
    return sub_9a91871d
}

function openingTime() {
    return openingTime
}

function token() {
    return tokenAddress
}

function capReached() {
    return weiRaised >= cap
}

function hasClosed() {
    return (block.timestamp > closingTime)
}

function isOpen() {
    if block.timestamp < openingTime:
        return block.timestamp >= openingTime
    return block.timestamp <= closingTime
}

function sub_081a3ea1(?) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0xaa271e1a with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    sub_5bcb98c6 = 0
    sub_9a91871d = arg1
    emit 0x124f2374: arg1, rate - arg1
    return (rate - arg1)
}

function sub_c089121f(?) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0xaa271e1a with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    sub_5bcb98c6 = arg1
    sub_9a91871d = 0
    emit 0x9e8d7bf1: arg1, rate + arg1
    return (rate + arg1)
}

function buyTokens(address arg1) payable {
    stor0++
    require rate + sub_5bcb98c6 - sub_9a91871d
    require 10^18 / rate + sub_5bcb98c6 - sub_9a91871d <= msg.value
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require arg1
    require msg.value
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= cap
    if not msg.value:
        if not msg.value:
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(arg1), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit TokensPurchased(msg.value, 0, msg.sender, arg1);
        else:
            require (rate * msg.value) + (sub_5bcb98c6 * msg.value) - (sub_9a91871d * msg.value) / msg.value == rate + sub_5bcb98c6 - sub_9a91871d
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            if (rate * msg.value) + (sub_5bcb98c6 * msg.value) - (sub_9a91871d * msg.value) % 10^18 <= 0:
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit TokensPurchased(msg.value, 0, msg.sender, arg1);
            else:
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(arg1), 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit TokensPurchased(msg.value, 1, msg.sender, arg1);
    else:
        require (rate * msg.value) + (sub_5bcb98c6 * msg.value) - (sub_9a91871d * msg.value) / msg.value == rate + sub_5bcb98c6 - sub_9a91871d
        if not msg.value:
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(arg1), (rate * msg.value) + (sub_5bcb98c6 * msg.value) - (sub_9a91871d * msg.value) / 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit TokensPurchased(msg.value, (rate * msg.value) + (sub_5bcb98c6 * msg.value) - (sub_9a91871d * msg.value) / 10^18, msg.sender, arg1);
        else:
            require (rate * msg.value) + (sub_5bcb98c6 * msg.value) - (sub_9a91871d * msg.value) / msg.value == rate + sub_5bcb98c6 - sub_9a91871d
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            if (rate * msg.value) + (sub_5bcb98c6 * msg.value) - (sub_9a91871d * msg.value) % 10^18 <= 0:
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(arg1), (rate * msg.value) + (sub_5bcb98c6 * msg.value) - (sub_9a91871d * msg.value) / 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit TokensPurchased(msg.value, (rate * msg.value) + (sub_5bcb98c6 * msg.value) - (sub_9a91871d * msg.value) / 10^18, msg.sender, arg1);
            else:
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(arg1), ((rate * msg.value) + (sub_5bcb98c6 * msg.value) - (sub_9a91871d * msg.value) / 10^18) + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit TokensPurchased(msg.value, ((rate * msg.value) + (sub_5bcb98c6 * msg.value) - (sub_9a91871d * msg.value) / 10^18) + 1, msg.sender, arg1);
    if weiRaised > 100 * 10^18:
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require wallets.length > 0
        require wallets.length
        idx = 0
        while idx < wallets.length:
            mem[0] = 8
            call wallets[idx] with:
               value msg.value / wallets.length wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        require wallets.length
        if msg.value % wallets.length > 0:
            require 0 < wallets.length
            call wallets with:
               value msg.value % wallets.length wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    require stor0 + 1 == stor0
}

function _fallback() payable {
    stor0++
    require rate + sub_5bcb98c6 - sub_9a91871d
    require 10^18 / rate + sub_5bcb98c6 - sub_9a91871d <= msg.value
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require msg.sender
    require msg.value
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= cap
    if not msg.value:
        if not msg.value:
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
        else:
            require (rate * msg.value) + (sub_5bcb98c6 * msg.value) - (sub_9a91871d * msg.value) / msg.value == rate + sub_5bcb98c6 - sub_9a91871d
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            if (rate * msg.value) + (sub_5bcb98c6 * msg.value) - (sub_9a91871d * msg.value) % 10^18 <= 0:
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
            else:
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit TokensPurchased(msg.value, 1, msg.sender, msg.sender);
    else:
        require (rate * msg.value) + (sub_5bcb98c6 * msg.value) - (sub_9a91871d * msg.value) / msg.value == rate + sub_5bcb98c6 - sub_9a91871d
        if not msg.value:
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, (rate * msg.value) + (sub_5bcb98c6 * msg.value) - (sub_9a91871d * msg.value) / 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit TokensPurchased(msg.value, (rate * msg.value) + (sub_5bcb98c6 * msg.value) - (sub_9a91871d * msg.value) / 10^18, msg.sender, msg.sender);
        else:
            require (rate * msg.value) + (sub_5bcb98c6 * msg.value) - (sub_9a91871d * msg.value) / msg.value == rate + sub_5bcb98c6 - sub_9a91871d
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            if (rate * msg.value) + (sub_5bcb98c6 * msg.value) - (sub_9a91871d * msg.value) % 10^18 <= 0:
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, (rate * msg.value) + (sub_5bcb98c6 * msg.value) - (sub_9a91871d * msg.value) / 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit TokensPurchased(msg.value, (rate * msg.value) + (sub_5bcb98c6 * msg.value) - (sub_9a91871d * msg.value) / 10^18, msg.sender, msg.sender);
            else:
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, ((rate * msg.value) + (sub_5bcb98c6 * msg.value) - (sub_9a91871d * msg.value) / 10^18) + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit TokensPurchased(msg.value, ((rate * msg.value) + (sub_5bcb98c6 * msg.value) - (sub_9a91871d * msg.value) / 10^18) + 1, msg.sender, msg.sender);
    if weiRaised > 100 * 10^18:
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require wallets.length > 0
        require wallets.length
        idx = 0
        while idx < wallets.length:
            mem[0] = 8
            call wallets[idx] with:
               value msg.value / wallets.length wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        require wallets.length
        if msg.value % wallets.length > 0:
            require 0 < wallets.length
            call wallets with:
               value msg.value % wallets.length wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    require stor0 + 1 == stor0
}



}
