contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;
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
    stor5 = 65 * 10^14
    stor6 = 4 * 10^16
    stor7 = 450
    stor8 = 0
    stor9 = 420
    stor10 = 390
    stor11 = 375
    stor12 = 360
    stor13 = 330
    stor14 = 240 * 24 * 3600
    stor15 = 480 * 24 * 3600
    stor16 = 504 * 24 * 3600
    stor17 = 672 * 24 * 3600
    stor18 = 840 * 24 * 3600
    stor19 = 1008 * 24 * 3600
    stor20 = 1176 * 24 * 3600
    stor21 = 0
    require not msg.value
    stor25 = code.data[3831 len 20]
    stor0 = code.data[3863 len 20]
    stor1 = code.data[3895 len 20]
    stor2 = code.data[3927 len 20]
    stor3 = code.data[3959 len 20]
    stor22 = code.data[3979 len 32]
    stor23 = code.data[3979 len 32] + stor20
    require ext_code.size(address(code.data[3819 len 32]))
    call address(code.data[3819 len 32]).0x867904b4 with:
         gas gas_remaining - 710 wei
        args code.data[3863 len 20], 49 * 10^13
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(stor25)
    call stor25.0x867904b4 with:
         gas gas_remaining - 710 wei
        args stor1, 25 * 10^13
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(stor25)
    call stor25.0x867904b4 with:
         gas gas_remaining - 710 wei
        args stor2, 25 * 10^13
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(stor25)
    call stor25.0x867904b4 with:
         gas gas_remaining - 710 wei
        args stor3, 10^13
    require ext_call.success
    require ext_call.return_data[0]
    return code.data[987 len 2832]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
address creatorAddress;
address marketingAddress;
address bountyAddress;
address confirmedByAddress;
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
address tokenAddress;

function creator() {
    return creatorAddress
}

function rateAngelDayEnd() {
    return rateAngelDayEnd
}

function rateFirstWeekEnd() {
    return rateFirstWeekEnd
}

function marketing() {
    return marketingAddress
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

function ratePreICO() {
    return ratePreICO
}

function rateWaitingEnd() {
    return rateWaitingEnd
}

function bounty() {
    return bountyAddress
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
    require stage <= 1
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

function token() {
    return tokenAddress
}

function confirmBeneficiary() {
    require beneficiaryAddress == msg.sender
    confirmedByAddress = msg.sender
}

function withdraw() {
    require beneficiaryAddress == msg.sender
    require stage <= 1
    require stage == 1
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function endCrowdsale() {
    require stage <= 1
    require not stage
    require block.timestamp > end
    stage = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa69df4b5 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if not ext_call.return_data[0]:
        stage = 0
}

function toTokens(uint256 arg1) {
    require stage <= 1
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
    require stage <= 1
    require not stage
    require block.timestamp >= start
    require block.timestamp <= end
    require msg.value >= minAcceptedAmount
    require stage <= 1
    require stage != 1
    require block.timestamp >= start
    require block.timestamp <= end
    if block.timestamp <= start + ratePreICOEnd:
        require 100 * 10^6 * ratePreICO * msg.value / 10^18 > 0
        raised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if ext_call.return_data[0] + (100 * 10^6 * ratePreICO * msg.value / 10^18) >= maxSupply:
            stage = 1
        require ext_code.size(tokenAddress)
        call tokenAddress.0x867904b4 with:
             gas gas_remaining - 710 wei
            args msg.sender, 100 * 10^6 * ratePreICO * msg.value / 10^18
    else:
        if block.timestamp <= start + rateWaitingEnd:
            require 100 * 10^6 * rateWaiting * msg.value / 10^18 > 0
            raised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if ext_call.return_data[0] + (100 * 10^6 * rateWaiting * msg.value / 10^18) >= maxSupply:
                stage = 1
            require ext_code.size(tokenAddress)
            call tokenAddress.0x867904b4 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 100 * 10^6 * rateWaiting * msg.value / 10^18
        else:
            if block.timestamp <= start + rateAngelDayEnd:
                require 100 * 10^6 * rateAngelDay * msg.value / 10^18 > 0
                raised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x18160ddd with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if ext_call.return_data[0] + (100 * 10^6 * rateAngelDay * msg.value / 10^18) >= maxSupply:
                    stage = 1
                require ext_code.size(tokenAddress)
                call tokenAddress.0x867904b4 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 100 * 10^6 * rateAngelDay * msg.value / 10^18
            else:
                if block.timestamp <= start + rateFirstWeekEnd:
                    require 100 * 10^6 * rateFirstWeek * msg.value / 10^18 > 0
                    raised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if ext_call.return_data[0] + (100 * 10^6 * rateFirstWeek * msg.value / 10^18) >= maxSupply:
                        stage = 1
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x867904b4 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 100 * 10^6 * rateFirstWeek * msg.value / 10^18
                else:
                    if block.timestamp <= start + rateSecondWeekEnd:
                        require 100 * 10^6 * rateSecondWeek * msg.value / 10^18 > 0
                        raised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x18160ddd with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if ext_call.return_data[0] + (100 * 10^6 * rateSecondWeek * msg.value / 10^18) >= maxSupply:
                            stage = 1
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x867904b4 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 100 * 10^6 * rateSecondWeek * msg.value / 10^18
                    else:
                        if block.timestamp <= start + rateThirdWeekEnd:
                            require 100 * 10^6 * rateThirdWeek * msg.value / 10^18 > 0
                            raised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            if ext_call.return_data[0] + (100 * 10^6 * rateThirdWeek * msg.value / 10^18) >= maxSupply:
                                stage = 1
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x867904b4 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 100 * 10^6 * rateThirdWeek * msg.value / 10^18
                        else:
                            require block.timestamp <= start + rateLastWeekEnd
                            require 100 * 10^6 * rateLastWeek * msg.value / 10^18 > 0
                            raised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            if ext_call.return_data[0] + (100 * 10^6 * rateLastWeek * msg.value / 10^18) >= maxSupply:
                                stage = 1
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x867904b4 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 100 * 10^6 * rateLastWeek * msg.value / 10^18
    require ext_call.success
    require ext_call.return_data[0]
    call beneficiaryAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
