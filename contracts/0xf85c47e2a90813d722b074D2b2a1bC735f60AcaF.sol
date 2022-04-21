contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint8 stor1;
address stor2;
address stor3;
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint8 stor11;
uint256 stor12;
uint256 stor13;
uint8 stor14;

function _fallback() {
    stor0 = msg.sender
    stor1[address(msg.sender)] = 1
    require code.data[4563 len 20]
    require code.data[4499 len 20]
    require code.data[4615 len 32] > 0
    require code.data[4679 len 32] > 0
    stor2 = code.data[4499 len 20]
    stor4 = code.data[4563 len 20]
    stor3 = code.data[4531 len 20]
    if code.data[4583 len 32]:
        stor5 = code.data[4583 len 32]
    else:
        stor5 = block.timestamp
    stor6 = (3600 * code.data[4615 len 32]) + stor5
    stor8 = code.data[4679 len 32]
    stor7 = code.data[4647 len 32]
    stor10 = code.data[4711 len 32]
    stor12 = 0
    stor13 = 0
    stor14 = 0
    stor11 = 0
    require ext_code.size(stor2)
    call stor2.0xfc0c546a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getRealTokenAmount(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args stor8
    require ext_call.success
    stor9 = ext_call.return_data[0]
    return code.data[635 len 3852]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address tokenPoolAddress;
address restrictionsAddress;
address beneficiaryAddress;
uint256 startTime;
uint256 endTime;
uint256 minimumGoalInWei;
uint256 tokensForOneEther;
uint256 stor9;
uint256 currentBonusPct;
uint8 stor11;
uint256 amountToBeneficiary;
uint256 tokensSold;
uint8 stor14;
mapping of uint256 investedFrom;
mapping of uint256 tokensSoldTo;
mapping of uint256 overpays;

function tokenPool() {
    return tokenPoolAddress
}

function minimumGoalInWei() {
    return minimumGoalInWei
}

function getCurrentBonusPct() {
    return currentBonusPct
}

function endTime() {
    return endTime
}

function beneficiary() {
    return beneficiaryAddress
}

function weiCollected() {
    return amountToBeneficiary
}

function tokensSoldTo(address arg1) {
    return tokensSoldTo[arg1]
}

function overpays(address arg1) {
    return overpays[arg1]
}

function tokensSold() {
    return tokensSold
}

function failure() {
    return bool(stor14)
}

function tokensForOneEther() {
    return tokensForOneEther
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function restrictions() {
    return restrictionsAddress
}

function investedFrom(address arg1) {
    return investedFrom[arg1]
}

function amountToBeneficiary() {
    return amountToBeneficiary
}

function withdrew() {
    return bool(stor11)
}

function managers(address arg1) {
    return bool(stor1[arg1])
}

function makeFailed(bool arg1) {
    require stor1[address(msg.sender)]
    stor14 = uint8(arg1)
}

function changeBeneficiary(address arg1) {
    require stor1[address(msg.sender)]
    beneficiaryAddress = arg1
}

function setManager(address arg1, bool arg2) {
    require owner == msg.sender
    stor1[address(arg1)] = uint8(arg2)
    emit ManagerSet(address(arg1), arg2);
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require owner != arg1
    owner = arg1
    stor1[address(arg1)] = 1
    stor1[msg.sender] = 0
}

function tokensLeft() {
    require ext_code.size(tokenPoolAddress)
    call tokenPoolAddress.getTokenAmount() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function withdrawOverpay() {
    overpays[address(msg.sender)] = 0
    if overpays[address(msg.sender)] > 0:
        call msg.sender with:
           value overpays[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit OverpayRefund(msg.sender, overpays[address(msg.sender)]);
}

function getState() {
    if stor14:
        return 4
    if block.timestamp < startTime:
        return 1
    if block.timestamp < endTime:
        require ext_code.size(tokenPoolAddress)
        call tokenPoolAddress.getTokenAmount() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if ext_call.return_data[0] > 0:
            return 2
    if amountToBeneficiary < minimumGoalInWei:
        require ext_code.size(tokenPoolAddress)
        call tokenPoolAddress.getTokenAmount() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if ext_call.return_data[0] > 0:
            return 4
    return 3
}

function transferToBeneficiary() {
    require not stor14
    require block.timestamp >= startTime
    if block.timestamp < endTime:
        require ext_code.size(tokenPoolAddress)
        call tokenPoolAddress.getTokenAmount() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0] <= 0
    if amountToBeneficiary < minimumGoalInWei:
        require ext_code.size(tokenPoolAddress)
        call tokenPoolAddress.getTokenAmount() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0] <= 0
    require not stor11
    stor11 = 1
    call beneficiaryAddress with:
       value amountToBeneficiary wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Refund(beneficiaryAddress, amountToBeneficiary);
}

function howManyTokensForEther(uint256 arg1) {
    require ext_code.size(tokenPoolAddress)
    call tokenPoolAddress.getTokenAmount() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require currentBonusPct + 100
    if arg1 * stor9 / 10^18 <= 100 * ext_call.return_data[0] / currentBonusPct + 100:
        if stor9:
            return (currentBonusPct * arg1 * stor9 / 10^18) + (100 * arg1 * stor9 / 10^18) / 100, 
                   arg1 - (10^18 * arg1 * stor9 / 10^18 / stor9)
    else:
        if stor9:
            return (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100, 
                   arg1 - (10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9)
    ('iszero', ('stor', ('name', 'stor9', 9)))
    revert
}

function refund() {
    if not stor14:
        require block.timestamp >= startTime
        if block.timestamp < endTime:
            require ext_code.size(tokenPoolAddress)
            call tokenPoolAddress.getTokenAmount() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_call.return_data[0] <= 0
        require amountToBeneficiary < minimumGoalInWei
        require ext_code.size(tokenPoolAddress)
        call tokenPoolAddress.getTokenAmount() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0] > 0
    if investedFrom[address(msg.sender)] > 0:
        investedFrom[address(msg.sender)] = 0
        require amountToBeneficiary >= investedFrom[address(msg.sender)]
        amountToBeneficiary -= investedFrom[address(msg.sender)]
        call msg.sender with:
           value investedFrom[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Refund(msg.sender, investedFrom[address(msg.sender)]);
}

function canInvest(address arg1, uint256 arg2) {
    if stor14:
        return 0
    if block.timestamp < startTime:
        return 0
    if block.timestamp >= endTime:
        if amountToBeneficiary < minimumGoalInWei:
            require ext_code.size(tokenPoolAddress)
            call tokenPoolAddress.getTokenAmount() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            return 0
        else:
            return 0
    require ext_code.size(tokenPoolAddress)
    call tokenPoolAddress.getTokenAmount() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0] <= 0:
        if amountToBeneficiary < minimumGoalInWei:
            require ext_code.size(tokenPoolAddress)
            call tokenPoolAddress.getTokenAmount() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            return 0
        else:
            return 0
    if not restrictionsAddress:
        return not bool(restrictionsAddress)
    require ext_code.size(tokenPoolAddress)
    call tokenPoolAddress.getTokenAmount() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(restrictionsAddress)
    call restrictionsAddress.canInvest(address rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2, ext_call.return_data[0]
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function invest() payable {
    require not stor14
    require block.timestamp >= startTime
    if block.timestamp >= endTime:
        require amountToBeneficiary < minimumGoalInWei
        require ext_code.size(tokenPoolAddress)
        call tokenPoolAddress.getTokenAmount() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0] <= 0
        revert
    else:
        require ext_code.size(tokenPoolAddress)
        call tokenPoolAddress.getTokenAmount() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if ext_call.return_data[0] <= 0:
            require amountToBeneficiary < minimumGoalInWei
            require ext_code.size(tokenPoolAddress)
            call tokenPoolAddress.getTokenAmount() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_call.return_data[0] <= 0
            revert
        else:
            if not restrictionsAddress:
                require ext_code.size(tokenPoolAddress)
                call tokenPoolAddress.getTokenAmount() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require currentBonusPct + 100
                if msg.value * stor9 / 10^18 <= 100 * ext_call.return_data[0] / currentBonusPct + 100:
                    require stor9
                    require ext_code.size(tokenPoolAddress)
                    call tokenPoolAddress.getTokenAmount() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100 <= ext_call.return_data[0]
                    require (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100 > 0
                    if msg.value - (10^18 * msg.value * stor9 / 10^18 / stor9) <= 0:
                        require msg.value + investedFrom[address(msg.sender)] >= investedFrom[address(msg.sender)]
                        investedFrom[address(msg.sender)] += msg.value
                        require ((currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100) + tokensSoldTo[address(msg.sender)] >= tokensSoldTo[address(msg.sender)]
                        tokensSoldTo[address(msg.sender)] += (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100
                        require ((currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100) + tokensSold >= tokensSold
                        tokensSold += (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100
                        require msg.value + amountToBeneficiary >= amountToBeneficiary
                        amountToBeneficiary += msg.value
                        if not restrictionsAddress:
                            require ext_code.size(tokenPoolAddress)
                            call tokenPoolAddress.0xfc0c546a with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args tokenPoolAddress, msg.sender, (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit Invested(msg.sender, msg.value, (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100);
                        else:
                            require ext_code.size(restrictionsAddress)
                            call restrictionsAddress.investHappened(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, msg.value
                            require ext_call.success
                            require ext_code.size(tokenPoolAddress)
                            call tokenPoolAddress.0xfc0c546a with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args tokenPoolAddress, msg.sender, (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit Invested(msg.sender, msg.value, (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100);
                    else:
                        require msg.value - (10^18 * msg.value * stor9 / 10^18 / stor9) + overpays[address(msg.sender)] >= overpays[address(msg.sender)]
                        overpays[address(msg.sender)] = msg.value - (10^18 * msg.value * stor9 / 10^18 / stor9) + overpays[address(msg.sender)]
                        require msg.value >= msg.value - (10^18 * msg.value * stor9 / 10^18 / stor9)
                        require (10^18 * msg.value * stor9 / 10^18 / stor9) + investedFrom[address(msg.sender)] >= investedFrom[address(msg.sender)]
                        investedFrom[address(msg.sender)] += 10^18 * msg.value * stor9 / 10^18 / stor9
                        require ((currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100) + tokensSoldTo[address(msg.sender)] >= tokensSoldTo[address(msg.sender)]
                        tokensSoldTo[address(msg.sender)] += (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100
                        require ((currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100) + tokensSold >= tokensSold
                        tokensSold += (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100
                        require (10^18 * msg.value * stor9 / 10^18 / stor9) + amountToBeneficiary >= amountToBeneficiary
                        amountToBeneficiary += 10^18 * msg.value * stor9 / 10^18 / stor9
                        if not restrictionsAddress:
                            require ext_code.size(tokenPoolAddress)
                            call tokenPoolAddress.0xfc0c546a with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args tokenPoolAddress, msg.sender, (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit Invested(msg.sender, 10^18 * msg.value * stor9 / 10^18 / stor9, (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100);
                        else:
                            require ext_code.size(restrictionsAddress)
                            call restrictionsAddress.investHappened(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, msg.value
                            require ext_call.success
                            require ext_code.size(tokenPoolAddress)
                            call tokenPoolAddress.0xfc0c546a with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args tokenPoolAddress, msg.sender, (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit Invested(msg.sender, 10^18 * msg.value * stor9 / 10^18 / stor9, (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100);
                else:
                    require stor9
                    require ext_code.size(tokenPoolAddress)
                    call tokenPoolAddress.getTokenAmount() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100 <= ext_call.return_data[0]
                    require (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100 > 0
                    if msg.value - (10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9) <= 0:
                        require msg.value + investedFrom[address(msg.sender)] >= investedFrom[address(msg.sender)]
                        investedFrom[address(msg.sender)] += msg.value
                        require ((currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100) + tokensSoldTo[address(msg.sender)] >= tokensSoldTo[address(msg.sender)]
                        tokensSoldTo[address(msg.sender)] += (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100
                        require ((currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100) + tokensSold >= tokensSold
                        tokensSold += (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100
                        require msg.value + amountToBeneficiary >= amountToBeneficiary
                        amountToBeneficiary += msg.value
                        if not restrictionsAddress:
                            require ext_code.size(tokenPoolAddress)
                            call tokenPoolAddress.0xfc0c546a with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args tokenPoolAddress, msg.sender, (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit Invested(msg.sender, msg.value, (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100);
                        else:
                            require ext_code.size(restrictionsAddress)
                            call restrictionsAddress.investHappened(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, msg.value
                            require ext_call.success
                            require ext_code.size(tokenPoolAddress)
                            call tokenPoolAddress.0xfc0c546a with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args tokenPoolAddress, msg.sender, (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit Invested(msg.sender, msg.value, (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100);
                    else:
                        require msg.value - (10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9) + overpays[address(msg.sender)] >= overpays[address(msg.sender)]
                        overpays[address(msg.sender)] = msg.value - (10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9) + overpays[address(msg.sender)]
                        require msg.value >= msg.value - (10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9)
                        require (10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9) + investedFrom[address(msg.sender)] >= investedFrom[address(msg.sender)]
                        investedFrom[address(msg.sender)] += 10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9
                        require ((currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100) + tokensSoldTo[address(msg.sender)] >= tokensSoldTo[address(msg.sender)]
                        tokensSoldTo[address(msg.sender)] += (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100
                        require ((currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100) + tokensSold >= tokensSold
                        tokensSold += (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100
                        require (10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9) + amountToBeneficiary >= amountToBeneficiary
                        amountToBeneficiary += 10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9
                        if not restrictionsAddress:
                            require ext_code.size(tokenPoolAddress)
                            call tokenPoolAddress.0xfc0c546a with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args tokenPoolAddress, msg.sender, (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit Invested(msg.sender, 10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9, (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100);
                        else:
                            require ext_code.size(restrictionsAddress)
                            call restrictionsAddress.investHappened(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, msg.value
                            require ext_call.success
                            require ext_code.size(tokenPoolAddress)
                            call tokenPoolAddress.0xfc0c546a with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args tokenPoolAddress, msg.sender, (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit Invested(msg.sender, 10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9, (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100);
            else:
                require ext_code.size(tokenPoolAddress)
                call tokenPoolAddress.getTokenAmount() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_code.size(restrictionsAddress)
                call restrictionsAddress.canInvest(address rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value, ext_call.return_data[0]
                require ext_call.success
                require ext_call.return_data[0]
                require ext_code.size(tokenPoolAddress)
                call tokenPoolAddress.getTokenAmount() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require currentBonusPct + 100
                if msg.value * stor9 / 10^18 <= 100 * ext_call.return_data[0] / currentBonusPct + 100:
                    require stor9
                    require ext_code.size(tokenPoolAddress)
                    call tokenPoolAddress.getTokenAmount() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100 <= ext_call.return_data[0]
                    require (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100 > 0
                    if msg.value - (10^18 * msg.value * stor9 / 10^18 / stor9) <= 0:
                        require msg.value + investedFrom[address(msg.sender)] >= investedFrom[address(msg.sender)]
                        investedFrom[address(msg.sender)] += msg.value
                        require ((currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100) + tokensSoldTo[address(msg.sender)] >= tokensSoldTo[address(msg.sender)]
                        tokensSoldTo[address(msg.sender)] += (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100
                        require ((currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100) + tokensSold >= tokensSold
                        tokensSold += (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100
                        require msg.value + amountToBeneficiary >= amountToBeneficiary
                        amountToBeneficiary += msg.value
                        if not restrictionsAddress:
                            require ext_code.size(tokenPoolAddress)
                            call tokenPoolAddress.0xfc0c546a with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args tokenPoolAddress, msg.sender, (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit Invested(msg.sender, msg.value, (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100);
                        else:
                            require ext_code.size(restrictionsAddress)
                            call restrictionsAddress.investHappened(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, msg.value
                            require ext_call.success
                            require ext_code.size(tokenPoolAddress)
                            call tokenPoolAddress.0xfc0c546a with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args tokenPoolAddress, msg.sender, (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit Invested(msg.sender, msg.value, (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100);
                    else:
                        require msg.value - (10^18 * msg.value * stor9 / 10^18 / stor9) + overpays[address(msg.sender)] >= overpays[address(msg.sender)]
                        overpays[address(msg.sender)] = msg.value - (10^18 * msg.value * stor9 / 10^18 / stor9) + overpays[address(msg.sender)]
                        require msg.value >= msg.value - (10^18 * msg.value * stor9 / 10^18 / stor9)
                        require (10^18 * msg.value * stor9 / 10^18 / stor9) + investedFrom[address(msg.sender)] >= investedFrom[address(msg.sender)]
                        investedFrom[address(msg.sender)] += 10^18 * msg.value * stor9 / 10^18 / stor9
                        require ((currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100) + tokensSoldTo[address(msg.sender)] >= tokensSoldTo[address(msg.sender)]
                        tokensSoldTo[address(msg.sender)] += (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100
                        require ((currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100) + tokensSold >= tokensSold
                        tokensSold += (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100
                        require (10^18 * msg.value * stor9 / 10^18 / stor9) + amountToBeneficiary >= amountToBeneficiary
                        amountToBeneficiary += 10^18 * msg.value * stor9 / 10^18 / stor9
                        if not restrictionsAddress:
                            require ext_code.size(tokenPoolAddress)
                            call tokenPoolAddress.0xfc0c546a with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args tokenPoolAddress, msg.sender, (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit Invested(msg.sender, 10^18 * msg.value * stor9 / 10^18 / stor9, (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100);
                        else:
                            require ext_code.size(restrictionsAddress)
                            call restrictionsAddress.investHappened(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, msg.value
                            require ext_call.success
                            require ext_code.size(tokenPoolAddress)
                            call tokenPoolAddress.0xfc0c546a with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args tokenPoolAddress, msg.sender, (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit Invested(msg.sender, 10^18 * msg.value * stor9 / 10^18 / stor9, (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100);
                else:
                    require stor9
                    require ext_code.size(tokenPoolAddress)
                    call tokenPoolAddress.getTokenAmount() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100 <= ext_call.return_data[0]
                    require (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100 > 0
                    if msg.value - (10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9) <= 0:
                        require msg.value + investedFrom[address(msg.sender)] >= investedFrom[address(msg.sender)]
                        investedFrom[address(msg.sender)] += msg.value
                        require ((currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100) + tokensSoldTo[address(msg.sender)] >= tokensSoldTo[address(msg.sender)]
                        tokensSoldTo[address(msg.sender)] += (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100
                        require ((currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100) + tokensSold >= tokensSold
                        tokensSold += (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100
                        require msg.value + amountToBeneficiary >= amountToBeneficiary
                        amountToBeneficiary += msg.value
                        if not restrictionsAddress:
                            require ext_code.size(tokenPoolAddress)
                            call tokenPoolAddress.0xfc0c546a with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args tokenPoolAddress, msg.sender, (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit Invested(msg.sender, msg.value, (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100);
                        else:
                            require ext_code.size(restrictionsAddress)
                            call restrictionsAddress.investHappened(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, msg.value
                            require ext_call.success
                            require ext_code.size(tokenPoolAddress)
                            call tokenPoolAddress.0xfc0c546a with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args tokenPoolAddress, msg.sender, (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit Invested(msg.sender, msg.value, (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100);
                    else:
                        require msg.value - (10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9) + overpays[address(msg.sender)] >= overpays[address(msg.sender)]
                        overpays[address(msg.sender)] = msg.value - (10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9) + overpays[address(msg.sender)]
                        require msg.value >= msg.value - (10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9)
                        require (10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9) + investedFrom[address(msg.sender)] >= investedFrom[address(msg.sender)]
                        investedFrom[address(msg.sender)] += 10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9
                        require ((currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100) + tokensSoldTo[address(msg.sender)] >= tokensSoldTo[address(msg.sender)]
                        tokensSoldTo[address(msg.sender)] += (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100
                        require ((currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100) + tokensSold >= tokensSold
                        tokensSold += (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100
                        require (10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9) + amountToBeneficiary >= amountToBeneficiary
                        amountToBeneficiary += 10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9
                        if not restrictionsAddress:
                            require ext_code.size(tokenPoolAddress)
                            call tokenPoolAddress.0xfc0c546a with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args tokenPoolAddress, msg.sender, (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit Invested(msg.sender, 10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9, (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100);
                        else:
                            require ext_code.size(restrictionsAddress)
                            call restrictionsAddress.investHappened(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, msg.value
                            require ext_call.success
                            require ext_code.size(tokenPoolAddress)
                            call tokenPoolAddress.0xfc0c546a with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args tokenPoolAddress, msg.sender, (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit Invested(msg.sender, 10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9, (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100);
}

function _fallback() payable {
    require not stor14
    require block.timestamp >= startTime
    if block.timestamp >= endTime:
        require amountToBeneficiary < minimumGoalInWei
        require ext_code.size(tokenPoolAddress)
        call tokenPoolAddress.getTokenAmount() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0] <= 0
        revert
    else:
        require ext_code.size(tokenPoolAddress)
        call tokenPoolAddress.getTokenAmount() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if ext_call.return_data[0] <= 0:
            require amountToBeneficiary < minimumGoalInWei
            require ext_code.size(tokenPoolAddress)
            call tokenPoolAddress.getTokenAmount() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_call.return_data[0] <= 0
            revert
        else:
            if not restrictionsAddress:
                require ext_code.size(tokenPoolAddress)
                call tokenPoolAddress.getTokenAmount() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require currentBonusPct + 100
                if msg.value * stor9 / 10^18 <= 100 * ext_call.return_data[0] / currentBonusPct + 100:
                    require stor9
                    require ext_code.size(tokenPoolAddress)
                    call tokenPoolAddress.getTokenAmount() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100 <= ext_call.return_data[0]
                    require (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100 > 0
                    if msg.value - (10^18 * msg.value * stor9 / 10^18 / stor9) <= 0:
                        require msg.value + investedFrom[address(msg.sender)] >= investedFrom[address(msg.sender)]
                        investedFrom[address(msg.sender)] += msg.value
                        require ((currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100) + tokensSoldTo[address(msg.sender)] >= tokensSoldTo[address(msg.sender)]
                        tokensSoldTo[address(msg.sender)] += (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100
                        require ((currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100) + tokensSold >= tokensSold
                        tokensSold += (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100
                        require msg.value + amountToBeneficiary >= amountToBeneficiary
                        amountToBeneficiary += msg.value
                        if not restrictionsAddress:
                            require ext_code.size(tokenPoolAddress)
                            call tokenPoolAddress.0xfc0c546a with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args tokenPoolAddress, msg.sender, (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit Invested(msg.sender, msg.value, (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100);
                        else:
                            require ext_code.size(restrictionsAddress)
                            call restrictionsAddress.investHappened(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, msg.value
                            require ext_call.success
                            require ext_code.size(tokenPoolAddress)
                            call tokenPoolAddress.0xfc0c546a with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args tokenPoolAddress, msg.sender, (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit Invested(msg.sender, msg.value, (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100);
                    else:
                        require msg.value - (10^18 * msg.value * stor9 / 10^18 / stor9) + overpays[address(msg.sender)] >= overpays[address(msg.sender)]
                        overpays[address(msg.sender)] = msg.value - (10^18 * msg.value * stor9 / 10^18 / stor9) + overpays[address(msg.sender)]
                        require msg.value >= msg.value - (10^18 * msg.value * stor9 / 10^18 / stor9)
                        require (10^18 * msg.value * stor9 / 10^18 / stor9) + investedFrom[address(msg.sender)] >= investedFrom[address(msg.sender)]
                        investedFrom[address(msg.sender)] += 10^18 * msg.value * stor9 / 10^18 / stor9
                        require ((currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100) + tokensSoldTo[address(msg.sender)] >= tokensSoldTo[address(msg.sender)]
                        tokensSoldTo[address(msg.sender)] += (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100
                        require ((currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100) + tokensSold >= tokensSold
                        tokensSold += (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100
                        require (10^18 * msg.value * stor9 / 10^18 / stor9) + amountToBeneficiary >= amountToBeneficiary
                        amountToBeneficiary += 10^18 * msg.value * stor9 / 10^18 / stor9
                        if not restrictionsAddress:
                            require ext_code.size(tokenPoolAddress)
                            call tokenPoolAddress.0xfc0c546a with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args tokenPoolAddress, msg.sender, (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit Invested(msg.sender, 10^18 * msg.value * stor9 / 10^18 / stor9, (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100);
                        else:
                            require ext_code.size(restrictionsAddress)
                            call restrictionsAddress.investHappened(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, msg.value
                            require ext_call.success
                            require ext_code.size(tokenPoolAddress)
                            call tokenPoolAddress.0xfc0c546a with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args tokenPoolAddress, msg.sender, (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit Invested(msg.sender, 10^18 * msg.value * stor9 / 10^18 / stor9, (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100);
                else:
                    require stor9
                    require ext_code.size(tokenPoolAddress)
                    call tokenPoolAddress.getTokenAmount() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100 <= ext_call.return_data[0]
                    require (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100 > 0
                    if msg.value - (10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9) <= 0:
                        require msg.value + investedFrom[address(msg.sender)] >= investedFrom[address(msg.sender)]
                        investedFrom[address(msg.sender)] += msg.value
                        require ((currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100) + tokensSoldTo[address(msg.sender)] >= tokensSoldTo[address(msg.sender)]
                        tokensSoldTo[address(msg.sender)] += (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100
                        require ((currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100) + tokensSold >= tokensSold
                        tokensSold += (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100
                        require msg.value + amountToBeneficiary >= amountToBeneficiary
                        amountToBeneficiary += msg.value
                        if not restrictionsAddress:
                            require ext_code.size(tokenPoolAddress)
                            call tokenPoolAddress.0xfc0c546a with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args tokenPoolAddress, msg.sender, (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit Invested(msg.sender, msg.value, (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100);
                        else:
                            require ext_code.size(restrictionsAddress)
                            call restrictionsAddress.investHappened(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, msg.value
                            require ext_call.success
                            require ext_code.size(tokenPoolAddress)
                            call tokenPoolAddress.0xfc0c546a with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args tokenPoolAddress, msg.sender, (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit Invested(msg.sender, msg.value, (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100);
                    else:
                        require msg.value - (10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9) + overpays[address(msg.sender)] >= overpays[address(msg.sender)]
                        overpays[address(msg.sender)] = msg.value - (10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9) + overpays[address(msg.sender)]
                        require msg.value >= msg.value - (10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9)
                        require (10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9) + investedFrom[address(msg.sender)] >= investedFrom[address(msg.sender)]
                        investedFrom[address(msg.sender)] += 10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9
                        require ((currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100) + tokensSoldTo[address(msg.sender)] >= tokensSoldTo[address(msg.sender)]
                        tokensSoldTo[address(msg.sender)] += (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100
                        require ((currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100) + tokensSold >= tokensSold
                        tokensSold += (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100
                        require (10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9) + amountToBeneficiary >= amountToBeneficiary
                        amountToBeneficiary += 10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9
                        if not restrictionsAddress:
                            require ext_code.size(tokenPoolAddress)
                            call tokenPoolAddress.0xfc0c546a with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args tokenPoolAddress, msg.sender, (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit Invested(msg.sender, 10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9, (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100);
                        else:
                            require ext_code.size(restrictionsAddress)
                            call restrictionsAddress.investHappened(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, msg.value
                            require ext_call.success
                            require ext_code.size(tokenPoolAddress)
                            call tokenPoolAddress.0xfc0c546a with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args tokenPoolAddress, msg.sender, (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit Invested(msg.sender, 10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9, (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100);
            else:
                require ext_code.size(tokenPoolAddress)
                call tokenPoolAddress.getTokenAmount() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_code.size(restrictionsAddress)
                call restrictionsAddress.canInvest(address rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value, ext_call.return_data[0]
                require ext_call.success
                require ext_call.return_data[0]
                require ext_code.size(tokenPoolAddress)
                call tokenPoolAddress.getTokenAmount() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require currentBonusPct + 100
                if msg.value * stor9 / 10^18 <= 100 * ext_call.return_data[0] / currentBonusPct + 100:
                    require stor9
                    require ext_code.size(tokenPoolAddress)
                    call tokenPoolAddress.getTokenAmount() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100 <= ext_call.return_data[0]
                    require (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100 > 0
                    if msg.value - (10^18 * msg.value * stor9 / 10^18 / stor9) <= 0:
                        require msg.value + investedFrom[address(msg.sender)] >= investedFrom[address(msg.sender)]
                        investedFrom[address(msg.sender)] += msg.value
                        require ((currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100) + tokensSoldTo[address(msg.sender)] >= tokensSoldTo[address(msg.sender)]
                        tokensSoldTo[address(msg.sender)] += (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100
                        require ((currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100) + tokensSold >= tokensSold
                        tokensSold += (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100
                        require msg.value + amountToBeneficiary >= amountToBeneficiary
                        amountToBeneficiary += msg.value
                        if not restrictionsAddress:
                            require ext_code.size(tokenPoolAddress)
                            call tokenPoolAddress.0xfc0c546a with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args tokenPoolAddress, msg.sender, (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit Invested(msg.sender, msg.value, (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100);
                        else:
                            require ext_code.size(restrictionsAddress)
                            call restrictionsAddress.investHappened(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, msg.value
                            require ext_call.success
                            require ext_code.size(tokenPoolAddress)
                            call tokenPoolAddress.0xfc0c546a with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args tokenPoolAddress, msg.sender, (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit Invested(msg.sender, msg.value, (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100);
                    else:
                        require msg.value - (10^18 * msg.value * stor9 / 10^18 / stor9) + overpays[address(msg.sender)] >= overpays[address(msg.sender)]
                        overpays[address(msg.sender)] = msg.value - (10^18 * msg.value * stor9 / 10^18 / stor9) + overpays[address(msg.sender)]
                        require msg.value >= msg.value - (10^18 * msg.value * stor9 / 10^18 / stor9)
                        require (10^18 * msg.value * stor9 / 10^18 / stor9) + investedFrom[address(msg.sender)] >= investedFrom[address(msg.sender)]
                        investedFrom[address(msg.sender)] += 10^18 * msg.value * stor9 / 10^18 / stor9
                        require ((currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100) + tokensSoldTo[address(msg.sender)] >= tokensSoldTo[address(msg.sender)]
                        tokensSoldTo[address(msg.sender)] += (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100
                        require ((currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100) + tokensSold >= tokensSold
                        tokensSold += (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100
                        require (10^18 * msg.value * stor9 / 10^18 / stor9) + amountToBeneficiary >= amountToBeneficiary
                        amountToBeneficiary += 10^18 * msg.value * stor9 / 10^18 / stor9
                        if not restrictionsAddress:
                            require ext_code.size(tokenPoolAddress)
                            call tokenPoolAddress.0xfc0c546a with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args tokenPoolAddress, msg.sender, (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit Invested(msg.sender, 10^18 * msg.value * stor9 / 10^18 / stor9, (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100);
                        else:
                            require ext_code.size(restrictionsAddress)
                            call restrictionsAddress.investHappened(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, msg.value
                            require ext_call.success
                            require ext_code.size(tokenPoolAddress)
                            call tokenPoolAddress.0xfc0c546a with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args tokenPoolAddress, msg.sender, (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit Invested(msg.sender, 10^18 * msg.value * stor9 / 10^18 / stor9, (currentBonusPct * msg.value * stor9 / 10^18) + (100 * msg.value * stor9 / 10^18) / 100);
                else:
                    require stor9
                    require ext_code.size(tokenPoolAddress)
                    call tokenPoolAddress.getTokenAmount() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100 <= ext_call.return_data[0]
                    require (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100 > 0
                    if msg.value - (10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9) <= 0:
                        require msg.value + investedFrom[address(msg.sender)] >= investedFrom[address(msg.sender)]
                        investedFrom[address(msg.sender)] += msg.value
                        require ((currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100) + tokensSoldTo[address(msg.sender)] >= tokensSoldTo[address(msg.sender)]
                        tokensSoldTo[address(msg.sender)] += (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100
                        require ((currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100) + tokensSold >= tokensSold
                        tokensSold += (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100
                        require msg.value + amountToBeneficiary >= amountToBeneficiary
                        amountToBeneficiary += msg.value
                        if not restrictionsAddress:
                            require ext_code.size(tokenPoolAddress)
                            call tokenPoolAddress.0xfc0c546a with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args tokenPoolAddress, msg.sender, (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit Invested(msg.sender, msg.value, (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100);
                        else:
                            require ext_code.size(restrictionsAddress)
                            call restrictionsAddress.investHappened(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, msg.value
                            require ext_call.success
                            require ext_code.size(tokenPoolAddress)
                            call tokenPoolAddress.0xfc0c546a with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args tokenPoolAddress, msg.sender, (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit Invested(msg.sender, msg.value, (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100);
                    else:
                        require msg.value - (10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9) + overpays[address(msg.sender)] >= overpays[address(msg.sender)]
                        overpays[address(msg.sender)] = msg.value - (10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9) + overpays[address(msg.sender)]
                        require msg.value >= msg.value - (10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9)
                        require (10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9) + investedFrom[address(msg.sender)] >= investedFrom[address(msg.sender)]
                        investedFrom[address(msg.sender)] += 10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9
                        require ((currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100) + tokensSoldTo[address(msg.sender)] >= tokensSoldTo[address(msg.sender)]
                        tokensSoldTo[address(msg.sender)] += (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100
                        require ((currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100) + tokensSold >= tokensSold
                        tokensSold += (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100
                        require (10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9) + amountToBeneficiary >= amountToBeneficiary
                        amountToBeneficiary += 10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9
                        if not restrictionsAddress:
                            require ext_code.size(tokenPoolAddress)
                            call tokenPoolAddress.0xfc0c546a with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args tokenPoolAddress, msg.sender, (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit Invested(msg.sender, 10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9, (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100);
                        else:
                            require ext_code.size(restrictionsAddress)
                            call restrictionsAddress.investHappened(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, msg.value
                            require ext_call.success
                            require ext_code.size(tokenPoolAddress)
                            call tokenPoolAddress.0xfc0c546a with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args tokenPoolAddress, msg.sender, (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit Invested(msg.sender, 10^18 * 100 * ext_call.return_data[0] / currentBonusPct + 100 / stor9, (currentBonusPct * 100 * ext_call.return_data[0] / currentBonusPct + 100) + (100 * 100 * ext_call.return_data[0] / currentBonusPct + 100) / 100);
}



}
