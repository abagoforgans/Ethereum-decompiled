contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor2;
uint256 stor3;
uint256 stor5;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
address stor11;
address stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint8 stor21;

function _fallback() payable {
    stor2 = 10^17
    stor3 = 20000000 * 10^18
    stor5 = 320000000 * 10^18
    stor7 = 60000000 * 10^18
    stor8 = 5000 * 10^18
    stor9 = 60000 * 10^18
    stor10 = 0
    stor15 = 3500
    stor18 = 0
    stor19 = 0
    stor20 = 0
    require not msg.value
    require code.data[9531 len 32] >= code.data[9499 len 32]
    require code.data[9575 len 20]
    stor13 = code.data[9499 len 32]
    stor14 = code.data[9531 len 32]
    stor11 = code.data[9575 len 20]
    stor12 = msg.sender
    stor0[stor11] = 400000000 * 10^18
    stor21 = 0
    return code.data[534 len 8965]
}



// =====================  Runtime code  =====================


const name = 'Toplancer'

const totalSupply = 400000000 * 10^18

const decimals = 18

const symbol = 'TLC'

const getNow = (1000 * block.timestamp)


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 minContribAmount;
uint256 presaleCap;
uint256 soldTokenInPresale;
uint256 publicSaleCap;
uint256 soldTokenInPublicsale;
uint256 distributionSupply;
uint256 softCap;
uint256 hardCap;
uint256 weiRaised;
address multisigAddress;
address owner;
uint256 startTime;
uint256 endTime;
uint256 rate;
mapping of uint256 investedAmountOf;
uint256 investorCount;
uint256 fundRaisedDuringPublicSale;
uint256 loadedRefund;
uint256 weiRefunded;
uint8 stage;

function investedAmountOf(address arg1) {
    return investedAmountOf[arg1]
}

function distributionSupply() {
    return distributionSupply
}

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function weiRaised() {
    return weiRaised
}

function multisig() {
    return multisigAddress
}

function soldTokenInPresale() {
    return soldTokenInPresale
}

function minContribAmount() {
    return minContribAmount
}

function weiRefunded() {
    return weiRefunded
}

function presaleCap() {
    return presaleCap
}

