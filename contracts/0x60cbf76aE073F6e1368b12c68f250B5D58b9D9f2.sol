contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
array of address stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor16;

function _fallback() payable {
    stor10 = 0
    stor11 = 0
    stor12 = 0
    require not msg.value
    mem[96 len -3358] = code.data[4028 len -3358]
    mem[64] = -3262
    stor0 = msg.sender
    require mem[108 len 20]
    require mem[140 len 20]
    require mem[172 len 20]
    require mem[224] > 0
    require mem[288] > 0
    require mem[320] > 0
    stor1 = mem[108 len 20]
    stor2 = mem[140 len 20]
    stor3 = mem[172 len 20]
    stor4 = mem[192]
    stor5 = mem[224]
    stor6 = mem[256]
    stor7 = mem[288]
    stor8 = mem[320]
    stor9.length = mem[mem[352] + 96]
    if not mem[mem[352] + 96]:
        idx = 0
        while stor9.length > idx:
            stor9[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[352] + 128
        while mem[352] + (32 * mem[mem[352] + 96]) + 128 > idx:
            stor9[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[352] + 96]) + 31) >> 5
        while stor9.length > idx:
            stor9[idx] = 0
            idx = idx + 1
            continue 
    require ext_code.size(stor1)
    call stor1.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor16 = 10^ext_call.return_data[0]
    return code.data[670 len 3358]
}



// =====================  Runtime code  =====================


#
#  - buy(address arg1)
#
address owner;
address tokenAddress;
address ethMultisigWalletAddress;
address tokenMultisigWalletAddress;
uint256 startTime;
uint256 duration;
uint256 prolongedDuration;
uint256 tokenPrice;
uint256 minInvestment;
array of address allowedSenders;
uint256 tokensSoldAmount;
uint256 weiRaisedAmount;
uint256 investorCount;
uint8 prolongationPermitted;
mapping of uint256 investedAmountOf;
mapping of uint256 tokenAmountOf;
uint256 tokenValueMultiplier;
uint8 stopped;

function duration() {
    return duration
}

function prolongedDuration() {
    return prolongedDuration
}

function investedAmountOf(address arg1) {
    return investedAmountOf[arg1]
}

function weiRaisedAmount() {
    return weiRaisedAmount
}

function allowedSenders(uint256 arg1) {
    require arg1 < allowedSenders.length
    return allowedSenders[arg1]
}

function stopped() {
    return bool(stopped)
}

function startTime() {
    return startTime
}

function ethMultisigWallet() {
    return ethMultisigWalletAddress
}

function tokenPrice() {
    return tokenPrice
}

function minInvestment() {
    return minInvestment
}

function owner() {
    return owner
}

function tokenAmountOf(address arg1) {
    return tokenAmountOf[arg1]
}

function tokensSoldAmount() {
    return tokensSoldAmount
}

function prolongationPermitted() {
    return bool(prolongationPermitted)
}

function tokenMultisigWallet() {
    return tokenMultisigWalletAddress
}

function investorCount() {
    return investorCount
}

function tokenValueMultiplier() {
    return tokenValueMultiplier
}

function token() {
    return tokenAddress
}

function kill() {
    require owner == msg.sender
    selfdestruct(owner)
}

function stopSale() {
    require owner == msg.sender
    stopped = 1
}

function resumeSale() {
    require owner == msg.sender
    require stopped
    stopped = 0
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function changeTokenPrice(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    tokenPrice = arg1
    emit TokenPriceChanged(arg1);
}

function prolong() {
    require owner == msg.sender
    require not prolongationPermitted
    require prolongedDuration > 0
    prolongationPermitted = 1
}

function withdrawTokens(uint256 arg1) {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require arg1 <= ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args tokenMultisigWalletAddress, arg1
    require ext_call.success
    emit Withdraw(arg1);
}

function getCurrentStatus() {
    if startTime > block.timestamp:
        return 1
    if block.timestamp > startTime + duration + prolongedDuration:
        return 5
    if block.timestamp > startTime + duration:
        if not prolongationPermitted:
            return 5
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] <= 0:
        return 4
    if block.timestamp > startTime + duration:
        return 3
    if block.timestamp < startTime:
        return 0
    return 2
}

