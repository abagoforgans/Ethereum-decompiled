contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
address stor12;
uint256 stor14;

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[7681 len 4356]
    require create.new_address
    stor2 = address(create.new_address)
    require not msg.value
    stor0 = msg.sender
    stor5 = 75 * 10^9 * 24 * 3600
    stor3 = 419760 * 24 * 3600
    stor4 = 30
    stor6 = 409 * 10^18
    stor7 = 8895539 * 10^18
    stor9 = 0
    stor8 = 0
    stor10 = 15
    stor12 = 0
    stor14 = 75 * 10^14 * 24 * 3600
    return code.data[381 len 7300]
}



// =====================  Runtime code  =====================


#
#  - buyTokens()
#
address owner;
address ownerCandidat;
address tokenAddress;
uint256 start;
uint256 period;
uint256 rate;
uint256 softcap;
uint256 availableTokensforPreICO;
uint256 countOfSaleTokens;
uint256 currentPreICObalance;
uint256 refererPercent;
mapping of uint256 balances;
address managerETHaddress;
address managerETHcandidatAddress;
uint256 managerETHbonus;

function managerETHbonus() {
    return managerETHbonus
}

function availableTokensforPreICO() {
    return availableTokensforPreICO
}

function balances(address arg1) {
    return balances[arg1]
}

function rate() {
    return rate
}

function ownerCandidat() {
    return ownerCandidat
}

function managerETHaddress() {
    return managerETHaddress
}

function managerETHcandidatAddress() {
    return managerETHcandidatAddress
}

function refererPercent() {
    return refererPercent
}

function owner() {
    return owner
}

function countOfSaleTokens() {
    return countOfSaleTokens
}

function start() {
    return start
}

function period() {
    return period
}

function softcap() {
    return softcap
}

function token() {
    return tokenAddress
}

function currentPreICObalance() {
    return currentPreICObalance
}

function confirmOwnership() {
    require msg.sender == ownerCandidat
    owner = msg.sender
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    ownerCandidat = arg1
}

function changeManager(address arg1) {
    require msg.sender == managerETHaddress
    managerETHcandidatAddress = arg1
}

function confirmManager() {
    require msg.sender == managerETHcandidatAddress
    managerETHaddress = managerETHcandidatAddress
}

function setPreIcoManager(address arg1) {
    require msg.sender == owner
    require not managerETHaddress
    managerETHcandidatAddress = arg1
}