function publicSaleCap() {
    return publicSaleCap
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function startTime() {
    return startTime
}

function loadedRefund() {
    return loadedRefund
}

function owner() {
    return owner
}

function softCap() {
    return softCap
}

function stage() {
    require stage <= 5
    return stage
}

function fundRaisedDuringPublicSale() {
    return fundRaisedDuringPublicSale
}

function investorCount() {
    return investorCount
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function soldTokenInPublicsale() {
    return soldTokenInPublicsale
}

function hardCap() {
    return hardCap
}

function isMaximumGoalReached() {
    return weiRaised >= hardCap
}

function hasEnded() {
    return (1000 * block.timestamp > endTime)
}

function changeMinContribution(uint256 arg1) {
    require msg.sender == owner
    minContribAmount = arg1
}

function changeMultiSignatureWallet(address arg1) {
    require msg.sender == owner
    multisigAddress = arg1
}

function changeEndTime(uint256 arg1) {
    require msg.sender == owner
    require endTime > startTime
    endTime = arg1
}

function approve(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function loadRefund() payable {
    require stage <= 5
    require stage == 3
    require msg.value
    require loadedRefund + msg.value >= loadedRefund
    loadedRefund += msg.value
    if loadedRefund <= fundRaisedDuringPublicSale:
        stage = 4
}

function startPublicsale(uint256 arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    require 1000 * block.timestamp > endTime
    require stage <= 5
    require not stage
    require arg2 >= arg1
    require arg3 > 0
    stage = 1
    startTime = arg1
    endTime = arg2
    rate = arg3
}

function updateICOStatus() {
    require msg.sender == owner
    require 1000 * block.timestamp > endTime
    require stage <= 5
    require stage == 1
    if 1000 * block.timestamp > endTime:
        if weiRaised >= softCap:
            stage = 2
        else:
            if 1000 * block.timestamp > endTime:
                stage = 3
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function sendFounderAndTeamToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg2 > 0
    require distributionSupply >= arg2
    require arg2 <= balanceOf[stor11]
    balanceOf[stor11] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 <= distributionSupply
    distributionSupply -= arg2
    emit Transfer(arg2, multisigAddress, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg1)] >= arg3
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function refund() {
    require stage <= 5
    require stage == 4
    require investedAmountOf[address(msg.sender)]
    investedAmountOf[address(msg.sender)] = 0
    balanceOf[address(msg.sender)] = 0
    require weiRefunded + investedAmountOf[address(msg.sender)] >= weiRefunded
    weiRefunded += investedAmountOf[address(msg.sender)]
    emit Refund(msg.sender, investedAmountOf[address(msg.sender)]);
    call msg.sender with:
       value investedAmountOf[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if weiRefunded <= fundRaisedDuringPublicSale:
        stage = 5
}

function buyTokens(address arg1) payable {
    require arg1
    require 1000 * block.timestamp >= startTime
    require 1000 * block.timestamp <= endTime
    require msg.value
    require minContribAmount <= msg.value
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require stage <= 5
    if not stage:
        if msg.value * rate:
            require msg.value * rate
            require 50 * msg.value * rate / msg.value * rate == 50
        require (msg.value * rate) + (50 * msg.value * rate / 100) >= msg.value * rate
        call multisigAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require stage <= 5
        if not stage:
            require soldTokenInPresale + (msg.value * rate) + (50 * msg.value * rate / 100) <= presaleCap
            require soldTokenInPresale + (msg.value * rate) + (50 * msg.value * rate / 100) >= soldTokenInPresale
            soldTokenInPresale = soldTokenInPresale + (msg.value * rate) + (50 * msg.value * rate / 100)
        else:
            require soldTokenInPublicsale + (msg.value * rate) + (50 * msg.value * rate / 100) <= publicSaleCap
            if not investedAmountOf[address(arg1)]:
                investorCount++
            require investedAmountOf[address(arg1)] + msg.value >= investedAmountOf[address(arg1)]
            investedAmountOf[address(arg1)] += msg.value
            require fundRaisedDuringPublicSale + msg.value >= fundRaisedDuringPublicSale
            fundRaisedDuringPublicSale += msg.value
            require soldTokenInPublicsale + (msg.value * rate) + (50 * msg.value * rate / 100) >= soldTokenInPublicsale
            soldTokenInPublicsale = soldTokenInPublicsale + (msg.value * rate) + (50 * msg.value * rate / 100)
        require (msg.value * rate) + (50 * msg.value * rate / 100) <= balanceOf[stor11]
        balanceOf[stor11] = balanceOf[stor11] - (msg.value * rate) - (50 * msg.value * rate / 100)
        require balanceOf[address(arg1)] + (msg.value * rate) + (50 * msg.value * rate / 100) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate) + (50 * msg.value * rate / 100)
        emit TokenPurchase(msg.value, (msg.value * rate) + (50 * msg.value * rate / 100), msg.sender, arg1);
    else:
        if 1000 * block.timestamp <= startTime + (168000 * 24 * 3600):
            if msg.value * rate:
                require msg.value * rate
                require 25 * msg.value * rate / msg.value * rate == 25
            require (msg.value * rate) + (25 * msg.value * rate / 100) >= msg.value * rate
            call multisigAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require stage <= 5
            if not stage:
                require soldTokenInPresale + (msg.value * rate) + (25 * msg.value * rate / 100) <= presaleCap
                require soldTokenInPresale + (msg.value * rate) + (25 * msg.value * rate / 100) >= soldTokenInPresale
                soldTokenInPresale = soldTokenInPresale + (msg.value * rate) + (25 * msg.value * rate / 100)
            else:
                require soldTokenInPublicsale + (msg.value * rate) + (25 * msg.value * rate / 100) <= publicSaleCap
                if not investedAmountOf[address(arg1)]:
                    investorCount++
                require investedAmountOf[address(arg1)] + msg.value >= investedAmountOf[address(arg1)]
                investedAmountOf[address(arg1)] += msg.value
                require fundRaisedDuringPublicSale + msg.value >= fundRaisedDuringPublicSale
                fundRaisedDuringPublicSale += msg.value
                require soldTokenInPublicsale + (msg.value * rate) + (25 * msg.value * rate / 100) >= soldTokenInPublicsale
                soldTokenInPublicsale = soldTokenInPublicsale + (msg.value * rate) + (25 * msg.value * rate / 100)
            require (msg.value * rate) + (25 * msg.value * rate / 100) <= balanceOf[stor11]
            balanceOf[stor11] = balanceOf[stor11] - (msg.value * rate) - (25 * msg.value * rate / 100)
            require balanceOf[address(arg1)] + (msg.value * rate) + (25 * msg.value * rate / 100) >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate) + (25 * msg.value * rate / 100)
            emit TokenPurchase(msg.value, (msg.value * rate) + (25 * msg.value * rate / 100), msg.sender, arg1);
        else:
            if 1000 * block.timestamp <= startTime + (336000 * 24 * 3600):
                if msg.value * rate:
                    require msg.value * rate
                    require 20 * msg.value * rate / msg.value * rate == 20
                require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                call multisigAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require stage <= 5
                if not stage:
                    require soldTokenInPresale + (msg.value * rate) + (20 * msg.value * rate / 100) <= presaleCap
                    require soldTokenInPresale + (msg.value * rate) + (20 * msg.value * rate / 100) >= soldTokenInPresale
                    soldTokenInPresale = soldTokenInPresale + (msg.value * rate) + (20 * msg.value * rate / 100)
                else:
                    require soldTokenInPublicsale + (msg.value * rate) + (20 * msg.value * rate / 100) <= publicSaleCap
                    if not investedAmountOf[address(arg1)]:
                        investorCount++
                    require investedAmountOf[address(arg1)] + msg.value >= investedAmountOf[address(arg1)]
                    investedAmountOf[address(arg1)] += msg.value
                    require fundRaisedDuringPublicSale + msg.value >= fundRaisedDuringPublicSale
                    fundRaisedDuringPublicSale += msg.value
                    require soldTokenInPublicsale + (msg.value * rate) + (20 * msg.value * rate / 100) >= soldTokenInPublicsale
                    soldTokenInPublicsale = soldTokenInPublicsale + (msg.value * rate) + (20 * msg.value * rate / 100)
                require (msg.value * rate) + (20 * msg.value * rate / 100) <= balanceOf[stor11]
                balanceOf[stor11] = balanceOf[stor11] - (msg.value * rate) - (20 * msg.value * rate / 100)
                require balanceOf[address(arg1)] + (msg.value * rate) + (20 * msg.value * rate / 100) >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate) + (20 * msg.value * rate / 100)
                emit TokenPurchase(msg.value, (msg.value * rate) + (20 * msg.value * rate / 100), msg.sender, arg1);
            else:
                if 1000 * block.timestamp <= startTime + (140 * 3600 * 24 * 3600):
                    if msg.value * rate:
                        require msg.value * rate
                        require 10 * msg.value * rate / msg.value * rate == 10
                    require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require stage <= 5
                    if not stage:
                        require soldTokenInPresale + (msg.value * rate) + (10 * msg.value * rate / 100) <= presaleCap
                        require soldTokenInPresale + (msg.value * rate) + (10 * msg.value * rate / 100) >= soldTokenInPresale
                        soldTokenInPresale = soldTokenInPresale + (msg.value * rate) + (10 * msg.value * rate / 100)
                    else:
                        require soldTokenInPublicsale + (msg.value * rate) + (10 * msg.value * rate / 100) <= publicSaleCap
                        if not investedAmountOf[address(arg1)]:
                            investorCount++
                        require investedAmountOf[address(arg1)] + msg.value >= investedAmountOf[address(arg1)]
                        investedAmountOf[address(arg1)] += msg.value
                        require fundRaisedDuringPublicSale + msg.value >= fundRaisedDuringPublicSale
                        fundRaisedDuringPublicSale += msg.value
                        require soldTokenInPublicsale + (msg.value * rate) + (10 * msg.value * rate / 100) >= soldTokenInPublicsale
                        soldTokenInPublicsale = soldTokenInPublicsale + (msg.value * rate) + (10 * msg.value * rate / 100)
                    require (msg.value * rate) + (10 * msg.value * rate / 100) <= balanceOf[stor11]
                    balanceOf[stor11] = balanceOf[stor11] - (msg.value * rate) - (10 * msg.value * rate / 100)
                    require balanceOf[address(arg1)] + (msg.value * rate) + (10 * msg.value * rate / 100) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate) + (10 * msg.value * rate / 100)
                    emit TokenPurchase(msg.value, (msg.value * rate) + (10 * msg.value * rate / 100), msg.sender, arg1);
                else:
                    if 1000 * block.timestamp > startTime + (672000 * 24 * 3600):
                        if msg.value * rate:
                            require msg.value * rate
                            require not 0 / msg.value * rate
                        require msg.value * rate >= msg.value * rate
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require stage <= 5
                        if not stage:
                            require soldTokenInPresale + (msg.value * rate) <= presaleCap
                            require soldTokenInPresale + (msg.value * rate) >= soldTokenInPresale
                            soldTokenInPresale += msg.value * rate
                        else:
                            require soldTokenInPublicsale + (msg.value * rate) <= publicSaleCap
                            if not investedAmountOf[address(arg1)]:
                                investorCount++
                            require investedAmountOf[address(arg1)] + msg.value >= investedAmountOf[address(arg1)]
                            investedAmountOf[address(arg1)] += msg.value
                            require fundRaisedDuringPublicSale + msg.value >= fundRaisedDuringPublicSale
                            fundRaisedDuringPublicSale += msg.value
                            require soldTokenInPublicsale + (msg.value * rate) >= soldTokenInPublicsale
                            soldTokenInPublicsale += msg.value * rate
                        require msg.value * rate <= balanceOf[stor11]
                        balanceOf[stor11] += -1 * msg.value * rate
                        require balanceOf[address(arg1)] + (msg.value * rate) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += msg.value * rate
                        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
                    else:
                        if msg.value * rate:
                            require msg.value * rate
                            require 5 * msg.value * rate / msg.value * rate == 5
                        require (msg.value * rate) + (5 * msg.value * rate / 100) >= msg.value * rate
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require stage <= 5
                        if not stage:
                            require soldTokenInPresale + (msg.value * rate) + (5 * msg.value * rate / 100) <= presaleCap
                            require soldTokenInPresale + (msg.value * rate) + (5 * msg.value * rate / 100) >= soldTokenInPresale
                            soldTokenInPresale = soldTokenInPresale + (msg.value * rate) + (5 * msg.value * rate / 100)
                        else:
                            require soldTokenInPublicsale + (msg.value * rate) + (5 * msg.value * rate / 100) <= publicSaleCap
                            if not investedAmountOf[address(arg1)]:
                                investorCount++
                            require investedAmountOf[address(arg1)] + msg.value >= investedAmountOf[address(arg1)]
                            investedAmountOf[address(arg1)] += msg.value
                            require fundRaisedDuringPublicSale + msg.value >= fundRaisedDuringPublicSale
                            fundRaisedDuringPublicSale += msg.value
                            require soldTokenInPublicsale + (msg.value * rate) + (5 * msg.value * rate / 100) >= soldTokenInPublicsale
                            soldTokenInPublicsale = soldTokenInPublicsale + (msg.value * rate) + (5 * msg.value * rate / 100)
                        require (msg.value * rate) + (5 * msg.value * rate / 100) <= balanceOf[stor11]
                        balanceOf[stor11] = balanceOf[stor11] - (msg.value * rate) - (5 * msg.value * rate / 100)
                        require balanceOf[address(arg1)] + (msg.value * rate) + (5 * msg.value * rate / 100) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate) + (5 * msg.value * rate / 100)
                        emit TokenPurchase(msg.value, (msg.value * rate) + (5 * msg.value * rate / 100), msg.sender, arg1);
}

