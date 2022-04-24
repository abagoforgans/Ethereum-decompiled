contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
address stor6;
uint256 stor7;
uint128 stor8; offset 160
address stor8;
uint256 stor9;
address stor10;
address stor11;
uint256 stor12;

function _fallback() payable {
    Mask(96, 0, stor8.field_160) = 0
    require not msg.value
    require code.data[8817 len 32] >= block.timestamp
    require code.data[8849 len 32] >= code.data[8817 len 32]
    require code.data[8881 len 32] > 0
    require code.data[9053 len 20]
    stor6 = code.data[9021 len 20]
    stor0 = stor6
    stor1 = code.data[8817 len 32]
    stor2 = code.data[8849 len 32]
    stor4 = code.data[8881 len 32]
    stor3 = code.data[9053 len 20]
    require code.data[8945 len 32] > 0
    stor7 = code.data[8945 len 32]
    address(stor8.field_0) = msg.sender
    require code.data[8913 len 32] > 0
    create contract with 0 wei
                    code: code.data[5882 len 2935], stor3
    require create.new_address
    stor10 = address(create.new_address)
    stor9 = code.data[8913 len 32]
    require code.data[8913 len 32] <= code.data[8945 len 32]
    stor11 = code.data[9085 len 20]
    stor12 = code.data[8977 len 32]
    return code.data[987 len 4895]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 weiRaised;
address tokenAddress;
uint256 cap;
uint8 stor8; offset 160
uint128 stor8; offset 160
address owner;
uint256 goal;
address vaultAddress;
address whitelistAddress;
uint256 minimumInvestment;

function minimumInvestment() {
    return minimumInvestment
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

function wallet() {
    return walletAddress
}

function startTime() {
    return startTime
}

function isFinalized() {
    return bool(uint8(stor8.field_160))
}

function owner() {
    return owner
}

function whitelist() {
    return whitelistAddress
}

function tokenAddress() {
    return tokenAddress
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

function hasStarted() {
    return block.timestamp >= startTime
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function hasEnded() {
    require weiRaised + minimumInvestment >= weiRaised
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    if weiRaised >= cap:
        return weiRaised >= cap
    return (weiRaised + minimumInvestment > cap)
}

function claimRefund() {
    require uint8(stor8.field_160)
    require weiRaised < goal
    require ext_code.size(vaultAddress)
    call vaultAddress.refund(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
}

function finalize() {
    require msg.sender == owner
    require not uint8(stor8.field_160)
    require weiRaised + minimumInvestment >= weiRaised
    if block.timestamp <= endTime:
        if weiRaised < cap:
            require weiRaised + minimumInvestment > cap
    require ext_code.size(vaultAddress)
    if weiRaised < goal:
        call vaultAddress.enableRefunds() with:
             gas gas_remaining - 710 wei
    else:
        call vaultAddress.close() with:
             gas gas_remaining - 710 wei
    require ext_call.success
    emit Finalized()
    Mask(96, 0, stor8.field_160) = 1
}

function buyTokens(address arg1) payable {
    require arg1
    require ext_code.size(whitelistAddress)
    call whitelistAddress.0x3af32abf with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0]
    require weiRaised + msg.value >= weiRaised
    if weiRaised + msg.value <= cap:
        require weiRaised + msg.value >= weiRaised
        require block.timestamp >= startTime
        require block.timestamp <= endTime
        require msg.value
        require weiRaised + msg.value <= cap
        require msg.value >= minimumInvestment
        if not msg.value:
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args owner, address(arg1), 0
            require ext_call.success
            emit TokenPurchase(msg.value, 0, msg.sender, arg1);
        else:
            require msg.value
            require msg.value * rate / msg.value == rate
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args owner, address(arg1), msg.value * rate
            require ext_call.success
            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
        if weiRaised < goal:
            require ext_code.size(vaultAddress)
            call vaultAddress.deposit(address rg1) with:
               value msg.value wei
                 gas gas_remaining - 9710 wei
                args msg.sender
            require ext_call.success
        else:
            if eth.balance(vaultAddress) > 0:
                require ext_code.size(vaultAddress)
                call vaultAddress.forwardFunds() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
            if weiRaised >= goal:
                call walletAddress with:
                   value msg.value wei
                     gas gas_remaining - 34710 wei
            else:
                require ext_code.size(vaultAddress)
                call vaultAddress.deposit(address rg1) with:
                   value msg.value wei
                     gas gas_remaining - 9710 wei
                    args msg.sender
                require ext_call.success
    else:
        require block.timestamp >= startTime
        require weiRaised + minimumInvestment >= weiRaised
        require block.timestamp <= endTime
        require weiRaised < cap
        require weiRaised + minimumInvestment <= cap
        require cap <= weiRaised + msg.value
        require weiRaised <= cap
        call arg1 with:
           value weiRaised + msg.value - cap wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if not cap - weiRaised:
            require cap >= weiRaised
            weiRaised = cap
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args owner, address(arg1), 0
            require ext_call.success
            emit TokenPurchase(cap - weiRaised, 0, msg.sender, arg1);
        else:
            require cap - weiRaised
            require (cap * rate) - (weiRaised * rate) / cap - weiRaised == rate
            require cap >= weiRaised
            weiRaised = cap
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args owner, address(arg1), (cap * rate) - (weiRaised * rate)
            require ext_call.success
            emit TokenPurchase(cap - weiRaised, (cap * rate) - (weiRaised * rate), msg.sender, arg1);
        if weiRaised < goal:
            require ext_code.size(vaultAddress)
            call vaultAddress.deposit(address rg1) with:
               value cap - weiRaised wei
                 gas gas_remaining - 9710 wei
                args msg.sender
            require ext_call.success
        else:
            if eth.balance(vaultAddress) > 0:
                require ext_code.size(vaultAddress)
                call vaultAddress.forwardFunds() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
            if weiRaised >= goal:
                call walletAddress with:
                   value cap - weiRaised wei
                     gas gas_remaining - 34710 wei
            else:
                require ext_code.size(vaultAddress)
                call vaultAddress.deposit(address rg1) with:
                   value cap - weiRaised wei
                     gas gas_remaining - 9710 wei
                    args msg.sender
                require ext_call.success
}

function _fallback() payable {
    require msg.sender
    require ext_code.size(whitelistAddress)
    call whitelistAddress.0x3af32abf with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require weiRaised + msg.value >= weiRaised
    if weiRaised + msg.value <= cap:
        require weiRaised + msg.value >= weiRaised
        require block.timestamp >= startTime
        require block.timestamp <= endTime
        require msg.value
        require weiRaised + msg.value <= cap
        require msg.value >= minimumInvestment
        if not msg.value:
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args owner, msg.sender, 0
            require ext_call.success
            emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
        else:
            require msg.value
            require msg.value * rate / msg.value == rate
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args owner, msg.sender, msg.value * rate
            require ext_call.success
            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
        if weiRaised < goal:
            require ext_code.size(vaultAddress)
            call vaultAddress.deposit(address rg1) with:
               value msg.value wei
                 gas gas_remaining - 9710 wei
                args msg.sender
            require ext_call.success
        else:
            if eth.balance(vaultAddress) > 0:
                require ext_code.size(vaultAddress)
                call vaultAddress.forwardFunds() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
            if weiRaised >= goal:
                call walletAddress with:
                   value msg.value wei
                     gas gas_remaining - 34710 wei
            else:
                require ext_code.size(vaultAddress)
                call vaultAddress.deposit(address rg1) with:
                   value msg.value wei
                     gas gas_remaining - 9710 wei
                    args msg.sender
                require ext_call.success
    else:
        require block.timestamp >= startTime
        require weiRaised + minimumInvestment >= weiRaised
        require block.timestamp <= endTime
        require weiRaised < cap
        require weiRaised + minimumInvestment <= cap
        require cap <= weiRaised + msg.value
        require weiRaised <= cap
        call msg.sender with:
           value weiRaised + msg.value - cap wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if not cap - weiRaised:
            require cap >= weiRaised
            weiRaised = cap
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args owner, msg.sender, 0
            require ext_call.success
            emit TokenPurchase(cap - weiRaised, 0, msg.sender, msg.sender);
        else:
            require cap - weiRaised
            require (cap * rate) - (weiRaised * rate) / cap - weiRaised == rate
            require cap >= weiRaised
            weiRaised = cap
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args owner, msg.sender, (cap * rate) - (weiRaised * rate)
            require ext_call.success
            emit TokenPurchase(cap - weiRaised, (cap * rate) - (weiRaised * rate), msg.sender, msg.sender);
        if weiRaised < goal:
            require ext_code.size(vaultAddress)
            call vaultAddress.deposit(address rg1) with:
               value cap - weiRaised wei
                 gas gas_remaining - 9710 wei
                args msg.sender
            require ext_call.success
        else:
            if eth.balance(vaultAddress) > 0:
                require ext_code.size(vaultAddress)
                call vaultAddress.forwardFunds() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
            if weiRaised >= goal:
                call walletAddress with:
                   value cap - weiRaised wei
                     gas gas_remaining - 34710 wei
            else:
                require ext_code.size(vaultAddress)
                call vaultAddress.deposit(address rg1) with:
                   value cap - weiRaised wei
                     gas gas_remaining - 9710 wei
                    args msg.sender
                require ext_call.success
}



}