function withdrawPreIcoFounds() {
    require msg.sender == owner
    if currentPreICObalance > softcap:
        call owner with:
           value eth.balance(this.address) - managerETHbonus wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function refund() {
    require currentPreICObalance < softcap
    require block.timestamp > start + (24 * 3600 * period)
    call msg.sender with:
       value balances[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    balances[address(msg.sender)] = 0
}

function TransferTokenOwnership(address arg1) {
    require msg.sender == owner
    require block.timestamp > start + (24 * 3600 * period)
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function withdrawManagerBonus() {
    if currentPreICObalance > softcap:
        if managerETHbonus > 0:
            if managerETHaddress:
                call managerETHaddress with:
                   value managerETHbonus wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                managerETHbonus = 0
}

function TransferTokenToIcoContract(address arg1) {
    require msg.sender == owner
    require block.timestamp > start + (24 * 3600 * period)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), ext_call.return_data[0]
    require ext_call.success
}

function _fallback() payable {
    require countOfSaleTokens < availableTokensforPreICO
    require block.timestamp > start
    require block.timestamp < start + (24 * 3600 * period)
    require msg.value >= rate
    if msg.value:
        require msg.value
        require 10^18 * msg.value / msg.value == 10^18
    require rate
    require start + (168 * 24 * 3600) >= start
    if block.timestamp < start + (168 * 24 * 3600):
        if 10^18 * msg.value / rate:
            require 10^18 * msg.value / rate
            require 45 * 10^18 * msg.value / rate / 10^18 * msg.value / rate == 45
        require (10^18 * msg.value / rate) + (45 * 10^18 * msg.value / rate / 100) >= 10^18 * msg.value / rate
        require start + (336 * 24 * 3600) >= start
        if block.timestamp < start + (336 * 24 * 3600):
            require countOfSaleTokens + (10^18 * msg.value / rate) + (45 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
            if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (45 * 10^18 * msg.value / rate / 100):
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (10^18 * msg.value / rate) + (45 * 10^18 * msg.value / rate / 100)
                require ext_call.success
                require currentPreICObalance + msg.value >= currentPreICObalance
                currentPreICObalance += msg.value
                require countOfSaleTokens + (10^18 * msg.value / rate) + (45 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                countOfSaleTokens = countOfSaleTokens + (10^18 * msg.value / rate) + (45 * 10^18 * msg.value / rate / 100)
                require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                balances[address(msg.sender)] += msg.value
                require countOfSaleTokens + (10^18 * msg.value / rate) + (45 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
            else:
                require countOfSaleTokens <= availableTokensforPreICO
                require availableTokensforPreICO >= countOfSaleTokens
                countOfSaleTokens = availableTokensforPreICO
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, availableTokensforPreICO - countOfSaleTokens
                require ext_call.success
                if availableTokensforPreICO - countOfSaleTokens:
                    require availableTokensforPreICO - countOfSaleTokens
                    require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                call msg.sender with:
                   value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            require start + (672 * 24 * 3600) >= start
            if block.timestamp >= start + (672 * 24 * 3600):
                require countOfSaleTokens + (10^18 * msg.value / rate) + (45 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (45 * 10^18 * msg.value / rate / 100):
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (10^18 * msg.value / rate) + (45 * 10^18 * msg.value / rate / 100)
                    require ext_call.success
                    require currentPreICObalance + msg.value >= currentPreICObalance
                    currentPreICObalance += msg.value
                    require countOfSaleTokens + (10^18 * msg.value / rate) + (45 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                    countOfSaleTokens = countOfSaleTokens + (10^18 * msg.value / rate) + (45 * 10^18 * msg.value / rate / 100)
                    require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                    balances[address(msg.sender)] += msg.value
                    require countOfSaleTokens + (10^18 * msg.value / rate) + (45 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                else:
                    require countOfSaleTokens <= availableTokensforPreICO
                    require availableTokensforPreICO >= countOfSaleTokens
                    countOfSaleTokens = availableTokensforPreICO
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, availableTokensforPreICO - countOfSaleTokens
                    require ext_call.success
                    if availableTokensforPreICO - countOfSaleTokens:
                        require availableTokensforPreICO - countOfSaleTokens
                        require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                    require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                    require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                    require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                    balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                    require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                    require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                    currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                    call msg.sender with:
                       value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
            else:
                if 20 != calldata.size:
                    require countOfSaleTokens + (10^18 * msg.value / rate) + (45 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                    if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (45 * 10^18 * msg.value / rate / 100):
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (10^18 * msg.value / rate) + (45 * 10^18 * msg.value / rate / 100)
                        require ext_call.success
                        require currentPreICObalance + msg.value >= currentPreICObalance
                        currentPreICObalance += msg.value
                        require countOfSaleTokens + (10^18 * msg.value / rate) + (45 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                        countOfSaleTokens = countOfSaleTokens + (10^18 * msg.value / rate) + (45 * 10^18 * msg.value / rate / 100)
                        require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                        balances[address(msg.sender)] += msg.value
                        require countOfSaleTokens + (10^18 * msg.value / rate) + (45 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                    else:
                        require countOfSaleTokens <= availableTokensforPreICO
                        require availableTokensforPreICO >= countOfSaleTokens
                        countOfSaleTokens = availableTokensforPreICO
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, availableTokensforPreICO - countOfSaleTokens
                        require ext_call.success
                        if availableTokensforPreICO - countOfSaleTokens:
                            require availableTokensforPreICO - countOfSaleTokens
                            require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                        require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                        require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                        balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                        require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                        currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                        call msg.sender with:
                           value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                else:
                    mem[96] = calldata.size
                    mem[128 len calldata.size] = call.data[0 len calldata.size]
                    idx = 20
                    s = 1
                    t = 0
                    while idx > 0:
                        require idx - 1 < calldata.size
                        idx = idx - 1
                        s = 256 * s
                        t = t + (mem[idx + 127 len 1] * s)
                        continue 
                    require address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t) != msg.sender
                    if (10^18 * msg.value / rate) + (45 * 10^18 * msg.value / rate / 100):
                        require (10^18 * msg.value / rate) + (45 * 10^18 * msg.value / rate / 100)
                        require (10^18 * msg.value / rate * refererPercent) + (45 * 10^18 * msg.value / rate / 100 * refererPercent) / (10^18 * msg.value / rate) + (45 * 10^18 * msg.value / rate / 100) == refererPercent
                    require countOfSaleTokens + (10^18 * msg.value / rate) + (45 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                    if availableTokensforPreICO <= countOfSaleTokens + (10^18 * msg.value / rate) + (45 * 10^18 * msg.value / rate / 100):
                        require countOfSaleTokens <= availableTokensforPreICO
                        require availableTokensforPreICO >= countOfSaleTokens
                        countOfSaleTokens = availableTokensforPreICO
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, availableTokensforPreICO - countOfSaleTokens
                        require ext_call.success
                        if availableTokensforPreICO - countOfSaleTokens:
                            require availableTokensforPreICO - countOfSaleTokens
                            require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                        require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                        require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                        balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                        require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                        currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                        call msg.sender with:
                           value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    else:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (10^18 * msg.value / rate) + (45 * 10^18 * msg.value / rate / 100)
                        require ext_call.success
                        require currentPreICObalance + msg.value >= currentPreICObalance
                        currentPreICObalance += msg.value
                        require countOfSaleTokens + (10^18 * msg.value / rate) + (45 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                        countOfSaleTokens = countOfSaleTokens + (10^18 * msg.value / rate) + (45 * 10^18 * msg.value / rate / 100)
                        require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                        balances[address(msg.sender)] += msg.value
                        require countOfSaleTokens + (10^18 * msg.value / rate) + (45 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                        require (10^18 * msg.value / rate * refererPercent) + (45 * 10^18 * msg.value / rate / 100 * refererPercent) / 100 >= 0
                        if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (45 * 10^18 * msg.value / rate / 100) + ((10^18 * msg.value / rate * refererPercent) + (45 * 10^18 * msg.value / rate / 100 * refererPercent) / 100):
                            if address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t):
                                if (10^18 * msg.value / rate * refererPercent) + (45 * 10^18 * msg.value / rate / 100 * refererPercent) / 100 > 0:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t), (10^18 * msg.value / rate * refererPercent) + (45 * 10^18 * msg.value / rate / 100 * refererPercent) / 100
                                    require ext_call.success
                                    require countOfSaleTokens + ((10^18 * msg.value / rate * refererPercent) + (45 * 10^18 * msg.value / rate / 100 * refererPercent) / 100) >= countOfSaleTokens
                                    countOfSaleTokens += (10^18 * msg.value / rate * refererPercent) + (45 * 10^18 * msg.value / rate / 100 * refererPercent) / 100
    else:
        require start + (168 * 24 * 3600) >= start
        require start + (336 * 24 * 3600) >= start
        if block.timestamp < start + (168 * 24 * 3600):
            require start + (504 * 24 * 3600) >= start
            if block.timestamp < start + (336 * 24 * 3600):
                if block.timestamp < start + (504 * 24 * 3600):
                    require 10^18 * msg.value / rate >= 10^18 * msg.value / rate
                    require start + (336 * 24 * 3600) >= start
                    if block.timestamp < start + (336 * 24 * 3600):
                        require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                        if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate):
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 10^18 * msg.value / rate
                            require ext_call.success
                            require currentPreICObalance + msg.value >= currentPreICObalance
                            currentPreICObalance += msg.value
                            require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                            countOfSaleTokens += 10^18 * msg.value / rate
                            require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                            balances[address(msg.sender)] += msg.value
                            require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                        else:
                            require countOfSaleTokens <= availableTokensforPreICO
                            require availableTokensforPreICO >= countOfSaleTokens
                            countOfSaleTokens = availableTokensforPreICO
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, availableTokensforPreICO - countOfSaleTokens
                            require ext_call.success
                            if availableTokensforPreICO - countOfSaleTokens:
                                require availableTokensforPreICO - countOfSaleTokens
                                require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                            require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                            require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                            require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                            balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                            require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                            require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                            currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                            call msg.sender with:
                               value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                    else:
                        require start + (672 * 24 * 3600) >= start
                        if block.timestamp >= start + (672 * 24 * 3600):
                            require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                            if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate):
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 10^18 * msg.value / rate
                                require ext_call.success
                                require currentPreICObalance + msg.value >= currentPreICObalance
                                currentPreICObalance += msg.value
                                require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                countOfSaleTokens += 10^18 * msg.value / rate
                                require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                balances[address(msg.sender)] += msg.value
                                require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                            else:
                                require countOfSaleTokens <= availableTokensforPreICO
                                require availableTokensforPreICO >= countOfSaleTokens
                                countOfSaleTokens = availableTokensforPreICO
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                require ext_call.success
                                if availableTokensforPreICO - countOfSaleTokens:
                                    require availableTokensforPreICO - countOfSaleTokens
                                    require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                call msg.sender with:
                                   value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        else:
                            if 20 != calldata.size:
                                require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate):
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 10^18 * msg.value / rate
                                    require ext_call.success
                                    require currentPreICObalance + msg.value >= currentPreICObalance
                                    currentPreICObalance += msg.value
                                    require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                    countOfSaleTokens += 10^18 * msg.value / rate
                                    require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                    balances[address(msg.sender)] += msg.value
                                    require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                else:
                                    require countOfSaleTokens <= availableTokensforPreICO
                                    require availableTokensforPreICO >= countOfSaleTokens
                                    countOfSaleTokens = availableTokensforPreICO
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                    require ext_call.success
                                    if availableTokensforPreICO - countOfSaleTokens:
                                        require availableTokensforPreICO - countOfSaleTokens
                                        require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                    require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                    require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                    require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                    balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                    require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                    require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                    currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                    call msg.sender with:
                                       value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            else:
                                mem[96] = calldata.size
                                mem[128 len calldata.size] = call.data[0 len calldata.size]
                                idx = 20
                                s = 1
                                t = 0
                                while idx > 0:
                                    require idx - 1 < calldata.size
                                    idx = idx - 1
                                    s = 256 * s
                                    t = t + (mem[idx + 127 len 1] * s)
                                    continue 
                                require address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t) != msg.sender
                                if 10^18 * msg.value / rate:
                                    require 10^18 * msg.value / rate
                                    require 10^18 * msg.value / rate * refererPercent / 10^18 * msg.value / rate == refererPercent
                                require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                if availableTokensforPreICO <= countOfSaleTokens + (10^18 * msg.value / rate):
                                    require countOfSaleTokens <= availableTokensforPreICO
                                    require availableTokensforPreICO >= countOfSaleTokens
                                    countOfSaleTokens = availableTokensforPreICO
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                    require ext_call.success
                                    if availableTokensforPreICO - countOfSaleTokens:
                                        require availableTokensforPreICO - countOfSaleTokens
                                        require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                    require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                    require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                    require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                    balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                    require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                    require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                    currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                    call msg.sender with:
                                       value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                else:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 10^18 * msg.value / rate
                                    require ext_call.success
                                    require currentPreICObalance + msg.value >= currentPreICObalance
                                    currentPreICObalance += msg.value
                                    require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                    countOfSaleTokens += 10^18 * msg.value / rate
                                    require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                    balances[address(msg.sender)] += msg.value
                                    require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                    require 10^18 * msg.value / rate * refererPercent / 100 >= 0
                                    if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (10^18 * msg.value / rate * refererPercent / 100):
                                        if address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t):
                                            if 10^18 * msg.value / rate * refererPercent / 100 > 0:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t), 10^18 * msg.value / rate * refererPercent / 100
                                                require ext_call.success
                                                require countOfSaleTokens + (10^18 * msg.value / rate * refererPercent / 100) >= countOfSaleTokens
                                                countOfSaleTokens += 10^18 * msg.value / rate * refererPercent / 100
                else:
                    require start + (672 * 24 * 3600) >= start
                    if block.timestamp >= start + (672 * 24 * 3600):
                        require 10^18 * msg.value / rate >= 10^18 * msg.value / rate
                        require start + (336 * 24 * 3600) >= start
                        if block.timestamp < start + (336 * 24 * 3600):
                            require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                            if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate):
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 10^18 * msg.value / rate
                                require ext_call.success
                                require currentPreICObalance + msg.value >= currentPreICObalance
                                currentPreICObalance += msg.value
                                require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                countOfSaleTokens += 10^18 * msg.value / rate
                                require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                balances[address(msg.sender)] += msg.value
                                require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                            else:
                                require countOfSaleTokens <= availableTokensforPreICO
                                require availableTokensforPreICO >= countOfSaleTokens
                                countOfSaleTokens = availableTokensforPreICO
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                require ext_call.success
                                if availableTokensforPreICO - countOfSaleTokens:
                                    require availableTokensforPreICO - countOfSaleTokens
                                    require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                call msg.sender with:
                                   value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        else:
                            require start + (672 * 24 * 3600) >= start
                            if block.timestamp >= start + (672 * 24 * 3600):
                                require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate):
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 10^18 * msg.value / rate
                                    require ext_call.success
                                    require currentPreICObalance + msg.value >= currentPreICObalance
                                    currentPreICObalance += msg.value
                                    require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                    countOfSaleTokens += 10^18 * msg.value / rate
                                    require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                    balances[address(msg.sender)] += msg.value
                                    require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                else:
                                    require countOfSaleTokens <= availableTokensforPreICO
                                    require availableTokensforPreICO >= countOfSaleTokens
                                    countOfSaleTokens = availableTokensforPreICO
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                    require ext_call.success
                                    if availableTokensforPreICO - countOfSaleTokens:
                                        require availableTokensforPreICO - countOfSaleTokens
                                        require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                    require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                    require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                    require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                    balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                    require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                    require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                    currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                    call msg.sender with:
                                       value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            else:
                                if 20 != calldata.size:
                                    require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                    if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate):
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 10^18 * msg.value / rate
                                        require ext_call.success
                                        require currentPreICObalance + msg.value >= currentPreICObalance
                                        currentPreICObalance += msg.value
                                        require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                        countOfSaleTokens += 10^18 * msg.value / rate
                                        require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                        balances[address(msg.sender)] += msg.value
                                        require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                    else:
                                        require countOfSaleTokens <= availableTokensforPreICO
                                        require availableTokensforPreICO >= countOfSaleTokens
                                        countOfSaleTokens = availableTokensforPreICO
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                        require ext_call.success
                                        if availableTokensforPreICO - countOfSaleTokens:
                                            require availableTokensforPreICO - countOfSaleTokens
                                            require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                        require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                        require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                        balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                        require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                        currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                        call msg.sender with:
                                           value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                else:
                                    mem[96] = calldata.size
                                    mem[128 len calldata.size] = call.data[0 len calldata.size]
                                    idx = 20
                                    s = 1
                                    t = 0
                                    while idx > 0:
                                        require idx - 1 < calldata.size
                                        idx = idx - 1
                                        s = 256 * s
                                        t = t + (mem[idx + 127 len 1] * s)
                                        continue 
                                    require address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t) != msg.sender
                                    if 10^18 * msg.value / rate:
                                        require 10^18 * msg.value / rate
                                        require 10^18 * msg.value / rate * refererPercent / 10^18 * msg.value / rate == refererPercent
                                    require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                    if availableTokensforPreICO <= countOfSaleTokens + (10^18 * msg.value / rate):
                                        require countOfSaleTokens <= availableTokensforPreICO
                                        require availableTokensforPreICO >= countOfSaleTokens
                                        countOfSaleTokens = availableTokensforPreICO
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                        require ext_call.success
                                        if availableTokensforPreICO - countOfSaleTokens:
                                            require availableTokensforPreICO - countOfSaleTokens
                                            require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                        require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                        require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                        balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                        require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                        currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                        call msg.sender with:
                                           value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 10^18 * msg.value / rate
                                        require ext_call.success
                                        require currentPreICObalance + msg.value >= currentPreICObalance
                                        currentPreICObalance += msg.value
                                        require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                        countOfSaleTokens += 10^18 * msg.value / rate
                                        require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                        balances[address(msg.sender)] += msg.value
                                        require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                        require 10^18 * msg.value / rate * refererPercent / 100 >= 0
                                        if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (10^18 * msg.value / rate * refererPercent / 100):
                                            if address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t):
                                                if 10^18 * msg.value / rate * refererPercent / 100 > 0:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t), 10^18 * msg.value / rate * refererPercent / 100
                                                    require ext_call.success
                                                    require countOfSaleTokens + (10^18 * msg.value / rate * refererPercent / 100) >= countOfSaleTokens
                                                    countOfSaleTokens += 10^18 * msg.value / rate * refererPercent / 100
                    else:
                        if 10^18 * msg.value / rate:
                            require 10^18 * msg.value / rate
                            require 30 * 10^18 * msg.value / rate / 10^18 * msg.value / rate == 30
                        require (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= 10^18 * msg.value / rate
                        require start + (336 * 24 * 3600) >= start
                        if block.timestamp < start + (336 * 24 * 3600):
                            require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                            if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100):
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100)
                                require ext_call.success
                                require currentPreICObalance + msg.value >= currentPreICObalance
                                currentPreICObalance += msg.value
                                require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                countOfSaleTokens = countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100)
                                require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                balances[address(msg.sender)] += msg.value
                                require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                            else:
                                require countOfSaleTokens <= availableTokensforPreICO
                                require availableTokensforPreICO >= countOfSaleTokens
                                countOfSaleTokens = availableTokensforPreICO
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                require ext_call.success
                                if availableTokensforPreICO - countOfSaleTokens:
                                    require availableTokensforPreICO - countOfSaleTokens
                                    require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                call msg.sender with:
                                   value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        else:
                            require start + (672 * 24 * 3600) >= start
                            if block.timestamp >= start + (672 * 24 * 3600):
                                require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100):
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100)
                                    require ext_call.success
                                    require currentPreICObalance + msg.value >= currentPreICObalance
                                    currentPreICObalance += msg.value
                                    require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                    countOfSaleTokens = countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100)
                                    require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                    balances[address(msg.sender)] += msg.value
                                    require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                else:
                                    require countOfSaleTokens <= availableTokensforPreICO
                                    require availableTokensforPreICO >= countOfSaleTokens
                                    countOfSaleTokens = availableTokensforPreICO
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                    require ext_call.success
                                    if availableTokensforPreICO - countOfSaleTokens:
                                        require availableTokensforPreICO - countOfSaleTokens
                                        require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                    require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                    require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                    require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                    balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                    require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                    require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                    currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                    call msg.sender with:
                                       value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            else:
                                if 20 != calldata.size:
                                    require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                    if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100):
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100)
                                        require ext_call.success
                                        require currentPreICObalance + msg.value >= currentPreICObalance
                                        currentPreICObalance += msg.value
                                        require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                        countOfSaleTokens = countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100)
                                        require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                        balances[address(msg.sender)] += msg.value
                                        require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                    else:
                                        require countOfSaleTokens <= availableTokensforPreICO
                                        require availableTokensforPreICO >= countOfSaleTokens
                                        countOfSaleTokens = availableTokensforPreICO
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                        require ext_call.success
                                        if availableTokensforPreICO - countOfSaleTokens:
                                            require availableTokensforPreICO - countOfSaleTokens
                                            require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                        require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                        require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                        balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                        require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                        currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                        call msg.sender with:
                                           value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                else:
                                    mem[96] = calldata.size
                                    mem[128 len calldata.size] = call.data[0 len calldata.size]
                                    idx = 20
                                    s = 1
                                    t = 0
                                    while idx > 0:
                                        require idx - 1 < calldata.size
                                        idx = idx - 1
                                        s = 256 * s
                                        t = t + (mem[idx + 127 len 1] * s)
                                        continue 
                                    require address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t) != msg.sender
                                    if (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100):
                                        require (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100)
                                        require (10^18 * msg.value / rate * refererPercent) + (30 * 10^18 * msg.value / rate / 100 * refererPercent) / (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) == refererPercent
                                    require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                    if availableTokensforPreICO <= countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100):
                                        require countOfSaleTokens <= availableTokensforPreICO
                                        require availableTokensforPreICO >= countOfSaleTokens
                                        countOfSaleTokens = availableTokensforPreICO
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                        require ext_call.success
                                        if availableTokensforPreICO - countOfSaleTokens:
                                            require availableTokensforPreICO - countOfSaleTokens
                                            require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                        require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                        require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                        balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                        require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                        currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                        call msg.sender with:
                                           value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100)
                                        require ext_call.success
                                        require currentPreICObalance + msg.value >= currentPreICObalance
                                        currentPreICObalance += msg.value
                                        require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                        countOfSaleTokens = countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100)
                                        require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                        balances[address(msg.sender)] += msg.value
                                        require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                        require (10^18 * msg.value / rate * refererPercent) + (30 * 10^18 * msg.value / rate / 100 * refererPercent) / 100 >= 0
                                        if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) + ((10^18 * msg.value / rate * refererPercent) + (30 * 10^18 * msg.value / rate / 100 * refererPercent) / 100):
                                            if address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t):
                                                if (10^18 * msg.value / rate * refererPercent) + (30 * 10^18 * msg.value / rate / 100 * refererPercent) / 100 > 0:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t), (10^18 * msg.value / rate * refererPercent) + (30 * 10^18 * msg.value / rate / 100 * refererPercent) / 100
                                                    require ext_call.success
                                                    require countOfSaleTokens + ((10^18 * msg.value / rate * refererPercent) + (30 * 10^18 * msg.value / rate / 100 * refererPercent) / 100) >= countOfSaleTokens
                                                    countOfSaleTokens += (10^18 * msg.value / rate * refererPercent) + (30 * 10^18 * msg.value / rate / 100 * refererPercent) / 100
            else:
                if block.timestamp < start + (504 * 24 * 3600):
                    if 10^18 * msg.value / rate:
                        require 10^18 * msg.value / rate
                        require 35 * 10^18 * msg.value / rate / 10^18 * msg.value / rate == 35
                    require (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100) >= 10^18 * msg.value / rate
                    require start + (336 * 24 * 3600) >= start
                    if block.timestamp < start + (336 * 24 * 3600):
                        require countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                        if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100):
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100)
                            require ext_call.success
                            require currentPreICObalance + msg.value >= currentPreICObalance
                            currentPreICObalance += msg.value
                            require countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                            countOfSaleTokens = countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100)
                            require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                            balances[address(msg.sender)] += msg.value
                            require countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                        else:
                            require countOfSaleTokens <= availableTokensforPreICO
                            require availableTokensforPreICO >= countOfSaleTokens
                            countOfSaleTokens = availableTokensforPreICO
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, availableTokensforPreICO - countOfSaleTokens
                            require ext_call.success
                            if availableTokensforPreICO - countOfSaleTokens:
                                require availableTokensforPreICO - countOfSaleTokens
                                require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                            require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                            require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                            require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                            balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                            require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                            require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                            currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                            call msg.sender with:
                               value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                    else:
                        require start + (672 * 24 * 3600) >= start
                        if block.timestamp >= start + (672 * 24 * 3600):
                            require countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                            if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100):
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100)
                                require ext_call.success
                                require currentPreICObalance + msg.value >= currentPreICObalance
                                currentPreICObalance += msg.value
                                require countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                countOfSaleTokens = countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100)
                                require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                balances[address(msg.sender)] += msg.value
                                require countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                            else:
                                require countOfSaleTokens <= availableTokensforPreICO
                                require availableTokensforPreICO >= countOfSaleTokens
                                countOfSaleTokens = availableTokensforPreICO
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                require ext_call.success
                                if availableTokensforPreICO - countOfSaleTokens:
                                    require availableTokensforPreICO - countOfSaleTokens
                                    require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                call msg.sender with:
                                   value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        else:
                            if 20 != calldata.size:
                                require countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100):
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100)
                                    require ext_call.success
                                    require currentPreICObalance + msg.value >= currentPreICObalance
                                    currentPreICObalance += msg.value
                                    require countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                    countOfSaleTokens = countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100)
                                    require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                    balances[address(msg.sender)] += msg.value
                                    require countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                else:
                                    require countOfSaleTokens <= availableTokensforPreICO
                                    require availableTokensforPreICO >= countOfSaleTokens
                                    countOfSaleTokens = availableTokensforPreICO
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                    require ext_call.success
                                    if availableTokensforPreICO - countOfSaleTokens:
                                        require availableTokensforPreICO - countOfSaleTokens
                                        require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                    require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                    require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                    require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                    balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                    require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                    require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                    currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                    call msg.sender with:
                                       value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            else:
                                mem[96] = calldata.size
                                mem[128 len calldata.size] = call.data[0 len calldata.size]
                                idx = 20
                                s = 1
                                t = 0
                                while idx > 0:
                                    require idx - 1 < calldata.size
                                    idx = idx - 1
                                    s = 256 * s
                                    t = t + (mem[idx + 127 len 1] * s)
                                    continue 
                                require address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t) != msg.sender
                                if (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100):
                                    require (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100)
                                    require (10^18 * msg.value / rate * refererPercent) + (35 * 10^18 * msg.value / rate / 100 * refererPercent) / (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100) == refererPercent
                                require countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                if availableTokensforPreICO <= countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100):
                                    require countOfSaleTokens <= availableTokensforPreICO
                                    require availableTokensforPreICO >= countOfSaleTokens
                                    countOfSaleTokens = availableTokensforPreICO
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                    require ext_call.success
                                    if availableTokensforPreICO - countOfSaleTokens:
                                        require availableTokensforPreICO - countOfSaleTokens
                                        require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                    require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                    require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                    require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                    balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                    require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                    require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                    currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                    call msg.sender with:
                                       value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                else:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100)
                                    require ext_call.success
                                    require currentPreICObalance + msg.value >= currentPreICObalance
                                    currentPreICObalance += msg.value
                                    require countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                    countOfSaleTokens = countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100)
                                    require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                    balances[address(msg.sender)] += msg.value
                                    require countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                    require (10^18 * msg.value / rate * refererPercent) + (35 * 10^18 * msg.value / rate / 100 * refererPercent) / 100 >= 0
                                    if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100) + ((10^18 * msg.value / rate * refererPercent) + (35 * 10^18 * msg.value / rate / 100 * refererPercent) / 100):
                                        if address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t):
                                            if (10^18 * msg.value / rate * refererPercent) + (35 * 10^18 * msg.value / rate / 100 * refererPercent) / 100 > 0:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t), (10^18 * msg.value / rate * refererPercent) + (35 * 10^18 * msg.value / rate / 100 * refererPercent) / 100
                                                require ext_call.success
                                                require countOfSaleTokens + ((10^18 * msg.value / rate * refererPercent) + (35 * 10^18 * msg.value / rate / 100 * refererPercent) / 100) >= countOfSaleTokens
                                                countOfSaleTokens += (10^18 * msg.value / rate * refererPercent) + (35 * 10^18 * msg.value / rate / 100 * refererPercent) / 100
                else:
                    require start + (504 * 24 * 3600) >= start
                    if block.timestamp < start + (504 * 24 * 3600):
                        require 10^18 * msg.value / rate >= 10^18 * msg.value / rate
                        require start + (336 * 24 * 3600) >= start
                        if block.timestamp < start + (336 * 24 * 3600):
                            require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                            if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate):
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 10^18 * msg.value / rate
                                require ext_call.success
                                require currentPreICObalance + msg.value >= currentPreICObalance
                                currentPreICObalance += msg.value
                                require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                countOfSaleTokens += 10^18 * msg.value / rate
                                require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                balances[address(msg.sender)] += msg.value
                                require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                            else:
                                require countOfSaleTokens <= availableTokensforPreICO
                                require availableTokensforPreICO >= countOfSaleTokens
                                countOfSaleTokens = availableTokensforPreICO
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                require ext_call.success
                                if availableTokensforPreICO - countOfSaleTokens:
                                    require availableTokensforPreICO - countOfSaleTokens
                                    require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                call msg.sender with:
                                   value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        else:
                            require start + (672 * 24 * 3600) >= start
                            if block.timestamp >= start + (672 * 24 * 3600):
                                require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate):
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 10^18 * msg.value / rate
                                    require ext_call.success
                                    require currentPreICObalance + msg.value >= currentPreICObalance
                                    currentPreICObalance += msg.value
                                    require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                    countOfSaleTokens += 10^18 * msg.value / rate
                                    require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                    balances[address(msg.sender)] += msg.value
                                    require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                else:
                                    require countOfSaleTokens <= availableTokensforPreICO
                                    require availableTokensforPreICO >= countOfSaleTokens
                                    countOfSaleTokens = availableTokensforPreICO
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                    require ext_call.success
                                    if availableTokensforPreICO - countOfSaleTokens:
                                        require availableTokensforPreICO - countOfSaleTokens
                                        require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                    require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                    require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                    require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                    balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                    require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                    require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                    currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                    call msg.sender with:
                                       value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            else:
                                if 20 != calldata.size:
                                    require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                    if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate):
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 10^18 * msg.value / rate
                                        require ext_call.success
                                        require currentPreICObalance + msg.value >= currentPreICObalance
                                        currentPreICObalance += msg.value
                                        require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                        countOfSaleTokens += 10^18 * msg.value / rate
                                        require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                        balances[address(msg.sender)] += msg.value
                                        require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                    else:
                                        require countOfSaleTokens <= availableTokensforPreICO
                                        require availableTokensforPreICO >= countOfSaleTokens
                                        countOfSaleTokens = availableTokensforPreICO
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                        require ext_call.success
                                        if availableTokensforPreICO - countOfSaleTokens:
                                            require availableTokensforPreICO - countOfSaleTokens
                                            require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                        require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                        require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                        balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                        require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                        currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                        call msg.sender with:
                                           value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                else:
                                    mem[96] = calldata.size
                                    mem[128 len calldata.size] = call.data[0 len calldata.size]
                                    idx = 20
                                    s = 1
                                    t = 0
                                    while idx > 0:
                                        require idx - 1 < calldata.size
                                        idx = idx - 1
                                        s = 256 * s
                                        t = t + (mem[idx + 127 len 1] * s)
                                        continue 
                                    require address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t) != msg.sender
                                    if 10^18 * msg.value / rate:
                                        require 10^18 * msg.value / rate
                                        require 10^18 * msg.value / rate * refererPercent / 10^18 * msg.value / rate == refererPercent
                                    require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                    if availableTokensforPreICO <= countOfSaleTokens + (10^18 * msg.value / rate):
                                        require countOfSaleTokens <= availableTokensforPreICO
                                        require availableTokensforPreICO >= countOfSaleTokens
                                        countOfSaleTokens = availableTokensforPreICO
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                        require ext_call.success
                                        if availableTokensforPreICO - countOfSaleTokens:
                                            require availableTokensforPreICO - countOfSaleTokens
                                            require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                        require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                        require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                        balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                        require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                        currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                        call msg.sender with:
                                           value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 10^18 * msg.value / rate
                                        require ext_call.success
                                        require currentPreICObalance + msg.value >= currentPreICObalance
                                        currentPreICObalance += msg.value
                                        require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                        countOfSaleTokens += 10^18 * msg.value / rate
                                        require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                        balances[address(msg.sender)] += msg.value
                                        require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                        require 10^18 * msg.value / rate * refererPercent / 100 >= 0
                                        if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (10^18 * msg.value / rate * refererPercent / 100):
                                            if address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t):
                                                if 10^18 * msg.value / rate * refererPercent / 100 > 0:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t), 10^18 * msg.value / rate * refererPercent / 100
                                                    require ext_call.success
                                                    require countOfSaleTokens + (10^18 * msg.value / rate * refererPercent / 100) >= countOfSaleTokens
                                                    countOfSaleTokens += 10^18 * msg.value / rate * refererPercent / 100
                    else:
                        require start + (672 * 24 * 3600) >= start
                        if block.timestamp >= start + (672 * 24 * 3600):
                            require 10^18 * msg.value / rate >= 10^18 * msg.value / rate
                            require start + (336 * 24 * 3600) >= start
                            if block.timestamp < start + (336 * 24 * 3600):
                                require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate):
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 10^18 * msg.value / rate
                                    require ext_call.success
                                    require currentPreICObalance + msg.value >= currentPreICObalance
                                    currentPreICObalance += msg.value
                                    require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                    countOfSaleTokens += 10^18 * msg.value / rate
                                    require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                    balances[address(msg.sender)] += msg.value
                                    require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                else:
                                    require countOfSaleTokens <= availableTokensforPreICO
                                    require availableTokensforPreICO >= countOfSaleTokens
                                    countOfSaleTokens = availableTokensforPreICO
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                    require ext_call.success
                                    if availableTokensforPreICO - countOfSaleTokens:
                                        require availableTokensforPreICO - countOfSaleTokens
                                        require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                    require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                    require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                    require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                    balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                    require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                    require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                    currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                    call msg.sender with:
                                       value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            else:
                                require start + (672 * 24 * 3600) >= start
                                if block.timestamp >= start + (672 * 24 * 3600):
                                    require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                    if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate):
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 10^18 * msg.value / rate
                                        require ext_call.success
                                        require currentPreICObalance + msg.value >= currentPreICObalance
                                        currentPreICObalance += msg.value
                                        require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                        countOfSaleTokens += 10^18 * msg.value / rate
                                        require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                        balances[address(msg.sender)] += msg.value
                                        require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                    else:
                                        require countOfSaleTokens <= availableTokensforPreICO
                                        require availableTokensforPreICO >= countOfSaleTokens
                                        countOfSaleTokens = availableTokensforPreICO
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                        require ext_call.success
                                        if availableTokensforPreICO - countOfSaleTokens:
                                            require availableTokensforPreICO - countOfSaleTokens
                                            require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                        require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                        require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                        balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                        require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                        currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                        call msg.sender with:
                                           value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                else:
                                    if 20 != calldata.size:
                                        require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                        if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate):
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 10^18 * msg.value / rate
                                            require ext_call.success
                                            require currentPreICObalance + msg.value >= currentPreICObalance
                                            currentPreICObalance += msg.value
                                            require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                            countOfSaleTokens += 10^18 * msg.value / rate
                                            require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                            balances[address(msg.sender)] += msg.value
                                            require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                        else:
                                            require countOfSaleTokens <= availableTokensforPreICO
                                            require availableTokensforPreICO >= countOfSaleTokens
                                            countOfSaleTokens = availableTokensforPreICO
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                            require ext_call.success
                                            if availableTokensforPreICO - countOfSaleTokens:
                                                require availableTokensforPreICO - countOfSaleTokens
                                                require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                            require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                            require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                            require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                            balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                            require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                            require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                            currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                            call msg.sender with:
                                               value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                    else:
                                        mem[96] = calldata.size
                                        mem[128 len calldata.size] = call.data[0 len calldata.size]
                                        idx = 20
                                        s = 1
                                        t = 0
                                        while idx > 0:
                                            require idx - 1 < calldata.size
                                            idx = idx - 1
                                            s = 256 * s
                                            t = t + (mem[idx + 127 len 1] * s)
                                            continue 
                                        require address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t) != msg.sender
                                        if 10^18 * msg.value / rate:
                                            require 10^18 * msg.value / rate
                                            require 10^18 * msg.value / rate * refererPercent / 10^18 * msg.value / rate == refererPercent
                                        require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                        if availableTokensforPreICO <= countOfSaleTokens + (10^18 * msg.value / rate):
                                            require countOfSaleTokens <= availableTokensforPreICO
                                            require availableTokensforPreICO >= countOfSaleTokens
                                            countOfSaleTokens = availableTokensforPreICO
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                            require ext_call.success
                                            if availableTokensforPreICO - countOfSaleTokens:
                                                require availableTokensforPreICO - countOfSaleTokens
                                                require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                            require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                            require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                            require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                            balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                            require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                            require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                            currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                            call msg.sender with:
                                               value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 10^18 * msg.value / rate
                                            require ext_call.success
                                            require currentPreICObalance + msg.value >= currentPreICObalance
                                            currentPreICObalance += msg.value
                                            require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                            countOfSaleTokens += 10^18 * msg.value / rate
                                            require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                            balances[address(msg.sender)] += msg.value
                                            require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                            require 10^18 * msg.value / rate * refererPercent / 100 >= 0
                                            if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (10^18 * msg.value / rate * refererPercent / 100):
                                                if address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t):
                                                    if 10^18 * msg.value / rate * refererPercent / 100 > 0:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t), 10^18 * msg.value / rate * refererPercent / 100
                                                        require ext_call.success
                                                        require countOfSaleTokens + (10^18 * msg.value / rate * refererPercent / 100) >= countOfSaleTokens
                                                        countOfSaleTokens += 10^18 * msg.value / rate * refererPercent / 100
                        else:
                            if 10^18 * msg.value / rate:
                                require 10^18 * msg.value / rate
                                require 30 * 10^18 * msg.value / rate / 10^18 * msg.value / rate == 30
                            require (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= 10^18 * msg.value / rate
                            require start + (336 * 24 * 3600) >= start
                            if block.timestamp < start + (336 * 24 * 3600):
                                require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100):
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100)
                                    require ext_call.success
                                    require currentPreICObalance + msg.value >= currentPreICObalance
                                    currentPreICObalance += msg.value
                                    require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                    countOfSaleTokens = countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100)
                                    require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                    balances[address(msg.sender)] += msg.value
                                    require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                else:
                                    require countOfSaleTokens <= availableTokensforPreICO
                                    require availableTokensforPreICO >= countOfSaleTokens
                                    countOfSaleTokens = availableTokensforPreICO
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                    require ext_call.success
                                    if availableTokensforPreICO - countOfSaleTokens:
                                        require availableTokensforPreICO - countOfSaleTokens
                                        require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                    require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                    require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                    require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                    balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                    require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                    require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                    currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                    call msg.sender with:
                                       value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            else:
                                require start + (672 * 24 * 3600) >= start
                                if block.timestamp >= start + (672 * 24 * 3600):
                                    require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                    if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100):
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100)
                                        require ext_call.success
                                        require currentPreICObalance + msg.value >= currentPreICObalance
                                        currentPreICObalance += msg.value
                                        require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                        countOfSaleTokens = countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100)
                                        require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                        balances[address(msg.sender)] += msg.value
                                        require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                    else:
                                        require countOfSaleTokens <= availableTokensforPreICO
                                        require availableTokensforPreICO >= countOfSaleTokens
                                        countOfSaleTokens = availableTokensforPreICO
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                        require ext_call.success
                                        if availableTokensforPreICO - countOfSaleTokens:
                                            require availableTokensforPreICO - countOfSaleTokens
                                            require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                        require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                        require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                        balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                        require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                        currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                        call msg.sender with:
                                           value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                else:
                                    if 20 != calldata.size:
                                        require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                        if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100):
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100)
                                            require ext_call.success
                                            require currentPreICObalance + msg.value >= currentPreICObalance
                                            currentPreICObalance += msg.value
                                            require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                            countOfSaleTokens = countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100)
                                            require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                            balances[address(msg.sender)] += msg.value
                                            require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                        else:
                                            require countOfSaleTokens <= availableTokensforPreICO
                                            require availableTokensforPreICO >= countOfSaleTokens
                                            countOfSaleTokens = availableTokensforPreICO
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                            require ext_call.success
                                            if availableTokensforPreICO - countOfSaleTokens:
                                                require availableTokensforPreICO - countOfSaleTokens
                                                require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                            require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                            require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                            require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                            balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                            require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                            require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                            currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                            call msg.sender with:
                                               value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                    else:
                                        mem[96] = calldata.size
                                        mem[128 len calldata.size] = call.data[0 len calldata.size]
                                        idx = 20
                                        s = 1
                                        t = 0
                                        while idx > 0:
                                            require idx - 1 < calldata.size
                                            idx = idx - 1
                                            s = 256 * s
                                            t = t + (mem[idx + 127 len 1] * s)
                                            continue 
                                        require address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t) != msg.sender
                                        if (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100):
                                            require (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100)
                                            require (10^18 * msg.value / rate * refererPercent) + (30 * 10^18 * msg.value / rate / 100 * refererPercent) / (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) == refererPercent
                                        require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                        if availableTokensforPreICO <= countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100):
                                            require countOfSaleTokens <= availableTokensforPreICO
                                            require availableTokensforPreICO >= countOfSaleTokens
                                            countOfSaleTokens = availableTokensforPreICO
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                            require ext_call.success
                                            if availableTokensforPreICO - countOfSaleTokens:
                                                require availableTokensforPreICO - countOfSaleTokens
                                                require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                            require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                            require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                            require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                            balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                            require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                            require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                            currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                            call msg.sender with:
                                               value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100)
                                            require ext_call.success
                                            require currentPreICObalance + msg.value >= currentPreICObalance
                                            currentPreICObalance += msg.value
                                            require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                            countOfSaleTokens = countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100)
                                            require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                            balances[address(msg.sender)] += msg.value
                                            require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                            require (10^18 * msg.value / rate * refererPercent) + (30 * 10^18 * msg.value / rate / 100 * refererPercent) / 100 >= 0
                                            if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) + ((10^18 * msg.value / rate * refererPercent) + (30 * 10^18 * msg.value / rate / 100 * refererPercent) / 100):
                                                if address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t):
                                                    if (10^18 * msg.value / rate * refererPercent) + (30 * 10^18 * msg.value / rate / 100 * refererPercent) / 100 > 0:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t), (10^18 * msg.value / rate * refererPercent) + (30 * 10^18 * msg.value / rate / 100 * refererPercent) / 100
                                                        require ext_call.success
                                                        require countOfSaleTokens + ((10^18 * msg.value / rate * refererPercent) + (30 * 10^18 * msg.value / rate / 100 * refererPercent) / 100) >= countOfSaleTokens
                                                        countOfSaleTokens += (10^18 * msg.value / rate * refererPercent) + (30 * 10^18 * msg.value / rate / 100 * refererPercent) / 100
        else:
            if block.timestamp < start + (336 * 24 * 3600):
                if 10^18 * msg.value / rate:
                    require 10^18 * msg.value / rate
                    require 40 * 10^18 * msg.value / rate / 10^18 * msg.value / rate == 40
                require (10^18 * msg.value / rate) + (40 * 10^18 * msg.value / rate / 100) >= 10^18 * msg.value / rate
                require start + (336 * 24 * 3600) >= start
                if block.timestamp < start + (336 * 24 * 3600):
                    require countOfSaleTokens + (10^18 * msg.value / rate) + (40 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                    if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (40 * 10^18 * msg.value / rate / 100):
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (10^18 * msg.value / rate) + (40 * 10^18 * msg.value / rate / 100)
                        require ext_call.success
                        require currentPreICObalance + msg.value >= currentPreICObalance
                        currentPreICObalance += msg.value
                        require countOfSaleTokens + (10^18 * msg.value / rate) + (40 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                        countOfSaleTokens = countOfSaleTokens + (10^18 * msg.value / rate) + (40 * 10^18 * msg.value / rate / 100)
                        require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                        balances[address(msg.sender)] += msg.value
                        require countOfSaleTokens + (10^18 * msg.value / rate) + (40 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                    else:
                        require countOfSaleTokens <= availableTokensforPreICO
                        require availableTokensforPreICO >= countOfSaleTokens
                        countOfSaleTokens = availableTokensforPreICO
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, availableTokensforPreICO - countOfSaleTokens
                        require ext_call.success
                        if availableTokensforPreICO - countOfSaleTokens:
                            require availableTokensforPreICO - countOfSaleTokens
                            require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                        require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                        require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                        balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                        require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                        currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                        call msg.sender with:
                           value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                else:
                    require start + (672 * 24 * 3600) >= start
                    if block.timestamp >= start + (672 * 24 * 3600):
                        require countOfSaleTokens + (10^18 * msg.value / rate) + (40 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                        if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (40 * 10^18 * msg.value / rate / 100):
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (10^18 * msg.value / rate) + (40 * 10^18 * msg.value / rate / 100)
                            require ext_call.success
                            require currentPreICObalance + msg.value >= currentPreICObalance
                            currentPreICObalance += msg.value
                            require countOfSaleTokens + (10^18 * msg.value / rate) + (40 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                            countOfSaleTokens = countOfSaleTokens + (10^18 * msg.value / rate) + (40 * 10^18 * msg.value / rate / 100)
                            require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                            balances[address(msg.sender)] += msg.value
                            require countOfSaleTokens + (10^18 * msg.value / rate) + (40 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                        else:
                            require countOfSaleTokens <= availableTokensforPreICO
                            require availableTokensforPreICO >= countOfSaleTokens
                            countOfSaleTokens = availableTokensforPreICO
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, availableTokensforPreICO - countOfSaleTokens
                            require ext_call.success
                            if availableTokensforPreICO - countOfSaleTokens:
                                require availableTokensforPreICO - countOfSaleTokens
                                require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                            require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                            require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                            require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                            balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                            require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                            require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                            currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                            call msg.sender with:
                               value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                    else:
                        if 20 != calldata.size:
                            require countOfSaleTokens + (10^18 * msg.value / rate) + (40 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                            if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (40 * 10^18 * msg.value / rate / 100):
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (10^18 * msg.value / rate) + (40 * 10^18 * msg.value / rate / 100)
                                require ext_call.success
                                require currentPreICObalance + msg.value >= currentPreICObalance
                                currentPreICObalance += msg.value
                                require countOfSaleTokens + (10^18 * msg.value / rate) + (40 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                countOfSaleTokens = countOfSaleTokens + (10^18 * msg.value / rate) + (40 * 10^18 * msg.value / rate / 100)
                                require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                balances[address(msg.sender)] += msg.value
                                require countOfSaleTokens + (10^18 * msg.value / rate) + (40 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                            else:
                                require countOfSaleTokens <= availableTokensforPreICO
                                require availableTokensforPreICO >= countOfSaleTokens
                                countOfSaleTokens = availableTokensforPreICO
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                require ext_call.success
                                if availableTokensforPreICO - countOfSaleTokens:
                                    require availableTokensforPreICO - countOfSaleTokens
                                    require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                call msg.sender with:
                                   value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        else:
                            mem[96] = calldata.size
                            mem[128 len calldata.size] = call.data[0 len calldata.size]
                            idx = 20
                            s = 1
                            t = 0
                            while idx > 0:
                                require idx - 1 < calldata.size
                                idx = idx - 1
                                s = 256 * s
                                t = t + (mem[idx + 127 len 1] * s)
                                continue 
                            require address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t) != msg.sender
                            if (10^18 * msg.value / rate) + (40 * 10^18 * msg.value / rate / 100):
                                require (10^18 * msg.value / rate) + (40 * 10^18 * msg.value / rate / 100)
                                require (10^18 * msg.value / rate * refererPercent) + (40 * 10^18 * msg.value / rate / 100 * refererPercent) / (10^18 * msg.value / rate) + (40 * 10^18 * msg.value / rate / 100) == refererPercent
                            require countOfSaleTokens + (10^18 * msg.value / rate) + (40 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                            if availableTokensforPreICO <= countOfSaleTokens + (10^18 * msg.value / rate) + (40 * 10^18 * msg.value / rate / 100):
                                require countOfSaleTokens <= availableTokensforPreICO
                                require availableTokensforPreICO >= countOfSaleTokens
                                countOfSaleTokens = availableTokensforPreICO
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                require ext_call.success
                                if availableTokensforPreICO - countOfSaleTokens:
                                    require availableTokensforPreICO - countOfSaleTokens
                                    require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                call msg.sender with:
                                   value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                            else:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (10^18 * msg.value / rate) + (40 * 10^18 * msg.value / rate / 100)
                                require ext_call.success
                                require currentPreICObalance + msg.value >= currentPreICObalance
                                currentPreICObalance += msg.value
                                require countOfSaleTokens + (10^18 * msg.value / rate) + (40 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                countOfSaleTokens = countOfSaleTokens + (10^18 * msg.value / rate) + (40 * 10^18 * msg.value / rate / 100)
                                require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                balances[address(msg.sender)] += msg.value
                                require countOfSaleTokens + (10^18 * msg.value / rate) + (40 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                require (10^18 * msg.value / rate * refererPercent) + (40 * 10^18 * msg.value / rate / 100 * refererPercent) / 100 >= 0
                                if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (40 * 10^18 * msg.value / rate / 100) + ((10^18 * msg.value / rate * refererPercent) + (40 * 10^18 * msg.value / rate / 100 * refererPercent) / 100):
                                    if address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t):
                                        if (10^18 * msg.value / rate * refererPercent) + (40 * 10^18 * msg.value / rate / 100 * refererPercent) / 100 > 0:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t), (10^18 * msg.value / rate * refererPercent) + (40 * 10^18 * msg.value / rate / 100 * refererPercent) / 100
                                            require ext_call.success
                                            require countOfSaleTokens + ((10^18 * msg.value / rate * refererPercent) + (40 * 10^18 * msg.value / rate / 100 * refererPercent) / 100) >= countOfSaleTokens
                                            countOfSaleTokens += (10^18 * msg.value / rate * refererPercent) + (40 * 10^18 * msg.value / rate / 100 * refererPercent) / 100
            else:
                require start + (336 * 24 * 3600) >= start
                require start + (504 * 24 * 3600) >= start
                if block.timestamp < start + (336 * 24 * 3600):
                    if block.timestamp < start + (504 * 24 * 3600):
                        require 10^18 * msg.value / rate >= 10^18 * msg.value / rate
                        require start + (336 * 24 * 3600) >= start
                        if block.timestamp < start + (336 * 24 * 3600):
                            require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                            if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate):
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 10^18 * msg.value / rate
                                require ext_call.success
                                require currentPreICObalance + msg.value >= currentPreICObalance
                                currentPreICObalance += msg.value
                                require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                countOfSaleTokens += 10^18 * msg.value / rate
                                require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                balances[address(msg.sender)] += msg.value
                                require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                            else:
                                require countOfSaleTokens <= availableTokensforPreICO
                                require availableTokensforPreICO >= countOfSaleTokens
                                countOfSaleTokens = availableTokensforPreICO
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                require ext_call.success
                                if availableTokensforPreICO - countOfSaleTokens:
                                    require availableTokensforPreICO - countOfSaleTokens
                                    require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                call msg.sender with:
                                   value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        else:
                            require start + (672 * 24 * 3600) >= start
                            if block.timestamp >= start + (672 * 24 * 3600):
                                require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate):
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 10^18 * msg.value / rate
                                    require ext_call.success
                                    require currentPreICObalance + msg.value >= currentPreICObalance
                                    currentPreICObalance += msg.value
                                    require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                    countOfSaleTokens += 10^18 * msg.value / rate
                                    require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                    balances[address(msg.sender)] += msg.value
                                    require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                else:
                                    require countOfSaleTokens <= availableTokensforPreICO
                                    require availableTokensforPreICO >= countOfSaleTokens
                                    countOfSaleTokens = availableTokensforPreICO
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                    require ext_call.success
                                    if availableTokensforPreICO - countOfSaleTokens:
                                        require availableTokensforPreICO - countOfSaleTokens
                                        require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                    require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                    require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                    require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                    balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                    require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                    require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                    currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                    call msg.sender with:
                                       value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            else:
                                if 20 != calldata.size:
                                    require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                    if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate):
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 10^18 * msg.value / rate
                                        require ext_call.success
                                        require currentPreICObalance + msg.value >= currentPreICObalance
                                        currentPreICObalance += msg.value
                                        require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                        countOfSaleTokens += 10^18 * msg.value / rate
                                        require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                        balances[address(msg.sender)] += msg.value
                                        require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                    else:
                                        require countOfSaleTokens <= availableTokensforPreICO
                                        require availableTokensforPreICO >= countOfSaleTokens
                                        countOfSaleTokens = availableTokensforPreICO
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                        require ext_call.success
                                        if availableTokensforPreICO - countOfSaleTokens:
                                            require availableTokensforPreICO - countOfSaleTokens
                                            require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                        require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                        require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                        balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                        require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                        currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                        call msg.sender with:
                                           value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                else:
                                    mem[96] = calldata.size
                                    mem[128 len calldata.size] = call.data[0 len calldata.size]
                                    idx = 20
                                    s = 1
                                    t = 0
                                    while idx > 0:
                                        require idx - 1 < calldata.size
                                        idx = idx - 1
                                        s = 256 * s
                                        t = t + (mem[idx + 127 len 1] * s)
                                        continue 
                                    require address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t) != msg.sender
                                    if 10^18 * msg.value / rate:
                                        require 10^18 * msg.value / rate
                                        require 10^18 * msg.value / rate * refererPercent / 10^18 * msg.value / rate == refererPercent
                                    require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                    if availableTokensforPreICO <= countOfSaleTokens + (10^18 * msg.value / rate):
                                        require countOfSaleTokens <= availableTokensforPreICO
                                        require availableTokensforPreICO >= countOfSaleTokens
                                        countOfSaleTokens = availableTokensforPreICO
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                        require ext_call.success
                                        if availableTokensforPreICO - countOfSaleTokens:
                                            require availableTokensforPreICO - countOfSaleTokens
                                            require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                        require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                        require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                        balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                        require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                        currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                        call msg.sender with:
                                           value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 10^18 * msg.value / rate
                                        require ext_call.success
                                        require currentPreICObalance + msg.value >= currentPreICObalance
                                        currentPreICObalance += msg.value
                                        require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                        countOfSaleTokens += 10^18 * msg.value / rate
                                        require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                        balances[address(msg.sender)] += msg.value
                                        require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                        require 10^18 * msg.value / rate * refererPercent / 100 >= 0
                                        if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (10^18 * msg.value / rate * refererPercent / 100):
                                            if address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t):
                                                if 10^18 * msg.value / rate * refererPercent / 100 > 0:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t), 10^18 * msg.value / rate * refererPercent / 100
                                                    require ext_call.success
                                                    require countOfSaleTokens + (10^18 * msg.value / rate * refererPercent / 100) >= countOfSaleTokens
                                                    countOfSaleTokens += 10^18 * msg.value / rate * refererPercent / 100
                    else:
                        require start + (672 * 24 * 3600) >= start
                        if block.timestamp >= start + (672 * 24 * 3600):
                            require 10^18 * msg.value / rate >= 10^18 * msg.value / rate
                            require start + (336 * 24 * 3600) >= start
                            if block.timestamp < start + (336 * 24 * 3600):
                                require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate):
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 10^18 * msg.value / rate
                                    require ext_call.success
                                    require currentPreICObalance + msg.value >= currentPreICObalance
                                    currentPreICObalance += msg.value
                                    require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                    countOfSaleTokens += 10^18 * msg.value / rate
                                    require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                    balances[address(msg.sender)] += msg.value
                                    require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                else:
                                    require countOfSaleTokens <= availableTokensforPreICO
                                    require availableTokensforPreICO >= countOfSaleTokens
                                    countOfSaleTokens = availableTokensforPreICO
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                    require ext_call.success
                                    if availableTokensforPreICO - countOfSaleTokens:
                                        require availableTokensforPreICO - countOfSaleTokens
                                        require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                    require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                    require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                    require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                    balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                    require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                    require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                    currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                    call msg.sender with:
                                       value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            else:
                                require start + (672 * 24 * 3600) >= start
                                if block.timestamp >= start + (672 * 24 * 3600):
                                    require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                    if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate):
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 10^18 * msg.value / rate
                                        require ext_call.success
                                        require currentPreICObalance + msg.value >= currentPreICObalance
                                        currentPreICObalance += msg.value
                                        require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                        countOfSaleTokens += 10^18 * msg.value / rate
                                        require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                        balances[address(msg.sender)] += msg.value
                                        require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                    else:
                                        require countOfSaleTokens <= availableTokensforPreICO
                                        require availableTokensforPreICO >= countOfSaleTokens
                                        countOfSaleTokens = availableTokensforPreICO
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                        require ext_call.success
                                        if availableTokensforPreICO - countOfSaleTokens:
                                            require availableTokensforPreICO - countOfSaleTokens
                                            require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                        require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                        require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                        balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                        require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                        currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                        call msg.sender with:
                                           value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                else:
                                    if 20 != calldata.size:
                                        require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                        if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate):
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 10^18 * msg.value / rate
                                            require ext_call.success
                                            require currentPreICObalance + msg.value >= currentPreICObalance
                                            currentPreICObalance += msg.value
                                            require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                            countOfSaleTokens += 10^18 * msg.value / rate
                                            require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                            balances[address(msg.sender)] += msg.value
                                            require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                        else:
                                            require countOfSaleTokens <= availableTokensforPreICO
                                            require availableTokensforPreICO >= countOfSaleTokens
                                            countOfSaleTokens = availableTokensforPreICO
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                            require ext_call.success
                                            if availableTokensforPreICO - countOfSaleTokens:
                                                require availableTokensforPreICO - countOfSaleTokens
                                                require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                            require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                            require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                            require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                            balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                            require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                            require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                            currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                            call msg.sender with:
                                               value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                    else:
                                        mem[96] = calldata.size
                                        mem[128 len calldata.size] = call.data[0 len calldata.size]
                                        idx = 20
                                        s = 1
                                        t = 0
                                        while idx > 0:
                                            require idx - 1 < calldata.size
                                            idx = idx - 1
                                            s = 256 * s
                                            t = t + (mem[idx + 127 len 1] * s)
                                            continue 
                                        require address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t) != msg.sender
                                        if 10^18 * msg.value / rate:
                                            require 10^18 * msg.value / rate
                                            require 10^18 * msg.value / rate * refererPercent / 10^18 * msg.value / rate == refererPercent
                                        require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                        if availableTokensforPreICO <= countOfSaleTokens + (10^18 * msg.value / rate):
                                            require countOfSaleTokens <= availableTokensforPreICO
                                            require availableTokensforPreICO >= countOfSaleTokens
                                            countOfSaleTokens = availableTokensforPreICO
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                            require ext_call.success
                                            if availableTokensforPreICO - countOfSaleTokens:
                                                require availableTokensforPreICO - countOfSaleTokens
                                                require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                            require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                            require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                            require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                            balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                            require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                            require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                            currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                            call msg.sender with:
                                               value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 10^18 * msg.value / rate
                                            require ext_call.success
                                            require currentPreICObalance + msg.value >= currentPreICObalance
                                            currentPreICObalance += msg.value
                                            require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                            countOfSaleTokens += 10^18 * msg.value / rate
                                            require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                            balances[address(msg.sender)] += msg.value
                                            require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                            require 10^18 * msg.value / rate * refererPercent / 100 >= 0
                                            if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (10^18 * msg.value / rate * refererPercent / 100):
                                                if address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t):
                                                    if 10^18 * msg.value / rate * refererPercent / 100 > 0:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t), 10^18 * msg.value / rate * refererPercent / 100
                                                        require ext_call.success
                                                        require countOfSaleTokens + (10^18 * msg.value / rate * refererPercent / 100) >= countOfSaleTokens
                                                        countOfSaleTokens += 10^18 * msg.value / rate * refererPercent / 100
                        else:
                            if 10^18 * msg.value / rate:
                                require 10^18 * msg.value / rate
                                require 30 * 10^18 * msg.value / rate / 10^18 * msg.value / rate == 30
                            require (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= 10^18 * msg.value / rate
                            require start + (336 * 24 * 3600) >= start
                            if block.timestamp < start + (336 * 24 * 3600):
                                require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100):
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100)
                                    require ext_call.success
                                    require currentPreICObalance + msg.value >= currentPreICObalance
                                    currentPreICObalance += msg.value
                                    require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                    countOfSaleTokens = countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100)
                                    require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                    balances[address(msg.sender)] += msg.value
                                    require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                else:
                                    require countOfSaleTokens <= availableTokensforPreICO
                                    require availableTokensforPreICO >= countOfSaleTokens
                                    countOfSaleTokens = availableTokensforPreICO
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                    require ext_call.success
                                    if availableTokensforPreICO - countOfSaleTokens:
                                        require availableTokensforPreICO - countOfSaleTokens
                                        require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                    require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                    require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                    require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                    balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                    require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                    require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                    currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                    call msg.sender with:
                                       value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            else:
                                require start + (672 * 24 * 3600) >= start
                                if block.timestamp >= start + (672 * 24 * 3600):
                                    require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                    if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100):
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100)
                                        require ext_call.success
                                        require currentPreICObalance + msg.value >= currentPreICObalance
                                        currentPreICObalance += msg.value
                                        require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                        countOfSaleTokens = countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100)
                                        require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                        balances[address(msg.sender)] += msg.value
                                        require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                    else:
                                        require countOfSaleTokens <= availableTokensforPreICO
                                        require availableTokensforPreICO >= countOfSaleTokens
                                        countOfSaleTokens = availableTokensforPreICO
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                        require ext_call.success
                                        if availableTokensforPreICO - countOfSaleTokens:
                                            require availableTokensforPreICO - countOfSaleTokens
                                            require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                        require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                        require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                        balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                        require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                        currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                        call msg.sender with:
                                           value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                else:
                                    if 20 != calldata.size:
                                        require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                        if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100):
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100)
                                            require ext_call.success
                                            require currentPreICObalance + msg.value >= currentPreICObalance
                                            currentPreICObalance += msg.value
                                            require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                            countOfSaleTokens = countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100)
                                            require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                            balances[address(msg.sender)] += msg.value
                                            require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                        else:
                                            require countOfSaleTokens <= availableTokensforPreICO
                                            require availableTokensforPreICO >= countOfSaleTokens
                                            countOfSaleTokens = availableTokensforPreICO
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                            require ext_call.success
                                            if availableTokensforPreICO - countOfSaleTokens:
                                                require availableTokensforPreICO - countOfSaleTokens
                                                require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                            require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                            require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                            require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                            balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                            require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                            require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                            currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                            call msg.sender with:
                                               value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                    else:
                                        mem[96] = calldata.size
                                        mem[128 len calldata.size] = call.data[0 len calldata.size]
                                        idx = 20
                                        s = 1
                                        t = 0
                                        while idx > 0:
                                            require idx - 1 < calldata.size
                                            idx = idx - 1
                                            s = 256 * s
                                            t = t + (mem[idx + 127 len 1] * s)
                                            continue 
                                        require address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t) != msg.sender
                                        if (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100):
                                            require (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100)
                                            require (10^18 * msg.value / rate * refererPercent) + (30 * 10^18 * msg.value / rate / 100 * refererPercent) / (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) == refererPercent
                                        require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                        if availableTokensforPreICO <= countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100):
                                            require countOfSaleTokens <= availableTokensforPreICO
                                            require availableTokensforPreICO >= countOfSaleTokens
                                            countOfSaleTokens = availableTokensforPreICO
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                            require ext_call.success
                                            if availableTokensforPreICO - countOfSaleTokens:
                                                require availableTokensforPreICO - countOfSaleTokens
                                                require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                            require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                            require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                            require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                            balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                            require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                            require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                            currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                            call msg.sender with:
                                               value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100)
                                            require ext_call.success
                                            require currentPreICObalance + msg.value >= currentPreICObalance
                                            currentPreICObalance += msg.value
                                            require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                            countOfSaleTokens = countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100)
                                            require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                            balances[address(msg.sender)] += msg.value
                                            require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                            require (10^18 * msg.value / rate * refererPercent) + (30 * 10^18 * msg.value / rate / 100 * refererPercent) / 100 >= 0
                                            if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) + ((10^18 * msg.value / rate * refererPercent) + (30 * 10^18 * msg.value / rate / 100 * refererPercent) / 100):
                                                if address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t):
                                                    if (10^18 * msg.value / rate * refererPercent) + (30 * 10^18 * msg.value / rate / 100 * refererPercent) / 100 > 0:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t), (10^18 * msg.value / rate * refererPercent) + (30 * 10^18 * msg.value / rate / 100 * refererPercent) / 100
                                                        require ext_call.success
                                                        require countOfSaleTokens + ((10^18 * msg.value / rate * refererPercent) + (30 * 10^18 * msg.value / rate / 100 * refererPercent) / 100) >= countOfSaleTokens
                                                        countOfSaleTokens += (10^18 * msg.value / rate * refererPercent) + (30 * 10^18 * msg.value / rate / 100 * refererPercent) / 100
                else:
                    if block.timestamp < start + (504 * 24 * 3600):
                        if 10^18 * msg.value / rate:
                            require 10^18 * msg.value / rate
                            require 35 * 10^18 * msg.value / rate / 10^18 * msg.value / rate == 35
                        require (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100) >= 10^18 * msg.value / rate
                        require start + (336 * 24 * 3600) >= start
                        if block.timestamp < start + (336 * 24 * 3600):
                            require countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                            if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100):
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100)
                                require ext_call.success
                                require currentPreICObalance + msg.value >= currentPreICObalance
                                currentPreICObalance += msg.value
                                require countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                countOfSaleTokens = countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100)
                                require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                balances[address(msg.sender)] += msg.value
                                require countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                            else:
                                require countOfSaleTokens <= availableTokensforPreICO
                                require availableTokensforPreICO >= countOfSaleTokens
                                countOfSaleTokens = availableTokensforPreICO
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                require ext_call.success
                                if availableTokensforPreICO - countOfSaleTokens:
                                    require availableTokensforPreICO - countOfSaleTokens
                                    require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                call msg.sender with:
                                   value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        else:
                            require start + (672 * 24 * 3600) >= start
                            if block.timestamp >= start + (672 * 24 * 3600):
                                require countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100):
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100)
                                    require ext_call.success
                                    require currentPreICObalance + msg.value >= currentPreICObalance
                                    currentPreICObalance += msg.value
                                    require countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                    countOfSaleTokens = countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100)
                                    require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                    balances[address(msg.sender)] += msg.value
                                    require countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                else:
                                    require countOfSaleTokens <= availableTokensforPreICO
                                    require availableTokensforPreICO >= countOfSaleTokens
                                    countOfSaleTokens = availableTokensforPreICO
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                    require ext_call.success
                                    if availableTokensforPreICO - countOfSaleTokens:
                                        require availableTokensforPreICO - countOfSaleTokens
                                        require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                    require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                    require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                    require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                    balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                    require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                    require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                    currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                    call msg.sender with:
                                       value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            else:
                                if 20 != calldata.size:
                                    require countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                    if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100):
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100)
                                        require ext_call.success
                                        require currentPreICObalance + msg.value >= currentPreICObalance
                                        currentPreICObalance += msg.value
                                        require countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                        countOfSaleTokens = countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100)
                                        require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                        balances[address(msg.sender)] += msg.value
                                        require countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                    else:
                                        require countOfSaleTokens <= availableTokensforPreICO
                                        require availableTokensforPreICO >= countOfSaleTokens
                                        countOfSaleTokens = availableTokensforPreICO
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                        require ext_call.success
                                        if availableTokensforPreICO - countOfSaleTokens:
                                            require availableTokensforPreICO - countOfSaleTokens
                                            require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                        require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                        require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                        balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                        require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                        currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                        call msg.sender with:
                                           value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                else:
                                    mem[96] = calldata.size
                                    mem[128 len calldata.size] = call.data[0 len calldata.size]
                                    idx = 20
                                    s = 1
                                    t = 0
                                    while idx > 0:
                                        require idx - 1 < calldata.size
                                        idx = idx - 1
                                        s = 256 * s
                                        t = t + (mem[idx + 127 len 1] * s)
                                        continue 
                                    require address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t) != msg.sender
                                    if (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100):
                                        require (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100)
                                        require (10^18 * msg.value / rate * refererPercent) + (35 * 10^18 * msg.value / rate / 100 * refererPercent) / (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100) == refererPercent
                                    require countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                    if availableTokensforPreICO <= countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100):
                                        require countOfSaleTokens <= availableTokensforPreICO
                                        require availableTokensforPreICO >= countOfSaleTokens
                                        countOfSaleTokens = availableTokensforPreICO
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                        require ext_call.success
                                        if availableTokensforPreICO - countOfSaleTokens:
                                            require availableTokensforPreICO - countOfSaleTokens
                                            require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                        require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                        require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                        balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                        require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                        currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                        call msg.sender with:
                                           value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100)
                                        require ext_call.success
                                        require currentPreICObalance + msg.value >= currentPreICObalance
                                        currentPreICObalance += msg.value
                                        require countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                        countOfSaleTokens = countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100)
                                        require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                        balances[address(msg.sender)] += msg.value
                                        require countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                        require (10^18 * msg.value / rate * refererPercent) + (35 * 10^18 * msg.value / rate / 100 * refererPercent) / 100 >= 0
                                        if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (35 * 10^18 * msg.value / rate / 100) + ((10^18 * msg.value / rate * refererPercent) + (35 * 10^18 * msg.value / rate / 100 * refererPercent) / 100):
                                            if address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t):
                                                if (10^18 * msg.value / rate * refererPercent) + (35 * 10^18 * msg.value / rate / 100 * refererPercent) / 100 > 0:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t), (10^18 * msg.value / rate * refererPercent) + (35 * 10^18 * msg.value / rate / 100 * refererPercent) / 100
                                                    require ext_call.success
                                                    require countOfSaleTokens + ((10^18 * msg.value / rate * refererPercent) + (35 * 10^18 * msg.value / rate / 100 * refererPercent) / 100) >= countOfSaleTokens
                                                    countOfSaleTokens += (10^18 * msg.value / rate * refererPercent) + (35 * 10^18 * msg.value / rate / 100 * refererPercent) / 100
                    else:
                        require start + (504 * 24 * 3600) >= start
                        if block.timestamp < start + (504 * 24 * 3600):
                            require 10^18 * msg.value / rate >= 10^18 * msg.value / rate
                            require start + (336 * 24 * 3600) >= start
                            if block.timestamp < start + (336 * 24 * 3600):
                                require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate):
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 10^18 * msg.value / rate
                                    require ext_call.success
                                    require currentPreICObalance + msg.value >= currentPreICObalance
                                    currentPreICObalance += msg.value
                                    require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                    countOfSaleTokens += 10^18 * msg.value / rate
                                    require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                    balances[address(msg.sender)] += msg.value
                                    require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                else:
                                    require countOfSaleTokens <= availableTokensforPreICO
                                    require availableTokensforPreICO >= countOfSaleTokens
                                    countOfSaleTokens = availableTokensforPreICO
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                    require ext_call.success
                                    if availableTokensforPreICO - countOfSaleTokens:
                                        require availableTokensforPreICO - countOfSaleTokens
                                        require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                    require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                    require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                    require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                    balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                    require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                    require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                    currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                    call msg.sender with:
                                       value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            else:
                                require start + (672 * 24 * 3600) >= start
                                if block.timestamp >= start + (672 * 24 * 3600):
                                    require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                    if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate):
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 10^18 * msg.value / rate
                                        require ext_call.success
                                        require currentPreICObalance + msg.value >= currentPreICObalance
                                        currentPreICObalance += msg.value
                                        require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                        countOfSaleTokens += 10^18 * msg.value / rate
                                        require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                        balances[address(msg.sender)] += msg.value
                                        require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                    else:
                                        require countOfSaleTokens <= availableTokensforPreICO
                                        require availableTokensforPreICO >= countOfSaleTokens
                                        countOfSaleTokens = availableTokensforPreICO
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                        require ext_call.success
                                        if availableTokensforPreICO - countOfSaleTokens:
                                            require availableTokensforPreICO - countOfSaleTokens
                                            require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                        require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                        require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                        balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                        require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                        currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                        call msg.sender with:
                                           value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                else:
                                    if 20 != calldata.size:
                                        require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                        if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate):
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 10^18 * msg.value / rate
                                            require ext_call.success
                                            require currentPreICObalance + msg.value >= currentPreICObalance
                                            currentPreICObalance += msg.value
                                            require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                            countOfSaleTokens += 10^18 * msg.value / rate
                                            require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                            balances[address(msg.sender)] += msg.value
                                            require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                        else:
                                            require countOfSaleTokens <= availableTokensforPreICO
                                            require availableTokensforPreICO >= countOfSaleTokens
                                            countOfSaleTokens = availableTokensforPreICO
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                            require ext_call.success
                                            if availableTokensforPreICO - countOfSaleTokens:
                                                require availableTokensforPreICO - countOfSaleTokens
                                                require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                            require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                            require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                            require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                            balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                            require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                            require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                            currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                            call msg.sender with:
                                               value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                    else:
                                        mem[96] = calldata.size
                                        mem[128 len calldata.size] = call.data[0 len calldata.size]
                                        idx = 20
                                        s = 1
                                        t = 0
                                        while idx > 0:
                                            require idx - 1 < calldata.size
                                            idx = idx - 1
                                            s = 256 * s
                                            t = t + (mem[idx + 127 len 1] * s)
                                            continue 
                                        require address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t) != msg.sender
                                        if 10^18 * msg.value / rate:
                                            require 10^18 * msg.value / rate
                                            require 10^18 * msg.value / rate * refererPercent / 10^18 * msg.value / rate == refererPercent
                                        require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                        if availableTokensforPreICO <= countOfSaleTokens + (10^18 * msg.value / rate):
                                            require countOfSaleTokens <= availableTokensforPreICO
                                            require availableTokensforPreICO >= countOfSaleTokens
                                            countOfSaleTokens = availableTokensforPreICO
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                            require ext_call.success
                                            if availableTokensforPreICO - countOfSaleTokens:
                                                require availableTokensforPreICO - countOfSaleTokens
                                                require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                            require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                            require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                            require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                            balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                            require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                            require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                            currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                            call msg.sender with:
                                               value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 10^18 * msg.value / rate
                                            require ext_call.success
                                            require currentPreICObalance + msg.value >= currentPreICObalance
                                            currentPreICObalance += msg.value
                                            require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                            countOfSaleTokens += 10^18 * msg.value / rate
                                            require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                            balances[address(msg.sender)] += msg.value
                                            require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                            require 10^18 * msg.value / rate * refererPercent / 100 >= 0
                                            if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (10^18 * msg.value / rate * refererPercent / 100):
                                                if address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t):
                                                    if 10^18 * msg.value / rate * refererPercent / 100 > 0:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t), 10^18 * msg.value / rate * refererPercent / 100
                                                        require ext_call.success
                                                        require countOfSaleTokens + (10^18 * msg.value / rate * refererPercent / 100) >= countOfSaleTokens
                                                        countOfSaleTokens += 10^18 * msg.value / rate * refererPercent / 100
                        else:
                            require start + (672 * 24 * 3600) >= start
                            if block.timestamp >= start + (672 * 24 * 3600):
                                require 10^18 * msg.value / rate >= 10^18 * msg.value / rate
                                require start + (336 * 24 * 3600) >= start
                                if block.timestamp < start + (336 * 24 * 3600):
                                    require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                    if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate):
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 10^18 * msg.value / rate
                                        require ext_call.success
                                        require currentPreICObalance + msg.value >= currentPreICObalance
                                        currentPreICObalance += msg.value
                                        require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                        countOfSaleTokens += 10^18 * msg.value / rate
                                        require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                        balances[address(msg.sender)] += msg.value
                                        require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                    else:
                                        require countOfSaleTokens <= availableTokensforPreICO
                                        require availableTokensforPreICO >= countOfSaleTokens
                                        countOfSaleTokens = availableTokensforPreICO
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                        require ext_call.success
                                        if availableTokensforPreICO - countOfSaleTokens:
                                            require availableTokensforPreICO - countOfSaleTokens
                                            require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                        require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                        require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                        balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                        require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                        currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                        call msg.sender with:
                                           value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                else:
                                    require start + (672 * 24 * 3600) >= start
                                    if block.timestamp >= start + (672 * 24 * 3600):
                                        require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                        if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate):
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 10^18 * msg.value / rate
                                            require ext_call.success
                                            require currentPreICObalance + msg.value >= currentPreICObalance
                                            currentPreICObalance += msg.value
                                            require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                            countOfSaleTokens += 10^18 * msg.value / rate
                                            require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                            balances[address(msg.sender)] += msg.value
                                            require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                        else:
                                            require countOfSaleTokens <= availableTokensforPreICO
                                            require availableTokensforPreICO >= countOfSaleTokens
                                            countOfSaleTokens = availableTokensforPreICO
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                            require ext_call.success
                                            if availableTokensforPreICO - countOfSaleTokens:
                                                require availableTokensforPreICO - countOfSaleTokens
                                                require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                            require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                            require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                            require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                            balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                            require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                            require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                            currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                            call msg.sender with:
                                               value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                    else:
                                        if 20 != calldata.size:
                                            require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                            if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate):
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 10^18 * msg.value / rate
                                                require ext_call.success
                                                require currentPreICObalance + msg.value >= currentPreICObalance
                                                currentPreICObalance += msg.value
                                                require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                                countOfSaleTokens += 10^18 * msg.value / rate
                                                require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                                balances[address(msg.sender)] += msg.value
                                                require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                            else:
                                                require countOfSaleTokens <= availableTokensforPreICO
                                                require availableTokensforPreICO >= countOfSaleTokens
                                                countOfSaleTokens = availableTokensforPreICO
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                                require ext_call.success
                                                if availableTokensforPreICO - countOfSaleTokens:
                                                    require availableTokensforPreICO - countOfSaleTokens
                                                    require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                                require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                                require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                                require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                                balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                                require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                                require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                                currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                                call msg.sender with:
                                                   value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                        else:
                                            mem[96] = calldata.size
                                            mem[128 len calldata.size] = call.data[0 len calldata.size]
                                            idx = 20
                                            s = 1
                                            t = 0
                                            while idx > 0:
                                                require idx - 1 < calldata.size
                                                idx = idx - 1
                                                s = 256 * s
                                                t = t + (mem[idx + 127 len 1] * s)
                                                continue 
                                            require address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t) != msg.sender
                                            if 10^18 * msg.value / rate:
                                                require 10^18 * msg.value / rate
                                                require 10^18 * msg.value / rate * refererPercent / 10^18 * msg.value / rate == refererPercent
                                            require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                            if availableTokensforPreICO <= countOfSaleTokens + (10^18 * msg.value / rate):
                                                require countOfSaleTokens <= availableTokensforPreICO
                                                require availableTokensforPreICO >= countOfSaleTokens
                                                countOfSaleTokens = availableTokensforPreICO
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                                require ext_call.success
                                                if availableTokensforPreICO - countOfSaleTokens:
                                                    require availableTokensforPreICO - countOfSaleTokens
                                                    require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                                require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                                require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                                require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                                balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                                require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                                require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                                currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                                call msg.sender with:
                                                   value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 10^18 * msg.value / rate
                                                require ext_call.success
                                                require currentPreICObalance + msg.value >= currentPreICObalance
                                                currentPreICObalance += msg.value
                                                require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                                countOfSaleTokens += 10^18 * msg.value / rate
                                                require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                                balances[address(msg.sender)] += msg.value
                                                require countOfSaleTokens + (10^18 * msg.value / rate) >= countOfSaleTokens
                                                require 10^18 * msg.value / rate * refererPercent / 100 >= 0
                                                if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (10^18 * msg.value / rate * refererPercent / 100):
                                                    if address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t):
                                                        if 10^18 * msg.value / rate * refererPercent / 100 > 0:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t), 10^18 * msg.value / rate * refererPercent / 100
                                                            require ext_call.success
                                                            require countOfSaleTokens + (10^18 * msg.value / rate * refererPercent / 100) >= countOfSaleTokens
                                                            countOfSaleTokens += 10^18 * msg.value / rate * refererPercent / 100
                            else:
                                if 10^18 * msg.value / rate:
                                    require 10^18 * msg.value / rate
                                    require 30 * 10^18 * msg.value / rate / 10^18 * msg.value / rate == 30
                                require (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= 10^18 * msg.value / rate
                                require start + (336 * 24 * 3600) >= start
                                if block.timestamp < start + (336 * 24 * 3600):
                                    require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                    if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100):
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100)
                                        require ext_call.success
                                        require currentPreICObalance + msg.value >= currentPreICObalance
                                        currentPreICObalance += msg.value
                                        require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                        countOfSaleTokens = countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100)
                                        require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                        balances[address(msg.sender)] += msg.value
                                        require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                    else:
                                        require countOfSaleTokens <= availableTokensforPreICO
                                        require availableTokensforPreICO >= countOfSaleTokens
                                        countOfSaleTokens = availableTokensforPreICO
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                        require ext_call.success
                                        if availableTokensforPreICO - countOfSaleTokens:
                                            require availableTokensforPreICO - countOfSaleTokens
                                            require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                        require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                        require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                        balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                        require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                        require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                        currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                        call msg.sender with:
                                           value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                else:
                                    require start + (672 * 24 * 3600) >= start
                                    if block.timestamp >= start + (672 * 24 * 3600):
                                        require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                        if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100):
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100)
                                            require ext_call.success
                                            require currentPreICObalance + msg.value >= currentPreICObalance
                                            currentPreICObalance += msg.value
                                            require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                            countOfSaleTokens = countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100)
                                            require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                            balances[address(msg.sender)] += msg.value
                                            require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                        else:
                                            require countOfSaleTokens <= availableTokensforPreICO
                                            require availableTokensforPreICO >= countOfSaleTokens
                                            countOfSaleTokens = availableTokensforPreICO
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                            require ext_call.success
                                            if availableTokensforPreICO - countOfSaleTokens:
                                                require availableTokensforPreICO - countOfSaleTokens
                                                require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                            require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                            require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                            require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                            balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                            require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                            require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                            currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                            call msg.sender with:
                                               value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                    else:
                                        if 20 != calldata.size:
                                            require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                            if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100):
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100)
                                                require ext_call.success
                                                require currentPreICObalance + msg.value >= currentPreICObalance
                                                currentPreICObalance += msg.value
                                                require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                                countOfSaleTokens = countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100)
                                                require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                                balances[address(msg.sender)] += msg.value
                                                require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                            else:
                                                require countOfSaleTokens <= availableTokensforPreICO
                                                require availableTokensforPreICO >= countOfSaleTokens
                                                countOfSaleTokens = availableTokensforPreICO
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                                require ext_call.success
                                                if availableTokensforPreICO - countOfSaleTokens:
                                                    require availableTokensforPreICO - countOfSaleTokens
                                                    require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                                require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                                require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                                require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                                balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                                require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                                require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                                currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                                call msg.sender with:
                                                   value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                        else:
                                            mem[96] = calldata.size
                                            mem[128 len calldata.size] = call.data[0 len calldata.size]
                                            idx = 20
                                            s = 1
                                            t = 0
                                            while idx > 0:
                                                require idx - 1 < calldata.size
                                                idx = idx - 1
                                                s = 256 * s
                                                t = t + (mem[idx + 127 len 1] * s)
                                                continue 
                                            require address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t) != msg.sender
                                            if (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100):
                                                require (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100)
                                                require (10^18 * msg.value / rate * refererPercent) + (30 * 10^18 * msg.value / rate / 100 * refererPercent) / (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) == refererPercent
                                            require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                            if availableTokensforPreICO <= countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100):
                                                require countOfSaleTokens <= availableTokensforPreICO
                                                require availableTokensforPreICO >= countOfSaleTokens
                                                countOfSaleTokens = availableTokensforPreICO
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, availableTokensforPreICO - countOfSaleTokens
                                                require ext_call.success
                                                if availableTokensforPreICO - countOfSaleTokens:
                                                    require availableTokensforPreICO - countOfSaleTokens
                                                    require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / availableTokensforPreICO - countOfSaleTokens == rate
                                                require (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18 <= msg.value
                                                require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                                require balances[address(msg.sender)] + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= balances[address(msg.sender)]
                                                balances[address(msg.sender)] += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                                require msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) <= msg.value
                                                require currentPreICObalance + ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) >= currentPreICObalance
                                                currentPreICObalance += (availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18
                                                call msg.sender with:
                                                   value msg.value - ((availableTokensforPreICO * rate) - (countOfSaleTokens * rate) / 10^18) wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100)
                                                require ext_call.success
                                                require currentPreICObalance + msg.value >= currentPreICObalance
                                                currentPreICObalance += msg.value
                                                require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                                countOfSaleTokens = countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100)
                                                require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
                                                balances[address(msg.sender)] += msg.value
                                                require countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) >= countOfSaleTokens
                                                require (10^18 * msg.value / rate * refererPercent) + (30 * 10^18 * msg.value / rate / 100 * refererPercent) / 100 >= 0
                                                if availableTokensforPreICO > countOfSaleTokens + (10^18 * msg.value / rate) + (30 * 10^18 * msg.value / rate / 100) + ((10^18 * msg.value / rate * refererPercent) + (30 * 10^18 * msg.value / rate / 100 * refererPercent) / 100):
                                                    if address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t):
                                                        if (10^18 * msg.value / rate * refererPercent) + (30 * 10^18 * msg.value / rate / 100 * refererPercent) / 100 > 0:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t), (10^18 * msg.value / rate * refererPercent) + (30 * 10^18 * msg.value / rate / 100 * refererPercent) / 100
                                                            require ext_call.success
                                                            require countOfSaleTokens + ((10^18 * msg.value / rate * refererPercent) + (30 * 10^18 * msg.value / rate / 100 * refererPercent) / 100) >= countOfSaleTokens
                                                            countOfSaleTokens += (10^18 * msg.value / rate * refererPercent) + (30 * 10^18 * msg.value / rate / 100 * refererPercent) / 100
}



}
