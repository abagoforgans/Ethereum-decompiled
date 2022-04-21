contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint8 stor6; offset 160
address stor6;
uint256 stor7;
address stor8;
uint256 stor9;
uint8 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;

function _fallback() payable {
    uint8(stor6.field_160) = 0
    stor10 = 0
    require not msg.value
    require code.data[13142 len 32] >= block.timestamp
    require code.data[13174 len 32] >= code.data[13142 len 32]
    require code.data[13334 len 32] > 0
    require code.data[13378 len 20]
    create contract with 0 wei
                    code: code.data[9745 len 3397]
    require create.new_address
    stor0 = address(create.new_address)
    stor1 = code.data[13142 len 32]
    stor2 = code.data[13174 len 32]
    stor4 = code.data[13334 len 32]
    stor3 = code.data[13378 len 20]
    address(stor6.field_0) = msg.sender
    require code.data[13558 len 32] > 0
    create contract with 0 wei
                    code: code.data[8118 len 1627], stor3
    require create.new_address
    stor8 = address(create.new_address)
    stor7 = code.data[13558 len 32]
    require code.data[13430 len 32] > 0
    stor9 = code.data[13430 len 32]
    stor11 = code.data[13206 len 32]
    stor12 = code.data[13238 len 32]
    stor13 = code.data[13270 len 32]
    stor14 = code.data[13302 len 32]
    stor15 = code.data[13462 len 32]
    require ext_code.size(stor0)
    call stor0.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args code.data[13378 len 20], code.data[13494 len 32]
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(code.data[13398 len 32]), code.data[13526 len 32]
    require ext_call.success
    return code.data[927 len 7191]
}



// =====================  Runtime code  =====================


#
#  - _fallback()
#
address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint8 stor6; offset 160
address owner;
uint256 goal;
address vaultAddress;
uint256 cap;
uint8 stor10;
uint256 presaleStartTime;
uint256 presaleEndTime;
uint256 tokensaleStartTime;
uint256 tokensaleEndTime;
uint256 tokenCap;