function _fallback() payable {
    require msg.sender
    require 1000 * block.timestamp >= startTime
    require 1000 * block.timestamp <= endTime
    require msg.value
    require minContribAmount <= msg.value
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require stage <= 5
    if not stage:
        if msg.value * rate:
            require msg.value * rate
            require 50 * msg.value * rate / msg.value * rate == 50
        require (msg.value * rate) + (50 * msg.value * rate / 100) >= msg.value * rate
        call multisigAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require stage <= 5
        if not stage:
            require soldTokenInPresale + (msg.value * rate) + (50 * msg.value * rate / 100) <= presaleCap
            require soldTokenInPresale + (msg.value * rate) + (50 * msg.value * rate / 100) >= soldTokenInPresale
            soldTokenInPresale = soldTokenInPresale + (msg.value * rate) + (50 * msg.value * rate / 100)
        else:
            require soldTokenInPublicsale + (msg.value * rate) + (50 * msg.value * rate / 100) <= publicSaleCap
            if not investedAmountOf[address(msg.sender)]:
                investorCount++
            require investedAmountOf[address(msg.sender)] + msg.value >= investedAmountOf[address(msg.sender)]
            investedAmountOf[address(msg.sender)] += msg.value
            require fundRaisedDuringPublicSale + msg.value >= fundRaisedDuringPublicSale
            fundRaisedDuringPublicSale += msg.value
            require soldTokenInPublicsale + (msg.value * rate) + (50 * msg.value * rate / 100) >= soldTokenInPublicsale
            soldTokenInPublicsale = soldTokenInPublicsale + (msg.value * rate) + (50 * msg.value * rate / 100)
        require (msg.value * rate) + (50 * msg.value * rate / 100) <= balanceOf[stor11]
        balanceOf[stor11] = balanceOf[stor11] - (msg.value * rate) - (50 * msg.value * rate / 100)
        require balanceOf[address(msg.sender)] + (msg.value * rate) + (50 * msg.value * rate / 100) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate) + (50 * msg.value * rate / 100)
        emit TokenPurchase(msg.value, (msg.value * rate) + (50 * msg.value * rate / 100), msg.sender, msg.sender);
    else:
        if 1000 * block.timestamp <= startTime + (168000 * 24 * 3600):
            if msg.value * rate:
                require msg.value * rate
                require 25 * msg.value * rate / msg.value * rate == 25
            require (msg.value * rate) + (25 * msg.value * rate / 100) >= msg.value * rate
            call multisigAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require stage <= 5
            if not stage:
                require soldTokenInPresale + (msg.value * rate) + (25 * msg.value * rate / 100) <= presaleCap
                require soldTokenInPresale + (msg.value * rate) + (25 * msg.value * rate / 100) >= soldTokenInPresale
                soldTokenInPresale = soldTokenInPresale + (msg.value * rate) + (25 * msg.value * rate / 100)
            else:
                require soldTokenInPublicsale + (msg.value * rate) + (25 * msg.value * rate / 100) <= publicSaleCap
                if not investedAmountOf[address(msg.sender)]:
                    investorCount++
                require investedAmountOf[address(msg.sender)] + msg.value >= investedAmountOf[address(msg.sender)]
                investedAmountOf[address(msg.sender)] += msg.value
                require fundRaisedDuringPublicSale + msg.value >= fundRaisedDuringPublicSale
                fundRaisedDuringPublicSale += msg.value
                require soldTokenInPublicsale + (msg.value * rate) + (25 * msg.value * rate / 100) >= soldTokenInPublicsale
                soldTokenInPublicsale = soldTokenInPublicsale + (msg.value * rate) + (25 * msg.value * rate / 100)
            require (msg.value * rate) + (25 * msg.value * rate / 100) <= balanceOf[stor11]
            balanceOf[stor11] = balanceOf[stor11] - (msg.value * rate) - (25 * msg.value * rate / 100)
            require balanceOf[address(msg.sender)] + (msg.value * rate) + (25 * msg.value * rate / 100) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate) + (25 * msg.value * rate / 100)
            emit TokenPurchase(msg.value, (msg.value * rate) + (25 * msg.value * rate / 100), msg.sender, msg.sender);
        else:
            if 1000 * block.timestamp <= startTime + (336000 * 24 * 3600):
                if msg.value * rate:
                    require msg.value * rate
                    require 20 * msg.value * rate / msg.value * rate == 20
                require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                call multisigAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require stage <= 5
                if not stage:
                    require soldTokenInPresale + (msg.value * rate) + (20 * msg.value * rate / 100) <= presaleCap
                    require soldTokenInPresale + (msg.value * rate) + (20 * msg.value * rate / 100) >= soldTokenInPresale
                    soldTokenInPresale = soldTokenInPresale + (msg.value * rate) + (20 * msg.value * rate / 100)
                else:
                    require soldTokenInPublicsale + (msg.value * rate) + (20 * msg.value * rate / 100) <= publicSaleCap
                    if not investedAmountOf[address(msg.sender)]:
                        investorCount++
                    require investedAmountOf[address(msg.sender)] + msg.value >= investedAmountOf[address(msg.sender)]
                    investedAmountOf[address(msg.sender)] += msg.value
                    require fundRaisedDuringPublicSale + msg.value >= fundRaisedDuringPublicSale
                    fundRaisedDuringPublicSale += msg.value
                    require soldTokenInPublicsale + (msg.value * rate) + (20 * msg.value * rate / 100) >= soldTokenInPublicsale
                    soldTokenInPublicsale = soldTokenInPublicsale + (msg.value * rate) + (20 * msg.value * rate / 100)
                require (msg.value * rate) + (20 * msg.value * rate / 100) <= balanceOf[stor11]
                balanceOf[stor11] = balanceOf[stor11] - (msg.value * rate) - (20 * msg.value * rate / 100)
                require balanceOf[address(msg.sender)] + (msg.value * rate) + (20 * msg.value * rate / 100) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate) + (20 * msg.value * rate / 100)
                emit TokenPurchase(msg.value, (msg.value * rate) + (20 * msg.value * rate / 100), msg.sender, msg.sender);
            else:
                if 1000 * block.timestamp <= startTime + (140 * 3600 * 24 * 3600):
                    if msg.value * rate:
                        require msg.value * rate
                        require 10 * msg.value * rate / msg.value * rate == 10
                    require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require stage <= 5
                    if not stage:
                        require soldTokenInPresale + (msg.value * rate) + (10 * msg.value * rate / 100) <= presaleCap
                        require soldTokenInPresale + (msg.value * rate) + (10 * msg.value * rate / 100) >= soldTokenInPresale
                        soldTokenInPresale = soldTokenInPresale + (msg.value * rate) + (10 * msg.value * rate / 100)
                    else:
                        require soldTokenInPublicsale + (msg.value * rate) + (10 * msg.value * rate / 100) <= publicSaleCap
                        if not investedAmountOf[address(msg.sender)]:
                            investorCount++
                        require investedAmountOf[address(msg.sender)] + msg.value >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += msg.value
                        require fundRaisedDuringPublicSale + msg.value >= fundRaisedDuringPublicSale
                        fundRaisedDuringPublicSale += msg.value
                        require soldTokenInPublicsale + (msg.value * rate) + (10 * msg.value * rate / 100) >= soldTokenInPublicsale
                        soldTokenInPublicsale = soldTokenInPublicsale + (msg.value * rate) + (10 * msg.value * rate / 100)
                    require (msg.value * rate) + (10 * msg.value * rate / 100) <= balanceOf[stor11]
                    balanceOf[stor11] = balanceOf[stor11] - (msg.value * rate) - (10 * msg.value * rate / 100)
                    require balanceOf[address(msg.sender)] + (msg.value * rate) + (10 * msg.value * rate / 100) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate) + (10 * msg.value * rate / 100)
                    emit TokenPurchase(msg.value, (msg.value * rate) + (10 * msg.value * rate / 100), msg.sender, msg.sender);
                else:
                    if 1000 * block.timestamp > startTime + (672000 * 24 * 3600):
                        if msg.value * rate:
                            require msg.value * rate
                            require not 0 / msg.value * rate
                        require msg.value * rate >= msg.value * rate
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require stage <= 5
                        if not stage:
                            require soldTokenInPresale + (msg.value * rate) <= presaleCap
                            require soldTokenInPresale + (msg.value * rate) >= soldTokenInPresale
                            soldTokenInPresale += msg.value * rate
                        else:
                            require soldTokenInPublicsale + (msg.value * rate) <= publicSaleCap
                            if not investedAmountOf[address(msg.sender)]:
                                investorCount++
                            require investedAmountOf[address(msg.sender)] + msg.value >= investedAmountOf[address(msg.sender)]
                            investedAmountOf[address(msg.sender)] += msg.value
                            require fundRaisedDuringPublicSale + msg.value >= fundRaisedDuringPublicSale
                            fundRaisedDuringPublicSale += msg.value
                            require soldTokenInPublicsale + (msg.value * rate) >= soldTokenInPublicsale
                            soldTokenInPublicsale += msg.value * rate
                        require msg.value * rate <= balanceOf[stor11]
                        balanceOf[stor11] += -1 * msg.value * rate
                        require balanceOf[address(msg.sender)] + (msg.value * rate) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value * rate
                        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                    else:
                        if msg.value * rate:
                            require msg.value * rate
                            require 5 * msg.value * rate / msg.value * rate == 5
                        require (msg.value * rate) + (5 * msg.value * rate / 100) >= msg.value * rate
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require stage <= 5
                        if not stage:
                            require soldTokenInPresale + (msg.value * rate) + (5 * msg.value * rate / 100) <= presaleCap
                            require soldTokenInPresale + (msg.value * rate) + (5 * msg.value * rate / 100) >= soldTokenInPresale
                            soldTokenInPresale = soldTokenInPresale + (msg.value * rate) + (5 * msg.value * rate / 100)
                        else:
                            require soldTokenInPublicsale + (msg.value * rate) + (5 * msg.value * rate / 100) <= publicSaleCap
                            if not investedAmountOf[address(msg.sender)]:
                                investorCount++
                            require investedAmountOf[address(msg.sender)] + msg.value >= investedAmountOf[address(msg.sender)]
                            investedAmountOf[address(msg.sender)] += msg.value
                            require fundRaisedDuringPublicSale + msg.value >= fundRaisedDuringPublicSale
                            fundRaisedDuringPublicSale += msg.value
                            require soldTokenInPublicsale + (msg.value * rate) + (5 * msg.value * rate / 100) >= soldTokenInPublicsale
                            soldTokenInPublicsale = soldTokenInPublicsale + (msg.value * rate) + (5 * msg.value * rate / 100)
                        require (msg.value * rate) + (5 * msg.value * rate / 100) <= balanceOf[stor11]
                        balanceOf[stor11] = balanceOf[stor11] - (msg.value * rate) - (5 * msg.value * rate / 100)
                        require balanceOf[address(msg.sender)] + (msg.value * rate) + (5 * msg.value * rate / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate) + (5 * msg.value * rate / 100)
                        emit TokenPurchase(msg.value, (msg.value * rate) + (5 * msg.value * rate / 100), msg.sender, msg.sender);
}



}
