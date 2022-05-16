contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint256 stor6;
uint128 stor7; offset 160
address stor7;
uint256 stor8;
uint8 stor9; offset 160
address stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;

function _fallback() payable {
    Mask(96, 0, stor7.field_160) = 0
    uint8(stor9.field_160) = 0
    stor10 = 400000000 * 10^18
    stor11 = 120000000 * 10^18
    stor12 = 280000000 * 10^18
    stor13 = 100000000 * 10^18
    require not msg.value
    require code.data[22515 len 32] >= block.timestamp
    require code.data[22547 len 32] >= code.data[22515 len 32]
    require code.data[22579 len 32] > 0
    require code.data[22623 len 20]
    create contract with 0 wei
                    code: code.data[16380 len 6135]
    require create.new_address
    stor0 = address(create.new_address)
    stor1 = code.data[22515 len 32]
    stor2 = code.data[22547 len 32]
    stor4 = code.data[22579 len 32]
    stor3 = code.data[22623 len 20]
    require code.data[22675 len 32] > 0
    stor6 = code.data[22675 len 32]
    address(stor7.field_0) = msg.sender
    require code.data[22643 len 32] > 0
    create contract with 0 wei
                    code: code.data[13701 len 2679], stor3
    require create.new_address
    address(stor9.field_0) = address(create.new_address)
    stor8 = code.data[22643 len 32]
    require code.data[22643 len 32] <= code.data[22675 len 32]
    return code.data[930 len 12771]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 cap;
uint8 stor7; offset 160
uint128 stor7; offset 160
address owner;
uint256 goal;
uint8 stage; offset 160
address vaultAddress;
uint256 maxTokens;
uint256 tokensForEcosystem;
uint256 totalTokensForSale;
uint256 totalTokensForSaleDuringPreICO;
uint256 totalWeiRaisedDuringPreICO;

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

function tokensForEcosystem() {
    return tokensForEcosystem
}

function wallet() {
    return walletAddress
}

function totalTokensForSale() {
    return totalTokensForSale
}

function startTime() {
    return startTime
}

function isFinalized() {
    return bool(uint8(stor7.field_160))
}

function owner() {
    return owner
}

function totalWeiRaisedDuringPreICO() {
    return totalWeiRaisedDuringPreICO
}

function totalTokensForSaleDuringPreICO() {
    return totalTokensForSaleDuringPreICO
}

function stage() {
    require stage <= 3
    return stage
}

function maxTokens() {
    return maxTokens
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

function hasEnded() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    return weiRaised >= cap
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function claimRefund() {
    require uint8(stor7.field_160)
    require weiRaised < goal
    require ext_code.size(vaultAddress)
    call vaultAddress.0xfa89401a with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
}

function finalize() {
    require msg.sender == owner
    require not uint8(stor7.field_160)
    if block.timestamp <= endTime:
        require weiRaised >= cap
    require ext_code.size(vaultAddress)
    if weiRaised < goal:
        call vaultAddress.enableRefunds() with:
             gas gas_remaining - 710 wei
    else:
        call vaultAddress.0x43d726d6 with:
             gas gas_remaining - 710 wei
    require ext_call.success
    emit Finalized()
    Mask(96, 0, stor7.field_160) = 1
}

function setCrowdsaleStage(uint256 arg1) {
    require msg.sender == owner
    if 0 == arg1:
        stage = 0
    else:
        if 1 == arg1:
            stage = 1
        else:
            if 2 == arg1:
                stage = 2
            else:
                if arg1 != 3:
                    stage = 0
                else:
                    stage = 3
    require stage <= 3
    if not stage:
        rate = 40000
    else:
        require stage <= 3
        if stage == 1:
            rate = 33335
        else:
            require stage <= 3
            if stage == 2:
                rate = 15000
            else:
                require stage <= 3
                if stage == 3:
                    rate = 10000
}

function finish(address arg1) {
    require msg.sender == owner
    require not uint8(stor7.field_160)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] < maxTokens
    if totalTokensForSale - ext_call.return_data[0] > 0:
        tokensForEcosystem = tokensForEcosystem + totalTokensForSale - ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), tokensForEcosystem
    require ext_call.success
    require msg.sender == owner
    require not uint8(stor7.field_160)
    if block.timestamp <= endTime:
        require weiRaised >= cap
    require ext_code.size(vaultAddress)
    if weiRaised < goal:
        call vaultAddress.enableRefunds() with:
             gas gas_remaining - 710 wei
    else:
        call vaultAddress.0x43d726d6 with:
             gas gas_remaining - 710 wei
    require ext_call.success
    emit Finalized()
    Mask(96, 0, stor7.field_160) = 1
}

