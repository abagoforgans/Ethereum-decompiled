contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor3;
uint256 stor5;
uint256 stor7;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
address stor15;
address stor16;
address stor17;
array of uint256 stor18;

function _fallback() payable {
    stor0 = 0
    stor3 = 500 * 10^6
    require not msg.value
    mem[96 len -3096] = code.data[3804 len -3096]
    mem[64] = -3000
    stor16 = msg.sender
    stor17 = mem[172 len 20]
    stor18[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor9 = 10^18 * mem[192]
    stor10 = 10^18 * mem[224]
    stor11 = 10^18 * mem[320]
    stor12 = 10^18 * mem[352]
    stor13 = 10^18 * mem[384]
    stor5 = block.timestamp + (60 * mem[96])
    stor15 = mem[268 len 20]
    stor7 = mem[288]
    mem[0] = 18
    idx = -2808
    s = 0
    while stor18.length - 2808 > idx + 32:
        mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    emit LogFunderInitialized(address rg1, address rg2, string rg3, uint256 rg4, uint256 rg5):
                              mem[mem[64] len stor18.length + (floor32(stor18.length - 1) + -stor18.length + 32 % 32) + -mem[64] - 2808],
    return code.data[708 len 3096]
}



// =====================  Runtime code  =====================


uint8 state;
mapping of uint256 contributions;
uint256 totalRaised;
uint256 totalToken;
uint256 tokenSold;
uint256 deadline;
uint256 completedAt;
uint256 priceInWei;
uint256 sub_598b35fc;
uint256 fundingMinimumTargetInWei;
uint256 fundingMaximumTargetInWei;
uint256 sub_400abd5f;
uint256 sub_7926a7a3;
uint256 sub_e12dd14b;
uint256 sub_630b4989;
address tokenRewardAddress;
address creatorAddress;
address beneficiaryAddress;

function creator() {
    return creatorAddress
}

function deadline() {
    return deadline
}

function completedAt() {
    return completedAt
}

function beneficiary() {
    return beneficiaryAddress
}

function priceInWei() {
    return priceInWei
}

function sub_400abd5f(?) {
    return sub_400abd5f
}

function contributions(address arg1) {
    return contributions[arg1]
}

function tokenSold() {
    return tokenSold
}

function sub_598b35fc(?) {
    return sub_598b35fc
}

function totalToken() {
    return totalToken
}

function sub_630b4989(?) {
    return sub_630b4989
}

function tokenReward() {
    return tokenRewardAddress
}

function fundingMinimumTargetInWei() {
    return fundingMinimumTargetInWei
}

function sub_7926a7a3(?) {
    return sub_7926a7a3
}

function fundingMaximumTargetInWei() {
    return fundingMaximumTargetInWei
}

function state() {
    require state <= 3
    return state
}

function totalRaised() {
    return totalRaised
}

function sub_e12dd14b(?) {
    return sub_e12dd14b
}

function removeContract() {
    require creatorAddress == msg.sender
    require state <= 3
    if state != 1:
        require state <= 3
        require state == 2
    require completedAt + 3600 < block.timestamp
    selfdestruct(msg.sender)
}

function getBonus() {
    if totalRaised < sub_400abd5f:
        return 30
    if totalRaised < sub_7926a7a3:
        return 20
    if totalRaised >= sub_e12dd14b:
        return 0
    return 10
}

function getRefund() {
    require state <= 3
    require state == 1
    require contributions[address(msg.sender)] > 0
    contributions[address(msg.sender)] = 0
    call msg.sender with:
       value contributions[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 0
}

function payOut() {
    require state <= 3
    require state == 2
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require tokenSold <= totalToken
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args creatorAddress, totalToken - tokenSold
    require ext_call.success
    state = 3
    emit LogWinnerPaid(beneficiaryAddress);
}

function checkIfFundingCompleteOrExpired() {
    if not fundingMaximumTargetInWei:
        if block.timestamp > deadline:
            if eth.balance(this.address) < fundingMinimumTargetInWei:
                state = 1
            else:
                state = 2
                emit 0xeeba7810: eth.balance(this.address), tokenSold
                require state <= 3
                require state == 2
                call beneficiaryAddress with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require tokenSold <= totalToken
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args creatorAddress, totalToken - tokenSold
                require ext_call.success
                state = 3
                emit LogWinnerPaid(beneficiaryAddress);
            completedAt = block.timestamp
    else:
        if eth.balance(this.address) > fundingMaximumTargetInWei:
            state = 2
            emit 0xeeba7810: eth.balance(this.address), tokenSold
            require state <= 3
            require state == 2
            call beneficiaryAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require tokenSold <= totalToken
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args creatorAddress, totalToken - tokenSold
            require ext_call.success
            state = 3
            emit LogWinnerPaid(beneficiaryAddress);
            completedAt = block.timestamp
        else:
            if block.timestamp > deadline:
                if eth.balance(this.address) < fundingMinimumTargetInWei:
                    state = 1
                else:
                    state = 2
                    emit 0xeeba7810: eth.balance(this.address), tokenSold
                    require state <= 3
                    require state == 2
                    call beneficiaryAddress with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require tokenSold <= totalToken
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args creatorAddress, totalToken - tokenSold
                    require ext_call.success
                    state = 3
                    emit LogWinnerPaid(beneficiaryAddress);
                completedAt = block.timestamp
}

function _fallback() payable {
    require not calldata.size
    require state <= 3
    require not state
    require msg.value >= priceInWei
    require priceInWei
    require not msg.value % priceInWei
    require priceInWei
    if totalRaised < sub_400abd5f:
        if msg.value / priceInWei:
            require msg.value / priceInWei
            require 30 * msg.value / priceInWei / msg.value / priceInWei == 30
        require (30 * msg.value / priceInWei / 100) + (msg.value / priceInWei) >= msg.value / priceInWei
        require priceInWei
        require (30 * msg.value / priceInWei / 100) + (msg.value / priceInWei) + tokenSold <= fundingMaximumTargetInWei / priceInWei
        contributions[address(msg.sender)] = msg.value
        sub_630b4989++
        tokenSold = (30 * msg.value / priceInWei / 100) + (msg.value / priceInWei) + tokenSold
        totalRaised = eth.balance(this.address)
        require ext_code.size(tokenRewardAddress)
        if not fundingMaximumTargetInWei:
            call tokenRewardAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (30 * msg.value / priceInWei / 100) + (msg.value / priceInWei)
        else:
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, (30 * msg.value / priceInWei / 100) + (msg.value / priceInWei)
    else:
        if totalRaised < sub_7926a7a3:
            if msg.value / priceInWei:
                require msg.value / priceInWei
                require 20 * msg.value / priceInWei / msg.value / priceInWei == 20
            require (20 * msg.value / priceInWei / 100) + (msg.value / priceInWei) >= msg.value / priceInWei
            require priceInWei
            require (20 * msg.value / priceInWei / 100) + (msg.value / priceInWei) + tokenSold <= fundingMaximumTargetInWei / priceInWei
            contributions[address(msg.sender)] = msg.value
            sub_630b4989++
            tokenSold = (20 * msg.value / priceInWei / 100) + (msg.value / priceInWei) + tokenSold
            totalRaised = eth.balance(this.address)
            require ext_code.size(tokenRewardAddress)
            if not fundingMaximumTargetInWei:
                call tokenRewardAddress.0x79c65068 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (20 * msg.value / priceInWei / 100) + (msg.value / priceInWei)
            else:
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (20 * msg.value / priceInWei / 100) + (msg.value / priceInWei)
        else:
            if totalRaised >= sub_e12dd14b:
                if msg.value / priceInWei:
                    require msg.value / priceInWei
                    require not 0 / msg.value / priceInWei
                require msg.value / priceInWei >= msg.value / priceInWei
                require priceInWei
                require (msg.value / priceInWei) + tokenSold <= fundingMaximumTargetInWei / priceInWei
                contributions[address(msg.sender)] = msg.value
                sub_630b4989++
                tokenSold += msg.value / priceInWei
                totalRaised = eth.balance(this.address)
                require ext_code.size(tokenRewardAddress)
                if not fundingMaximumTargetInWei:
                    call tokenRewardAddress.0x79c65068 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value / priceInWei
                else:
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value / priceInWei
            else:
                if msg.value / priceInWei:
                    require msg.value / priceInWei
                    require 10 * msg.value / priceInWei / msg.value / priceInWei == 10
                require (10 * msg.value / priceInWei / 100) + (msg.value / priceInWei) >= msg.value / priceInWei
                require priceInWei
                require (10 * msg.value / priceInWei / 100) + (msg.value / priceInWei) + tokenSold <= fundingMaximumTargetInWei / priceInWei
                contributions[address(msg.sender)] = msg.value
                sub_630b4989++
                tokenSold = (10 * msg.value / priceInWei / 100) + (msg.value / priceInWei) + tokenSold
                totalRaised = eth.balance(this.address)
                require ext_code.size(tokenRewardAddress)
                if not fundingMaximumTargetInWei:
                    call tokenRewardAddress.0x79c65068 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (10 * msg.value / priceInWei / 100) + (msg.value / priceInWei)
                else:
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (10 * msg.value / priceInWei / 100) + (msg.value / priceInWei)
    require ext_call.success
    emit LogFundingReceived(msg.sender, msg.value, eth.balance(this.address));
    if not fundingMaximumTargetInWei:
        if block.timestamp > deadline:
            if eth.balance(this.address) < fundingMinimumTargetInWei:
                state = 1
            else:
                state = 2
                emit 0xeeba7810: eth.balance(this.address), tokenSold
                require state <= 3
                require state == 2
                call beneficiaryAddress with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require tokenSold <= totalToken
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args creatorAddress, totalToken - tokenSold
                require ext_call.success
                state = 3
                emit LogWinnerPaid(beneficiaryAddress);
            completedAt = block.timestamp
    else:
        if eth.balance(this.address) > fundingMaximumTargetInWei:
            state = 2
            emit 0xeeba7810: eth.balance(this.address), tokenSold
            require state <= 3
            require state == 2
            call beneficiaryAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require tokenSold <= totalToken
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args creatorAddress, totalToken - tokenSold
            require ext_call.success
            state = 3
            emit LogWinnerPaid(beneficiaryAddress);
            completedAt = block.timestamp
        else:
            if block.timestamp > deadline:
                if eth.balance(this.address) < fundingMinimumTargetInWei:
                    state = 1
                else:
                    state = 2
                    emit 0xeeba7810: eth.balance(this.address), tokenSold
                    require state <= 3
                    require state == 2
                    call beneficiaryAddress with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require tokenSold <= totalToken
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args creatorAddress, totalToken - tokenSold
                    require ext_call.success
                    state = 3
                    emit LogWinnerPaid(beneficiaryAddress);
                completedAt = block.timestamp
}

function contribute() payable {
    require state <= 3
    require not state
    require msg.value >= priceInWei
    require priceInWei
    require not msg.value % priceInWei
    require priceInWei
    if totalRaised < sub_400abd5f:
        if msg.value / priceInWei:
            require msg.value / priceInWei
            require 30 * msg.value / priceInWei / msg.value / priceInWei == 30
        require (30 * msg.value / priceInWei / 100) + (msg.value / priceInWei) >= msg.value / priceInWei
        require priceInWei
        require (30 * msg.value / priceInWei / 100) + (msg.value / priceInWei) + tokenSold <= fundingMaximumTargetInWei / priceInWei
        contributions[address(msg.sender)] = msg.value
        sub_630b4989++
        tokenSold = (30 * msg.value / priceInWei / 100) + (msg.value / priceInWei) + tokenSold
        totalRaised = eth.balance(this.address)
        require ext_code.size(tokenRewardAddress)
        if not fundingMaximumTargetInWei:
            call tokenRewardAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (30 * msg.value / priceInWei / 100) + (msg.value / priceInWei)
        else:
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, (30 * msg.value / priceInWei / 100) + (msg.value / priceInWei)
    else:
        if totalRaised < sub_7926a7a3:
            if msg.value / priceInWei:
                require msg.value / priceInWei
                require 20 * msg.value / priceInWei / msg.value / priceInWei == 20
            require (20 * msg.value / priceInWei / 100) + (msg.value / priceInWei) >= msg.value / priceInWei
            require priceInWei
            require (20 * msg.value / priceInWei / 100) + (msg.value / priceInWei) + tokenSold <= fundingMaximumTargetInWei / priceInWei
            contributions[address(msg.sender)] = msg.value
            sub_630b4989++
            tokenSold = (20 * msg.value / priceInWei / 100) + (msg.value / priceInWei) + tokenSold
            totalRaised = eth.balance(this.address)
            require ext_code.size(tokenRewardAddress)
            if not fundingMaximumTargetInWei:
                call tokenRewardAddress.0x79c65068 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (20 * msg.value / priceInWei / 100) + (msg.value / priceInWei)
            else:
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (20 * msg.value / priceInWei / 100) + (msg.value / priceInWei)
        else:
            if totalRaised >= sub_e12dd14b:
                if msg.value / priceInWei:
                    require msg.value / priceInWei
                    require not 0 / msg.value / priceInWei
                require msg.value / priceInWei >= msg.value / priceInWei
                require priceInWei
                require (msg.value / priceInWei) + tokenSold <= fundingMaximumTargetInWei / priceInWei
                contributions[address(msg.sender)] = msg.value
                sub_630b4989++
                tokenSold += msg.value / priceInWei
                totalRaised = eth.balance(this.address)
                require ext_code.size(tokenRewardAddress)
                if not fundingMaximumTargetInWei:
                    call tokenRewardAddress.0x79c65068 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value / priceInWei
                else:
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value / priceInWei
            else:
                if msg.value / priceInWei:
                    require msg.value / priceInWei
                    require 10 * msg.value / priceInWei / msg.value / priceInWei == 10
                require (10 * msg.value / priceInWei / 100) + (msg.value / priceInWei) >= msg.value / priceInWei
                require priceInWei
                require (10 * msg.value / priceInWei / 100) + (msg.value / priceInWei) + tokenSold <= fundingMaximumTargetInWei / priceInWei
                contributions[address(msg.sender)] = msg.value
                sub_630b4989++
                tokenSold = (10 * msg.value / priceInWei / 100) + (msg.value / priceInWei) + tokenSold
                totalRaised = eth.balance(this.address)
                require ext_code.size(tokenRewardAddress)
                if not fundingMaximumTargetInWei:
                    call tokenRewardAddress.0x79c65068 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (10 * msg.value / priceInWei / 100) + (msg.value / priceInWei)
                else:
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (10 * msg.value / priceInWei / 100) + (msg.value / priceInWei)
    require ext_call.success
    emit LogFundingReceived(msg.sender, msg.value, eth.balance(this.address));
    if not fundingMaximumTargetInWei:
        if block.timestamp > deadline:
            if eth.balance(this.address) < fundingMinimumTargetInWei:
                state = 1
            else:
                state = 2
                emit 0xeeba7810: eth.balance(this.address), tokenSold
                require state <= 3
                require state == 2
                call beneficiaryAddress with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require tokenSold <= totalToken
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args creatorAddress, totalToken - tokenSold
                require ext_call.success
                state = 3
                emit LogWinnerPaid(beneficiaryAddress);
            completedAt = block.timestamp
    else:
        if eth.balance(this.address) > fundingMaximumTargetInWei:
            state = 2
            emit 0xeeba7810: eth.balance(this.address), tokenSold
            require state <= 3
            require state == 2
            call beneficiaryAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require tokenSold <= totalToken
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args creatorAddress, totalToken - tokenSold
            require ext_call.success
            state = 3
            emit LogWinnerPaid(beneficiaryAddress);
            completedAt = block.timestamp
        else:
            if block.timestamp > deadline:
                if eth.balance(this.address) < fundingMinimumTargetInWei:
                    state = 1
                else:
                    state = 2
                    emit 0xeeba7810: eth.balance(this.address), tokenSold
                    require state <= 3
                    require state == 2
                    call beneficiaryAddress with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require tokenSold <= totalToken
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args creatorAddress, totalToken - tokenSold
                    require ext_call.success
                    state = 3
                    emit LogWinnerPaid(beneficiaryAddress);
                completedAt = block.timestamp
    return (sub_630b4989 - 1)
}



}
