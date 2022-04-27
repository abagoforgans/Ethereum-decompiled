contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
address stor6;
address stor7;
address stor8;
uint128 stor9; offset 160
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
address stor17;

function _fallback() payable {
    stor2 = 83333333
    stor3 = 100 * 10^6
    stor4 = 116686114
    require not msg.value
    stor0 = msg.sender
    stor5 = stor2
    stor17 = 0x814f67fa286f7572b041d041b1d99b432c9155ee
    stor0 = msg.sender
    stor6 = msg.sender
    stor7 = msg.sender
    stor8 = msg.sender
    stor9 = 0
    stor12 = 0
    stor13 = 35 * 10^14
    stor14 = 0
    stor16 = 0
    stor15 = 1667 * 10^18
    return code.data[552 len 10667]
}



// =====================  Runtime code  =====================


address owner;
uint256 firstroundprice;
uint256 secondroundprice;
uint256 thirdroundprice;
uint256 price;
address beneficiaryAddress;
address charityAddress;
address advisorAddress;
uint8 stor9; offset 160
uint128 stor9; offset 160
address frontAddress;
uint256 tokensSold;
uint256 etherRaised;
uint256 presold;
uint256 presoldMax;
uint256 crowdsaleCounter;
uint256 advisorTotal;
uint256 advisorCut;
address tokenRewardAddress;
mapping of uint8 stor18;

function firstroundprice() {
    return firstroundprice
}

function thirdroundprice() {
    return thirdroundprice
}

function advisor() {
    return advisorAddress
}

function beneficiary() {
    return beneficiaryAddress
}

function tokensSold() {
    return tokensSold
}

function presold() {
    return presold
}

function alreadyParticipated(address arg1) {
    return bool(stor18[arg1])
}

function tokenReward() {
    return tokenRewardAddress
}

function secondroundprice() {
    return secondroundprice
}

function owner() {
    return owner
}

function charity() {
    return charityAddress
}

function price() {
    return price
}

function front() {
    return frontAddress
}

function presoldMax() {
    return presoldMax
}

function crowdsaleCounter() {
    return crowdsaleCounter
}

function etherRaised() {
    return etherRaised
}

function advisorTotal() {
    return advisorTotal
}

function advisorCut() {
    return advisorCut
}

function advisorset() {
    return bool(uint8(stor9.field_160))
}

function _fallback() payable {
    revert
}

function setThirdRoundPricing(uint256 arg1) {
    require msg.sender == owner
    thirdroundprice = arg1
}

function setFirstRoundPricing(uint256 arg1) {
    require msg.sender == owner
    firstroundprice = arg1
}

function setSecondRoundPricing(uint256 arg1) {
    require msg.sender == owner
    secondroundprice = arg1
}

function setFront(address arg1) {
    require msg.sender == owner
    require arg1
    frontAddress = arg1
}

function transferCharity(address arg1) {
    require msg.sender == owner
    require arg1
    charityAddress = arg1
}

function transferBeneficiary(address arg1) {
    require msg.sender == owner
    require arg1
    beneficiaryAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setAdvisor(address arg1) {
    require msg.sender == owner
    require arg1
    require not uint8(stor9.field_160)
    Mask(96, 0, stor9.field_160) = 1
    advisorAddress = arg1
}

function crowdsalepricing(address arg1, uint256 arg2, uint256 arg3) {
    if arg3 <= 10^15:
        if arg3 >= 25 * 10^14:
            price = thirdroundprice
    else:
        if arg3 >= 25 * 10^14:
            price = thirdroundprice
        else:
            price = secondroundprice
    require price
    return arg2 / price, 0
}

function precrowdsalepricing(address arg1, uint256 arg2) {
    if arg2 != 3333333 * 10^11:
        if arg2 != 33333333 * 10^11:
            require arg2 == 9259259250 * 10^6 * 24 * 3600
    if arg2 == 3333333 * 10^11:
        return 3 * 10^6 * 24 * 3600, 800 * 10^6
    if arg2 == 33333333 * 10^11:
        return 108800 * 10^6, 8800 * 10^6
    if arg2 != 9259259250 * 10^6 * 24 * 3600:
        return 0
    return 1088800 * 10^6, 88800 * 10^6
}

function withdrawCrowdsaleDragons() {
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args beneficiaryAddress, ext_call.return_data[0]
    require ext_call.success
}

function crowdsale(address arg1) payable {
    require msg.sender == frontAddress
    create contract with 0 wei
                    code: code.data[8552 len 2072]
    require create.new_address
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xc618210a with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.value, crowdsaleCounter
    require ext_call.success
    crowdsaleCounter += ext_call.return_data[0]
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), ext_call.return_data[0]
    require ext_call.success
    if advisorCut >= advisorTotal:
        call beneficiaryAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        if advisorCut + (msg.value / 10) <= advisorTotal:
            call advisorAddress with:
               value msg.value / 10 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require advisorCut + (msg.value / 10) >= advisorCut
            advisorCut += msg.value / 10
            call beneficiaryAddress with:
               value 9 * msg.value / 10 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            if msg.value / 10 != msg.value / 10:
                require msg.value / 10 <= msg.value / 10
                call beneficiaryAddress with:
                     gas 2300 wei
                require ext_call.success
        else:
            require advisorCut <= advisorTotal
            call advisorAddress with:
               value advisorTotal - advisorCut wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require advisorTotal >= advisorCut
            advisorCut = advisorTotal
            call beneficiaryAddress with:
               value 9 * msg.value / 10 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            if advisorTotal - advisorCut != msg.value / 10:
                require advisorTotal - advisorCut <= msg.value / 10
                call beneficiaryAddress with:
                   value (msg.value / 10) - advisorTotal + advisorCut wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
    require etherRaised + msg.value >= etherRaised
    etherRaised += msg.value
    require tokensSold + ext_call.return_data[0] >= tokensSold
    tokensSold += ext_call.return_data[0]
}

