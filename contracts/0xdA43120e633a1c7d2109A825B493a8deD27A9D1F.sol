contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint8 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor12;
address stor14;
address stor15;
address stor16;
array of uint256 stor17;

function _fallback() payable {
    stor2 = 0
    stor3 = block.timestamp
    require block.timestamp + (648 * 24 * 3600) >= block.timestamp
    stor12 = block.timestamp + (648 * 24 * 3600)
    require not msg.value
    mem[96 len -3162] = code.data[4321 len -3162]
    mem[64] = -3066
    stor0 = msg.sender
    emit Admined(msg.sender);
    stor15 = msg.sender
    stor16 = msg.sender
    stor17[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor14 = mem[140 len 20]
    stor1 = mem[160]
    require mem[160]
    stor9 = 7260000 * 10^18 / mem[160]
    if stor1:
        require stor1
        require 1666666 * stor1 / stor1 == 1666666
    require 1666666 * stor1
    stor4 = 10^15 / 1666666 * stor1
    if stor1:
        require stor1
        require 125 * stor1 / stor1 == 125
    require 125 * stor1
    stor5 = 10^11 / 125 * stor1
    if stor1:
        require stor1
        require 1111111 * stor1 / stor1 == 1111111
    require 1111111 * stor1
    stor6 = 10^15 / 1111111 * stor1
    if stor1:
        require stor1
        require 1052631 * stor1 / stor1 == 1052631
    require 1052631 * stor1
    stor7 = 10^15 / 1052631 * stor1
    if stor1:
        require stor1
        require 10 * stor1 / stor1 == 10
    require 10 * stor1
    stor8 = 10^10 / 10 * stor1
    mem[0] = 17
    idx = -2906
    s = 0
    while stor17.length - 2906 > idx + 32:
        mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    emit LogFunderInitialized(address rg1, address rg2, string rg3, uint256 rg4):
                              mem[mem[64] len stor17.length + (floor32(stor17.length - 1) + -stor17.length + 32 % 32) + -mem[64] - 2906],
    emit PriceUpdate(stor1);
    return code.data[1159 len 3162]
}



// =====================  Runtime code  =====================


address adminAddress;
uint256 priceOfEthOnUSD;
uint8 state;
uint256 startTime;
array of uint256 price;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 hardCap;
uint256 totalRaised;
uint256 totalDistributed;
uint256 iCOdeadline;
uint256 completedAt;
address tokenRewardAddress;
address creatorAddress;
address beneficiaryAddress;
array of uint256 campaignUrl;

function creator() {
    return creatorAddress
}

function price(uint256 arg1) {
    require arg1 < 5
    return price[arg1]
}

function completedAt() {
    return completedAt
}

function beneficiary() {
    return beneficiaryAddress
}

function HardCap() {
    return hardCap
}

function tokenReward() {
    return tokenRewardAddress
}

function startTime() {
    return startTime
}

function ICOdeadline() {
    return iCOdeadline
}

function priceOfEthOnUSD() {
    return priceOfEthOnUSD
}

function state() {
    require state <= 1
    return state
}

function totalRaised() {
    return totalRaised
}

function totalDistributed() {
    return totalDistributed
}

function admin() {
    return adminAddress
}

function campaignUrl() {
    return campaignUrl[0 len campaignUrl.length]
}

function transferAdminship(address arg1) {
    require adminAddress == msg.sender
    adminAddress = arg1
    emit TransferAdminship(arg1);
}

function payOut() {
    require beneficiaryAddress == msg.sender
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit LogBeneficiaryPaid(beneficiaryAddress);
}

function finished() {
    require state <= 1
    require state == 1
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args beneficiaryAddress, ext_call.return_data[0]
    require ext_call.success
    emit LogBeneficiaryPaid(beneficiaryAddress);
    emit LogContributorsPayout(beneficiaryAddress, ext_call.return_data[0]);
}

function updatePriceOfEth(uint256 arg1) {
    require adminAddress == msg.sender
    priceOfEthOnUSD = arg1
    if arg1:
        require arg1
        require 1666666 * arg1 / arg1 == 1666666
    require 1666666 * arg1
    price.length = 10^15 / 1666666 * arg1
    if priceOfEthOnUSD:
        require priceOfEthOnUSD
        require 125 * priceOfEthOnUSD / priceOfEthOnUSD == 125
    require 125 * priceOfEthOnUSD
    stor5 = 10^11 / 125 * priceOfEthOnUSD
    if priceOfEthOnUSD:
        require priceOfEthOnUSD
        require 1111111 * priceOfEthOnUSD / priceOfEthOnUSD == 1111111
    require 1111111 * priceOfEthOnUSD
    stor6 = 10^15 / 1111111 * priceOfEthOnUSD
    if priceOfEthOnUSD:
        require priceOfEthOnUSD
        require 1052631 * priceOfEthOnUSD / priceOfEthOnUSD == 1052631
    require 1052631 * priceOfEthOnUSD
    stor7 = 10^15 / 1052631 * priceOfEthOnUSD
    if priceOfEthOnUSD:
        require priceOfEthOnUSD
        require 10 * priceOfEthOnUSD / priceOfEthOnUSD == 10
    require 10 * priceOfEthOnUSD
    stor8 = 10^10 / 10 * priceOfEthOnUSD
    require priceOfEthOnUSD
    hardCap = 7260000 * 10^18 / priceOfEthOnUSD
    emit PriceUpdate(arg1);
}

function checkIfFundingCompleteOrExpired() {
    if block.timestamp >= iCOdeadline:
        if block.timestamp > iCOdeadline:
            require state <= 1
            if state != 1:
                state = 1
                completedAt = block.timestamp
                emit LogFundingSuccessful(totalRaised);
                require state <= 1
                require state == 1
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                call beneficiaryAddress with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args beneficiaryAddress, ext_call.return_data[0]
                require ext_call.success
                emit LogBeneficiaryPaid(beneficiaryAddress);
                emit LogContributorsPayout(beneficiaryAddress, ext_call.return_data[0]);
    else:
        require state <= 1
        if state != 1:
            require state <= 1
            if not state:
                if totalRaised >= hardCap:
                    state = 1
                    completedAt = block.timestamp
        else:
            if block.timestamp > iCOdeadline:
                require state <= 1
                if state != 1:
                    state = 1
                    completedAt = block.timestamp
                    emit LogFundingSuccessful(totalRaised);
                    require state <= 1
                    require state == 1
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    call beneficiaryAddress with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args beneficiaryAddress, ext_call.return_data[0]
                    require ext_call.success
                    emit LogBeneficiaryPaid(beneficiaryAddress);
                    emit LogContributorsPayout(beneficiaryAddress, ext_call.return_data[0]);
}

function _fallback() payable {
    require state <= 1
    require state != 1
    require msg.value + totalRaised >= totalRaised
    totalRaised += msg.value
    if totalDistributed < 2 * 10^14:
        require price.length
        require msg.value / price.length >= 1666
        require (msg.value / price.length) + totalDistributed >= totalDistributed
        totalDistributed += msg.value / price.length
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value / price.length
        require ext_call.success
        emit LogFundingReceived(msg.sender, msg.value, totalRaised);
        emit LogContributorsPayout(msg.sender, msg.value / price.length);
    else:
        if totalDistributed < 2 * 10^15:
            require stor5
            require msg.value / stor5 >= 1250
            require (msg.value / stor5) + totalDistributed >= totalDistributed
            totalDistributed += msg.value / stor5
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value / stor5
            require ext_call.success
            emit LogFundingReceived(msg.sender, msg.value, totalRaised);
            emit LogContributorsPayout(msg.sender, msg.value / stor5);
        else:
            if totalDistributed < 4 * 10^15:
                require stor6
                require msg.value / stor6 >= 1111
                require (msg.value / stor6) + totalDistributed >= totalDistributed
                totalDistributed += msg.value / stor6
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value / stor6
                require ext_call.success
                emit LogFundingReceived(msg.sender, msg.value, totalRaised);
                emit LogContributorsPayout(msg.sender, msg.value / stor6);
            else:
                if totalDistributed < 6 * 10^15:
                    require stor7
                    require msg.value / stor7 >= 1052
                    require (msg.value / stor7) + totalDistributed >= totalDistributed
                    totalDistributed += msg.value / stor7
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value / stor7
                    require ext_call.success
                    emit LogFundingReceived(msg.sender, msg.value, totalRaised);
                    emit LogContributorsPayout(msg.sender, msg.value / stor7);
                else:
                    if totalDistributed >= 8 * 10^15:
                        require totalDistributed >= totalDistributed
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 0
                        require ext_call.success
                        emit LogFundingReceived(msg.sender, msg.value, totalRaised);
                        emit LogContributorsPayout(msg.sender, 0);
                    else:
                        require stor8
                        require msg.value / stor8 >= 1000
                        require (msg.value / stor8) + totalDistributed >= totalDistributed
                        totalDistributed += msg.value / stor8
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value / stor8
                        require ext_call.success
                        emit LogFundingReceived(msg.sender, msg.value, totalRaised);
                        emit LogContributorsPayout(msg.sender, msg.value / stor8);
    if block.timestamp >= iCOdeadline:
        if block.timestamp > iCOdeadline:
            require state <= 1
            if state != 1:
                state = 1
                completedAt = block.timestamp
                emit LogFundingSuccessful(totalRaised);
                require state <= 1
                require state == 1
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                call beneficiaryAddress with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args beneficiaryAddress, ext_call.return_data[0]
                require ext_call.success
                emit LogBeneficiaryPaid(beneficiaryAddress);
                emit LogContributorsPayout(beneficiaryAddress, ext_call.return_data[0]);
    else:
        require state <= 1
        if state != 1:
            require state <= 1
            if not state:
                if totalRaised >= hardCap:
                    state = 1
                    completedAt = block.timestamp
        else:
            if block.timestamp > iCOdeadline:
                require state <= 1
                if state != 1:
                    state = 1
                    completedAt = block.timestamp
                    emit LogFundingSuccessful(totalRaised);
                    require state <= 1
                    require state == 1
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    call beneficiaryAddress with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args beneficiaryAddress, ext_call.return_data[0]
                    require ext_call.success
                    emit LogBeneficiaryPaid(beneficiaryAddress);
                    emit LogContributorsPayout(beneficiaryAddress, ext_call.return_data[0]);
}

function contribute() payable {
    require state <= 1
    require state != 1
    require msg.value + totalRaised >= totalRaised
    totalRaised += msg.value
    if totalDistributed < 2 * 10^14:
        require price.length
        require msg.value / price.length >= 1666
        require (msg.value / price.length) + totalDistributed >= totalDistributed
        totalDistributed += msg.value / price.length
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value / price.length
        require ext_call.success
        emit LogFundingReceived(msg.sender, msg.value, totalRaised);
        emit LogContributorsPayout(msg.sender, msg.value / price.length);
    else:
        if totalDistributed < 2 * 10^15:
            require stor5
            require msg.value / stor5 >= 1250
            require (msg.value / stor5) + totalDistributed >= totalDistributed
            totalDistributed += msg.value / stor5
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value / stor5
            require ext_call.success
            emit LogFundingReceived(msg.sender, msg.value, totalRaised);
            emit LogContributorsPayout(msg.sender, msg.value / stor5);
        else:
            if totalDistributed < 4 * 10^15:
                require stor6
                require msg.value / stor6 >= 1111
                require (msg.value / stor6) + totalDistributed >= totalDistributed
                totalDistributed += msg.value / stor6
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value / stor6
                require ext_call.success
                emit LogFundingReceived(msg.sender, msg.value, totalRaised);
                emit LogContributorsPayout(msg.sender, msg.value / stor6);
            else:
                if totalDistributed < 6 * 10^15:
                    require stor7
                    require msg.value / stor7 >= 1052
                    require (msg.value / stor7) + totalDistributed >= totalDistributed
                    totalDistributed += msg.value / stor7
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value / stor7
                    require ext_call.success
                    emit LogFundingReceived(msg.sender, msg.value, totalRaised);
                    emit LogContributorsPayout(msg.sender, msg.value / stor7);
                else:
                    if totalDistributed >= 8 * 10^15:
                        require totalDistributed >= totalDistributed
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 0
                        require ext_call.success
                        emit LogFundingReceived(msg.sender, msg.value, totalRaised);
                        emit LogContributorsPayout(msg.sender, 0);
                    else:
                        require stor8
                        require msg.value / stor8 >= 1000
                        require (msg.value / stor8) + totalDistributed >= totalDistributed
                        totalDistributed += msg.value / stor8
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value / stor8
                        require ext_call.success
                        emit LogFundingReceived(msg.sender, msg.value, totalRaised);
                        emit LogContributorsPayout(msg.sender, msg.value / stor8);
    if block.timestamp >= iCOdeadline:
        if block.timestamp > iCOdeadline:
            require state <= 1
            if state != 1:
                state = 1
                completedAt = block.timestamp
                emit LogFundingSuccessful(totalRaised);
                require state <= 1
                require state == 1
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                call beneficiaryAddress with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args beneficiaryAddress, ext_call.return_data[0]
                require ext_call.success
                emit LogBeneficiaryPaid(beneficiaryAddress);
                emit LogContributorsPayout(beneficiaryAddress, ext_call.return_data[0]);
    else:
        require state <= 1
        if state != 1:
            require state <= 1
            if not state:
                if totalRaised >= hardCap:
                    state = 1
                    completedAt = block.timestamp
        else:
            if block.timestamp > iCOdeadline:
                require state <= 1
                if state != 1:
                    state = 1
                    completedAt = block.timestamp
                    emit LogFundingSuccessful(totalRaised);
                    require state <= 1
                    require state == 1
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    call beneficiaryAddress with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args beneficiaryAddress, ext_call.return_data[0]
                    require ext_call.success
                    emit LogBeneficiaryPaid(beneficiaryAddress);
                    emit LogContributorsPayout(beneficiaryAddress, ext_call.return_data[0]);
}



}