function _fallback() payable {
    require not stopped
    if startTime > block.timestamp:
        require startTime <= block.timestamp
        require block.timestamp <= startTime + duration + prolongedDuration
        if block.timestamp > startTime + duration:
            require prolongationPermitted
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_call.return_data[0] > 0
        require block.timestamp > startTime + duration
    else:
        if block.timestamp > startTime + duration + prolongedDuration:
            require startTime <= block.timestamp
            require block.timestamp <= startTime + duration + prolongedDuration
            if block.timestamp > startTime + duration:
                require prolongationPermitted
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require ext_call.return_data[0] > 0
            require block.timestamp > startTime + duration
        else:
            if block.timestamp <= startTime + duration:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                if ext_call.return_data[0] <= 0:
                    require startTime <= block.timestamp
                    require block.timestamp <= startTime + duration + prolongedDuration
                    if block.timestamp > startTime + duration:
                        require prolongationPermitted
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    require ext_call.return_data[0] > 0
                    require block.timestamp > startTime + duration
                else:
                    if block.timestamp > startTime + duration:
                        require startTime <= block.timestamp
                        require block.timestamp <= startTime + duration + prolongedDuration
                        if block.timestamp > startTime + duration:
                            require prolongationPermitted
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        require ext_call.return_data[0] > 0
                        require block.timestamp > startTime + duration
                    else:
                        if block.timestamp < startTime:
                            require startTime <= block.timestamp
                            require block.timestamp <= startTime + duration + prolongedDuration
                            if block.timestamp > startTime + duration:
                                require prolongationPermitted
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining - 710 wei
                                args this.address
                            require ext_call.success
                            require ext_call.return_data[0] > 0
                            require block.timestamp > startTime + duration
            else:
                if not prolongationPermitted:
                    require startTime <= block.timestamp
                    require block.timestamp <= startTime + duration + prolongedDuration
                    if block.timestamp > startTime + duration:
                        require prolongationPermitted
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    require ext_call.return_data[0] > 0
                    require block.timestamp > startTime + duration
                else:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    if ext_call.return_data[0] <= 0:
                        require startTime <= block.timestamp
                        require block.timestamp <= startTime + duration + prolongedDuration
                        if block.timestamp > startTime + duration:
                            require prolongationPermitted
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        require ext_call.return_data[0] > 0
                        require block.timestamp > startTime + duration
                    else:
                        if block.timestamp > startTime + duration:
                            require startTime <= block.timestamp
                            require block.timestamp <= startTime + duration + prolongedDuration
                            if block.timestamp > startTime + duration:
                                require prolongationPermitted
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining - 710 wei
                                args this.address
                            require ext_call.success
                            require ext_call.return_data[0] > 0
                            require block.timestamp > startTime + duration
                        else:
                            if block.timestamp < startTime:
                                require startTime <= block.timestamp
                                require block.timestamp <= startTime + duration + prolongedDuration
                                if block.timestamp > startTime + duration:
                                    require prolongationPermitted
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x70a08231 with:
                                     gas gas_remaining - 710 wei
                                    args this.address
                                require ext_call.success
                                require ext_call.return_data[0] > 0
                                require block.timestamp > startTime + duration
    require msg.value >= minInvestment
    if allowedSenders.length > 0:
        require 0 < allowedSenders.length
        idx = 0
        while allowedSenders[idx] != msg.sender:
            require idx + 1 < allowedSenders.length
            mem[0] = 9
            idx = idx + 1
            continue 
    if msg.value:
        require msg.value
        require tokenValueMultiplier * msg.value / msg.value == tokenValueMultiplier
    require tokenPrice > 0
    require tokenPrice
    require tokenValueMultiplier * msg.value == (tokenPrice * tokenValueMultiplier * msg.value / tokenPrice) + (tokenValueMultiplier * msg.value % tokenPrice)
    require tokenValueMultiplier * msg.value / tokenPrice > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] >= tokenValueMultiplier * msg.value / tokenPrice:
        if not investedAmountOf[address(msg.sender)]:
            investorCount++
        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
        require msg.value + investedAmountOf[address(msg.sender)] >= msg.value
        investedAmountOf[address(msg.sender)] += msg.value
        require (tokenValueMultiplier * msg.value / tokenPrice) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
        require (tokenValueMultiplier * msg.value / tokenPrice) + tokenAmountOf[address(msg.sender)] >= tokenValueMultiplier * msg.value / tokenPrice
        tokenAmountOf[address(msg.sender)] += tokenValueMultiplier * msg.value / tokenPrice
        require msg.value + weiRaisedAmount >= weiRaisedAmount
        require msg.value + weiRaisedAmount >= msg.value
        weiRaisedAmount += msg.value
        require (tokenValueMultiplier * msg.value / tokenPrice) + tokensSoldAmount >= tokensSoldAmount
        require (tokenValueMultiplier * msg.value / tokenPrice) + tokensSoldAmount >= tokenValueMultiplier * msg.value / tokenPrice
        tokensSoldAmount += tokenValueMultiplier * msg.value / tokenPrice
        call ethMultisigWalletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, tokenValueMultiplier * msg.value / tokenPrice
        require ext_call.success
        require ext_call.return_data[0]
        emit Invested(msg.sender, msg.value, tokenValueMultiplier * msg.value / tokenPrice);
    else:
        require ext_call.return_data[0] <= tokenValueMultiplier * msg.value / tokenPrice
        if (tokenValueMultiplier * msg.value / tokenPrice) - ext_call.return_data[0]:
            require (tokenValueMultiplier * msg.value / tokenPrice) - ext_call.return_data[0]
            require (tokenValueMultiplier * msg.value / tokenPrice * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / (tokenValueMultiplier * msg.value / tokenPrice) - ext_call.return_data[0] == tokenPrice
        require tokenValueMultiplier > 0
        require tokenValueMultiplier
        require (tokenValueMultiplier * msg.value / tokenPrice * tokenPrice) - (ext_call.return_data[0] * tokenPrice) == (tokenValueMultiplier * (tokenValueMultiplier * msg.value / tokenPrice * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / tokenValueMultiplier) + ((tokenValueMultiplier * msg.value / tokenPrice * tokenPrice) - (ext_call.return_data[0] * tokenPrice) % tokenValueMultiplier)
        require (tokenValueMultiplier * msg.value / tokenPrice * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / tokenValueMultiplier <= msg.value
        if not investedAmountOf[address(msg.sender)]:
            investorCount++
        require msg.value - ((tokenValueMultiplier * msg.value / tokenPrice * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / tokenValueMultiplier) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
        require investedAmountOf[address(msg.sender)] >= 0
        investedAmountOf[address(msg.sender)] = msg.value - ((tokenValueMultiplier * msg.value / tokenPrice * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / tokenValueMultiplier) + investedAmountOf[address(msg.sender)]
        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
        require ext_call.return_data[0] + tokenAmountOf[address(msg.sender)] >= ext_call.return_data[0]
        tokenAmountOf[address(msg.sender)] += ext_call.return_data[0]
        require msg.value - ((tokenValueMultiplier * msg.value / tokenPrice * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / tokenValueMultiplier) + weiRaisedAmount >= weiRaisedAmount
        require weiRaisedAmount >= 0
        weiRaisedAmount = msg.value - ((tokenValueMultiplier * msg.value / tokenPrice * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / tokenValueMultiplier) + weiRaisedAmount
        require ext_call.return_data[0] + tokensSoldAmount >= tokensSoldAmount
        require ext_call.return_data[0] + tokensSoldAmount >= ext_call.return_data[0]
        tokensSoldAmount += ext_call.return_data[0]
        call ethMultisigWalletAddress with:
           value msg.value - ((tokenValueMultiplier * msg.value / tokenPrice * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / tokenValueMultiplier) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        if (tokenValueMultiplier * msg.value / tokenPrice * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / tokenValueMultiplier > 0:
            call msg.sender with:
               value (tokenValueMultiplier * msg.value / tokenPrice * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / tokenValueMultiplier wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        emit Invested(msg.sender, msg.value - ((tokenValueMultiplier * msg.value / tokenPrice * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / tokenValueMultiplier), ext_call.return_data[0]);
}



}
