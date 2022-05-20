contract main {




// =====================  Runtime code  =====================


const name = 'Cryptual Project Token'

const decimals = 0

const symbol = 'CPT'

const CROWDSALE_OPENING_TIME = (426323 * 3600)

const CROWDSALE_CLOSING_TIME = (427800 * 24 * 3600)

const PRESALE_WEI_CAP = 500 * 10^18

const INITIAL_SUPPLY = 283 * 10^6

const PRESALE_RATE = 150000

const PRESALE_CLOSING_TIME = (426144 * 24 * 3600)

const COMBINED_WEI_GOAL = 750 * 10^18

const CROWDSALE_WEI_CAP = 5000 * 10^18

const PRESALE_WEI_GOAL = 50 * 10^18

const PRESALE_OPENING_TIME = (425819 * 3600)


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
address walletAddress;
array of uint256 crowdsaleWeiAvailableLevels;
array of uint256 crowdsaleRates;
array of uint256 crowdsaleMinElapsedTimeLevels;
array of uint256 crowdsaleUserCaps;
mapping of uint256 crowdsaleContributions;
uint256 presaleWeiRaised;
uint256 crowdsaleWeiRaised;
mapping of uint8 stor12;
uint8 stor13;
uint8 stor13; offset 8
uint256 stor13; offset 8
mapping of uint256 presaleDeposited;
mapping of uint256 crowdsaleDeposited;

function crowdsaleUserCaps(uint256 arg1) {
    require arg1 < crowdsaleUserCaps.length
    return crowdsaleUserCaps[arg1]
}

function crowdsaleWeiAvailableLevels(uint256 arg1) {
    require arg1 < crowdsaleWeiAvailableLevels.length
    return crowdsaleWeiAvailableLevels[arg1]
}

function totalSupply() {
    return totalSupply
}

function crowdsaleContributions(address arg1) {
    return crowdsaleContributions[arg1]
}

function isCrowdsaleFinalized() {
    return bool(uint8(stor13.field_8))
}

function wallet() {
    return walletAddress
}

function crowdsaleWeiRaised() {
    return crowdsaleWeiRaised
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    return bool(stor12[arg1])
}

function crowdsaleRates(uint256 arg1) {
    require arg1 < crowdsaleRates.length
    return crowdsaleRates[arg1]
}

function crowdsaleDeposited(address arg1) {
    return crowdsaleDeposited[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function crowdsaleMinElapsedTimeLevels(uint256 arg1) {
    require arg1 < crowdsaleMinElapsedTimeLevels.length
    return crowdsaleMinElapsedTimeLevels[arg1]
}

function presaleDeposited(address arg1) {
    return presaleDeposited[arg1]
}

function isPresaleFinalized() {
    return bool(uint8(stor13.field_0))
}

function presaleWeiRaised() {
    return presaleWeiRaised
}

function presaleGoalReached() {
    return presaleWeiRaised >= 50 * 10^18
}

function addToPresaleWhitelist(address arg1) {
    require msg.sender == owner
    stor12[address(arg1)] = 1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function removeFromPresaleWhitelist(address arg1) {
    require msg.sender == owner
    stor12[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function combinedGoalReached() {
    require presaleWeiRaised + crowdsaleWeiRaised >= presaleWeiRaised
    return presaleWeiRaised + crowdsaleWeiRaised >= 750 * 10^18
}

function addManyToPresaleWhitelist(address[] arg1) {
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 12
        stor12[address(cd[((32 * idx) + arg1 + 36)])] = 1
        idx = idx + 1
        continue 
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
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

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function finalizeCrowdsale() {
    require uint8(stor13.field_0)
    require presaleWeiRaised >= 50 * 10^18
    require not uint8(stor13.field_8)
    require block.timestamp > 427800 * 24 * 3600
    require presaleWeiRaised + crowdsaleWeiRaised >= presaleWeiRaised
    if presaleWeiRaised + crowdsaleWeiRaised < 750 * 10^18:
        emit RefundsEnabled()
    else:
        call walletAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit CrowdsaleFinalized()
    Mask(248, 0, stor13.field_8) = 1
}

function getCrowdsaleUserCap() {
    require block.timestamp >= 426323 * 3600
    require block.timestamp <= 427800 * 24 * 3600
    require 426323 * 3600 <= block.timestamp
    idx = 0
    while idx < crowdsaleUserCaps.length:
        require idx < crowdsaleMinElapsedTimeLevels.length
        mem[0] = 7
        if block.timestamp - (426323 * 3600) >= crowdsaleMinElapsedTimeLevels[idx]:
            require idx < crowdsaleMinElapsedTimeLevels.length
            mem[0] = 7
            if crowdsaleMinElapsedTimeLevels[idx] >= 0:
                require idx < crowdsaleUserCaps.length
                mem[0] = 8
        idx = idx + 1
        continue 
    return 0
}

function finalizePresale() {
    require not uint8(stor13.field_0)
    require block.timestamp > 426144 * 24 * 3600
    if presaleWeiRaised < 50 * 10^18:
        emit RefundsEnabled()
    else:
        if eth.balance(this.address) > presaleWeiRaised:
            call walletAddress with:
               value presaleWeiRaised wei
                 gas 2300 * is_zero(value) wei
        else:
            call walletAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit PresaleFinalized()
    uint8(stor13.field_0) = 1
}

function claimRefund() {
    if not uint8(stor13.field_8):
        require uint8(stor13.field_0)
        require presaleWeiRaised < 50 * 10^18
        require presaleDeposited[address(msg.sender)] > 0
        presaleDeposited[address(msg.sender)] = 0
        require presaleDeposited[address(msg.sender)] > 0
        call msg.sender with:
           value presaleDeposited[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Refunded(presaleDeposited[address(msg.sender)], msg.sender);
    else:
        require presaleWeiRaised + crowdsaleWeiRaised >= presaleWeiRaised
        if presaleWeiRaised + crowdsaleWeiRaised < 750 * 10^18:
            require crowdsaleDeposited[address(msg.sender)] > 0
            crowdsaleDeposited[address(msg.sender)] = 0
            require crowdsaleDeposited[address(msg.sender)] > 0
            call msg.sender with:
               value crowdsaleDeposited[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Refunded(crowdsaleDeposited[address(msg.sender)], msg.sender);
        else:
            require uint8(stor13.field_0)
            require presaleWeiRaised < 50 * 10^18
            require presaleDeposited[address(msg.sender)] > 0
            presaleDeposited[address(msg.sender)] = 0
            require presaleDeposited[address(msg.sender)] > 0
            call msg.sender with:
               value presaleDeposited[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Refunded(presaleDeposited[address(msg.sender)], msg.sender);
}

function buyTokens(address arg1) payable {
    mem[64] = 96
    require arg1
    require msg.value
    if block.timestamp < 425819 * 3600:
        require block.timestamp >= 425819 * 3600
        require stor12[address(arg1)]
        require msg.value
        require msg.value
        require 150000 * msg.value / msg.value == 150000
        require 150000 * msg.value / 10^18
        require presaleWeiRaised + msg.value >= presaleWeiRaised
        presaleWeiRaised += msg.value
        require totalSupply + (150000 * msg.value / 10^18) >= totalSupply
        totalSupply += 150000 * msg.value / 10^18
        require balanceOf[address(arg1)] + (150000 * msg.value / 10^18) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += 150000 * msg.value / 10^18
        emit Transfer((150000 * msg.value / 10^18), 0, arg1);
        emit TokenPurchase(msg.value, 150000 * msg.value / 10^18, msg.sender, arg1);
        if block.timestamp < 426323 * 3600:
            if block.timestamp >= 425819 * 3600:
                require presaleDeposited[address(arg1)] + msg.value >= presaleDeposited[address(arg1)]
                presaleDeposited[address(arg1)] += msg.value
        else:
            require crowdsaleContributions[address(arg1)] + msg.value >= crowdsaleContributions[address(arg1)]
            crowdsaleContributions[address(arg1)] += msg.value
            require crowdsaleDeposited[address(arg1)] + msg.value >= crowdsaleDeposited[address(arg1)]
            crowdsaleDeposited[address(arg1)] += msg.value
    else:
        if block.timestamp > 426144 * 24 * 3600:
            if block.timestamp < 426323 * 3600:
                require block.timestamp <= 426144 * 24 * 3600
                require stor12[address(arg1)]
                require msg.value
                require msg.value
                require 150000 * msg.value / msg.value == 150000
                require 150000 * msg.value / 10^18
                require presaleWeiRaised + msg.value >= presaleWeiRaised
                presaleWeiRaised += msg.value
                require totalSupply + (150000 * msg.value / 10^18) >= totalSupply
                totalSupply += 150000 * msg.value / 10^18
                require balanceOf[address(arg1)] + (150000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += 150000 * msg.value / 10^18
                emit Transfer((150000 * msg.value / 10^18), 0, arg1);
                emit TokenPurchase(msg.value, 150000 * msg.value / 10^18, msg.sender, arg1);
                if block.timestamp < 426323 * 3600:
                    if block.timestamp <= 426144 * 24 * 3600:
                        require presaleDeposited[address(arg1)] + msg.value >= presaleDeposited[address(arg1)]
                        presaleDeposited[address(arg1)] += msg.value
                else:
                    require crowdsaleContributions[address(arg1)] + msg.value >= crowdsaleContributions[address(arg1)]
                    crowdsaleContributions[address(arg1)] += msg.value
                    require crowdsaleDeposited[address(arg1)] + msg.value >= crowdsaleDeposited[address(arg1)]
                    crowdsaleDeposited[address(arg1)] += msg.value
            else:
                if block.timestamp > 427800 * 24 * 3600:
                    require block.timestamp <= 426144 * 24 * 3600
                    require stor12[address(arg1)]
                    require msg.value
                    require msg.value
                    require 150000 * msg.value / msg.value == 150000
                    require 150000 * msg.value / 10^18
                    require presaleWeiRaised + msg.value >= presaleWeiRaised
                    presaleWeiRaised += msg.value
                    require totalSupply + (150000 * msg.value / 10^18) >= totalSupply
                    totalSupply += 150000 * msg.value / 10^18
                    require balanceOf[address(arg1)] + (150000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += 150000 * msg.value / 10^18
                    emit Transfer((150000 * msg.value / 10^18), 0, arg1);
                    emit TokenPurchase(msg.value, 150000 * msg.value / 10^18, msg.sender, arg1);
                    if block.timestamp > 427800 * 24 * 3600:
                        if block.timestamp <= 426144 * 24 * 3600:
                            require presaleDeposited[address(arg1)] + msg.value >= presaleDeposited[address(arg1)]
                            presaleDeposited[address(arg1)] += msg.value
                    else:
                        require crowdsaleContributions[address(arg1)] + msg.value >= crowdsaleContributions[address(arg1)]
                        crowdsaleContributions[address(arg1)] += msg.value
                        require crowdsaleDeposited[address(arg1)] + msg.value >= crowdsaleDeposited[address(arg1)]
                        crowdsaleDeposited[address(arg1)] += msg.value
                else:
                    if presaleWeiRaised < 50 * 10^18:
                        require block.timestamp <= 426144 * 24 * 3600
                        require stor12[address(arg1)]
                        require msg.value
                        require msg.value
                        require 150000 * msg.value / msg.value == 150000
                        require 150000 * msg.value / 10^18
                        require presaleWeiRaised + msg.value >= presaleWeiRaised
                        presaleWeiRaised += msg.value
                        require totalSupply + (150000 * msg.value / 10^18) >= totalSupply
                        totalSupply += 150000 * msg.value / 10^18
                        require balanceOf[address(arg1)] + (150000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += 150000 * msg.value / 10^18
                        emit Transfer((150000 * msg.value / 10^18), 0, arg1);
                        emit TokenPurchase(msg.value, 150000 * msg.value / 10^18, msg.sender, arg1);
                        if presaleWeiRaised < 50 * 10^18:
                            if block.timestamp <= 426144 * 24 * 3600:
                                require presaleDeposited[address(arg1)] + msg.value >= presaleDeposited[address(arg1)]
                                presaleDeposited[address(arg1)] += msg.value
                        else:
                            require crowdsaleContributions[address(arg1)] + msg.value >= crowdsaleContributions[address(arg1)]
                            crowdsaleContributions[address(arg1)] += msg.value
                            require crowdsaleDeposited[address(arg1)] + msg.value >= crowdsaleDeposited[address(arg1)]
                            crowdsaleDeposited[address(arg1)] += msg.value
                    else:
                        require crowdsaleWeiRaised + msg.value >= crowdsaleWeiRaised
                        if crowdsaleWeiRaised + msg.value > 5000 * 10^18:
                            require block.timestamp <= 426144 * 24 * 3600
                            require stor12[address(arg1)]
                            require msg.value
                            require msg.value
                            require 150000 * msg.value / msg.value == 150000
                            require 150000 * msg.value / 10^18
                            require presaleWeiRaised + msg.value >= presaleWeiRaised
                            presaleWeiRaised += msg.value
                            require totalSupply + (150000 * msg.value / 10^18) >= totalSupply
                            totalSupply += 150000 * msg.value / 10^18
                            require balanceOf[address(arg1)] + (150000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += 150000 * msg.value / 10^18
                            emit Transfer((150000 * msg.value / 10^18), 0, arg1);
                            emit TokenPurchase(msg.value, 150000 * msg.value / 10^18, msg.sender, arg1);
                        else:
                            require block.timestamp >= 426323 * 3600
                            require block.timestamp <= 427800 * 24 * 3600
                            require 426323 * 3600 <= block.timestamp
                            idx = 0
                            while idx < crowdsaleUserCaps.length:
                                require idx < crowdsaleMinElapsedTimeLevels.length
                                mem[0] = 7
                                if block.timestamp - (426323 * 3600) >= crowdsaleMinElapsedTimeLevels[idx]:
                                    require idx < crowdsaleMinElapsedTimeLevels.length
                                    mem[0] = 7
                                    if crowdsaleMinElapsedTimeLevels[idx] >= 0:
                                        require idx < crowdsaleUserCaps.length
                                        mem[0] = 8
                                idx = idx + 1
                                continue 
                            mem[32] = 9
                            require crowdsaleContributions[address(arg1)] + msg.value >= crowdsaleContributions[address(arg1)]
                            require crowdsaleContributions[address(arg1)] + msg.value <= 0
                            require var58003 < crowdsaleWeiAvailableLevels.length
                            require var58003 < crowdsaleRates.length
                            mem[0] = 6
                            if var58006 >= crowdsaleWeiAvailableLevels[var58003]:
                                require crowdsaleWeiAvailableLevels[var58003] <= var58006
                                var58001 = crowdsaleRates[var58003]
                                var58002 = crowdsaleWeiAvailableLevels[var58003]
                                var58003 = var58003 + 1
                                var58005 = var58005
                                var58006 = var58006 - crowdsaleWeiAvailableLevels[var58003]
                                continue 
                            if var58006 <= 0:
                                if var58005 > crowdsaleWeiAvailableLevels[var58003]:
                                    require crowdsaleWeiAvailableLevels[var58003] <= var58005
                                    if not crowdsaleWeiAvailableLevels[var58003]:
                                        var58001 = crowdsaleRates[var58003]
                                        var58002 = crowdsaleWeiAvailableLevels[var58003]
                                        var58003 = var58003 + 1
                                        var58005 = var58005 - crowdsaleWeiAvailableLevels[var58003]
                                        var58006 = var58006
                                        continue 
                                    require crowdsaleWeiAvailableLevels[var58003]
                                    require crowdsaleWeiAvailableLevels[var58003] * crowdsaleRates[var58003] / crowdsaleWeiAvailableLevels[var58003] == crowdsaleRates[var58003]
                                    require crowdsaleWeiAvailableLevels[var58003] * crowdsaleRates[var58003] >= 0
                                    var58001 = crowdsaleRates[var58003]
                                    var58002 = crowdsaleWeiAvailableLevels[var58003]
                                    var58003 = var58003 + 1
                                    var58005 = var58005 - crowdsaleWeiAvailableLevels[var58003]
                                    var58006 = var58006
                                    continue 
                            else:
                                require var58006 <= crowdsaleWeiAvailableLevels[var58003]
                                if var58005 > crowdsaleWeiAvailableLevels[var58003] - var58006:
                                    require crowdsaleWeiAvailableLevels[var58003] - var58006 <= var58005
                                    if not crowdsaleWeiAvailableLevels[var58003] - var58006:
                                        var58001 = crowdsaleRates[var58003]
                                        var58002 = crowdsaleWeiAvailableLevels[var58003] - var58006
                                        var58003 = var58003 + 1
                                        var58005 = var58005 - crowdsaleWeiAvailableLevels[var58003] + var58006
                                        var58006 = 0
                                        continue 
                                    require crowdsaleWeiAvailableLevels[var58003] - var58006
                                    require (crowdsaleWeiAvailableLevels[var58003] * crowdsaleRates[var58003]) - (var58006 * crowdsaleRates[var58003]) / crowdsaleWeiAvailableLevels[var58003] - var58006 == crowdsaleRates[var58003]
                                    require (crowdsaleWeiAvailableLevels[var58003] * crowdsaleRates[var58003]) - (var58006 * crowdsaleRates[var58003]) >= 0
                                    var58001 = crowdsaleRates[var58003]
                                    var58002 = crowdsaleWeiAvailableLevels[var58003] - var58006
                                    var58003 = var58003 + 1
                                    var58005 = var58005 - crowdsaleWeiAvailableLevels[var58003] + var58006
                                    var58006 = 0
                                    continue 
                            require var58005
                            require var58005
                            require var58005 * crowdsaleRates[var58003] / var58005 == crowdsaleRates[var58003]
                            require var58005 * crowdsaleRates[var58003] >= 0
                            require var58005 * crowdsaleRates[var58003] / 10^18
                            require crowdsaleWeiRaised + msg.value >= crowdsaleWeiRaised
                            crowdsaleWeiRaised += msg.value
                            require totalSupply + (var58005 * crowdsaleRates[var58003] / 10^18) >= totalSupply
                            totalSupply += var58005 * crowdsaleRates[var58003] / 10^18
                            require balanceOf[address(arg1)] + (var58005 * crowdsaleRates[var58003] / 10^18) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += var58005 * crowdsaleRates[var58003] / 10^18
                            emit Transfer((var58005 * crowdsaleRates[var58003] / 10^18), 0, arg1);
                            emit TokenPurchase(msg.value, var58005 * crowdsaleRates[var58003] / 10^18, msg.sender, arg1);
                        if crowdsaleWeiRaised + msg.value > 5000 * 10^18:
                            if block.timestamp <= 426144 * 24 * 3600:
                                require presaleDeposited[address(arg1)] + msg.value >= presaleDeposited[address(arg1)]
                                presaleDeposited[address(arg1)] += msg.value
                        else:
                            require crowdsaleContributions[address(arg1)] + msg.value >= crowdsaleContributions[address(arg1)]
                            crowdsaleContributions[address(arg1)] += msg.value
                            require crowdsaleDeposited[address(arg1)] + msg.value >= crowdsaleDeposited[address(arg1)]
                            crowdsaleDeposited[address(arg1)] += msg.value
        else:
            require presaleWeiRaised + msg.value >= presaleWeiRaised
            if block.timestamp < 426323 * 3600:
                require presaleWeiRaised + msg.value <= 500 * 10^18
                require stor12[address(arg1)]
                require msg.value
                require msg.value
                require 150000 * msg.value / msg.value == 150000
                require 150000 * msg.value / 10^18
                require presaleWeiRaised + msg.value >= presaleWeiRaised
                presaleWeiRaised += msg.value
                require totalSupply + (150000 * msg.value / 10^18) >= totalSupply
                totalSupply += 150000 * msg.value / 10^18
                require balanceOf[address(arg1)] + (150000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += 150000 * msg.value / 10^18
                emit Transfer((150000 * msg.value / 10^18), 0, arg1);
                emit TokenPurchase(msg.value, 150000 * msg.value / 10^18, msg.sender, arg1);
                if block.timestamp < 426323 * 3600:
                    if presaleWeiRaised + msg.value <= 500 * 10^18:
                        require presaleDeposited[address(arg1)] + msg.value >= presaleDeposited[address(arg1)]
                        presaleDeposited[address(arg1)] += msg.value
                else:
                    require crowdsaleContributions[address(arg1)] + msg.value >= crowdsaleContributions[address(arg1)]
                    crowdsaleContributions[address(arg1)] += msg.value
                    require crowdsaleDeposited[address(arg1)] + msg.value >= crowdsaleDeposited[address(arg1)]
                    crowdsaleDeposited[address(arg1)] += msg.value
            else:
                if block.timestamp > 427800 * 24 * 3600:
                    require presaleWeiRaised + msg.value <= 500 * 10^18
                    require stor12[address(arg1)]
                    require msg.value
                    require msg.value
                    require 150000 * msg.value / msg.value == 150000
                    require 150000 * msg.value / 10^18
                    require presaleWeiRaised + msg.value >= presaleWeiRaised
                    presaleWeiRaised += msg.value
                    require totalSupply + (150000 * msg.value / 10^18) >= totalSupply
                    totalSupply += 150000 * msg.value / 10^18
                    require balanceOf[address(arg1)] + (150000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += 150000 * msg.value / 10^18
                    emit Transfer((150000 * msg.value / 10^18), 0, arg1);
                    emit TokenPurchase(msg.value, 150000 * msg.value / 10^18, msg.sender, arg1);
                    if block.timestamp > 427800 * 24 * 3600:
                        if presaleWeiRaised + msg.value <= 500 * 10^18:
                            require presaleDeposited[address(arg1)] + msg.value >= presaleDeposited[address(arg1)]
                            presaleDeposited[address(arg1)] += msg.value
                    else:
                        require crowdsaleContributions[address(arg1)] + msg.value >= crowdsaleContributions[address(arg1)]
                        crowdsaleContributions[address(arg1)] += msg.value
                        require crowdsaleDeposited[address(arg1)] + msg.value >= crowdsaleDeposited[address(arg1)]
                        crowdsaleDeposited[address(arg1)] += msg.value
                else:
                    if presaleWeiRaised < 50 * 10^18:
                        require presaleWeiRaised + msg.value <= 500 * 10^18
                        require stor12[address(arg1)]
                        require msg.value
                        require msg.value
                        require 150000 * msg.value / msg.value == 150000
                        require 150000 * msg.value / 10^18
                        require presaleWeiRaised + msg.value >= presaleWeiRaised
                        presaleWeiRaised += msg.value
                        require totalSupply + (150000 * msg.value / 10^18) >= totalSupply
                        totalSupply += 150000 * msg.value / 10^18
                        require balanceOf[address(arg1)] + (150000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += 150000 * msg.value / 10^18
                        emit Transfer((150000 * msg.value / 10^18), 0, arg1);
                        emit TokenPurchase(msg.value, 150000 * msg.value / 10^18, msg.sender, arg1);
                        if presaleWeiRaised < 50 * 10^18:
                            if presaleWeiRaised + msg.value <= 500 * 10^18:
                                require presaleDeposited[address(arg1)] + msg.value >= presaleDeposited[address(arg1)]
                                presaleDeposited[address(arg1)] += msg.value
                        else:
                            require crowdsaleContributions[address(arg1)] + msg.value >= crowdsaleContributions[address(arg1)]
                            crowdsaleContributions[address(arg1)] += msg.value
                            require crowdsaleDeposited[address(arg1)] + msg.value >= crowdsaleDeposited[address(arg1)]
                            crowdsaleDeposited[address(arg1)] += msg.value
                    else:
                        require crowdsaleWeiRaised + msg.value >= crowdsaleWeiRaised
                        if crowdsaleWeiRaised + msg.value > 5000 * 10^18:
                            require presaleWeiRaised + msg.value <= 500 * 10^18
                            require stor12[address(arg1)]
                            require msg.value
                            require msg.value
                            require 150000 * msg.value / msg.value == 150000
                            require 150000 * msg.value / 10^18
                            require presaleWeiRaised + msg.value >= presaleWeiRaised
                            presaleWeiRaised += msg.value
                            require totalSupply + (150000 * msg.value / 10^18) >= totalSupply
                            totalSupply += 150000 * msg.value / 10^18
                            require balanceOf[address(arg1)] + (150000 * msg.value / 10^18) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += 150000 * msg.value / 10^18
                            emit Transfer((150000 * msg.value / 10^18), 0, arg1);
                            emit TokenPurchase(msg.value, 150000 * msg.value / 10^18, msg.sender, arg1);
                        else:
                            require block.timestamp >= 426323 * 3600
                            require block.timestamp <= 427800 * 24 * 3600
                            require 426323 * 3600 <= block.timestamp
                            idx = 0
                            while idx < crowdsaleUserCaps.length:
                                require idx < crowdsaleMinElapsedTimeLevels.length
                                mem[0] = 7
                                if block.timestamp - (426323 * 3600) >= crowdsaleMinElapsedTimeLevels[idx]:
                                    require idx < crowdsaleMinElapsedTimeLevels.length
                                    mem[0] = 7
                                    if crowdsaleMinElapsedTimeLevels[idx] >= 0:
                                        require idx < crowdsaleUserCaps.length
                                        mem[0] = 8
                                idx = idx + 1
                                continue 
                            mem[32] = 9
                            require crowdsaleContributions[address(arg1)] + msg.value >= crowdsaleContributions[address(arg1)]
                            require crowdsaleContributions[address(arg1)] + msg.value <= 0
                            require var62003 < crowdsaleWeiAvailableLevels.length
                            require var62003 < crowdsaleRates.length
                            mem[0] = 6
                            if var62006 >= crowdsaleWeiAvailableLevels[var62003]:
                                require crowdsaleWeiAvailableLevels[var62003] <= var62006
                                var62001 = crowdsaleRates[var62003]
                                var62002 = crowdsaleWeiAvailableLevels[var62003]
                                var62003 = var62003 + 1
                                var62005 = var62005
                                var62006 = var62006 - crowdsaleWeiAvailableLevels[var62003]
                                continue 
                            if var62006 <= 0:
                                if var62005 > crowdsaleWeiAvailableLevels[var62003]:
                                    require crowdsaleWeiAvailableLevels[var62003] <= var62005
                                    if not crowdsaleWeiAvailableLevels[var62003]:
                                        var62001 = crowdsaleRates[var62003]
                                        var62002 = crowdsaleWeiAvailableLevels[var62003]
                                        var62003 = var62003 + 1
                                        var62005 = var62005 - crowdsaleWeiAvailableLevels[var62003]
                                        var62006 = var62006
                                        continue 
                                    require crowdsaleWeiAvailableLevels[var62003]
                                    require crowdsaleWeiAvailableLevels[var62003] * crowdsaleRates[var62003] / crowdsaleWeiAvailableLevels[var62003] == crowdsaleRates[var62003]
                                    require crowdsaleWeiAvailableLevels[var62003] * crowdsaleRates[var62003] >= 0
                                    var62001 = crowdsaleRates[var62003]
                                    var62002 = crowdsaleWeiAvailableLevels[var62003]
                                    var62003 = var62003 + 1
                                    var62005 = var62005 - crowdsaleWeiAvailableLevels[var62003]
                                    var62006 = var62006
                                    continue 
                            else:
                                require var62006 <= crowdsaleWeiAvailableLevels[var62003]
                                if var62005 > crowdsaleWeiAvailableLevels[var62003] - var62006:
                                    require crowdsaleWeiAvailableLevels[var62003] - var62006 <= var62005
                                    if not crowdsaleWeiAvailableLevels[var62003] - var62006:
                                        var62001 = crowdsaleRates[var62003]
                                        var62002 = crowdsaleWeiAvailableLevels[var62003] - var62006
                                        var62003 = var62003 + 1
                                        var62005 = var62005 - crowdsaleWeiAvailableLevels[var62003] + var62006
                                        var62006 = 0
                                        continue 
                                    require crowdsaleWeiAvailableLevels[var62003] - var62006
                                    require (crowdsaleWeiAvailableLevels[var62003] * crowdsaleRates[var62003]) - (var62006 * crowdsaleRates[var62003]) / crowdsaleWeiAvailableLevels[var62003] - var62006 == crowdsaleRates[var62003]
                                    require (crowdsaleWeiAvailableLevels[var62003] * crowdsaleRates[var62003]) - (var62006 * crowdsaleRates[var62003]) >= 0
                                    var62001 = crowdsaleRates[var62003]
                                    var62002 = crowdsaleWeiAvailableLevels[var62003] - var62006
                                    var62003 = var62003 + 1
                                    var62005 = var62005 - crowdsaleWeiAvailableLevels[var62003] + var62006
                                    var62006 = 0
                                    continue 
                            require var62005
                            require var62005
                            require var62005 * crowdsaleRates[var62003] / var62005 == crowdsaleRates[var62003]
                            require var62005 * crowdsaleRates[var62003] >= 0
                            require var62005 * crowdsaleRates[var62003] / 10^18
                            require crowdsaleWeiRaised + msg.value >= crowdsaleWeiRaised
                            crowdsaleWeiRaised += msg.value
                            require totalSupply + (var62005 * crowdsaleRates[var62003] / 10^18) >= totalSupply
                            totalSupply += var62005 * crowdsaleRates[var62003] / 10^18
                            require balanceOf[address(arg1)] + (var62005 * crowdsaleRates[var62003] / 10^18) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += var62005 * crowdsaleRates[var62003] / 10^18
                            emit Transfer((var62005 * crowdsaleRates[var62003] / 10^18), 0, arg1);
                            emit TokenPurchase(msg.value, var62005 * crowdsaleRates[var62003] / 10^18, msg.sender, arg1);
                        if crowdsaleWeiRaised + msg.value > 5000 * 10^18:
                            if presaleWeiRaised + msg.value <= 500 * 10^18:
                                require presaleDeposited[address(arg1)] + msg.value >= presaleDeposited[address(arg1)]
                                presaleDeposited[address(arg1)] += msg.value
                        else:
                            require crowdsaleContributions[address(arg1)] + msg.value >= crowdsaleContributions[address(arg1)]
                            crowdsaleContributions[address(arg1)] += msg.value
                            require crowdsaleDeposited[address(arg1)] + msg.value >= crowdsaleDeposited[address(arg1)]
                            crowdsaleDeposited[address(arg1)] += msg.value
}

function _fallback() payable {
    mem[64] = 96
    require msg.sender
    require msg.value
    if block.timestamp < 425819 * 3600:
        require block.timestamp >= 425819 * 3600
        require stor12[address(msg.sender)]
        require msg.value
        require msg.value
        require 150000 * msg.value / msg.value == 150000
        require 150000 * msg.value / 10^18
        require presaleWeiRaised + msg.value >= presaleWeiRaised
        presaleWeiRaised += msg.value
        require totalSupply + (150000 * msg.value / 10^18) >= totalSupply
        totalSupply += 150000 * msg.value / 10^18
        require balanceOf[address(msg.sender)] + (150000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 150000 * msg.value / 10^18
        emit Transfer((150000 * msg.value / 10^18), 0, msg.sender);
        emit TokenPurchase(msg.value, 150000 * msg.value / 10^18, msg.sender, msg.sender);
        if block.timestamp < 426323 * 3600:
            if block.timestamp >= 425819 * 3600:
                require presaleDeposited[address(msg.sender)] + msg.value >= presaleDeposited[address(msg.sender)]
                presaleDeposited[address(msg.sender)] += msg.value
        else:
            require crowdsaleContributions[address(msg.sender)] + msg.value >= crowdsaleContributions[address(msg.sender)]
            crowdsaleContributions[address(msg.sender)] += msg.value
            require crowdsaleDeposited[address(msg.sender)] + msg.value >= crowdsaleDeposited[address(msg.sender)]
            crowdsaleDeposited[address(msg.sender)] += msg.value
    else:
        if block.timestamp > 426144 * 24 * 3600:
            if block.timestamp < 426323 * 3600:
                require block.timestamp <= 426144 * 24 * 3600
                require stor12[address(msg.sender)]
                require msg.value
                require msg.value
                require 150000 * msg.value / msg.value == 150000
                require 150000 * msg.value / 10^18
                require presaleWeiRaised + msg.value >= presaleWeiRaised
                presaleWeiRaised += msg.value
                require totalSupply + (150000 * msg.value / 10^18) >= totalSupply
                totalSupply += 150000 * msg.value / 10^18
                require balanceOf[address(msg.sender)] + (150000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 150000 * msg.value / 10^18
                emit Transfer((150000 * msg.value / 10^18), 0, msg.sender);
                emit TokenPurchase(msg.value, 150000 * msg.value / 10^18, msg.sender, msg.sender);
                if block.timestamp < 426323 * 3600:
                    if block.timestamp <= 426144 * 24 * 3600:
                        require presaleDeposited[address(msg.sender)] + msg.value >= presaleDeposited[address(msg.sender)]
                        presaleDeposited[address(msg.sender)] += msg.value
                else:
                    require crowdsaleContributions[address(msg.sender)] + msg.value >= crowdsaleContributions[address(msg.sender)]
                    crowdsaleContributions[address(msg.sender)] += msg.value
                    require crowdsaleDeposited[address(msg.sender)] + msg.value >= crowdsaleDeposited[address(msg.sender)]
                    crowdsaleDeposited[address(msg.sender)] += msg.value
            else:
                if block.timestamp > 427800 * 24 * 3600:
                    require block.timestamp <= 426144 * 24 * 3600
                    require stor12[address(msg.sender)]
                    require msg.value
                    require msg.value
                    require 150000 * msg.value / msg.value == 150000
                    require 150000 * msg.value / 10^18
                    require presaleWeiRaised + msg.value >= presaleWeiRaised
                    presaleWeiRaised += msg.value
                    require totalSupply + (150000 * msg.value / 10^18) >= totalSupply
                    totalSupply += 150000 * msg.value / 10^18
                    require balanceOf[address(msg.sender)] + (150000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 150000 * msg.value / 10^18
                    emit Transfer((150000 * msg.value / 10^18), 0, msg.sender);
                    emit TokenPurchase(msg.value, 150000 * msg.value / 10^18, msg.sender, msg.sender);
                    if block.timestamp > 427800 * 24 * 3600:
                        if block.timestamp <= 426144 * 24 * 3600:
                            require presaleDeposited[address(msg.sender)] + msg.value >= presaleDeposited[address(msg.sender)]
                            presaleDeposited[address(msg.sender)] += msg.value
                    else:
                        require crowdsaleContributions[address(msg.sender)] + msg.value >= crowdsaleContributions[address(msg.sender)]
                        crowdsaleContributions[address(msg.sender)] += msg.value
                        require crowdsaleDeposited[address(msg.sender)] + msg.value >= crowdsaleDeposited[address(msg.sender)]
                        crowdsaleDeposited[address(msg.sender)] += msg.value
                else:
                    if presaleWeiRaised < 50 * 10^18:
                        require block.timestamp <= 426144 * 24 * 3600
                        require stor12[address(msg.sender)]
                        require msg.value
                        require msg.value
                        require 150000 * msg.value / msg.value == 150000
                        require 150000 * msg.value / 10^18
                        require presaleWeiRaised + msg.value >= presaleWeiRaised
                        presaleWeiRaised += msg.value
                        require totalSupply + (150000 * msg.value / 10^18) >= totalSupply
                        totalSupply += 150000 * msg.value / 10^18
                        require balanceOf[address(msg.sender)] + (150000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 150000 * msg.value / 10^18
                        emit Transfer((150000 * msg.value / 10^18), 0, msg.sender);
                        emit TokenPurchase(msg.value, 150000 * msg.value / 10^18, msg.sender, msg.sender);
                        if presaleWeiRaised < 50 * 10^18:
                            if block.timestamp <= 426144 * 24 * 3600:
                                require presaleDeposited[address(msg.sender)] + msg.value >= presaleDeposited[address(msg.sender)]
                                presaleDeposited[address(msg.sender)] += msg.value
                        else:
                            require crowdsaleContributions[address(msg.sender)] + msg.value >= crowdsaleContributions[address(msg.sender)]
                            crowdsaleContributions[address(msg.sender)] += msg.value
                            require crowdsaleDeposited[address(msg.sender)] + msg.value >= crowdsaleDeposited[address(msg.sender)]
                            crowdsaleDeposited[address(msg.sender)] += msg.value
                    else:
                        require crowdsaleWeiRaised + msg.value >= crowdsaleWeiRaised
                        if crowdsaleWeiRaised + msg.value > 5000 * 10^18:
                            require block.timestamp <= 426144 * 24 * 3600
                            require stor12[address(msg.sender)]
                            require msg.value
                            require msg.value
                            require 150000 * msg.value / msg.value == 150000
                            require 150000 * msg.value / 10^18
                            require presaleWeiRaised + msg.value >= presaleWeiRaised
                            presaleWeiRaised += msg.value
                            require totalSupply + (150000 * msg.value / 10^18) >= totalSupply
                            totalSupply += 150000 * msg.value / 10^18
                            require balanceOf[address(msg.sender)] + (150000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 150000 * msg.value / 10^18
                            emit Transfer((150000 * msg.value / 10^18), 0, msg.sender);
                            emit TokenPurchase(msg.value, 150000 * msg.value / 10^18, msg.sender, msg.sender);
                        else:
                            require block.timestamp >= 426323 * 3600
                            require block.timestamp <= 427800 * 24 * 3600
                            require 426323 * 3600 <= block.timestamp
                            idx = 0
                            while idx < crowdsaleUserCaps.length:
                                require idx < crowdsaleMinElapsedTimeLevels.length
                                mem[0] = 7
                                if block.timestamp - (426323 * 3600) >= crowdsaleMinElapsedTimeLevels[idx]:
                                    require idx < crowdsaleMinElapsedTimeLevels.length
                                    mem[0] = 7
                                    if crowdsaleMinElapsedTimeLevels[idx] >= 0:
                                        require idx < crowdsaleUserCaps.length
                                        mem[0] = 8
                                idx = idx + 1
                                continue 
                            mem[32] = 9
                            require crowdsaleContributions[address(msg.sender)] + msg.value >= crowdsaleContributions[address(msg.sender)]
                            require crowdsaleContributions[address(msg.sender)] + msg.value <= 0
                            require var58003 < crowdsaleWeiAvailableLevels.length
                            require var58003 < crowdsaleRates.length
                            mem[0] = 6
                            if var58006 >= crowdsaleWeiAvailableLevels[var58003]:
                                require crowdsaleWeiAvailableLevels[var58003] <= var58006
                                var58001 = crowdsaleRates[var58003]
                                var58002 = crowdsaleWeiAvailableLevels[var58003]
                                var58003 = var58003 + 1
                                var58005 = var58005
                                var58006 = var58006 - crowdsaleWeiAvailableLevels[var58003]
                                continue 
                            if var58006 <= 0:
                                if var58005 > crowdsaleWeiAvailableLevels[var58003]:
                                    require crowdsaleWeiAvailableLevels[var58003] <= var58005
                                    if not crowdsaleWeiAvailableLevels[var58003]:
                                        var58001 = crowdsaleRates[var58003]
                                        var58002 = crowdsaleWeiAvailableLevels[var58003]
                                        var58003 = var58003 + 1
                                        var58005 = var58005 - crowdsaleWeiAvailableLevels[var58003]
                                        var58006 = var58006
                                        continue 
                                    require crowdsaleWeiAvailableLevels[var58003]
                                    require crowdsaleWeiAvailableLevels[var58003] * crowdsaleRates[var58003] / crowdsaleWeiAvailableLevels[var58003] == crowdsaleRates[var58003]
                                    require crowdsaleWeiAvailableLevels[var58003] * crowdsaleRates[var58003] >= 0
                                    var58001 = crowdsaleRates[var58003]
                                    var58002 = crowdsaleWeiAvailableLevels[var58003]
                                    var58003 = var58003 + 1
                                    var58005 = var58005 - crowdsaleWeiAvailableLevels[var58003]
                                    var58006 = var58006
                                    continue 
                            else:
                                require var58006 <= crowdsaleWeiAvailableLevels[var58003]
                                if var58005 > crowdsaleWeiAvailableLevels[var58003] - var58006:
                                    require crowdsaleWeiAvailableLevels[var58003] - var58006 <= var58005
                                    if not crowdsaleWeiAvailableLevels[var58003] - var58006:
                                        var58001 = crowdsaleRates[var58003]
                                        var58002 = crowdsaleWeiAvailableLevels[var58003] - var58006
                                        var58003 = var58003 + 1
                                        var58005 = var58005 - crowdsaleWeiAvailableLevels[var58003] + var58006
                                        var58006 = 0
                                        continue 
                                    require crowdsaleWeiAvailableLevels[var58003] - var58006
                                    require (crowdsaleWeiAvailableLevels[var58003] * crowdsaleRates[var58003]) - (var58006 * crowdsaleRates[var58003]) / crowdsaleWeiAvailableLevels[var58003] - var58006 == crowdsaleRates[var58003]
                                    require (crowdsaleWeiAvailableLevels[var58003] * crowdsaleRates[var58003]) - (var58006 * crowdsaleRates[var58003]) >= 0
                                    var58001 = crowdsaleRates[var58003]
                                    var58002 = crowdsaleWeiAvailableLevels[var58003] - var58006
                                    var58003 = var58003 + 1
                                    var58005 = var58005 - crowdsaleWeiAvailableLevels[var58003] + var58006
                                    var58006 = 0
                                    continue 
                            require var58005
                            require var58005
                            require var58005 * crowdsaleRates[var58003] / var58005 == crowdsaleRates[var58003]
                            require var58005 * crowdsaleRates[var58003] >= 0
                            require var58005 * crowdsaleRates[var58003] / 10^18
                            require crowdsaleWeiRaised + msg.value >= crowdsaleWeiRaised
                            crowdsaleWeiRaised += msg.value
                            require totalSupply + (var58005 * crowdsaleRates[var58003] / 10^18) >= totalSupply
                            totalSupply += var58005 * crowdsaleRates[var58003] / 10^18
                            require balanceOf[address(msg.sender)] + (var58005 * crowdsaleRates[var58003] / 10^18) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += var58005 * crowdsaleRates[var58003] / 10^18
                            emit Transfer((var58005 * crowdsaleRates[var58003] / 10^18), 0, msg.sender);
                            emit TokenPurchase(msg.value, var58005 * crowdsaleRates[var58003] / 10^18, msg.sender, msg.sender);
                        if crowdsaleWeiRaised + msg.value > 5000 * 10^18:
                            if block.timestamp <= 426144 * 24 * 3600:
                                require presaleDeposited[address(msg.sender)] + msg.value >= presaleDeposited[address(msg.sender)]
                                presaleDeposited[address(msg.sender)] += msg.value
                        else:
                            require crowdsaleContributions[address(msg.sender)] + msg.value >= crowdsaleContributions[address(msg.sender)]
                            crowdsaleContributions[address(msg.sender)] += msg.value
                            require crowdsaleDeposited[address(msg.sender)] + msg.value >= crowdsaleDeposited[address(msg.sender)]
                            crowdsaleDeposited[address(msg.sender)] += msg.value
        else:
            require presaleWeiRaised + msg.value >= presaleWeiRaised
            if block.timestamp < 426323 * 3600:
                require presaleWeiRaised + msg.value <= 500 * 10^18
                require stor12[address(msg.sender)]
                require msg.value
                require msg.value
                require 150000 * msg.value / msg.value == 150000
                require 150000 * msg.value / 10^18
                require presaleWeiRaised + msg.value >= presaleWeiRaised
                presaleWeiRaised += msg.value
                require totalSupply + (150000 * msg.value / 10^18) >= totalSupply
                totalSupply += 150000 * msg.value / 10^18
                require balanceOf[address(msg.sender)] + (150000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 150000 * msg.value / 10^18
                emit Transfer((150000 * msg.value / 10^18), 0, msg.sender);
                emit TokenPurchase(msg.value, 150000 * msg.value / 10^18, msg.sender, msg.sender);
                if block.timestamp < 426323 * 3600:
                    if presaleWeiRaised + msg.value <= 500 * 10^18:
                        require presaleDeposited[address(msg.sender)] + msg.value >= presaleDeposited[address(msg.sender)]
                        presaleDeposited[address(msg.sender)] += msg.value
                else:
                    require crowdsaleContributions[address(msg.sender)] + msg.value >= crowdsaleContributions[address(msg.sender)]
                    crowdsaleContributions[address(msg.sender)] += msg.value
                    require crowdsaleDeposited[address(msg.sender)] + msg.value >= crowdsaleDeposited[address(msg.sender)]
                    crowdsaleDeposited[address(msg.sender)] += msg.value
            else:
                if block.timestamp > 427800 * 24 * 3600:
                    require presaleWeiRaised + msg.value <= 500 * 10^18
                    require stor12[address(msg.sender)]
                    require msg.value
                    require msg.value
                    require 150000 * msg.value / msg.value == 150000
                    require 150000 * msg.value / 10^18
                    require presaleWeiRaised + msg.value >= presaleWeiRaised
                    presaleWeiRaised += msg.value
                    require totalSupply + (150000 * msg.value / 10^18) >= totalSupply
                    totalSupply += 150000 * msg.value / 10^18
                    require balanceOf[address(msg.sender)] + (150000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 150000 * msg.value / 10^18
                    emit Transfer((150000 * msg.value / 10^18), 0, msg.sender);
                    emit TokenPurchase(msg.value, 150000 * msg.value / 10^18, msg.sender, msg.sender);
                    if block.timestamp > 427800 * 24 * 3600:
                        if presaleWeiRaised + msg.value <= 500 * 10^18:
                            require presaleDeposited[address(msg.sender)] + msg.value >= presaleDeposited[address(msg.sender)]
                            presaleDeposited[address(msg.sender)] += msg.value
                    else:
                        require crowdsaleContributions[address(msg.sender)] + msg.value >= crowdsaleContributions[address(msg.sender)]
                        crowdsaleContributions[address(msg.sender)] += msg.value
                        require crowdsaleDeposited[address(msg.sender)] + msg.value >= crowdsaleDeposited[address(msg.sender)]
                        crowdsaleDeposited[address(msg.sender)] += msg.value
                else:
                    if presaleWeiRaised < 50 * 10^18:
                        require presaleWeiRaised + msg.value <= 500 * 10^18
                        require stor12[address(msg.sender)]
                        require msg.value
                        require msg.value
                        require 150000 * msg.value / msg.value == 150000
                        require 150000 * msg.value / 10^18
                        require presaleWeiRaised + msg.value >= presaleWeiRaised
                        presaleWeiRaised += msg.value
                        require totalSupply + (150000 * msg.value / 10^18) >= totalSupply
                        totalSupply += 150000 * msg.value / 10^18
                        require balanceOf[address(msg.sender)] + (150000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 150000 * msg.value / 10^18
                        emit Transfer((150000 * msg.value / 10^18), 0, msg.sender);
                        emit TokenPurchase(msg.value, 150000 * msg.value / 10^18, msg.sender, msg.sender);
                        if presaleWeiRaised < 50 * 10^18:
                            if presaleWeiRaised + msg.value <= 500 * 10^18:
                                require presaleDeposited[address(msg.sender)] + msg.value >= presaleDeposited[address(msg.sender)]
                                presaleDeposited[address(msg.sender)] += msg.value
                        else:
                            require crowdsaleContributions[address(msg.sender)] + msg.value >= crowdsaleContributions[address(msg.sender)]
                            crowdsaleContributions[address(msg.sender)] += msg.value
                            require crowdsaleDeposited[address(msg.sender)] + msg.value >= crowdsaleDeposited[address(msg.sender)]
                            crowdsaleDeposited[address(msg.sender)] += msg.value
                    else:
                        require crowdsaleWeiRaised + msg.value >= crowdsaleWeiRaised
                        if crowdsaleWeiRaised + msg.value > 5000 * 10^18:
                            require presaleWeiRaised + msg.value <= 500 * 10^18
                            require stor12[address(msg.sender)]
                            require msg.value
                            require msg.value
                            require 150000 * msg.value / msg.value == 150000
                            require 150000 * msg.value / 10^18
                            require presaleWeiRaised + msg.value >= presaleWeiRaised
                            presaleWeiRaised += msg.value
                            require totalSupply + (150000 * msg.value / 10^18) >= totalSupply
                            totalSupply += 150000 * msg.value / 10^18
                            require balanceOf[address(msg.sender)] + (150000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 150000 * msg.value / 10^18
                            emit Transfer((150000 * msg.value / 10^18), 0, msg.sender);
                            emit TokenPurchase(msg.value, 150000 * msg.value / 10^18, msg.sender, msg.sender);
                        else:
                            require block.timestamp >= 426323 * 3600
                            require block.timestamp <= 427800 * 24 * 3600
                            require 426323 * 3600 <= block.timestamp
                            idx = 0
                            while idx < crowdsaleUserCaps.length:
                                require idx < crowdsaleMinElapsedTimeLevels.length
                                mem[0] = 7
                                if block.timestamp - (426323 * 3600) >= crowdsaleMinElapsedTimeLevels[idx]:
                                    require idx < crowdsaleMinElapsedTimeLevels.length
                                    mem[0] = 7
                                    if crowdsaleMinElapsedTimeLevels[idx] >= 0:
                                        require idx < crowdsaleUserCaps.length
                                        mem[0] = 8
                                idx = idx + 1
                                continue 
                            mem[32] = 9
                            require crowdsaleContributions[address(msg.sender)] + msg.value >= crowdsaleContributions[address(msg.sender)]
                            require crowdsaleContributions[address(msg.sender)] + msg.value <= 0
                            require var62003 < crowdsaleWeiAvailableLevels.length
                            require var62003 < crowdsaleRates.length
                            mem[0] = 6
                            if var62006 >= crowdsaleWeiAvailableLevels[var62003]:
                                require crowdsaleWeiAvailableLevels[var62003] <= var62006
                                var62001 = crowdsaleRates[var62003]
                                var62002 = crowdsaleWeiAvailableLevels[var62003]
                                var62003 = var62003 + 1
                                var62005 = var62005
                                var62006 = var62006 - crowdsaleWeiAvailableLevels[var62003]
                                continue 
                            if var62006 <= 0:
                                if var62005 > crowdsaleWeiAvailableLevels[var62003]:
                                    require crowdsaleWeiAvailableLevels[var62003] <= var62005
                                    if not crowdsaleWeiAvailableLevels[var62003]:
                                        var62001 = crowdsaleRates[var62003]
                                        var62002 = crowdsaleWeiAvailableLevels[var62003]
                                        var62003 = var62003 + 1
                                        var62005 = var62005 - crowdsaleWeiAvailableLevels[var62003]
                                        var62006 = var62006
                                        continue 
                                    require crowdsaleWeiAvailableLevels[var62003]
                                    require crowdsaleWeiAvailableLevels[var62003] * crowdsaleRates[var62003] / crowdsaleWeiAvailableLevels[var62003] == crowdsaleRates[var62003]
                                    require crowdsaleWeiAvailableLevels[var62003] * crowdsaleRates[var62003] >= 0
                                    var62001 = crowdsaleRates[var62003]
                                    var62002 = crowdsaleWeiAvailableLevels[var62003]
                                    var62003 = var62003 + 1
                                    var62005 = var62005 - crowdsaleWeiAvailableLevels[var62003]
                                    var62006 = var62006
                                    continue 
                            else:
                                require var62006 <= crowdsaleWeiAvailableLevels[var62003]
                                if var62005 > crowdsaleWeiAvailableLevels[var62003] - var62006:
                                    require crowdsaleWeiAvailableLevels[var62003] - var62006 <= var62005
                                    if not crowdsaleWeiAvailableLevels[var62003] - var62006:
                                        var62001 = crowdsaleRates[var62003]
                                        var62002 = crowdsaleWeiAvailableLevels[var62003] - var62006
                                        var62003 = var62003 + 1
                                        var62005 = var62005 - crowdsaleWeiAvailableLevels[var62003] + var62006
                                        var62006 = 0
                                        continue 
                                    require crowdsaleWeiAvailableLevels[var62003] - var62006
                                    require (crowdsaleWeiAvailableLevels[var62003] * crowdsaleRates[var62003]) - (var62006 * crowdsaleRates[var62003]) / crowdsaleWeiAvailableLevels[var62003] - var62006 == crowdsaleRates[var62003]
                                    require (crowdsaleWeiAvailableLevels[var62003] * crowdsaleRates[var62003]) - (var62006 * crowdsaleRates[var62003]) >= 0
                                    var62001 = crowdsaleRates[var62003]
                                    var62002 = crowdsaleWeiAvailableLevels[var62003] - var62006
                                    var62003 = var62003 + 1
                                    var62005 = var62005 - crowdsaleWeiAvailableLevels[var62003] + var62006
                                    var62006 = 0
                                    continue 
                            require var62005
                            require var62005
                            require var62005 * crowdsaleRates[var62003] / var62005 == crowdsaleRates[var62003]
                            require var62005 * crowdsaleRates[var62003] >= 0
                            require var62005 * crowdsaleRates[var62003] / 10^18
                            require crowdsaleWeiRaised + msg.value >= crowdsaleWeiRaised
                            crowdsaleWeiRaised += msg.value
                            require totalSupply + (var62005 * crowdsaleRates[var62003] / 10^18) >= totalSupply
                            totalSupply += var62005 * crowdsaleRates[var62003] / 10^18
                            require balanceOf[address(msg.sender)] + (var62005 * crowdsaleRates[var62003] / 10^18) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += var62005 * crowdsaleRates[var62003] / 10^18
                            emit Transfer((var62005 * crowdsaleRates[var62003] / 10^18), 0, msg.sender);
                            emit TokenPurchase(msg.value, var62005 * crowdsaleRates[var62003] / 10^18, msg.sender, msg.sender);
                        if crowdsaleWeiRaised + msg.value > 5000 * 10^18:
                            if presaleWeiRaised + msg.value <= 500 * 10^18:
                                require presaleDeposited[address(msg.sender)] + msg.value >= presaleDeposited[address(msg.sender)]
                                presaleDeposited[address(msg.sender)] += msg.value
                        else:
                            require crowdsaleContributions[address(msg.sender)] + msg.value >= crowdsaleContributions[address(msg.sender)]
                            crowdsaleContributions[address(msg.sender)] += msg.value
                            require crowdsaleDeposited[address(msg.sender)] + msg.value >= crowdsaleDeposited[address(msg.sender)]
                            crowdsaleDeposited[address(msg.sender)] += msg.value
}



}