function presaleEndTime() {
    return presaleEndTime
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

function goal() {
    return goal
}

function weiRaised() {
    return weiRaised
}

function tokensaleEndTime() {
    return tokensaleEndTime
}

function tokensaleStartTime() {
    return tokensaleStartTime
}

function wallet() {
    return walletAddress
}

function paused() {
    return bool(stor10)
}

function startTime() {
    return startTime
}

function isFinalized() {
    return bool(stor6)
}

function owner() {
    return owner
}

function presaleStartTime() {
    return presaleStartTime
}

function tokenCap() {
    return tokenCap
}

function vault() {
    return vaultAddress
}

function token() {
    return tokenAddress
}

function goalReached() {
    return weiRaised >= goal
}

function unpause() {
    require owner == msg.sender
    require stor10
    stor10 = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not stor10
    stor10 = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function claimRefund() {
    require stor6
    require weiRaised < goal
    require ext_code.size(vaultAddress)
    call vaultAddress.refund(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
}

function hasEnded() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    if weiRaised >= cap:
        return weiRaised >= cap
    return ext_call.return_data[0] >= tokenCap
}

function finalize() {
    require owner == msg.sender
    require not stor6
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if block.timestamp <= endTime:
        if weiRaised < cap:
            require ext_call.return_data[0] >= tokenCap
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args walletAddress
    require ext_call.success
    require ext_code.size(vaultAddress)
    if weiRaised < goal:
        call vaultAddress.enableRefunds() with:
             gas gas_remaining - 710 wei
    else:
        call vaultAddress.close() with:
             gas gas_remaining - 710 wei
    require ext_call.success
    emit Finalized()
    stor6 = 1
}

function getRate() {
    if presaleStartTime <= block.timestamp:
        if block.timestamp <= presaleEndTime:
            if 300 * 10^18 <= msg.value:
                return 1980
            if 150 * 10^18 > msg.value:
                return 1650
            return 1815
    if 300 * 10^18 <= msg.value:
        if not rate:
            if (20 * rate / 100) + rate >= rate:
                return ((20 * rate / 100) + rate)
        else:
            if rate:
                if 20 * rate / rate == 20:
                    if (20 * rate / 100) + rate >= rate:
                        return ((20 * rate / 100) + rate)
    else:
        if 150 * 10^18 > msg.value:
            return rate
        if not rate:
            if (10 * rate / 100) + rate >= rate:
                return ((10 * rate / 100) + rate)
        else:
            if rate:
                if 10 * rate / rate == 10:
                    if (10 * rate / 100) + rate >= rate:
                        return ((10 * rate / 100) + rate)
    revert
}

function buyTokens(address arg1) payable {
    require not stor10
    require arg1
    if presaleStartTime > block.timestamp:
        if 300 * 10^18 <= msg.value:
            if rate:
                require rate
                require 20 * rate / rate == 20
            require (20 * rate / 100) + rate >= rate
            if msg.value:
                require msg.value
                require (20 * rate / 100 * msg.value) + (rate * msg.value) / msg.value == (20 * rate / 100) + rate
            require ext_code.size(tokenAddress)
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require (20 * rate / 100 * msg.value) + (rate * msg.value) + ext_call.return_data[0] >= ext_call.return_data[0]
            require msg.value + weiRaised >= weiRaised
            require block.timestamp >= startTime
            require block.timestamp <= endTime
            require msg.value
            require msg.value + weiRaised <= cap
            require (20 * rate / 100 * msg.value) + (rate * msg.value) + ext_call.return_data[0] <= tokenCap
        else:
            if 150 * 10^18 > msg.value:
                if msg.value:
                    require msg.value
                    require rate * msg.value / msg.value == rate
                require ext_code.size(tokenAddress)
                call tokenAddress.0x18160ddd with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require (rate * msg.value) + ext_call.return_data[0] >= ext_call.return_data[0]
                require msg.value + weiRaised >= weiRaised
                require block.timestamp >= startTime
                require block.timestamp <= endTime
                require msg.value
                require msg.value + weiRaised <= cap
                require (rate * msg.value) + ext_call.return_data[0] <= tokenCap
            else:
                if rate:
                    require rate
                    require 10 * rate / rate == 10
                require (10 * rate / 100) + rate >= rate
                if msg.value:
                    require msg.value
                    require (10 * rate / 100 * msg.value) + (rate * msg.value) / msg.value == (10 * rate / 100) + rate
                require ext_code.size(tokenAddress)
                call tokenAddress.0x18160ddd with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require (10 * rate / 100 * msg.value) + (rate * msg.value) + ext_call.return_data[0] >= ext_call.return_data[0]
                require msg.value + weiRaised >= weiRaised
                require block.timestamp >= startTime
                require block.timestamp <= endTime
                require msg.value
                require msg.value + weiRaised <= cap
                require (10 * rate / 100 * msg.value) + (rate * msg.value) + ext_call.return_data[0] <= tokenCap
    else:
        if block.timestamp <= presaleEndTime:
            if 300 * 10^18 <= msg.value:
                if msg.value:
                    require msg.value
                    require 1980 * msg.value / msg.value == 1980
                require ext_code.size(tokenAddress)
                call tokenAddress.0x18160ddd with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require (1980 * msg.value) + ext_call.return_data[0] >= ext_call.return_data[0]
                require msg.value + weiRaised >= weiRaised
                require block.timestamp >= startTime
                require block.timestamp <= endTime
                require msg.value
                require msg.value + weiRaised <= cap
                require (1980 * msg.value) + ext_call.return_data[0] <= tokenCap
            else:
                if 150 * 10^18 > msg.value:
                    if msg.value:
                        require msg.value
                        require 1650 * msg.value / msg.value == 1650
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require (1650 * msg.value) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require msg.value + weiRaised >= weiRaised
                    require block.timestamp >= startTime
                    require block.timestamp <= endTime
                    require msg.value
                    require msg.value + weiRaised <= cap
                    require (1650 * msg.value) + ext_call.return_data[0] <= tokenCap
                else:
                    if msg.value:
                        require msg.value
                        require 1815 * msg.value / msg.value == 1815
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require (1815 * msg.value) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require msg.value + weiRaised >= weiRaised
                    require block.timestamp >= startTime
                    require block.timestamp <= endTime
                    require msg.value
                    require msg.value + weiRaised <= cap
                    require (1815 * msg.value) + ext_call.return_data[0] <= tokenCap
        else:
            if 300 * 10^18 <= msg.value:
                if rate:
                    require rate
                    require 20 * rate / rate == 20
                require (20 * rate / 100) + rate >= rate
                if msg.value:
                    require msg.value
                    require (20 * rate / 100 * msg.value) + (rate * msg.value) / msg.value == (20 * rate / 100) + rate
                require ext_code.size(tokenAddress)
                call tokenAddress.0x18160ddd with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require (20 * rate / 100 * msg.value) + (rate * msg.value) + ext_call.return_data[0] >= ext_call.return_data[0]
                require msg.value + weiRaised >= weiRaised
                require block.timestamp >= startTime
                require block.timestamp <= endTime
                require msg.value
                require msg.value + weiRaised <= cap
                require (20 * rate / 100 * msg.value) + (rate * msg.value) + ext_call.return_data[0] <= tokenCap
            else:
                if 150 * 10^18 > msg.value:
                    if msg.value:
                        require msg.value
                        require rate * msg.value / msg.value == rate
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require (rate * msg.value) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require msg.value + weiRaised >= weiRaised
                    require block.timestamp >= startTime
                    require block.timestamp <= endTime
                    require msg.value
                    require msg.value + weiRaised <= cap
                    require (rate * msg.value) + ext_call.return_data[0] <= tokenCap
                else:
                    if rate:
                        require rate
                        require 10 * rate / rate == 10
                    require (10 * rate / 100) + rate >= rate
                    if msg.value:
                        require msg.value
                        require (10 * rate / 100 * msg.value) + (rate * msg.value) / msg.value == (10 * rate / 100) + rate
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require (10 * rate / 100 * msg.value) + (rate * msg.value) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require msg.value + weiRaised >= weiRaised
                    require block.timestamp >= startTime
                    require block.timestamp <= endTime
                    require msg.value
                    require msg.value + weiRaised <= cap
                    require (10 * rate / 100 * msg.value) + (rate * msg.value) + ext_call.return_data[0] <= tokenCap
    if presaleStartTime > block.timestamp:
        require tokensaleStartTime <= block.timestamp
        require block.timestamp <= tokensaleEndTime
    else:
        if block.timestamp > presaleEndTime:
            require tokensaleStartTime <= block.timestamp
            require block.timestamp <= tokensaleEndTime
    if presaleStartTime > block.timestamp:
        if 300 * 10^18 <= msg.value:
            if rate:
                require rate
                require 20 * rate / rate == 20
            require (20 * rate / 100) + rate >= rate
            if msg.value:
                require msg.value
                require (20 * rate / 100 * msg.value) + (rate * msg.value) / msg.value == (20 * rate / 100) + rate
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(arg1), (20 * rate / 100 * msg.value) + (rate * msg.value)
            require ext_call.success
            emit TokenPurchase(msg.value, (20 * rate / 100 * msg.value) + (rate * msg.value), msg.sender, arg1);
        else:
            if 150 * 10^18 > msg.value:
                if msg.value:
                    require msg.value
                    require rate * msg.value / msg.value == rate
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), rate * msg.value
                require ext_call.success
                emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
            else:
                if rate:
                    require rate
                    require 10 * rate / rate == 10
                require (10 * rate / 100) + rate >= rate
                if msg.value:
                    require msg.value
                    require (10 * rate / 100 * msg.value) + (rate * msg.value) / msg.value == (10 * rate / 100) + rate
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), (10 * rate / 100 * msg.value) + (rate * msg.value)
                require ext_call.success
                emit TokenPurchase(msg.value, (10 * rate / 100 * msg.value) + (rate * msg.value), msg.sender, arg1);
    else:
        if block.timestamp <= presaleEndTime:
            if 300 * 10^18 <= msg.value:
                if msg.value:
                    require msg.value
                    require 1980 * msg.value / msg.value == 1980
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 1980 * msg.value
                require ext_call.success
                emit TokenPurchase(msg.value, 1980 * msg.value, msg.sender, arg1);
            else:
                if 150 * 10^18 > msg.value:
                    if msg.value:
                        require msg.value
                        require 1650 * msg.value / msg.value == 1650
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 1650 * msg.value
                    require ext_call.success
                    emit TokenPurchase(msg.value, 1650 * msg.value, msg.sender, arg1);
                else:
                    if msg.value:
                        require msg.value
                        require 1815 * msg.value / msg.value == 1815
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 1815 * msg.value
                    require ext_call.success
                    emit TokenPurchase(msg.value, 1815 * msg.value, msg.sender, arg1);
        else:
            if 300 * 10^18 <= msg.value:
                if rate:
                    require rate
                    require 20 * rate / rate == 20
                require (20 * rate / 100) + rate >= rate
                if msg.value:
                    require msg.value
                    require (20 * rate / 100 * msg.value) + (rate * msg.value) / msg.value == (20 * rate / 100) + rate
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), (20 * rate / 100 * msg.value) + (rate * msg.value)
                require ext_call.success
                emit TokenPurchase(msg.value, (20 * rate / 100 * msg.value) + (rate * msg.value), msg.sender, arg1);
            else:
                if 150 * 10^18 > msg.value:
                    if msg.value:
                        require msg.value
                        require rate * msg.value / msg.value == rate
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), rate * msg.value
                    require ext_call.success
                    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
                else:
                    if rate:
                        require rate
                        require 10 * rate / rate == 10
                    require (10 * rate / 100) + rate >= rate
                    if msg.value:
                        require msg.value
                        require (10 * rate / 100 * msg.value) + (rate * msg.value) / msg.value == (10 * rate / 100) + rate
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), (10 * rate / 100 * msg.value) + (rate * msg.value)
                    require ext_call.success
                    emit TokenPurchase(msg.value, (10 * rate / 100 * msg.value) + (rate * msg.value), msg.sender, arg1);
    require ext_code.size(vaultAddress)
    call vaultAddress.deposit(address rg1) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
}



}
