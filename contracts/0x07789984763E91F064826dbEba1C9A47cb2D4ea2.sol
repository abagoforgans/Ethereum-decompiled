contract main {


// =======================  Init code  ======================


uint8 stor3; offset 160
address stor3;
uint8 stor6;
address stor6; offset 8
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint8 stor14;

function _fallback() payable {
    uint8(stor3.field_160) = 0
    uint8(stor6.field_0) = 0
    stor11 = 0
    stor12 = 0
    stor13 = 0
    stor14 = 0
    require not msg.value
    address(stor3.field_0) = msg.sender
    address(stor6.field_8) = msg.sender
    return code.data[140 len 7975]
}



// =====================  Runtime code  =====================


const name = 'EvaCoin'

const decimals = 18

const symbol = 'EVA'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
address owner;
mapping of uint256 paymentsOf;
uint256 totalPayments;
uint8 stor6;
address keeperAddress; offset 8
uint256 raisedPreSaleUSD;
uint256 raisedSale1USD;
uint256 raisedSale2USD;
uint256 payedDividendsUSD;
uint256 totalSupplyPreSale;
uint256 totalSupplySale1;
uint256 totalSupplySale2;
uint8 stage;
mapping of uint256 stor15;
uint256 totalDividendsPerCoin;
uint256 etherBalance;
mapping of uint256 stor18;
mapping of uint8 stor19;

function totalPayments() {
    return totalPayments
}

function mintingFinished() {
    return bool(stor3)
}

function raisedSale2USD() {
    return raisedSale2USD
}

function totalSupply() {
    return totalSupply
}

function paymentsOf() {
    return paymentsOf[address(msg.sender)]
}

function transferAllowed() {
    return bool(stor6)
}

function totalSupplySale1() {
    return totalSupplySale1
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function totalSupplyPreSale() {
    return totalSupplyPreSale
}

function keeper() {
    return keeperAddress
}

function etherBalance() {
    return etherBalance
}

function stage() {
    require stage <= 3
    return stage
}

function raisedPreSaleUSD() {
    return raisedPreSaleUSD
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function payedDividendsUSD() {
    return payedDividendsUSD
}

function payments(address arg1) {
    return paymentsOf[arg1]
}

function raisedSale1USD() {
    return raisedSale1USD
}

function totalDividendsPerCoin() {
    return totalDividendsPerCoin
}

function totalSupplySale2() {
    return totalSupplySale2
}

function _fallback() payable {
    revert
}

function canStartSale2() {
    return payedDividendsUSD >= raisedSale1USD + raisedPreSaleUSD
}

function allowTransfer() {
    require owner == msg.sender
    stor6 = 1
    emit TransferAllowed(1);
}

function sale2Started() {
    require owner == msg.sender
    totalSupplySale1 = totalSupply
    stage = 2
}

function sale2Stopped() {
    require owner == msg.sender
    totalSupplySale2 = totalSupply
    stage = 3
}

function sale1Started() {
    require owner == msg.sender
    totalSupplyPreSale = totalSupply
    stage = 1
}

function finishMinting() {
    require owner == msg.sender
    require not stor3
    stor3 = 1
    emit MintFinished()
    return 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdraw() {
    require owner == msg.sender
    if eth.balance(this.address) > etherBalance:
        call owner with:
           value eth.balance(this.address) - etherBalance wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function sendDividends(uint256 arg1) payable {
    require keeperAddress == msg.sender
    require totalSupply > 0
    require totalSupply
    totalDividendsPerCoin += 10 * 10^18 * msg.value / totalSupply
    etherBalance += msg.value
    payedDividendsUSD += msg.value * arg1 / 10^18
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function raisedUSD(uint256 arg1) {
    require owner == msg.sender
    require stage <= 3
    if not stage:
        raisedPreSaleUSD += arg1
    else:
        require stage <= 3
        if stage == 1:
            raisedSale1USD += arg1
        else:
            require stage <= 3
            if stage == 2:
                raisedSale2USD += arg1
}

function checkBalance() {
    if totalDividendsPerCoin != 0:
        if (totalDividendsPerCoin * balanceOf[address(msg.sender)]) - (stor15[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18 > 0:
            if etherBalance >= (totalDividendsPerCoin * balanceOf[address(msg.sender)]) - (stor15[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18:
                etherBalance -= (totalDividendsPerCoin * balanceOf[address(msg.sender)]) - (stor15[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18
                stor15[address(msg.sender)] = totalDividendsPerCoin
                require ((totalDividendsPerCoin * balanceOf[address(msg.sender)]) - (stor15[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18) + paymentsOf[address(msg.sender)] >= paymentsOf[address(msg.sender)]
                paymentsOf[address(msg.sender)] += (totalDividendsPerCoin * balanceOf[address(msg.sender)]) - (stor15[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18
                require ((totalDividendsPerCoin * balanceOf[address(msg.sender)]) - (stor15[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18) + totalPayments >= totalPayments
                totalPayments += (totalDividendsPerCoin * balanceOf[address(msg.sender)]) - (stor15[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18
        stor15[address(msg.sender)] = totalDividendsPerCoin
    require stage <= 3
    if stage != 3:
        require stage <= 3
        if stage != 3:
            stor18[address(msg.sender)] = balanceOf[address(msg.sender)]
    else:
        if stor19[address(msg.sender)]:
            require stage <= 3
            if stage != 3:
                stor18[address(msg.sender)] = balanceOf[address(msg.sender)]
        else:
            require totalSupplySale1 + totalSupplyPreSale
            if stor18[address(msg.sender)]:
                balanceOf[address(msg.sender)] += stor18[address(msg.sender)] * balanceOf[address(msg.sender)] / totalSupplySale1 + totalSupplyPreSale
            else:
                balanceOf[address(msg.sender)] += balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] / totalSupplySale1 + totalSupplyPreSale
            stor19[address(msg.sender)] = 1
    return balanceOf[address(msg.sender)]
}

function checkPayments() {
    if totalDividendsPerCoin != 0:
        if (totalDividendsPerCoin * balanceOf[address(msg.sender)]) - (stor15[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18 > 0:
            if etherBalance >= (totalDividendsPerCoin * balanceOf[address(msg.sender)]) - (stor15[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18:
                etherBalance -= (totalDividendsPerCoin * balanceOf[address(msg.sender)]) - (stor15[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18
                stor15[address(msg.sender)] = totalDividendsPerCoin
                require ((totalDividendsPerCoin * balanceOf[address(msg.sender)]) - (stor15[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18) + paymentsOf[address(msg.sender)] >= paymentsOf[address(msg.sender)]
                paymentsOf[address(msg.sender)] += (totalDividendsPerCoin * balanceOf[address(msg.sender)]) - (stor15[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18
                require ((totalDividendsPerCoin * balanceOf[address(msg.sender)]) - (stor15[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18) + totalPayments >= totalPayments
                totalPayments += (totalDividendsPerCoin * balanceOf[address(msg.sender)]) - (stor15[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18
        stor15[address(msg.sender)] = totalDividendsPerCoin
    require stage <= 3
    if stage != 3:
        require stage <= 3
        if stage != 3:
            stor18[address(msg.sender)] = balanceOf[address(msg.sender)]
    else:
        if stor19[address(msg.sender)]:
            require stage <= 3
            if stage != 3:
                stor18[address(msg.sender)] = balanceOf[address(msg.sender)]
        else:
            require totalSupplySale1 + totalSupplyPreSale
            if stor18[address(msg.sender)]:
                balanceOf[address(msg.sender)] += stor18[address(msg.sender)] * balanceOf[address(msg.sender)] / totalSupplySale1 + totalSupplyPreSale
            else:
                balanceOf[address(msg.sender)] += balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] / totalSupplySale1 + totalSupplyPreSale
            stor19[address(msg.sender)] = 1
    return paymentsOf[address(msg.sender)]
}

function transfer(address arg1, uint256 arg2) {
    require stor6
    if totalDividendsPerCoin != 0:
        if (totalDividendsPerCoin * balanceOf[address(arg1)]) - (stor15[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18 > 0:
            if etherBalance >= (totalDividendsPerCoin * balanceOf[address(arg1)]) - (stor15[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18:
                etherBalance -= (totalDividendsPerCoin * balanceOf[address(arg1)]) - (stor15[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18
                stor15[address(arg1)] = totalDividendsPerCoin
                require ((totalDividendsPerCoin * balanceOf[address(arg1)]) - (stor15[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18) + paymentsOf[address(arg1)] >= paymentsOf[address(arg1)]
                paymentsOf[address(arg1)] += (totalDividendsPerCoin * balanceOf[address(arg1)]) - (stor15[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18
                require ((totalDividendsPerCoin * balanceOf[address(arg1)]) - (stor15[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18) + totalPayments >= totalPayments
                totalPayments += (totalDividendsPerCoin * balanceOf[address(arg1)]) - (stor15[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18
        stor15[address(arg1)] = totalDividendsPerCoin
    require stage <= 3
    if stage != 3:
        require stage <= 3
        if stage != 3:
            stor18[address(arg1)] = balanceOf[address(arg1)]
    else:
        if stor19[address(arg1)]:
            require stage <= 3
            if stage != 3:
                stor18[address(arg1)] = balanceOf[address(arg1)]
        else:
            require totalSupplySale1 + totalSupplyPreSale
            if stor18[address(arg1)]:
                balanceOf[address(arg1)] += stor18[address(arg1)] * balanceOf[address(arg1)] / totalSupplySale1 + totalSupplyPreSale
            else:
                balanceOf[address(arg1)] += balanceOf[address(arg1)] * balanceOf[address(arg1)] / totalSupplySale1 + totalSupplyPreSale
            stor19[address(arg1)] = 1
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require owner == msg.sender
    require not stor3
    if totalDividendsPerCoin != 0:
        if (totalDividendsPerCoin * balanceOf[address(arg1)]) - (stor15[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18 > 0:
            if etherBalance >= (totalDividendsPerCoin * balanceOf[address(arg1)]) - (stor15[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18:
                etherBalance -= (totalDividendsPerCoin * balanceOf[address(arg1)]) - (stor15[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18
                stor15[address(arg1)] = totalDividendsPerCoin
                require ((totalDividendsPerCoin * balanceOf[address(arg1)]) - (stor15[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18) + paymentsOf[address(arg1)] >= paymentsOf[address(arg1)]
                paymentsOf[address(arg1)] += (totalDividendsPerCoin * balanceOf[address(arg1)]) - (stor15[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18
                require ((totalDividendsPerCoin * balanceOf[address(arg1)]) - (stor15[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18) + totalPayments >= totalPayments
                totalPayments += (totalDividendsPerCoin * balanceOf[address(arg1)]) - (stor15[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18
        stor15[address(arg1)] = totalDividendsPerCoin
    require stage <= 3
    if stage != 3:
        require stage <= 3
        if stage != 3:
            stor18[address(arg1)] = balanceOf[address(arg1)]
    else:
        if stor19[address(arg1)]:
            require stage <= 3
            if stage != 3:
                stor18[address(arg1)] = balanceOf[address(arg1)]
        else:
            require totalSupplySale1 + totalSupplyPreSale
            if stor18[address(arg1)]:
                balanceOf[address(arg1)] += stor18[address(arg1)] * balanceOf[address(arg1)] / totalSupplySale1 + totalSupplyPreSale
            else:
                balanceOf[address(arg1)] += balanceOf[address(arg1)] * balanceOf[address(arg1)] / totalSupplySale1 + totalSupplyPreSale
            stor19[address(arg1)] = 1
    require owner == msg.sender
    require not stor3
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    require stage <= 3
    if not stage:
        totalSupplyPreSale += arg2
    else:
        require stage <= 3
        if stage == 1:
            totalSupplySale1 += arg2
        else:
            require stage <= 3
            if stage == 2:
                totalSupplySale2 += arg2
    return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require stor6
    if totalDividendsPerCoin != 0:
        if (totalDividendsPerCoin * balanceOf[address(arg1)]) - (stor15[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18 > 0:
            if etherBalance >= (totalDividendsPerCoin * balanceOf[address(arg1)]) - (stor15[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18:
                etherBalance -= (totalDividendsPerCoin * balanceOf[address(arg1)]) - (stor15[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18
                stor15[address(arg1)] = totalDividendsPerCoin
                require ((totalDividendsPerCoin * balanceOf[address(arg1)]) - (stor15[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18) + paymentsOf[address(arg1)] >= paymentsOf[address(arg1)]
                paymentsOf[address(arg1)] += (totalDividendsPerCoin * balanceOf[address(arg1)]) - (stor15[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18
                require ((totalDividendsPerCoin * balanceOf[address(arg1)]) - (stor15[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18) + totalPayments >= totalPayments
                totalPayments += (totalDividendsPerCoin * balanceOf[address(arg1)]) - (stor15[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18
        stor15[address(arg1)] = totalDividendsPerCoin
        if totalDividendsPerCoin != 0:
            if (totalDividendsPerCoin * balanceOf[address(arg2)]) - (stor15[address(arg2)] * balanceOf[address(arg2)]) / 10 * 10^18 > 0:
                if etherBalance >= (totalDividendsPerCoin * balanceOf[address(arg2)]) - (stor15[address(arg2)] * balanceOf[address(arg2)]) / 10 * 10^18:
                    etherBalance -= (totalDividendsPerCoin * balanceOf[address(arg2)]) - (stor15[address(arg2)] * balanceOf[address(arg2)]) / 10 * 10^18
                    stor15[address(arg2)] = totalDividendsPerCoin
                    require ((totalDividendsPerCoin * balanceOf[address(arg2)]) - (stor15[address(arg2)] * balanceOf[address(arg2)]) / 10 * 10^18) + paymentsOf[address(arg2)] >= paymentsOf[address(arg2)]
                    paymentsOf[address(arg2)] += (totalDividendsPerCoin * balanceOf[address(arg2)]) - (stor15[address(arg2)] * balanceOf[address(arg2)]) / 10 * 10^18
                    require ((totalDividendsPerCoin * balanceOf[address(arg2)]) - (stor15[address(arg2)] * balanceOf[address(arg2)]) / 10 * 10^18) + totalPayments >= totalPayments
                    totalPayments += (totalDividendsPerCoin * balanceOf[address(arg2)]) - (stor15[address(arg2)] * balanceOf[address(arg2)]) / 10 * 10^18
            stor15[address(arg2)] = totalDividendsPerCoin
    require stage <= 3
    if stage != 3:
        require stage <= 3
        if stage != 3:
            stor18[address(arg1)] = balanceOf[address(arg1)]
    else:
        if stor19[address(arg1)]:
            require stage <= 3
            if stage != 3:
                stor18[address(arg1)] = balanceOf[address(arg1)]
        else:
            require totalSupplySale1 + totalSupplyPreSale
            if stor18[address(arg1)]:
                balanceOf[address(arg1)] += stor18[address(arg1)] * balanceOf[address(arg1)] / totalSupplySale1 + totalSupplyPreSale
            else:
                balanceOf[address(arg1)] += balanceOf[address(arg1)] * balanceOf[address(arg1)] / totalSupplySale1 + totalSupplyPreSale
            stor19[address(arg1)] = 1
    require stage <= 3
    if stage != 3:
        require stage <= 3
        if stage != 3:
            stor18[address(arg2)] = balanceOf[address(arg2)]
    else:
        if stor19[address(arg2)]:
            require stage <= 3
            if stage != 3:
                stor18[address(arg2)] = balanceOf[address(arg2)]
        else:
            require totalSupplySale1 + totalSupplyPreSale
            if stor18[address(arg2)]:
                balanceOf[address(arg2)] += stor18[address(arg2)] * balanceOf[address(arg2)] / totalSupplySale1 + totalSupplyPreSale
            else:
                balanceOf[address(arg2)] += balanceOf[address(arg2)] * balanceOf[address(arg2)] / totalSupplySale1 + totalSupplyPreSale
            stor19[address(arg2)] = 1
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function withdrawPayments() {
    if 0 == totalDividendsPerCoin:
        if stage <= 3:
            if stage != 3:
                if stage <= 3:
                    if stage != 3:
                        stor18[address(msg.sender)] = balanceOf[address(msg.sender)]
                    require paymentsOf[address(msg.sender)]
                    require eth.balance(this.address) >= paymentsOf[address(msg.sender)]
                    if paymentsOf[address(msg.sender)] <= totalPayments:
                        totalPayments -= paymentsOf[address(msg.sender)]
                        paymentsOf[address(msg.sender)] = 0
                        call msg.sender with:
                           value paymentsOf[address(msg.sender)] wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
            else:
                if stor19[address(msg.sender)]:
                    if stage <= 3:
                        if stage != 3:
                            stor18[address(msg.sender)] = balanceOf[address(msg.sender)]
                        require paymentsOf[address(msg.sender)]
                        require eth.balance(this.address) >= paymentsOf[address(msg.sender)]
                        if paymentsOf[address(msg.sender)] <= totalPayments:
                            totalPayments -= paymentsOf[address(msg.sender)]
                            paymentsOf[address(msg.sender)] = 0
                            call msg.sender with:
                               value paymentsOf[address(msg.sender)] wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
                else:
                    if stor18[address(msg.sender)]:
                        if totalSupplySale1 + totalSupplyPreSale:
                            balanceOf[address(msg.sender)] += stor18[address(msg.sender)] * balanceOf[address(msg.sender)] / totalSupplySale1 + totalSupplyPreSale
                            stor19[address(msg.sender)] = 1
                            require paymentsOf[address(msg.sender)]
                            require eth.balance(this.address) >= paymentsOf[address(msg.sender)]
                            if paymentsOf[address(msg.sender)] <= totalPayments:
                                totalPayments -= paymentsOf[address(msg.sender)]
                                paymentsOf[address(msg.sender)] = 0
                                call msg.sender with:
                                   value paymentsOf[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
                    else:
                        if totalSupplySale1 + totalSupplyPreSale:
                            balanceOf[address(msg.sender)] += balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] / totalSupplySale1 + totalSupplyPreSale
                            stor19[address(msg.sender)] = 1
                            require paymentsOf[address(msg.sender)]
                            require eth.balance(this.address) >= paymentsOf[address(msg.sender)]
                            if paymentsOf[address(msg.sender)] <= totalPayments:
                                totalPayments -= paymentsOf[address(msg.sender)]
                                paymentsOf[address(msg.sender)] = 0
                                call msg.sender with:
                                   value paymentsOf[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
    else:
        if (totalDividendsPerCoin * balanceOf[address(msg.sender)]) - (stor15[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18 <= 0:
            stor15[address(msg.sender)] = totalDividendsPerCoin
            if stage <= 3:
                if stage != 3:
                    if stage <= 3:
                        if stage != 3:
                            stor18[address(msg.sender)] = balanceOf[address(msg.sender)]
                        require paymentsOf[address(msg.sender)]
                        require eth.balance(this.address) >= paymentsOf[address(msg.sender)]
                        if paymentsOf[address(msg.sender)] <= totalPayments:
                            totalPayments -= paymentsOf[address(msg.sender)]
                            paymentsOf[address(msg.sender)] = 0
                            call msg.sender with:
                               value paymentsOf[address(msg.sender)] wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
                else:
                    if stor19[address(msg.sender)]:
                        if stage <= 3:
                            if stage != 3:
                                stor18[address(msg.sender)] = balanceOf[address(msg.sender)]
                            require paymentsOf[address(msg.sender)]
                            require eth.balance(this.address) >= paymentsOf[address(msg.sender)]
                            if paymentsOf[address(msg.sender)] <= totalPayments:
                                totalPayments -= paymentsOf[address(msg.sender)]
                                paymentsOf[address(msg.sender)] = 0
                                call msg.sender with:
                                   value paymentsOf[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
                    else:
                        if stor18[address(msg.sender)]:
                            if totalSupplySale1 + totalSupplyPreSale:
                                balanceOf[address(msg.sender)] += stor18[address(msg.sender)] * balanceOf[address(msg.sender)] / totalSupplySale1 + totalSupplyPreSale
                                stor19[address(msg.sender)] = 1
                                require paymentsOf[address(msg.sender)]
                                require eth.balance(this.address) >= paymentsOf[address(msg.sender)]
                                if paymentsOf[address(msg.sender)] <= totalPayments:
                                    totalPayments -= paymentsOf[address(msg.sender)]
                                    paymentsOf[address(msg.sender)] = 0
                                    call msg.sender with:
                                       value paymentsOf[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
                        else:
                            if totalSupplySale1 + totalSupplyPreSale:
                                balanceOf[address(msg.sender)] += balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] / totalSupplySale1 + totalSupplyPreSale
                                stor19[address(msg.sender)] = 1
                                require paymentsOf[address(msg.sender)]
                                require eth.balance(this.address) >= paymentsOf[address(msg.sender)]
                                if paymentsOf[address(msg.sender)] <= totalPayments:
                                    totalPayments -= paymentsOf[address(msg.sender)]
                                    paymentsOf[address(msg.sender)] = 0
                                    call msg.sender with:
                                       value paymentsOf[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
        else:
            if etherBalance < (totalDividendsPerCoin * balanceOf[address(msg.sender)]) - (stor15[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18:
                stor15[address(msg.sender)] = totalDividendsPerCoin
                if stage <= 3:
                    if stage != 3:
                        if stage <= 3:
                            if stage != 3:
                                stor18[address(msg.sender)] = balanceOf[address(msg.sender)]
                            require paymentsOf[address(msg.sender)]
                            require eth.balance(this.address) >= paymentsOf[address(msg.sender)]
                            if paymentsOf[address(msg.sender)] <= totalPayments:
                                totalPayments -= paymentsOf[address(msg.sender)]
                                paymentsOf[address(msg.sender)] = 0
                                call msg.sender with:
                                   value paymentsOf[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
                    else:
                        if stor19[address(msg.sender)]:
                            if stage <= 3:
                                if stage != 3:
                                    stor18[address(msg.sender)] = balanceOf[address(msg.sender)]
                                require paymentsOf[address(msg.sender)]
                                require eth.balance(this.address) >= paymentsOf[address(msg.sender)]
                                if paymentsOf[address(msg.sender)] <= totalPayments:
                                    totalPayments -= paymentsOf[address(msg.sender)]
                                    paymentsOf[address(msg.sender)] = 0
                                    call msg.sender with:
                                       value paymentsOf[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
                        else:
                            if stor18[address(msg.sender)]:
                                if totalSupplySale1 + totalSupplyPreSale:
                                    balanceOf[address(msg.sender)] += stor18[address(msg.sender)] * balanceOf[address(msg.sender)] / totalSupplySale1 + totalSupplyPreSale
                                    stor19[address(msg.sender)] = 1
                                    require paymentsOf[address(msg.sender)]
                                    require eth.balance(this.address) >= paymentsOf[address(msg.sender)]
                                    if paymentsOf[address(msg.sender)] <= totalPayments:
                                        totalPayments -= paymentsOf[address(msg.sender)]
                                        paymentsOf[address(msg.sender)] = 0
                                        call msg.sender with:
                                           value paymentsOf[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
                            else:
                                if totalSupplySale1 + totalSupplyPreSale:
                                    balanceOf[address(msg.sender)] += balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] / totalSupplySale1 + totalSupplyPreSale
                                    stor19[address(msg.sender)] = 1
                                    require paymentsOf[address(msg.sender)]
                                    require eth.balance(this.address) >= paymentsOf[address(msg.sender)]
                                    if paymentsOf[address(msg.sender)] <= totalPayments:
                                        totalPayments -= paymentsOf[address(msg.sender)]
                                        paymentsOf[address(msg.sender)] = 0
                                        call msg.sender with:
                                           value paymentsOf[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
            else:
                etherBalance -= (totalDividendsPerCoin * balanceOf[address(msg.sender)]) - (stor15[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18
                stor15[address(msg.sender)] = totalDividendsPerCoin
                if ((totalDividendsPerCoin * balanceOf[address(msg.sender)]) - (stor15[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18) + paymentsOf[address(msg.sender)] >= paymentsOf[address(msg.sender)]:
                    paymentsOf[address(msg.sender)] += (totalDividendsPerCoin * balanceOf[address(msg.sender)]) - (stor15[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18
                    if ((totalDividendsPerCoin * balanceOf[address(msg.sender)]) - (stor15[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18) + totalPayments >= totalPayments:
                        totalPayments += (totalDividendsPerCoin * balanceOf[address(msg.sender)]) - (stor15[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18
                        stor15[address(msg.sender)] = totalDividendsPerCoin
                        if stage <= 3:
                            if stage != 3:
                                if stage <= 3:
                                    if stage != 3:
                                        stor18[address(msg.sender)] = balanceOf[address(msg.sender)]
                                    require paymentsOf[address(msg.sender)]
                                    require eth.balance(this.address) >= paymentsOf[address(msg.sender)]
                                    if paymentsOf[address(msg.sender)] <= totalPayments:
                                        totalPayments -= paymentsOf[address(msg.sender)]
                                        paymentsOf[address(msg.sender)] = 0
                                        call msg.sender with:
                                           value paymentsOf[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
                            else:
                                if stor19[address(msg.sender)]:
                                    if stage <= 3:
                                        if stage != 3:
                                            stor18[address(msg.sender)] = balanceOf[address(msg.sender)]
                                        require paymentsOf[address(msg.sender)]
                                        require eth.balance(this.address) >= paymentsOf[address(msg.sender)]
                                        if paymentsOf[address(msg.sender)] <= totalPayments:
                                            totalPayments -= paymentsOf[address(msg.sender)]
                                            paymentsOf[address(msg.sender)] = 0
                                            call msg.sender with:
                                               value paymentsOf[address(msg.sender)] wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                else:
                                    if stor18[address(msg.sender)]:
                                        if totalSupplySale1 + totalSupplyPreSale:
                                            balanceOf[address(msg.sender)] += stor18[address(msg.sender)] * balanceOf[address(msg.sender)] / totalSupplySale1 + totalSupplyPreSale
                                            stor19[address(msg.sender)] = 1
                                            require paymentsOf[address(msg.sender)]
                                            require eth.balance(this.address) >= paymentsOf[address(msg.sender)]
                                            if paymentsOf[address(msg.sender)] <= totalPayments:
                                                totalPayments -= paymentsOf[address(msg.sender)]
                                                paymentsOf[address(msg.sender)] = 0
                                                call msg.sender with:
                                                   value paymentsOf[address(msg.sender)] wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                    else:
                                        if totalSupplySale1 + totalSupplyPreSale:
                                            balanceOf[address(msg.sender)] += balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] / totalSupplySale1 + totalSupplyPreSale
                                            stor19[address(msg.sender)] = 1
                                            require paymentsOf[address(msg.sender)]
                                            require eth.balance(this.address) >= paymentsOf[address(msg.sender)]
                                            if paymentsOf[address(msg.sender)] <= totalPayments:
                                                totalPayments -= paymentsOf[address(msg.sender)]
                                                paymentsOf[address(msg.sender)] = 0
                                                call msg.sender with:
                                                   value paymentsOf[address(msg.sender)] wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
    revert
}



}
