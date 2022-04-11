contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint8 stor21;
uint256 stor22;
uint256 stor23;
address stor25;

function _fallback() payable {
    stor3 = 294 * 10^18
    stor4 = 100000 * 10^18
    stor5 = 5 * 10^15
    stor6 = 4 * 10^16
    stor7 = 850
    stor8 = 0
    stor9 = 750
    stor10 = 700
    stor11 = 650
    stor12 = 600
    stor13 = 550
    stor14 = 240 * 24 * 3600
    stor15 = 480 * 24 * 3600
    stor16 = 504 * 24 * 3600
    stor17 = 672 * 24 * 3600
    stor18 = 840 * 24 * 3600
    stor19 = 1008 * 24 * 3600
    stor20 = 1176 * 24 * 3600
    stor21 = 0
    require not msg.value
    stor25 = code.data[3684 len 20]
    stor0 = code.data[3716 len 20]
    stor1 = code.data[3748 len 20]
    stor22 = code.data[3768 len 32]
    stor23 = code.data[3768 len 32] + stor20
    return code.data[304 len 3368]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
address creatorAddress;
address confirmedByAddress;
uint256 minAmount;
uint256 maxAmount;
uint256 maxSupply;
uint256 minAcceptedAmount;
uint256 ratePreICO;
uint256 rateWaiting;
uint256 rateAngelDay;
uint256 rateFirstWeek;
uint256 rateSecondWeek;
uint256 rateThirdWeek;
uint256 rateLastWeek;
uint256 ratePreICOEnd;
uint256 rateWaitingEnd;
uint256 rateAngelDayEnd;
uint256 rateFirstWeekEnd;
uint256 rateSecondWeekEnd;
uint256 rateThirdWeekEnd;
uint256 rateLastWeekEnd;
uint8 stage;
uint256 start;
uint256 end;
uint256 raised;
address sclTokenAddress;
mapping of uint256 balanceOf;

function creator() {
    return creatorAddress
}

function rateAngelDayEnd() {
    return rateAngelDayEnd
}

function rateFirstWeekEnd() {
    return rateFirstWeekEnd
}

function beneficiary() {
    return beneficiaryAddress
}

function rateAngelDay() {
    return rateAngelDay
}

function rateLastWeekEnd() {
    return rateLastWeekEnd
}

function rateSecondWeekEnd() {
    return rateSecondWeekEnd
}

function rateThirdWeekEnd() {
    return rateThirdWeekEnd
}

function maxAmount() {
    return maxAmount
}

function sclToken() {
    return sclTokenAddress
}

function ratePreICO() {
    return ratePreICO
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function rateWaitingEnd() {
    return rateWaitingEnd
}

function minAmount() {
    return minAmount
}

function rateSecondWeek() {
    return rateSecondWeek
}

function ratePreICOEnd() {
    return ratePreICOEnd
}

function rateThirdWeek() {
    return rateThirdWeek
}

function rateFirstWeek() {
    return rateFirstWeek
}

function rateLastWeek() {
    return rateLastWeek
}

function start() {
    return start
}

function stage() {
    require stage <= 2
    return stage
}

function rateWaiting() {
    return rateWaiting
}

function confirmedBy() {
    return confirmedByAddress
}

function maxSupply() {
    return maxSupply
}

function end() {
    return end
}

function raised() {
    return raised
}

function minAcceptedAmount() {
    return minAcceptedAmount
}

function confirmBeneficiary() {
    require beneficiaryAddress == msg.sender
    confirmedByAddress = msg.sender
}

function endCrowdsale() {
    require stage <= 2
    require not stage
    require block.timestamp >= end
    stage = 1
}

function refund() {
    require stage <= 2
    require stage == 1
    require raised < minAmount
    balanceOf[address(msg.sender)] = 0
    if balanceOf[address(msg.sender)] > 0:
        call msg.sender with:
           value balanceOf[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
}

function withdraw() {
    require beneficiaryAddress == msg.sender
    require stage <= 2
    require stage == 1
    require raised >= minAmount
    require ext_code.size(sclTokenAddress)
    call sclTokenAddress.0xa69df4b5 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    call creatorAddress with:
       value 5 * eth.balance(this.address) / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call beneficiaryAddress with:
       value eth.balance(this.address) - (5 * eth.balance(this.address) / 100) wei
         gas 2300 * is_zero(value) wei
    stage = 2
}

function toSCL(uint256 arg1) {
    require stage <= 2
    if stage == 1:
        return 0
    if block.timestamp < start:
        return 0
    if block.timestamp > end:
        return 0
    if block.timestamp <= start + ratePreICOEnd:
        return (100 * 10^6 * ratePreICO * arg1 / 10^18)
    if block.timestamp <= start + rateWaitingEnd:
        return (100 * 10^6 * rateWaiting * arg1 / 10^18)
    if block.timestamp <= start + rateAngelDayEnd:
        return (100 * 10^6 * rateAngelDay * arg1 / 10^18)
    if block.timestamp <= start + rateFirstWeekEnd:
        return (100 * 10^6 * rateFirstWeek * arg1 / 10^18)
    if block.timestamp <= start + rateSecondWeekEnd:
        return (100 * 10^6 * rateSecondWeek * arg1 / 10^18)
    if block.timestamp <= start + rateThirdWeekEnd:
        return (100 * 10^6 * rateThirdWeek * arg1 / 10^18)
    if block.timestamp > start + rateLastWeekEnd:
        return 0
    return (100 * 10^6 * rateLastWeek * arg1 / 10^18)
}

function _fallback() payable {
    require stage <= 2
    require not stage
    require block.timestamp >= start
    require block.timestamp <= end
    require msg.value >= minAcceptedAmount
    require stage <= 2
    require stage != 1
    require block.timestamp >= start
    require block.timestamp <= end
    if block.timestamp <= start + ratePreICOEnd:
        require 100 * 10^6 * ratePreICO * msg.value / 10^18
        require ext_code.size(sclTokenAddress)
        call sclTokenAddress.issue(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, 100 * 10^6 * ratePreICO * msg.value / 10^18
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(sclTokenAddress)
        call sclTokenAddress.issue(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args creatorAddress, 5 * 100 * 10^6 * ratePreICO * msg.value / 10^18 / 100
    else:
        if block.timestamp <= start + rateWaitingEnd:
            require 100 * 10^6 * rateWaiting * msg.value / 10^18
            require ext_code.size(sclTokenAddress)
            call sclTokenAddress.issue(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args msg.sender, 100 * 10^6 * rateWaiting * msg.value / 10^18
            require ext_call.success
            require ext_call.return_data[0]
            require ext_code.size(sclTokenAddress)
            call sclTokenAddress.issue(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args creatorAddress, 5 * 100 * 10^6 * rateWaiting * msg.value / 10^18 / 100
        else:
            if block.timestamp <= start + rateAngelDayEnd:
                require 100 * 10^6 * rateAngelDay * msg.value / 10^18
                require ext_code.size(sclTokenAddress)
                call sclTokenAddress.issue(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 100 * 10^6 * rateAngelDay * msg.value / 10^18
                require ext_call.success
                require ext_call.return_data[0]
                require ext_code.size(sclTokenAddress)
                call sclTokenAddress.issue(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args creatorAddress, 5 * 100 * 10^6 * rateAngelDay * msg.value / 10^18 / 100
            else:
                if block.timestamp <= start + rateFirstWeekEnd:
                    require 100 * 10^6 * rateFirstWeek * msg.value / 10^18
                    require ext_code.size(sclTokenAddress)
                    call sclTokenAddress.issue(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 100 * 10^6 * rateFirstWeek * msg.value / 10^18
                    require ext_call.success
                    require ext_call.return_data[0]
                    require ext_code.size(sclTokenAddress)
                    call sclTokenAddress.issue(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args creatorAddress, 5 * 100 * 10^6 * rateFirstWeek * msg.value / 10^18 / 100
                else:
                    if block.timestamp <= start + rateSecondWeekEnd:
                        require 100 * 10^6 * rateSecondWeek * msg.value / 10^18
                        require ext_code.size(sclTokenAddress)
                        call sclTokenAddress.issue(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 100 * 10^6 * rateSecondWeek * msg.value / 10^18
                        require ext_call.success
                        require ext_call.return_data[0]
                        require ext_code.size(sclTokenAddress)
                        call sclTokenAddress.issue(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args creatorAddress, 5 * 100 * 10^6 * rateSecondWeek * msg.value / 10^18 / 100
                    else:
                        if block.timestamp <= start + rateThirdWeekEnd:
                            require 100 * 10^6 * rateThirdWeek * msg.value / 10^18
                            require ext_code.size(sclTokenAddress)
                            call sclTokenAddress.issue(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 100 * 10^6 * rateThirdWeek * msg.value / 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                            require ext_code.size(sclTokenAddress)
                            call sclTokenAddress.issue(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args creatorAddress, 5 * 100 * 10^6 * rateThirdWeek * msg.value / 10^18 / 100
                        else:
                            require block.timestamp <= start + rateLastWeekEnd
                            require 100 * 10^6 * rateLastWeek * msg.value / 10^18
                            require ext_code.size(sclTokenAddress)
                            call sclTokenAddress.issue(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 100 * 10^6 * rateLastWeek * msg.value / 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                            require ext_code.size(sclTokenAddress)
                            call sclTokenAddress.issue(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args creatorAddress, 5 * 100 * 10^6 * rateLastWeek * msg.value / 10^18 / 100
    require ext_call.success
    require ext_call.return_data[0]
    if block.timestamp > start + ratePreICOEnd:
        balanceOf[address(msg.sender)] += msg.value
    else:
        call creatorAddress with:
           value 5 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call beneficiaryAddress with:
           value msg.value - (5 * msg.value / 100) wei
             gas 2300 * is_zero(value) wei
    raised += msg.value
    if msg.value + raised >= maxAmount:
        stage = 1
    else:
        require ext_code.size(sclTokenAddress)
        call sclTokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if ext_call.return_data[0] >= maxSupply:
            stage = 1
}



}
