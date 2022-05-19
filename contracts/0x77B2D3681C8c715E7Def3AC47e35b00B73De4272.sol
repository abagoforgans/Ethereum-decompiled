contract main {




// =====================  Runtime code  =====================


address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 cap;
uint256 openingTime;
uint256 closingTime;
uint8 stor7; offset 160
uint8 stor7; offset 168
address owner;
uint256 goal;
address vaultAddress;
mapping of uint256 balances;
address timelockControllerAddress;
address authorisedInvestorsAddress;
address earlyInvestorsAddress;
mapping of uint256 bonuses;
uint256 stor15;
uint256 stor16;

function bonuses(address arg1) {
    return bonuses[arg1]
}

function balances(address arg1) {
    return balances[arg1]
}

function rate() {
    return rate
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

function closingTime() {
    return closingTime
}

function wallet() {
    return walletAddress
}

function paused() {
    return bool(uint8(stor7.field_160))
}

function earlyInvestors() {
    return earlyInvestorsAddress
}

function isFinalized() {
    return bool(uint8(stor7.field_168))
}

function owner() {
    return owner
}

function authorisedInvestors() {
    return authorisedInvestorsAddress
}

function openingTime() {
    return openingTime
}

function timelockController() {
    return timelockControllerAddress
}

function vault() {
    return vaultAddress
}

function token() {
    return tokenAddress
}

function capReached() {
    return weiRaised >= cap
}

function goalReached() {
    return weiRaised >= goal
}

function hasClosed() {
    return (block.timestamp > closingTime)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function unpause() {
    require msg.sender == owner
    require uint8(stor7.field_160)
    uint8(stor7.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor7.field_160)
    uint8(stor7.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function claimRefund() {
    require uint8(stor7.field_168)
    require weiRaised < goal
    require ext_code.size(vaultAddress)
    call vaultAddress.0xfa89401a with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawTokens() {
    require weiRaised >= goal
    require block.timestamp > stor15
    require block.timestamp > closingTime
    require balances[msg.sender] > 0
    balances[msg.sender] = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, balances[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bonuses[msg.sender] > 0:
        bonuses[msg.sender] = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args timelockControllerAddress, bonuses[msg.sender]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(timelockControllerAddress)
        call timelockControllerAddress.0x68b91201 with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), bonuses[msg.sender], stor15, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
}

function finalize() {
    require msg.sender == owner
    require not uint8(stor7.field_168)
    require block.timestamp > closingTime
    if weiRaised >= goal:
        require ext_code.size(timelockControllerAddress)
        call timelockControllerAddress.activate() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require stor16 <= ext_call.return_data[0]
        if ext_call.return_data[0] - stor16 > 0:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x42966c68 with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] - stor16)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(vaultAddress)
    if weiRaised < goal:
        call vaultAddress.enableRefunds() with:
             gas gas_remaining wei
    else:
        call vaultAddress.0x43d726d6 with:
             gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Finalized()
    uint8(stor7.field_168) = 1
}

function buyTokens(address arg1) payable {
    require not uint8(stor7.field_160)
    require ext_code.size(authorisedInvestorsAddress)
    call authorisedInvestorsAddress.0x9b19251a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(earlyInvestorsAddress)
        call earlyInvestorsAddress.0x9b19251a with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require arg1
    require msg.value
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= cap
    if not msg.value:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require msg.value <= weiRaised
        if weiRaised - msg.value >= goal:
            require openingTime + (168 * 24 * 3600) >= openingTime
            if block.timestamp >= openingTime + (168 * 24 * 3600):
                require openingTime + (336 * 24 * 3600) >= openingTime
                if block.timestamp >= openingTime + (336 * 24 * 3600):
                    require openingTime + (504 * 24 * 3600) >= openingTime
        else:
            require ext_code.size(earlyInvestorsAddress)
            call earlyInvestorsAddress.0x9b19251a with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require openingTime + (168 * 24 * 3600) >= openingTime
                if block.timestamp >= openingTime + (168 * 24 * 3600):
                    require openingTime + (336 * 24 * 3600) >= openingTime
                    if block.timestamp >= openingTime + (336 * 24 * 3600):
                        require openingTime + (504 * 24 * 3600) >= openingTime
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= 0
        require bonuses[address(arg1)] >= bonuses[address(arg1)]
        require stor16 >= stor16
        require balances[address(arg1)] >= balances[address(arg1)]
        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
    else:
        require rate * msg.value / msg.value == rate
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require msg.value <= weiRaised
        if weiRaised - msg.value >= goal:
            require openingTime + (168 * 24 * 3600) >= openingTime
            if block.timestamp < openingTime + (168 * 24 * 3600):
                if not rate * msg.value:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require rate * msg.value >= rate * msg.value
                    require ext_call.return_data[0] >= rate * msg.value
                    require bonuses[address(arg1)] >= bonuses[address(arg1)]
                    require rate * msg.value >= rate * msg.value
                    require (rate * msg.value) + stor16 >= stor16
                    stor16 += rate * msg.value
                else:
                    require 15 * rate * msg.value / rate * msg.value == 15
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (15 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                    require ext_call.return_data[0] >= (15 * rate * msg.value / 100) + (rate * msg.value)
                    require (15 * rate * msg.value / 100) + bonuses[address(arg1)] >= bonuses[address(arg1)]
                    bonuses[address(arg1)] += 15 * rate * msg.value / 100
                    require (15 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                    require (15 * rate * msg.value / 100) + (rate * msg.value) + stor16 >= stor16
                    stor16 = (15 * rate * msg.value / 100) + (rate * msg.value) + stor16
            else:
                require openingTime + (336 * 24 * 3600) >= openingTime
                if block.timestamp < openingTime + (336 * 24 * 3600):
                    if not rate * msg.value:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require rate * msg.value >= rate * msg.value
                        require ext_call.return_data[0] >= rate * msg.value
                        require bonuses[address(arg1)] >= bonuses[address(arg1)]
                        require rate * msg.value >= rate * msg.value
                        require (rate * msg.value) + stor16 >= stor16
                        stor16 += rate * msg.value
                    else:
                        require 10 * rate * msg.value / rate * msg.value == 10
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require (10 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                        require ext_call.return_data[0] >= (10 * rate * msg.value / 100) + (rate * msg.value)
                        require (10 * rate * msg.value / 100) + bonuses[address(arg1)] >= bonuses[address(arg1)]
                        bonuses[address(arg1)] += 10 * rate * msg.value / 100
                        require (10 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                        require (10 * rate * msg.value / 100) + (rate * msg.value) + stor16 >= stor16
                        stor16 = (10 * rate * msg.value / 100) + (rate * msg.value) + stor16
                else:
                    require openingTime + (504 * 24 * 3600) >= openingTime
                    if block.timestamp >= openingTime + (504 * 24 * 3600):
                        if not rate * msg.value:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require rate * msg.value >= rate * msg.value
                            require ext_call.return_data[0] >= rate * msg.value
                            require bonuses[address(arg1)] >= bonuses[address(arg1)]
                            require rate * msg.value >= rate * msg.value
                            require (rate * msg.value) + stor16 >= stor16
                            stor16 += rate * msg.value
                        else:
                            require 6 * rate * msg.value / rate * msg.value == 6
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require (6 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                            require ext_call.return_data[0] >= (6 * rate * msg.value / 100) + (rate * msg.value)
                            require (6 * rate * msg.value / 100) + bonuses[address(arg1)] >= bonuses[address(arg1)]
                            bonuses[address(arg1)] += 6 * rate * msg.value / 100
                            require (6 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                            require (6 * rate * msg.value / 100) + (rate * msg.value) + stor16 >= stor16
                            stor16 = (6 * rate * msg.value / 100) + (rate * msg.value) + stor16
                    else:
                        if not rate * msg.value:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require rate * msg.value >= rate * msg.value
                            require ext_call.return_data[0] >= rate * msg.value
                            require bonuses[address(arg1)] >= bonuses[address(arg1)]
                            require rate * msg.value >= rate * msg.value
                            require (rate * msg.value) + stor16 >= stor16
                            stor16 += rate * msg.value
                        else:
                            require 8 * rate * msg.value / rate * msg.value == 8
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require (8 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                            require ext_call.return_data[0] >= (8 * rate * msg.value / 100) + (rate * msg.value)
                            require (8 * rate * msg.value / 100) + bonuses[address(arg1)] >= bonuses[address(arg1)]
                            bonuses[address(arg1)] += 8 * rate * msg.value / 100
                            require (8 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                            require (8 * rate * msg.value / 100) + (rate * msg.value) + stor16 >= stor16
                            stor16 = (8 * rate * msg.value / 100) + (rate * msg.value) + stor16
        else:
            require ext_code.size(earlyInvestorsAddress)
            call earlyInvestorsAddress.0x9b19251a with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if not rate * msg.value:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require rate * msg.value >= rate * msg.value
                    require ext_call.return_data[0] >= rate * msg.value
                    require bonuses[address(arg1)] >= bonuses[address(arg1)]
                    require rate * msg.value >= rate * msg.value
                    require (rate * msg.value) + stor16 >= stor16
                    stor16 += rate * msg.value
                else:
                    require 30 * rate * msg.value / rate * msg.value == 30
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (30 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                    require ext_call.return_data[0] >= (30 * rate * msg.value / 100) + (rate * msg.value)
                    require (30 * rate * msg.value / 100) + bonuses[address(arg1)] >= bonuses[address(arg1)]
                    bonuses[address(arg1)] += 30 * rate * msg.value / 100
                    require (30 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                    require (30 * rate * msg.value / 100) + (rate * msg.value) + stor16 >= stor16
                    stor16 = (30 * rate * msg.value / 100) + (rate * msg.value) + stor16
            else:
                require openingTime + (168 * 24 * 3600) >= openingTime
                if block.timestamp < openingTime + (168 * 24 * 3600):
                    if not rate * msg.value:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require rate * msg.value >= rate * msg.value
                        require ext_call.return_data[0] >= rate * msg.value
                        require bonuses[address(arg1)] >= bonuses[address(arg1)]
                        require rate * msg.value >= rate * msg.value
                        require (rate * msg.value) + stor16 >= stor16
                        stor16 += rate * msg.value
                    else:
                        require 15 * rate * msg.value / rate * msg.value == 15
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require (15 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                        require ext_call.return_data[0] >= (15 * rate * msg.value / 100) + (rate * msg.value)
                        require (15 * rate * msg.value / 100) + bonuses[address(arg1)] >= bonuses[address(arg1)]
                        bonuses[address(arg1)] += 15 * rate * msg.value / 100
                        require (15 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                        require (15 * rate * msg.value / 100) + (rate * msg.value) + stor16 >= stor16
                        stor16 = (15 * rate * msg.value / 100) + (rate * msg.value) + stor16
                else:
                    require openingTime + (336 * 24 * 3600) >= openingTime
                    if block.timestamp < openingTime + (336 * 24 * 3600):
                        if not rate * msg.value:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require rate * msg.value >= rate * msg.value
                            require ext_call.return_data[0] >= rate * msg.value
                            require bonuses[address(arg1)] >= bonuses[address(arg1)]
                            require rate * msg.value >= rate * msg.value
                            require (rate * msg.value) + stor16 >= stor16
                            stor16 += rate * msg.value
                        else:
                            require 10 * rate * msg.value / rate * msg.value == 10
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require (10 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                            require ext_call.return_data[0] >= (10 * rate * msg.value / 100) + (rate * msg.value)
                            require (10 * rate * msg.value / 100) + bonuses[address(arg1)] >= bonuses[address(arg1)]
                            bonuses[address(arg1)] += 10 * rate * msg.value / 100
                            require (10 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                            require (10 * rate * msg.value / 100) + (rate * msg.value) + stor16 >= stor16
                            stor16 = (10 * rate * msg.value / 100) + (rate * msg.value) + stor16
                    else:
                        require openingTime + (504 * 24 * 3600) >= openingTime
                        if block.timestamp >= openingTime + (504 * 24 * 3600):
                            if not rate * msg.value:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require rate * msg.value >= rate * msg.value
                                require ext_call.return_data[0] >= rate * msg.value
                                require bonuses[address(arg1)] >= bonuses[address(arg1)]
                                require rate * msg.value >= rate * msg.value
                                require (rate * msg.value) + stor16 >= stor16
                                stor16 += rate * msg.value
                            else:
                                require 6 * rate * msg.value / rate * msg.value == 6
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require (6 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                                require ext_call.return_data[0] >= (6 * rate * msg.value / 100) + (rate * msg.value)
                                require (6 * rate * msg.value / 100) + bonuses[address(arg1)] >= bonuses[address(arg1)]
                                bonuses[address(arg1)] += 6 * rate * msg.value / 100
                                require (6 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                                require (6 * rate * msg.value / 100) + (rate * msg.value) + stor16 >= stor16
                                stor16 = (6 * rate * msg.value / 100) + (rate * msg.value) + stor16
                        else:
                            if not rate * msg.value:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require rate * msg.value >= rate * msg.value
                                require ext_call.return_data[0] >= rate * msg.value
                                require bonuses[address(arg1)] >= bonuses[address(arg1)]
                                require rate * msg.value >= rate * msg.value
                                require (rate * msg.value) + stor16 >= stor16
                                stor16 += rate * msg.value
                            else:
                                require 8 * rate * msg.value / rate * msg.value == 8
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require (8 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                                require ext_call.return_data[0] >= (8 * rate * msg.value / 100) + (rate * msg.value)
                                require (8 * rate * msg.value / 100) + bonuses[address(arg1)] >= bonuses[address(arg1)]
                                bonuses[address(arg1)] += 8 * rate * msg.value / 100
                                require (8 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                                require (8 * rate * msg.value / 100) + (rate * msg.value) + stor16 >= stor16
                                stor16 = (8 * rate * msg.value / 100) + (rate * msg.value) + stor16
        require (rate * msg.value) + balances[address(arg1)] >= balances[address(arg1)]
        balances[address(arg1)] += rate * msg.value
        emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
    require ext_code.size(vaultAddress)
    call vaultAddress.deposit(address arg1) with:
       value msg.value wei
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require not uint8(stor7.field_160)
    require ext_code.size(authorisedInvestorsAddress)
    call authorisedInvestorsAddress.0x9b19251a with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(earlyInvestorsAddress)
        call earlyInvestorsAddress.0x9b19251a with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require msg.sender
    require msg.value
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= cap
    if not msg.value:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require msg.value <= weiRaised
        if weiRaised - msg.value >= goal:
            require openingTime + (168 * 24 * 3600) >= openingTime
            if block.timestamp >= openingTime + (168 * 24 * 3600):
                require openingTime + (336 * 24 * 3600) >= openingTime
                if block.timestamp >= openingTime + (336 * 24 * 3600):
                    require openingTime + (504 * 24 * 3600) >= openingTime
        else:
            require ext_code.size(earlyInvestorsAddress)
            call earlyInvestorsAddress.0x9b19251a with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require openingTime + (168 * 24 * 3600) >= openingTime
                if block.timestamp >= openingTime + (168 * 24 * 3600):
                    require openingTime + (336 * 24 * 3600) >= openingTime
                    if block.timestamp >= openingTime + (336 * 24 * 3600):
                        require openingTime + (504 * 24 * 3600) >= openingTime
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= 0
        require bonuses[address(msg.sender)] >= bonuses[address(msg.sender)]
        require stor16 >= stor16
        require balances[address(msg.sender)] >= balances[address(msg.sender)]
        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
    else:
        require rate * msg.value / msg.value == rate
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require msg.value <= weiRaised
        if weiRaised - msg.value >= goal:
            require openingTime + (168 * 24 * 3600) >= openingTime
            if block.timestamp < openingTime + (168 * 24 * 3600):
                if not rate * msg.value:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require rate * msg.value >= rate * msg.value
                    require ext_call.return_data[0] >= rate * msg.value
                    require bonuses[address(msg.sender)] >= bonuses[address(msg.sender)]
                    require rate * msg.value >= rate * msg.value
                    require (rate * msg.value) + stor16 >= stor16
                    stor16 += rate * msg.value
                else:
                    require 15 * rate * msg.value / rate * msg.value == 15
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (15 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                    require ext_call.return_data[0] >= (15 * rate * msg.value / 100) + (rate * msg.value)
                    require (15 * rate * msg.value / 100) + bonuses[address(msg.sender)] >= bonuses[address(msg.sender)]
                    bonuses[address(msg.sender)] += 15 * rate * msg.value / 100
                    require (15 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                    require (15 * rate * msg.value / 100) + (rate * msg.value) + stor16 >= stor16
                    stor16 = (15 * rate * msg.value / 100) + (rate * msg.value) + stor16
            else:
                require openingTime + (336 * 24 * 3600) >= openingTime
                if block.timestamp < openingTime + (336 * 24 * 3600):
                    if not rate * msg.value:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require rate * msg.value >= rate * msg.value
                        require ext_call.return_data[0] >= rate * msg.value
                        require bonuses[address(msg.sender)] >= bonuses[address(msg.sender)]
                        require rate * msg.value >= rate * msg.value
                        require (rate * msg.value) + stor16 >= stor16
                        stor16 += rate * msg.value
                    else:
                        require 10 * rate * msg.value / rate * msg.value == 10
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require (10 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                        require ext_call.return_data[0] >= (10 * rate * msg.value / 100) + (rate * msg.value)
                        require (10 * rate * msg.value / 100) + bonuses[address(msg.sender)] >= bonuses[address(msg.sender)]
                        bonuses[address(msg.sender)] += 10 * rate * msg.value / 100
                        require (10 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                        require (10 * rate * msg.value / 100) + (rate * msg.value) + stor16 >= stor16
                        stor16 = (10 * rate * msg.value / 100) + (rate * msg.value) + stor16
                else:
                    require openingTime + (504 * 24 * 3600) >= openingTime
                    if block.timestamp >= openingTime + (504 * 24 * 3600):
                        if not rate * msg.value:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require rate * msg.value >= rate * msg.value
                            require ext_call.return_data[0] >= rate * msg.value
                            require bonuses[address(msg.sender)] >= bonuses[address(msg.sender)]
                            require rate * msg.value >= rate * msg.value
                            require (rate * msg.value) + stor16 >= stor16
                            stor16 += rate * msg.value
                        else:
                            require 6 * rate * msg.value / rate * msg.value == 6
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require (6 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                            require ext_call.return_data[0] >= (6 * rate * msg.value / 100) + (rate * msg.value)
                            require (6 * rate * msg.value / 100) + bonuses[address(msg.sender)] >= bonuses[address(msg.sender)]
                            bonuses[address(msg.sender)] += 6 * rate * msg.value / 100
                            require (6 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                            require (6 * rate * msg.value / 100) + (rate * msg.value) + stor16 >= stor16
                            stor16 = (6 * rate * msg.value / 100) + (rate * msg.value) + stor16
                    else:
                        if not rate * msg.value:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require rate * msg.value >= rate * msg.value
                            require ext_call.return_data[0] >= rate * msg.value
                            require bonuses[address(msg.sender)] >= bonuses[address(msg.sender)]
                            require rate * msg.value >= rate * msg.value
                            require (rate * msg.value) + stor16 >= stor16
                            stor16 += rate * msg.value
                        else:
                            require 8 * rate * msg.value / rate * msg.value == 8
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require (8 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                            require ext_call.return_data[0] >= (8 * rate * msg.value / 100) + (rate * msg.value)
                            require (8 * rate * msg.value / 100) + bonuses[address(msg.sender)] >= bonuses[address(msg.sender)]
                            bonuses[address(msg.sender)] += 8 * rate * msg.value / 100
                            require (8 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                            require (8 * rate * msg.value / 100) + (rate * msg.value) + stor16 >= stor16
                            stor16 = (8 * rate * msg.value / 100) + (rate * msg.value) + stor16
        else:
            require ext_code.size(earlyInvestorsAddress)
            call earlyInvestorsAddress.0x9b19251a with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if not rate * msg.value:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require rate * msg.value >= rate * msg.value
                    require ext_call.return_data[0] >= rate * msg.value
                    require bonuses[address(msg.sender)] >= bonuses[address(msg.sender)]
                    require rate * msg.value >= rate * msg.value
                    require (rate * msg.value) + stor16 >= stor16
                    stor16 += rate * msg.value
                else:
                    require 30 * rate * msg.value / rate * msg.value == 30
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (30 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                    require ext_call.return_data[0] >= (30 * rate * msg.value / 100) + (rate * msg.value)
                    require (30 * rate * msg.value / 100) + bonuses[address(msg.sender)] >= bonuses[address(msg.sender)]
                    bonuses[address(msg.sender)] += 30 * rate * msg.value / 100
                    require (30 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                    require (30 * rate * msg.value / 100) + (rate * msg.value) + stor16 >= stor16
                    stor16 = (30 * rate * msg.value / 100) + (rate * msg.value) + stor16
            else:
                require openingTime + (168 * 24 * 3600) >= openingTime
                if block.timestamp < openingTime + (168 * 24 * 3600):
                    if not rate * msg.value:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require rate * msg.value >= rate * msg.value
                        require ext_call.return_data[0] >= rate * msg.value
                        require bonuses[address(msg.sender)] >= bonuses[address(msg.sender)]
                        require rate * msg.value >= rate * msg.value
                        require (rate * msg.value) + stor16 >= stor16
                        stor16 += rate * msg.value
                    else:
                        require 15 * rate * msg.value / rate * msg.value == 15
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require (15 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                        require ext_call.return_data[0] >= (15 * rate * msg.value / 100) + (rate * msg.value)
                        require (15 * rate * msg.value / 100) + bonuses[address(msg.sender)] >= bonuses[address(msg.sender)]
                        bonuses[address(msg.sender)] += 15 * rate * msg.value / 100
                        require (15 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                        require (15 * rate * msg.value / 100) + (rate * msg.value) + stor16 >= stor16
                        stor16 = (15 * rate * msg.value / 100) + (rate * msg.value) + stor16
                else:
                    require openingTime + (336 * 24 * 3600) >= openingTime
                    if block.timestamp < openingTime + (336 * 24 * 3600):
                        if not rate * msg.value:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require rate * msg.value >= rate * msg.value
                            require ext_call.return_data[0] >= rate * msg.value
                            require bonuses[address(msg.sender)] >= bonuses[address(msg.sender)]
                            require rate * msg.value >= rate * msg.value
                            require (rate * msg.value) + stor16 >= stor16
                            stor16 += rate * msg.value
                        else:
                            require 10 * rate * msg.value / rate * msg.value == 10
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require (10 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                            require ext_call.return_data[0] >= (10 * rate * msg.value / 100) + (rate * msg.value)
                            require (10 * rate * msg.value / 100) + bonuses[address(msg.sender)] >= bonuses[address(msg.sender)]
                            bonuses[address(msg.sender)] += 10 * rate * msg.value / 100
                            require (10 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                            require (10 * rate * msg.value / 100) + (rate * msg.value) + stor16 >= stor16
                            stor16 = (10 * rate * msg.value / 100) + (rate * msg.value) + stor16
                    else:
                        require openingTime + (504 * 24 * 3600) >= openingTime
                        if block.timestamp >= openingTime + (504 * 24 * 3600):
                            if not rate * msg.value:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require rate * msg.value >= rate * msg.value
                                require ext_call.return_data[0] >= rate * msg.value
                                require bonuses[address(msg.sender)] >= bonuses[address(msg.sender)]
                                require rate * msg.value >= rate * msg.value
                                require (rate * msg.value) + stor16 >= stor16
                                stor16 += rate * msg.value
                            else:
                                require 6 * rate * msg.value / rate * msg.value == 6
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require (6 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                                require ext_call.return_data[0] >= (6 * rate * msg.value / 100) + (rate * msg.value)
                                require (6 * rate * msg.value / 100) + bonuses[address(msg.sender)] >= bonuses[address(msg.sender)]
                                bonuses[address(msg.sender)] += 6 * rate * msg.value / 100
                                require (6 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                                require (6 * rate * msg.value / 100) + (rate * msg.value) + stor16 >= stor16
                                stor16 = (6 * rate * msg.value / 100) + (rate * msg.value) + stor16
                        else:
                            if not rate * msg.value:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require rate * msg.value >= rate * msg.value
                                require ext_call.return_data[0] >= rate * msg.value
                                require bonuses[address(msg.sender)] >= bonuses[address(msg.sender)]
                                require rate * msg.value >= rate * msg.value
                                require (rate * msg.value) + stor16 >= stor16
                                stor16 += rate * msg.value
                            else:
                                require 8 * rate * msg.value / rate * msg.value == 8
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require (8 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                                require ext_call.return_data[0] >= (8 * rate * msg.value / 100) + (rate * msg.value)
                                require (8 * rate * msg.value / 100) + bonuses[address(msg.sender)] >= bonuses[address(msg.sender)]
                                bonuses[address(msg.sender)] += 8 * rate * msg.value / 100
                                require (8 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                                require (8 * rate * msg.value / 100) + (rate * msg.value) + stor16 >= stor16
                                stor16 = (8 * rate * msg.value / 100) + (rate * msg.value) + stor16
        require (rate * msg.value) + balances[address(msg.sender)] >= balances[address(msg.sender)]
        balances[address(msg.sender)] += rate * msg.value
        emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
    require ext_code.size(vaultAddress)
    call vaultAddress.deposit(address arg1) with:
       value msg.value wei
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buyTokens(address arg1, bytes arg2) payable {
    require ext_code.size(earlyInvestorsAddress)
    call earlyInvestorsAddress.0x61b6f889 with:
         gas gas_remaining wei
        args address(arg1), Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(authorisedInvestorsAddress)
        call authorisedInvestorsAddress.0x61b6f889 with:
             gas gas_remaining wei
            args address(arg1), Array(len=arg2.length, data=arg2[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require not uint8(stor7.field_160)
    require ext_code.size(authorisedInvestorsAddress)
    call authorisedInvestorsAddress.0x9b19251a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(earlyInvestorsAddress)
        call earlyInvestorsAddress.0x9b19251a with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require arg1
    require msg.value
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= cap
    if not msg.value:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require msg.value <= weiRaised
        if weiRaised - msg.value >= goal:
            require openingTime + (168 * 24 * 3600) >= openingTime
            if block.timestamp >= openingTime + (168 * 24 * 3600):
                require openingTime + (336 * 24 * 3600) >= openingTime
                if block.timestamp >= openingTime + (336 * 24 * 3600):
                    require openingTime + (504 * 24 * 3600) >= openingTime
        else:
            require ext_code.size(earlyInvestorsAddress)
            call earlyInvestorsAddress.0x9b19251a with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require openingTime + (168 * 24 * 3600) >= openingTime
                if block.timestamp >= openingTime + (168 * 24 * 3600):
                    require openingTime + (336 * 24 * 3600) >= openingTime
                    if block.timestamp >= openingTime + (336 * 24 * 3600):
                        require openingTime + (504 * 24 * 3600) >= openingTime
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= 0
        require bonuses[address(arg1)] >= bonuses[address(arg1)]
        require stor16 >= stor16
        require balances[address(arg1)] >= balances[address(arg1)]
        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
    else:
        require rate * msg.value / msg.value == rate
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require msg.value <= weiRaised
        if weiRaised - msg.value >= goal:
            require openingTime + (168 * 24 * 3600) >= openingTime
            if block.timestamp < openingTime + (168 * 24 * 3600):
                if not rate * msg.value:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require rate * msg.value >= rate * msg.value
                    require ext_call.return_data[0] >= rate * msg.value
                    require bonuses[address(arg1)] >= bonuses[address(arg1)]
                    require rate * msg.value >= rate * msg.value
                    require (rate * msg.value) + stor16 >= stor16
                    stor16 += rate * msg.value
                else:
                    require 15 * rate * msg.value / rate * msg.value == 15
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (15 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                    require ext_call.return_data[0] >= (15 * rate * msg.value / 100) + (rate * msg.value)
                    require (15 * rate * msg.value / 100) + bonuses[address(arg1)] >= bonuses[address(arg1)]
                    bonuses[address(arg1)] += 15 * rate * msg.value / 100
                    require (15 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                    require (15 * rate * msg.value / 100) + (rate * msg.value) + stor16 >= stor16
                    stor16 = (15 * rate * msg.value / 100) + (rate * msg.value) + stor16
            else:
                require openingTime + (336 * 24 * 3600) >= openingTime
                if block.timestamp < openingTime + (336 * 24 * 3600):
                    if not rate * msg.value:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require rate * msg.value >= rate * msg.value
                        require ext_call.return_data[0] >= rate * msg.value
                        require bonuses[address(arg1)] >= bonuses[address(arg1)]
                        require rate * msg.value >= rate * msg.value
                        require (rate * msg.value) + stor16 >= stor16
                        stor16 += rate * msg.value
                    else:
                        require 10 * rate * msg.value / rate * msg.value == 10
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require (10 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                        require ext_call.return_data[0] >= (10 * rate * msg.value / 100) + (rate * msg.value)
                        require (10 * rate * msg.value / 100) + bonuses[address(arg1)] >= bonuses[address(arg1)]
                        bonuses[address(arg1)] += 10 * rate * msg.value / 100
                        require (10 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                        require (10 * rate * msg.value / 100) + (rate * msg.value) + stor16 >= stor16
                        stor16 = (10 * rate * msg.value / 100) + (rate * msg.value) + stor16
                else:
                    require openingTime + (504 * 24 * 3600) >= openingTime
                    if block.timestamp >= openingTime + (504 * 24 * 3600):
                        if not rate * msg.value:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require rate * msg.value >= rate * msg.value
                            require ext_call.return_data[0] >= rate * msg.value
                            require bonuses[address(arg1)] >= bonuses[address(arg1)]
                            require rate * msg.value >= rate * msg.value
                            require (rate * msg.value) + stor16 >= stor16
                            stor16 += rate * msg.value
                        else:
                            require 6 * rate * msg.value / rate * msg.value == 6
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require (6 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                            require ext_call.return_data[0] >= (6 * rate * msg.value / 100) + (rate * msg.value)
                            require (6 * rate * msg.value / 100) + bonuses[address(arg1)] >= bonuses[address(arg1)]
                            bonuses[address(arg1)] += 6 * rate * msg.value / 100
                            require (6 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                            require (6 * rate * msg.value / 100) + (rate * msg.value) + stor16 >= stor16
                            stor16 = (6 * rate * msg.value / 100) + (rate * msg.value) + stor16
                    else:
                        if not rate * msg.value:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require rate * msg.value >= rate * msg.value
                            require ext_call.return_data[0] >= rate * msg.value
                            require bonuses[address(arg1)] >= bonuses[address(arg1)]
                            require rate * msg.value >= rate * msg.value
                            require (rate * msg.value) + stor16 >= stor16
                            stor16 += rate * msg.value
                        else:
                            require 8 * rate * msg.value / rate * msg.value == 8
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require (8 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                            require ext_call.return_data[0] >= (8 * rate * msg.value / 100) + (rate * msg.value)
                            require (8 * rate * msg.value / 100) + bonuses[address(arg1)] >= bonuses[address(arg1)]
                            bonuses[address(arg1)] += 8 * rate * msg.value / 100
                            require (8 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                            require (8 * rate * msg.value / 100) + (rate * msg.value) + stor16 >= stor16
                            stor16 = (8 * rate * msg.value / 100) + (rate * msg.value) + stor16
        else:
            require ext_code.size(earlyInvestorsAddress)
            call earlyInvestorsAddress.0x9b19251a with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if not rate * msg.value:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require rate * msg.value >= rate * msg.value
                    require ext_call.return_data[0] >= rate * msg.value
                    require bonuses[address(arg1)] >= bonuses[address(arg1)]
                    require rate * msg.value >= rate * msg.value
                    require (rate * msg.value) + stor16 >= stor16
                    stor16 += rate * msg.value
                else:
                    require 30 * rate * msg.value / rate * msg.value == 30
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (30 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                    require ext_call.return_data[0] >= (30 * rate * msg.value / 100) + (rate * msg.value)
                    require (30 * rate * msg.value / 100) + bonuses[address(arg1)] >= bonuses[address(arg1)]
                    bonuses[address(arg1)] += 30 * rate * msg.value / 100
                    require (30 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                    require (30 * rate * msg.value / 100) + (rate * msg.value) + stor16 >= stor16
                    stor16 = (30 * rate * msg.value / 100) + (rate * msg.value) + stor16
            else:
                require openingTime + (168 * 24 * 3600) >= openingTime
                if block.timestamp < openingTime + (168 * 24 * 3600):
                    if not rate * msg.value:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require rate * msg.value >= rate * msg.value
                        require ext_call.return_data[0] >= rate * msg.value
                        require bonuses[address(arg1)] >= bonuses[address(arg1)]
                        require rate * msg.value >= rate * msg.value
                        require (rate * msg.value) + stor16 >= stor16
                        stor16 += rate * msg.value
                    else:
                        require 15 * rate * msg.value / rate * msg.value == 15
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require (15 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                        require ext_call.return_data[0] >= (15 * rate * msg.value / 100) + (rate * msg.value)
                        require (15 * rate * msg.value / 100) + bonuses[address(arg1)] >= bonuses[address(arg1)]
                        bonuses[address(arg1)] += 15 * rate * msg.value / 100
                        require (15 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                        require (15 * rate * msg.value / 100) + (rate * msg.value) + stor16 >= stor16
                        stor16 = (15 * rate * msg.value / 100) + (rate * msg.value) + stor16
                else:
                    require openingTime + (336 * 24 * 3600) >= openingTime
                    if block.timestamp < openingTime + (336 * 24 * 3600):
                        if not rate * msg.value:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require rate * msg.value >= rate * msg.value
                            require ext_call.return_data[0] >= rate * msg.value
                            require bonuses[address(arg1)] >= bonuses[address(arg1)]
                            require rate * msg.value >= rate * msg.value
                            require (rate * msg.value) + stor16 >= stor16
                            stor16 += rate * msg.value
                        else:
                            require 10 * rate * msg.value / rate * msg.value == 10
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require (10 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                            require ext_call.return_data[0] >= (10 * rate * msg.value / 100) + (rate * msg.value)
                            require (10 * rate * msg.value / 100) + bonuses[address(arg1)] >= bonuses[address(arg1)]
                            bonuses[address(arg1)] += 10 * rate * msg.value / 100
                            require (10 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                            require (10 * rate * msg.value / 100) + (rate * msg.value) + stor16 >= stor16
                            stor16 = (10 * rate * msg.value / 100) + (rate * msg.value) + stor16
                    else:
                        require openingTime + (504 * 24 * 3600) >= openingTime
                        if block.timestamp >= openingTime + (504 * 24 * 3600):
                            if not rate * msg.value:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require rate * msg.value >= rate * msg.value
                                require ext_call.return_data[0] >= rate * msg.value
                                require bonuses[address(arg1)] >= bonuses[address(arg1)]
                                require rate * msg.value >= rate * msg.value
                                require (rate * msg.value) + stor16 >= stor16
                                stor16 += rate * msg.value
                            else:
                                require 6 * rate * msg.value / rate * msg.value == 6
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require (6 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                                require ext_call.return_data[0] >= (6 * rate * msg.value / 100) + (rate * msg.value)
                                require (6 * rate * msg.value / 100) + bonuses[address(arg1)] >= bonuses[address(arg1)]
                                bonuses[address(arg1)] += 6 * rate * msg.value / 100
                                require (6 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                                require (6 * rate * msg.value / 100) + (rate * msg.value) + stor16 >= stor16
                                stor16 = (6 * rate * msg.value / 100) + (rate * msg.value) + stor16
                        else:
                            if not rate * msg.value:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require rate * msg.value >= rate * msg.value
                                require ext_call.return_data[0] >= rate * msg.value
                                require bonuses[address(arg1)] >= bonuses[address(arg1)]
                                require rate * msg.value >= rate * msg.value
                                require (rate * msg.value) + stor16 >= stor16
                                stor16 += rate * msg.value
                            else:
                                require 8 * rate * msg.value / rate * msg.value == 8
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require (8 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                                require ext_call.return_data[0] >= (8 * rate * msg.value / 100) + (rate * msg.value)
                                require (8 * rate * msg.value / 100) + bonuses[address(arg1)] >= bonuses[address(arg1)]
                                bonuses[address(arg1)] += 8 * rate * msg.value / 100
                                require (8 * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
                                require (8 * rate * msg.value / 100) + (rate * msg.value) + stor16 >= stor16
                                stor16 = (8 * rate * msg.value / 100) + (rate * msg.value) + stor16
        require (rate * msg.value) + balances[address(arg1)] >= balances[address(arg1)]
        balances[address(arg1)] += rate * msg.value
        emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
    require ext_code.size(vaultAddress)
    call vaultAddress.deposit(address arg1) with:
       value msg.value wei
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