function precrowdsale(address arg1) payable {
    require msg.sender == frontAddress
    require presold < presoldMax
    require bool(stor18[address(arg1)]) != 1
    stor18[address(arg1)] = 1
    create contract with 0 wei
                    code: code.data[8552 len 2072]
    require create.new_address
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x636d37b1 with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.value
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args charityAddress, ext_call.return_data[32]
    require ext_call.success
    require presold + ext_call.return_data[0] >= presold
    presold += ext_call.return_data[0]
    require presold + ext_call.return_data[32] >= presold
    presold += ext_call.return_data[32]
    require tokensSold + ext_call.return_data[32] >= tokensSold
    tokensSold += ext_call.return_data[32]
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), ext_call.return_data[0]
    require ext_call.success
    if advisorCut >= advisorTotal:
        call beneficiaryAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        if advisorCut + (msg.value / 10) <= advisorTotal:
            call advisorAddress with:
               value msg.value / 10 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require advisorCut + (msg.value / 10) >= advisorCut
            advisorCut += msg.value / 10
            call beneficiaryAddress with:
               value 9 * msg.value / 10 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            if msg.value / 10 != msg.value / 10:
                require msg.value / 10 <= msg.value / 10
                call beneficiaryAddress with:
                     gas 2300 wei
                require ext_call.success
        else:
            require advisorCut <= advisorTotal
            call advisorAddress with:
               value advisorTotal - advisorCut wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require advisorTotal >= advisorCut
            advisorCut = advisorTotal
            call beneficiaryAddress with:
               value 9 * msg.value / 10 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            if advisorTotal - advisorCut != msg.value / 10:
                require advisorTotal - advisorCut <= msg.value / 10
                call beneficiaryAddress with:
                   value (msg.value / 10) - advisorTotal + advisorCut wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
    require etherRaised + msg.value >= etherRaised
    etherRaised += msg.value
    require tokensSold + ext_call.return_data[0] >= tokensSold
    tokensSold += ext_call.return_data[0]
}