function buyTokens(address arg1) payable {
    require arg1
    require weiRaised + msg.value >= weiRaised
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require weiRaised + msg.value <= cap
    if not msg.value:
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), 0
        require ext_call.success
        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), msg.value * rate
        require ext_call.success
        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
    require stage <= 3
    if not stage:
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
    else:
        require stage <= 3
        if stage == 1:
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
        else:
            require stage <= 3
            if stage == 2:
                emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                require ext_code.size(vaultAddress)
                call vaultAddress.deposit(address arg1) with:
                   value msg.value wei
                     gas gas_remaining - 9710 wei
                    args msg.sender
                require ext_call.success
            else:
                require stage <= 3
                if stage == 3:
                    emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                    require ext_code.size(vaultAddress)
                    call vaultAddress.deposit(address arg1) with:
                       value msg.value wei
                         gas gas_remaining - 9710 wei
                        args msg.sender
                    require ext_call.success
}

function _fallback() payable {
    if not msg.value:
        require stage <= 3
        if stage:
            require stage <= 3
            if stage != 1:
                require msg.sender
                require weiRaised + msg.value >= weiRaised
                require block.timestamp >= startTime
                require block.timestamp <= endTime
                require msg.value
                require weiRaised + msg.value <= cap
                if not msg.value:
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 0
                    require ext_call.success
                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                else:
                    require msg.value
                    require msg.value * rate / msg.value == rate
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value * rate
                    require ext_call.success
                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                require stage <= 3
                if not stage:
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                else:
                    require stage <= 3
                    if stage == 1:
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                    else:
                        require stage <= 3
                        if stage == 2:
                            emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                            require ext_code.size(vaultAddress)
                            call vaultAddress.deposit(address arg1) with:
                               value msg.value wei
                                 gas gas_remaining - 9710 wei
                                args msg.sender
                            require ext_call.success
                        else:
                            require stage <= 3
                            if stage == 3:
                                emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                require ext_code.size(vaultAddress)
                                call vaultAddress.deposit(address arg1) with:
                                   value msg.value wei
                                     gas gas_remaining - 9710 wei
                                    args msg.sender
                                require ext_call.success
                require stage <= 3
                if not stage:
                    require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                    totalWeiRaisedDuringPreICO += msg.value
                require stage <= 3
                if stage == 1:
                    require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                    totalWeiRaisedDuringPreICO += msg.value
            else:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x18160ddd with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if ext_call.return_data[0] > totalTokensForSaleDuringPreICO:
                    call msg.sender with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit EthRefunded(Array(len=22, data='PreICOSecond Limit Hit'));
                else:
                    require msg.sender
                    require weiRaised + msg.value >= weiRaised
                    require block.timestamp >= startTime
                    require block.timestamp <= endTime
                    require msg.value
                    require weiRaised + msg.value <= cap
                    if not msg.value:
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 0
                        require ext_call.success
                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                    else:
                        require msg.value
                        require msg.value * rate / msg.value == rate
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * rate
                        require ext_call.success
                        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                    require stage <= 3
                    if not stage:
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                    else:
                        require stage <= 3
                        if stage == 1:
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                        else:
                            require stage <= 3
                            if stage == 2:
                                emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                require ext_code.size(vaultAddress)
                                call vaultAddress.deposit(address arg1) with:
                                   value msg.value wei
                                     gas gas_remaining - 9710 wei
                                    args msg.sender
                                require ext_call.success
                            else:
                                require stage <= 3
                                if stage == 3:
                                    emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                    require ext_code.size(vaultAddress)
                                    call vaultAddress.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining - 9710 wei
                                        args msg.sender
                                    require ext_call.success
                    require stage <= 3
                    if not stage:
                        require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                        totalWeiRaisedDuringPreICO += msg.value
                    require stage <= 3
                    if stage == 1:
                        require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                        totalWeiRaisedDuringPreICO += msg.value
        else:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if ext_call.return_data[0] > totalTokensForSaleDuringPreICO:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit EthRefunded(Array(len=21, data='PreICOFirst Limit Hit'));
            else:
                require stage <= 3
                if stage != 1:
                    require msg.sender
                    require weiRaised + msg.value >= weiRaised
                    require block.timestamp >= startTime
                    require block.timestamp <= endTime
                    require msg.value
                    require weiRaised + msg.value <= cap
                    if not msg.value:
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 0
                        require ext_call.success
                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                    else:
                        require msg.value
                        require msg.value * rate / msg.value == rate
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * rate
                        require ext_call.success
                        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                    require stage <= 3
                    if not stage:
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                    else:
                        require stage <= 3
                        if stage == 1:
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                        else:
                            require stage <= 3
                            if stage == 2:
                                emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                require ext_code.size(vaultAddress)
                                call vaultAddress.deposit(address arg1) with:
                                   value msg.value wei
                                     gas gas_remaining - 9710 wei
                                    args msg.sender
                                require ext_call.success
                            else:
                                require stage <= 3
                                if stage == 3:
                                    emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                    require ext_code.size(vaultAddress)
                                    call vaultAddress.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining - 9710 wei
                                        args msg.sender
                                    require ext_call.success
                    require stage <= 3
                    if not stage:
                        require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                        totalWeiRaisedDuringPreICO += msg.value
                    require stage <= 3
                    if stage == 1:
                        require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                        totalWeiRaisedDuringPreICO += msg.value
                else:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if ext_call.return_data[0] > totalTokensForSaleDuringPreICO:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit EthRefunded(Array(len=22, data='PreICOSecond Limit Hit'));
                    else:
                        require msg.sender
                        require weiRaised + msg.value >= weiRaised
                        require block.timestamp >= startTime
                        require block.timestamp <= endTime
                        require msg.value
                        require weiRaised + msg.value <= cap
                        if not msg.value:
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 0
                            require ext_call.success
                            emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                        else:
                            require msg.value
                            require msg.value * rate / msg.value == rate
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, msg.value * rate
                            require ext_call.success
                            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                        require stage <= 3
                        if not stage:
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                        else:
                            require stage <= 3
                            if stage == 1:
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                            else:
                                require stage <= 3
                                if stage == 2:
                                    emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                    require ext_code.size(vaultAddress)
                                    call vaultAddress.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining - 9710 wei
                                        args msg.sender
                                    require ext_call.success
                                else:
                                    require stage <= 3
                                    if stage == 3:
                                        emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                        require ext_code.size(vaultAddress)
                                        call vaultAddress.deposit(address arg1) with:
                                           value msg.value wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
                                        require ext_call.success
                        require stage <= 3
                        if not stage:
                            require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                            totalWeiRaisedDuringPreICO += msg.value
                        require stage <= 3
                        if stage == 1:
                            require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                            totalWeiRaisedDuringPreICO += msg.value
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require stage <= 3
        if stage:
            require stage <= 3
            if stage != 1:
                require msg.sender
                require weiRaised + msg.value >= weiRaised
                require block.timestamp >= startTime
                require block.timestamp <= endTime
                require msg.value
                require weiRaised + msg.value <= cap
                if not msg.value:
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 0
                    require ext_call.success
                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                else:
                    require msg.value
                    require msg.value * rate / msg.value == rate
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value * rate
                    require ext_call.success
                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                require stage <= 3
                if not stage:
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                else:
                    require stage <= 3
                    if stage == 1:
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                    else:
                        require stage <= 3
                        if stage == 2:
                            emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                            require ext_code.size(vaultAddress)
                            call vaultAddress.deposit(address arg1) with:
                               value msg.value wei
                                 gas gas_remaining - 9710 wei
                                args msg.sender
                            require ext_call.success
                        else:
                            require stage <= 3
                            if stage == 3:
                                emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                require ext_code.size(vaultAddress)
                                call vaultAddress.deposit(address arg1) with:
                                   value msg.value wei
                                     gas gas_remaining - 9710 wei
                                    args msg.sender
                                require ext_call.success
                require stage <= 3
                if not stage:
                    require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                    totalWeiRaisedDuringPreICO += msg.value
                require stage <= 3
                if stage == 1:
                    require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                    totalWeiRaisedDuringPreICO += msg.value
            else:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x18160ddd with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if ext_call.return_data[0] + (msg.value * rate) > totalTokensForSaleDuringPreICO:
                    call msg.sender with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit EthRefunded(Array(len=22, data='PreICOSecond Limit Hit'));
                else:
                    require msg.sender
                    require weiRaised + msg.value >= weiRaised
                    require block.timestamp >= startTime
                    require block.timestamp <= endTime
                    require msg.value
                    require weiRaised + msg.value <= cap
                    if not msg.value:
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 0
                        require ext_call.success
                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                    else:
                        require msg.value
                        require msg.value * rate / msg.value == rate
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * rate
                        require ext_call.success
                        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                    require stage <= 3
                    if not stage:
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                    else:
                        require stage <= 3
                        if stage == 1:
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                        else:
                            require stage <= 3
                            if stage == 2:
                                emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                require ext_code.size(vaultAddress)
                                call vaultAddress.deposit(address arg1) with:
                                   value msg.value wei
                                     gas gas_remaining - 9710 wei
                                    args msg.sender
                                require ext_call.success
                            else:
                                require stage <= 3
                                if stage == 3:
                                    emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                    require ext_code.size(vaultAddress)
                                    call vaultAddress.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining - 9710 wei
                                        args msg.sender
                                    require ext_call.success
                    require stage <= 3
                    if not stage:
                        require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                        totalWeiRaisedDuringPreICO += msg.value
                    require stage <= 3
                    if stage == 1:
                        require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                        totalWeiRaisedDuringPreICO += msg.value
        else:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if ext_call.return_data[0] + (msg.value * rate) > totalTokensForSaleDuringPreICO:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit EthRefunded(Array(len=21, data='PreICOFirst Limit Hit'));
            else:
                require stage <= 3
                if stage != 1:
                    require msg.sender
                    require weiRaised + msg.value >= weiRaised
                    require block.timestamp >= startTime
                    require block.timestamp <= endTime
                    require msg.value
                    require weiRaised + msg.value <= cap
                    if not msg.value:
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 0
                        require ext_call.success
                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                    else:
                        require msg.value
                        require msg.value * rate / msg.value == rate
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * rate
                        require ext_call.success
                        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                    require stage <= 3
                    if not stage:
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                    else:
                        require stage <= 3
                        if stage == 1:
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                        else:
                            require stage <= 3
                            if stage == 2:
                                emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                require ext_code.size(vaultAddress)
                                call vaultAddress.deposit(address arg1) with:
                                   value msg.value wei
                                     gas gas_remaining - 9710 wei
                                    args msg.sender
                                require ext_call.success
                            else:
                                require stage <= 3
                                if stage == 3:
                                    emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                    require ext_code.size(vaultAddress)
                                    call vaultAddress.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining - 9710 wei
                                        args msg.sender
                                    require ext_call.success
                    require stage <= 3
                    if not stage:
                        require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                        totalWeiRaisedDuringPreICO += msg.value
                    require stage <= 3
                    if stage == 1:
                        require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                        totalWeiRaisedDuringPreICO += msg.value
                else:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if ext_call.return_data[0] + (msg.value * rate) > totalTokensForSaleDuringPreICO:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit EthRefunded(Array(len=22, data='PreICOSecond Limit Hit'));
                    else:
                        require msg.sender
                        require weiRaised + msg.value >= weiRaised
                        require block.timestamp >= startTime
                        require block.timestamp <= endTime
                        require msg.value
                        require weiRaised + msg.value <= cap
                        if not msg.value:
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 0
                            require ext_call.success
                            emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                        else:
                            require msg.value
                            require msg.value * rate / msg.value == rate
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, msg.value * rate
                            require ext_call.success
                            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                        require stage <= 3
                        if not stage:
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                        else:
                            require stage <= 3
                            if stage == 1:
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                            else:
                                require stage <= 3
                                if stage == 2:
                                    emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                    require ext_code.size(vaultAddress)
                                    call vaultAddress.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining - 9710 wei
                                        args msg.sender
                                    require ext_call.success
                                else:
                                    require stage <= 3
                                    if stage == 3:
                                        emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                        require ext_code.size(vaultAddress)
                                        call vaultAddress.deposit(address arg1) with:
                                           value msg.value wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
                                        require ext_call.success
                        require stage <= 3
                        if not stage:
                            require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                            totalWeiRaisedDuringPreICO += msg.value
                        require stage <= 3
                        if stage == 1:
                            require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                            totalWeiRaisedDuringPreICO += msg.value
}



}