function manualSend(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    if arg2 == 1:
        require ext_code.size(tokenRewardAddress)
        if arg2 != 2:
            if arg2 != 3:
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 3 * 10^6 * 24 * 3600
                require ext_call.success
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args charityAddress, 800 * 10^6
                require ext_call.success
                require presold + (3 * 10^6 * 24 * 3600) >= presold
                presold += 3 * 10^6 * 24 * 3600
                require presold + 800 * 10^6 >= presold
                presold += 800 * 10^6
                require tokensSold + (3 * 10^6 * 24 * 3600) >= tokensSold
                tokensSold += 3 * 10^6 * 24 * 3600
                require tokensSold + 800 * 10^6 >= tokensSold
                tokensSold += 800 * 10^6
            else:
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 1088800 * 10^6
                require ext_call.success
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args charityAddress, 88800 * 10^6
                require ext_call.success
                require presold + 1088800 * 10^6 >= presold
                presold += 1088800 * 10^6
                require presold + 88800 * 10^6 >= presold
                presold += 88800 * 10^6
                require tokensSold + 1088800 * 10^6 >= tokensSold
                tokensSold += 1088800 * 10^6
                require tokensSold + 88800 * 10^6 >= tokensSold
                tokensSold += 88800 * 10^6
        else:
            if arg2 != 3:
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 108800 * 10^6
                require ext_call.success
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args charityAddress, 8800 * 10^6
                require ext_call.success
                require presold + 108800 * 10^6 >= presold
                presold += 108800 * 10^6
                require presold + 8800 * 10^6 >= presold
                presold += 8800 * 10^6
                require tokensSold + 108800 * 10^6 >= tokensSold
                tokensSold += 108800 * 10^6
                require tokensSold + 8800 * 10^6 >= tokensSold
                tokensSold += 8800 * 10^6
            else:
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 1088800 * 10^6
                require ext_call.success
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args charityAddress, 88800 * 10^6
                require ext_call.success
                require presold + 1088800 * 10^6 >= presold
                presold += 1088800 * 10^6
                require presold + 88800 * 10^6 >= presold
                presold += 88800 * 10^6
                require tokensSold + 1088800 * 10^6 >= tokensSold
                tokensSold += 1088800 * 10^6
                require tokensSold + 88800 * 10^6 >= tokensSold
                tokensSold += 88800 * 10^6
    else:
        if arg2 != 2:
            require arg2 == 3
        require ext_code.size(tokenRewardAddress)
        if arg2 != 1:
            if arg2 != 2:
                if arg2 != 3:
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 0
                    require ext_call.success
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args charityAddress, 0
                    require ext_call.success
                    require presold >= presold
                    require tokensSold >= tokensSold
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 1088800 * 10^6
                require ext_call.success
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args charityAddress, 88800 * 10^6
                require ext_call.success
                require presold + 1088800 * 10^6 >= presold
                presold += 1088800 * 10^6
                require presold + 88800 * 10^6 >= presold
                presold += 88800 * 10^6
                require tokensSold + 1088800 * 10^6 >= tokensSold
                tokensSold += 1088800 * 10^6
                require tokensSold + 88800 * 10^6 >= tokensSold
                tokensSold += 88800 * 10^6
            else:
                if arg2 != 3:
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 108800 * 10^6
                    require ext_call.success
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args charityAddress, 8800 * 10^6
                    require ext_call.success
                    require presold + 108800 * 10^6 >= presold
                    presold += 108800 * 10^6
                    require presold + 8800 * 10^6 >= presold
                    presold += 8800 * 10^6
                    require tokensSold + 108800 * 10^6 >= tokensSold
                    tokensSold += 108800 * 10^6
                    require tokensSold + 8800 * 10^6 >= tokensSold
                    tokensSold += 8800 * 10^6
                else:
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 1088800 * 10^6
                    require ext_call.success
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args charityAddress, 88800 * 10^6
                    require ext_call.success
                    require presold + 1088800 * 10^6 >= presold
                    presold += 1088800 * 10^6
                    require presold + 88800 * 10^6 >= presold
                    presold += 88800 * 10^6
                    require tokensSold + 1088800 * 10^6 >= tokensSold
                    tokensSold += 1088800 * 10^6
                    require tokensSold + 88800 * 10^6 >= tokensSold
                    tokensSold += 88800 * 10^6
        else:
            if arg2 != 2:
                if arg2 != 3:
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 3 * 10^6 * 24 * 3600
                    require ext_call.success
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args charityAddress, 800 * 10^6
                    require ext_call.success
                    require presold + (3 * 10^6 * 24 * 3600) >= presold
                    presold += 3 * 10^6 * 24 * 3600
                    require presold + 800 * 10^6 >= presold
                    presold += 800 * 10^6
                    require tokensSold + (3 * 10^6 * 24 * 3600) >= tokensSold
                    tokensSold += 3 * 10^6 * 24 * 3600
                    require tokensSold + 800 * 10^6 >= tokensSold
                    tokensSold += 800 * 10^6
                else:
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 1088800 * 10^6
                    require ext_call.success
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args charityAddress, 88800 * 10^6
                    require ext_call.success
                    require presold + 1088800 * 10^6 >= presold
                    presold += 1088800 * 10^6
                    require presold + 88800 * 10^6 >= presold
                    presold += 88800 * 10^6
                    require tokensSold + 1088800 * 10^6 >= tokensSold
                    tokensSold += 1088800 * 10^6
                    require tokensSold + 88800 * 10^6 >= tokensSold
                    tokensSold += 88800 * 10^6
            else:
                if arg2 != 3:
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 108800 * 10^6
                    require ext_call.success
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args charityAddress, 8800 * 10^6
                    require ext_call.success
                    require presold + 108800 * 10^6 >= presold
                    presold += 108800 * 10^6
                    require presold + 8800 * 10^6 >= presold
                    presold += 8800 * 10^6
                    require tokensSold + 108800 * 10^6 >= tokensSold
                    tokensSold += 108800 * 10^6
                    require tokensSold + 8800 * 10^6 >= tokensSold
                    tokensSold += 8800 * 10^6
                else:
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 1088800 * 10^6
                    require ext_call.success
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args charityAddress, 88800 * 10^6
                    require ext_call.success
                    require presold + 1088800 * 10^6 >= presold
                    presold += 1088800 * 10^6
                    require presold + 88800 * 10^6 >= presold
                    presold += 88800 * 10^6
                    require tokensSold + 1088800 * 10^6 >= tokensSold
                    tokensSold += 1088800 * 10^6
                    require tokensSold + 88800 * 10^6 >= tokensSold
                    tokensSold += 88800 * 10^6
}



}
