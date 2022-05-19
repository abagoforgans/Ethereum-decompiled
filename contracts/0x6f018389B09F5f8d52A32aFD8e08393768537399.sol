contract main {




// =====================  Runtime code  =====================


const name = 'Cryptual Project Token'

const decimals = 0

const symbol = 'CPT'

const CROWDSALE_OPENING_TIME = (425608 * 3600)

const CROWDSALE_CLOSING_TIME = (426341 * 3600)

const PRESALE_WEI_CAP = 500 * 10^18

const INITIAL_SUPPLY = 283 * 10^6

const PRESALE_RATE = 150000

const PRESALE_CLOSING_TIME = (425573 * 3600)

const COMBINED_WEI_GOAL = 750 * 10^18

const CROWDSALE_WEI_CAP = 5000 * 10^18

const PRESALE_WEI_GOAL = 50 * 10^18

const PRESALE_OPENING_TIME = (425392 * 3600)


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
uint8 isCrowdsaleFinalized;
mapping of uint256 deposited;

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
    return bool(isCrowdsaleFinalized)
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

function deposited(address arg1) {
    return deposited[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function crowdsaleMinElapsedTimeLevels(uint256 arg1) {
    require arg1 < crowdsaleMinElapsedTimeLevels.length
    return crowdsaleMinElapsedTimeLevels[arg1]
}

function presaleWeiRaised() {
    return presaleWeiRaised
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

function claimRefund() {
    require isCrowdsaleFinalized
    require presaleWeiRaised + crowdsaleWeiRaised >= presaleWeiRaised
    require presaleWeiRaised + crowdsaleWeiRaised < 750 * 10^18
    require deposited[address(msg.sender)] > 0
    deposited[address(msg.sender)] = 0
    call msg.sender with:
       value deposited[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Refunded(deposited[address(msg.sender)], msg.sender);
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
    require not isCrowdsaleFinalized
    if block.timestamp <= 426341 * 3600:
        require block.timestamp > 425573 * 3600
        require presaleWeiRaised < 50 * 10^18
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
    isCrowdsaleFinalized = 1
}

function getCrowdsaleUserCap() {
    require block.timestamp >= 425608 * 3600
    require block.timestamp <= 426341 * 3600
    require 425608 * 3600 <= block.timestamp
    idx = 0
    while idx < crowdsaleUserCaps.length:
        require idx < crowdsaleMinElapsedTimeLevels.length
        mem[0] = 7
        if block.timestamp - (425608 * 3600) >= crowdsaleMinElapsedTimeLevels[idx]:
            require idx < crowdsaleMinElapsedTimeLevels.length
            mem[0] = 7
            if crowdsaleMinElapsedTimeLevels[idx] >= 0:
                require idx < crowdsaleUserCaps.length
                mem[0] = 8
        idx = idx + 1
        continue 
    return 0
}

function buyTokens(address arg1) payable {
    mem[64] = 96
    require arg1
    require msg.value
    if block.timestamp < 425392 * 3600:
        if block.timestamp >= 425392 * 3600:
            if block.timestamp < 425608 * 3600:
                if block.timestamp < 425392 * 3600:
                    require totalSupply >= totalSupply
                    require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    emit Transfer(0, 0, arg1);
                    emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                else:
                    require presaleWeiRaised + msg.value >= presaleWeiRaised
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
                require crowdsaleWeiRaised + msg.value >= crowdsaleWeiRaised
                require crowdsaleWeiRaised + msg.value <= 5000 * 10^18
                require block.timestamp >= 425608 * 3600
                require block.timestamp <= 426341 * 3600
                require 425608 * 3600 <= block.timestamp
                idx = 0
                while idx < crowdsaleUserCaps.length:
                    require idx < crowdsaleMinElapsedTimeLevels.length
                    mem[0] = 7
                    if block.timestamp - (425608 * 3600) >= crowdsaleMinElapsedTimeLevels[idx]:
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
                require var52003 < crowdsaleWeiAvailableLevels.length
                require var52003 < crowdsaleRates.length
                mem[0] = 6
                if var52006 >= crowdsaleWeiAvailableLevels[var52003]:
                    require crowdsaleWeiAvailableLevels[var52003] <= var52006
                    var52001 = crowdsaleRates[var52003]
                    var52002 = crowdsaleWeiAvailableLevels[var52003]
                    var52003 = var52003 + 1
                    var52005 = var52005
                    var52006 = var52006 - crowdsaleWeiAvailableLevels[var52003]
                    continue 
                if var52006 <= 0:
                    if var52005 > crowdsaleWeiAvailableLevels[var52003]:
                        require crowdsaleWeiAvailableLevels[var52003] <= var52005
                        if not crowdsaleWeiAvailableLevels[var52003]:
                            var52001 = crowdsaleRates[var52003]
                            var52002 = crowdsaleWeiAvailableLevels[var52003]
                            var52003 = var52003 + 1
                            var52005 = var52005 - crowdsaleWeiAvailableLevels[var52003]
                            var52006 = var52006
                            continue 
                        require crowdsaleWeiAvailableLevels[var52003]
                        require crowdsaleWeiAvailableLevels[var52003] * crowdsaleRates[var52003] / crowdsaleWeiAvailableLevels[var52003] == crowdsaleRates[var52003]
                        require crowdsaleWeiAvailableLevels[var52003] * crowdsaleRates[var52003] >= 0
                        var52001 = crowdsaleRates[var52003]
                        var52002 = crowdsaleWeiAvailableLevels[var52003]
                        var52003 = var52003 + 1
                        var52005 = var52005 - crowdsaleWeiAvailableLevels[var52003]
                        var52006 = var52006
                        continue 
                else:
                    require var52006 <= crowdsaleWeiAvailableLevels[var52003]
                    if var52005 > crowdsaleWeiAvailableLevels[var52003] - var52006:
                        require crowdsaleWeiAvailableLevels[var52003] - var52006 <= var52005
                        if not crowdsaleWeiAvailableLevels[var52003] - var52006:
                            var52001 = crowdsaleRates[var52003]
                            var52002 = crowdsaleWeiAvailableLevels[var52003] - var52006
                            var52003 = var52003 + 1
                            var52005 = var52005 - crowdsaleWeiAvailableLevels[var52003] + var52006
                            var52006 = 0
                            continue 
                        require crowdsaleWeiAvailableLevels[var52003] - var52006
                        require (crowdsaleWeiAvailableLevels[var52003] * crowdsaleRates[var52003]) - (var52006 * crowdsaleRates[var52003]) / crowdsaleWeiAvailableLevels[var52003] - var52006 == crowdsaleRates[var52003]
                        require (crowdsaleWeiAvailableLevels[var52003] * crowdsaleRates[var52003]) - (var52006 * crowdsaleRates[var52003]) >= 0
                        var52001 = crowdsaleRates[var52003]
                        var52002 = crowdsaleWeiAvailableLevels[var52003] - var52006
                        var52003 = var52003 + 1
                        var52005 = var52005 - crowdsaleWeiAvailableLevels[var52003] + var52006
                        var52006 = 0
                        continue 
                require var52005
                require var52005
                require var52005 * crowdsaleRates[var52003] / var52005 == crowdsaleRates[var52003]
                require var52005 * crowdsaleRates[var52003] >= 0
                require var52005 * crowdsaleRates[var52003] / 10^18
                require crowdsaleWeiRaised + msg.value >= crowdsaleWeiRaised
                crowdsaleWeiRaised += msg.value
                require totalSupply + (var52005 * crowdsaleRates[var52003] / 10^18) >= totalSupply
                totalSupply += var52005 * crowdsaleRates[var52003] / 10^18
                require balanceOf[address(arg1)] + (var52005 * crowdsaleRates[var52003] / 10^18) >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += var52005 * crowdsaleRates[var52003] / 10^18
                emit Transfer((var52005 * crowdsaleRates[var52003] / 10^18), 0, arg1);
                emit TokenPurchase(msg.value, var52005 * crowdsaleRates[var52003] / 10^18, msg.sender, arg1);
        else:
            require block.timestamp >= 425608 * 3600
            require crowdsaleWeiRaised + msg.value >= crowdsaleWeiRaised
            require crowdsaleWeiRaised + msg.value <= 5000 * 10^18
            require block.timestamp >= 425608 * 3600
            require block.timestamp <= 426341 * 3600
            require 425608 * 3600 <= block.timestamp
            idx = 0
            while idx < crowdsaleUserCaps.length:
                require idx < crowdsaleMinElapsedTimeLevels.length
                mem[0] = 7
                if block.timestamp - (425608 * 3600) >= crowdsaleMinElapsedTimeLevels[idx]:
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
            require var53003 < crowdsaleWeiAvailableLevels.length
            require var53003 < crowdsaleRates.length
            mem[0] = 6
            if var53006 >= crowdsaleWeiAvailableLevels[var53003]:
                require crowdsaleWeiAvailableLevels[var53003] <= var53006
                var53001 = crowdsaleRates[var53003]
                var53002 = crowdsaleWeiAvailableLevels[var53003]
                var53003 = var53003 + 1
                var53005 = var53005
                var53006 = var53006 - crowdsaleWeiAvailableLevels[var53003]
                continue 
            if var53006 <= 0:
                if var53005 > crowdsaleWeiAvailableLevels[var53003]:
                    require crowdsaleWeiAvailableLevels[var53003] <= var53005
                    if not crowdsaleWeiAvailableLevels[var53003]:
                        var53001 = crowdsaleRates[var53003]
                        var53002 = crowdsaleWeiAvailableLevels[var53003]
                        var53003 = var53003 + 1
                        var53005 = var53005 - crowdsaleWeiAvailableLevels[var53003]
                        var53006 = var53006
                        continue 
                    require crowdsaleWeiAvailableLevels[var53003]
                    require crowdsaleWeiAvailableLevels[var53003] * crowdsaleRates[var53003] / crowdsaleWeiAvailableLevels[var53003] == crowdsaleRates[var53003]
                    require crowdsaleWeiAvailableLevels[var53003] * crowdsaleRates[var53003] >= 0
                    var53001 = crowdsaleRates[var53003]
                    var53002 = crowdsaleWeiAvailableLevels[var53003]
                    var53003 = var53003 + 1
                    var53005 = var53005 - crowdsaleWeiAvailableLevels[var53003]
                    var53006 = var53006
                    continue 
            else:
                require var53006 <= crowdsaleWeiAvailableLevels[var53003]
                if var53005 > crowdsaleWeiAvailableLevels[var53003] - var53006:
                    require crowdsaleWeiAvailableLevels[var53003] - var53006 <= var53005
                    if not crowdsaleWeiAvailableLevels[var53003] - var53006:
                        var53001 = crowdsaleRates[var53003]
                        var53002 = crowdsaleWeiAvailableLevels[var53003] - var53006
                        var53003 = var53003 + 1
                        var53005 = var53005 - crowdsaleWeiAvailableLevels[var53003] + var53006
                        var53006 = 0
                        continue 
                    require crowdsaleWeiAvailableLevels[var53003] - var53006
                    require (crowdsaleWeiAvailableLevels[var53003] * crowdsaleRates[var53003]) - (var53006 * crowdsaleRates[var53003]) / crowdsaleWeiAvailableLevels[var53003] - var53006 == crowdsaleRates[var53003]
                    require (crowdsaleWeiAvailableLevels[var53003] * crowdsaleRates[var53003]) - (var53006 * crowdsaleRates[var53003]) >= 0
                    var53001 = crowdsaleRates[var53003]
                    var53002 = crowdsaleWeiAvailableLevels[var53003] - var53006
                    var53003 = var53003 + 1
                    var53005 = var53005 - crowdsaleWeiAvailableLevels[var53003] + var53006
                    var53006 = 0
                    continue 
            require var53005
            require var53005
            require var53005 * crowdsaleRates[var53003] / var53005 == crowdsaleRates[var53003]
            require var53005 * crowdsaleRates[var53003] >= 0
            require var53005 * crowdsaleRates[var53003] / 10^18
            require crowdsaleWeiRaised + msg.value >= crowdsaleWeiRaised
            crowdsaleWeiRaised += msg.value
            require totalSupply + (var53005 * crowdsaleRates[var53003] / 10^18) >= totalSupply
            totalSupply += var53005 * crowdsaleRates[var53003] / 10^18
            require balanceOf[address(arg1)] + (var53005 * crowdsaleRates[var53003] / 10^18) >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += var53005 * crowdsaleRates[var53003] / 10^18
            emit Transfer((var53005 * crowdsaleRates[var53003] / 10^18), 0, arg1);
            emit TokenPurchase(msg.value, var53005 * crowdsaleRates[var53003] / 10^18, msg.sender, arg1);
        if block.timestamp >= 425608 * 3600:
            require crowdsaleContributions[address(arg1)] + msg.value >= crowdsaleContributions[address(arg1)]
            crowdsaleContributions[address(arg1)] += msg.value
    else:
        if block.timestamp < 425608 * 3600:
            if block.timestamp <= 425573 * 3600:
                if block.timestamp < 425608 * 3600:
                    if block.timestamp > 425573 * 3600:
                        require totalSupply >= totalSupply
                        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                        emit Transfer(0, 0, arg1);
                        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                    else:
                        require presaleWeiRaised + msg.value >= presaleWeiRaised
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
                    require crowdsaleWeiRaised + msg.value >= crowdsaleWeiRaised
                    require crowdsaleWeiRaised + msg.value <= 5000 * 10^18
                    require block.timestamp >= 425608 * 3600
                    require block.timestamp <= 426341 * 3600
                    require 425608 * 3600 <= block.timestamp
                    idx = 0
                    while idx < crowdsaleUserCaps.length:
                        require idx < crowdsaleMinElapsedTimeLevels.length
                        mem[0] = 7
                        if block.timestamp - (425608 * 3600) >= crowdsaleMinElapsedTimeLevels[idx]:
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
                    require var53003 < crowdsaleWeiAvailableLevels.length
                    require var53003 < crowdsaleRates.length
                    mem[0] = 6
                    if var53006 >= crowdsaleWeiAvailableLevels[var53003]:
                        require crowdsaleWeiAvailableLevels[var53003] <= var53006
                        var53001 = crowdsaleRates[var53003]
                        var53002 = crowdsaleWeiAvailableLevels[var53003]
                        var53003 = var53003 + 1
                        var53005 = var53005
                        var53006 = var53006 - crowdsaleWeiAvailableLevels[var53003]
                        continue 
                    if var53006 <= 0:
                        if var53005 > crowdsaleWeiAvailableLevels[var53003]:
                            require crowdsaleWeiAvailableLevels[var53003] <= var53005
                            if not crowdsaleWeiAvailableLevels[var53003]:
                                var53001 = crowdsaleRates[var53003]
                                var53002 = crowdsaleWeiAvailableLevels[var53003]
                                var53003 = var53003 + 1
                                var53005 = var53005 - crowdsaleWeiAvailableLevels[var53003]
                                var53006 = var53006
                                continue 
                            require crowdsaleWeiAvailableLevels[var53003]
                            require crowdsaleWeiAvailableLevels[var53003] * crowdsaleRates[var53003] / crowdsaleWeiAvailableLevels[var53003] == crowdsaleRates[var53003]
                            require crowdsaleWeiAvailableLevels[var53003] * crowdsaleRates[var53003] >= 0
                            var53001 = crowdsaleRates[var53003]
                            var53002 = crowdsaleWeiAvailableLevels[var53003]
                            var53003 = var53003 + 1
                            var53005 = var53005 - crowdsaleWeiAvailableLevels[var53003]
                            var53006 = var53006
                            continue 
                    else:
                        require var53006 <= crowdsaleWeiAvailableLevels[var53003]
                        if var53005 > crowdsaleWeiAvailableLevels[var53003] - var53006:
                            require crowdsaleWeiAvailableLevels[var53003] - var53006 <= var53005
                            if not crowdsaleWeiAvailableLevels[var53003] - var53006:
                                var53001 = crowdsaleRates[var53003]
                                var53002 = crowdsaleWeiAvailableLevels[var53003] - var53006
                                var53003 = var53003 + 1
                                var53005 = var53005 - crowdsaleWeiAvailableLevels[var53003] + var53006
                                var53006 = 0
                                continue 
                            require crowdsaleWeiAvailableLevels[var53003] - var53006
                            require (crowdsaleWeiAvailableLevels[var53003] * crowdsaleRates[var53003]) - (var53006 * crowdsaleRates[var53003]) / crowdsaleWeiAvailableLevels[var53003] - var53006 == crowdsaleRates[var53003]
                            require (crowdsaleWeiAvailableLevels[var53003] * crowdsaleRates[var53003]) - (var53006 * crowdsaleRates[var53003]) >= 0
                            var53001 = crowdsaleRates[var53003]
                            var53002 = crowdsaleWeiAvailableLevels[var53003] - var53006
                            var53003 = var53003 + 1
                            var53005 = var53005 - crowdsaleWeiAvailableLevels[var53003] + var53006
                            var53006 = 0
                            continue 
                    require var53005
                    require var53005
                    require var53005 * crowdsaleRates[var53003] / var53005 == crowdsaleRates[var53003]
                    require var53005 * crowdsaleRates[var53003] >= 0
                    require var53005 * crowdsaleRates[var53003] / 10^18
                    require crowdsaleWeiRaised + msg.value >= crowdsaleWeiRaised
                    crowdsaleWeiRaised += msg.value
                    require totalSupply + (var53005 * crowdsaleRates[var53003] / 10^18) >= totalSupply
                    totalSupply += var53005 * crowdsaleRates[var53003] / 10^18
                    require balanceOf[address(arg1)] + (var53005 * crowdsaleRates[var53003] / 10^18) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += var53005 * crowdsaleRates[var53003] / 10^18
                    emit Transfer((var53005 * crowdsaleRates[var53003] / 10^18), 0, arg1);
                    emit TokenPurchase(msg.value, var53005 * crowdsaleRates[var53003] / 10^18, msg.sender, arg1);
            else:
                require block.timestamp >= 425608 * 3600
                require crowdsaleWeiRaised + msg.value >= crowdsaleWeiRaised
                require crowdsaleWeiRaised + msg.value <= 5000 * 10^18
                require block.timestamp >= 425608 * 3600
                require block.timestamp <= 426341 * 3600
                require 425608 * 3600 <= block.timestamp
                idx = 0
                while idx < crowdsaleUserCaps.length:
                    require idx < crowdsaleMinElapsedTimeLevels.length
                    mem[0] = 7
                    if block.timestamp - (425608 * 3600) >= crowdsaleMinElapsedTimeLevels[idx]:
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
                require var54003 < crowdsaleWeiAvailableLevels.length
                require var54003 < crowdsaleRates.length
                mem[0] = 6
                if var54006 >= crowdsaleWeiAvailableLevels[var54003]:
                    require crowdsaleWeiAvailableLevels[var54003] <= var54006
                    var54001 = crowdsaleRates[var54003]
                    var54002 = crowdsaleWeiAvailableLevels[var54003]
                    var54003 = var54003 + 1
                    var54005 = var54005
                    var54006 = var54006 - crowdsaleWeiAvailableLevels[var54003]
                    continue 
                if var54006 <= 0:
                    if var54005 > crowdsaleWeiAvailableLevels[var54003]:
                        require crowdsaleWeiAvailableLevels[var54003] <= var54005
                        if not crowdsaleWeiAvailableLevels[var54003]:
                            var54001 = crowdsaleRates[var54003]
                            var54002 = crowdsaleWeiAvailableLevels[var54003]
                            var54003 = var54003 + 1
                            var54005 = var54005 - crowdsaleWeiAvailableLevels[var54003]
                            var54006 = var54006
                            continue 
                        require crowdsaleWeiAvailableLevels[var54003]
                        require crowdsaleWeiAvailableLevels[var54003] * crowdsaleRates[var54003] / crowdsaleWeiAvailableLevels[var54003] == crowdsaleRates[var54003]
                        require crowdsaleWeiAvailableLevels[var54003] * crowdsaleRates[var54003] >= 0
                        var54001 = crowdsaleRates[var54003]
                        var54002 = crowdsaleWeiAvailableLevels[var54003]
                        var54003 = var54003 + 1
                        var54005 = var54005 - crowdsaleWeiAvailableLevels[var54003]
                        var54006 = var54006
                        continue 
                else:
                    require var54006 <= crowdsaleWeiAvailableLevels[var54003]
                    if var54005 > crowdsaleWeiAvailableLevels[var54003] - var54006:
                        require crowdsaleWeiAvailableLevels[var54003] - var54006 <= var54005
                        if not crowdsaleWeiAvailableLevels[var54003] - var54006:
                            var54001 = crowdsaleRates[var54003]
                            var54002 = crowdsaleWeiAvailableLevels[var54003] - var54006
                            var54003 = var54003 + 1
                            var54005 = var54005 - crowdsaleWeiAvailableLevels[var54003] + var54006
                            var54006 = 0
                            continue 
                        require crowdsaleWeiAvailableLevels[var54003] - var54006
                        require (crowdsaleWeiAvailableLevels[var54003] * crowdsaleRates[var54003]) - (var54006 * crowdsaleRates[var54003]) / crowdsaleWeiAvailableLevels[var54003] - var54006 == crowdsaleRates[var54003]
                        require (crowdsaleWeiAvailableLevels[var54003] * crowdsaleRates[var54003]) - (var54006 * crowdsaleRates[var54003]) >= 0
                        var54001 = crowdsaleRates[var54003]
                        var54002 = crowdsaleWeiAvailableLevels[var54003] - var54006
                        var54003 = var54003 + 1
                        var54005 = var54005 - crowdsaleWeiAvailableLevels[var54003] + var54006
                        var54006 = 0
                        continue 
                require var54005
                require var54005
                require var54005 * crowdsaleRates[var54003] / var54005 == crowdsaleRates[var54003]
                require var54005 * crowdsaleRates[var54003] >= 0
                require var54005 * crowdsaleRates[var54003] / 10^18
                require crowdsaleWeiRaised + msg.value >= crowdsaleWeiRaised
                crowdsaleWeiRaised += msg.value
                require totalSupply + (var54005 * crowdsaleRates[var54003] / 10^18) >= totalSupply
                totalSupply += var54005 * crowdsaleRates[var54003] / 10^18
                require balanceOf[address(arg1)] + (var54005 * crowdsaleRates[var54003] / 10^18) >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += var54005 * crowdsaleRates[var54003] / 10^18
                emit Transfer((var54005 * crowdsaleRates[var54003] / 10^18), 0, arg1);
                emit TokenPurchase(msg.value, var54005 * crowdsaleRates[var54003] / 10^18, msg.sender, arg1);
            if block.timestamp >= 425608 * 3600:
                require crowdsaleContributions[address(arg1)] + msg.value >= crowdsaleContributions[address(arg1)]
                crowdsaleContributions[address(arg1)] += msg.value
        else:
            if block.timestamp <= 425573 * 3600:
                if block.timestamp > 426341 * 3600:
                    if block.timestamp > 425573 * 3600:
                        require totalSupply >= totalSupply
                        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                        emit Transfer(0, 0, arg1);
                        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                    else:
                        require presaleWeiRaised + msg.value >= presaleWeiRaised
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
                    require crowdsaleWeiRaised + msg.value >= crowdsaleWeiRaised
                    require crowdsaleWeiRaised + msg.value <= 5000 * 10^18
                    require block.timestamp >= 425608 * 3600
                    require block.timestamp <= 426341 * 3600
                    require 425608 * 3600 <= block.timestamp
                    idx = 0
                    while idx < crowdsaleUserCaps.length:
                        require idx < crowdsaleMinElapsedTimeLevels.length
                        mem[0] = 7
                        if block.timestamp - (425608 * 3600) >= crowdsaleMinElapsedTimeLevels[idx]:
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
                    require var54003 < crowdsaleWeiAvailableLevels.length
                    require var54003 < crowdsaleRates.length
                    mem[0] = 6
                    if var54006 >= crowdsaleWeiAvailableLevels[var54003]:
                        require crowdsaleWeiAvailableLevels[var54003] <= var54006
                        var54001 = crowdsaleRates[var54003]
                        var54002 = crowdsaleWeiAvailableLevels[var54003]
                        var54003 = var54003 + 1
                        var54005 = var54005
                        var54006 = var54006 - crowdsaleWeiAvailableLevels[var54003]
                        continue 
                    if var54006 <= 0:
                        if var54005 > crowdsaleWeiAvailableLevels[var54003]:
                            require crowdsaleWeiAvailableLevels[var54003] <= var54005
                            if not crowdsaleWeiAvailableLevels[var54003]:
                                var54001 = crowdsaleRates[var54003]
                                var54002 = crowdsaleWeiAvailableLevels[var54003]
                                var54003 = var54003 + 1
                                var54005 = var54005 - crowdsaleWeiAvailableLevels[var54003]
                                var54006 = var54006
                                continue 
                            require crowdsaleWeiAvailableLevels[var54003]
                            require crowdsaleWeiAvailableLevels[var54003] * crowdsaleRates[var54003] / crowdsaleWeiAvailableLevels[var54003] == crowdsaleRates[var54003]
                            require crowdsaleWeiAvailableLevels[var54003] * crowdsaleRates[var54003] >= 0
                            var54001 = crowdsaleRates[var54003]
                            var54002 = crowdsaleWeiAvailableLevels[var54003]
                            var54003 = var54003 + 1
                            var54005 = var54005 - crowdsaleWeiAvailableLevels[var54003]
                            var54006 = var54006
                            continue 
                    else:
                        require var54006 <= crowdsaleWeiAvailableLevels[var54003]
                        if var54005 > crowdsaleWeiAvailableLevels[var54003] - var54006:
                            require crowdsaleWeiAvailableLevels[var54003] - var54006 <= var54005
                            if not crowdsaleWeiAvailableLevels[var54003] - var54006:
                                var54001 = crowdsaleRates[var54003]
                                var54002 = crowdsaleWeiAvailableLevels[var54003] - var54006
                                var54003 = var54003 + 1
                                var54005 = var54005 - crowdsaleWeiAvailableLevels[var54003] + var54006
                                var54006 = 0
                                continue 
                            require crowdsaleWeiAvailableLevels[var54003] - var54006
                            require (crowdsaleWeiAvailableLevels[var54003] * crowdsaleRates[var54003]) - (var54006 * crowdsaleRates[var54003]) / crowdsaleWeiAvailableLevels[var54003] - var54006 == crowdsaleRates[var54003]
                            require (crowdsaleWeiAvailableLevels[var54003] * crowdsaleRates[var54003]) - (var54006 * crowdsaleRates[var54003]) >= 0
                            var54001 = crowdsaleRates[var54003]
                            var54002 = crowdsaleWeiAvailableLevels[var54003] - var54006
                            var54003 = var54003 + 1
                            var54005 = var54005 - crowdsaleWeiAvailableLevels[var54003] + var54006
                            var54006 = 0
                            continue 
                    require var54005
                    require var54005
                    require var54005 * crowdsaleRates[var54003] / var54005 == crowdsaleRates[var54003]
                    require var54005 * crowdsaleRates[var54003] >= 0
                    require var54005 * crowdsaleRates[var54003] / 10^18
                    require crowdsaleWeiRaised + msg.value >= crowdsaleWeiRaised
                    crowdsaleWeiRaised += msg.value
                    require totalSupply + (var54005 * crowdsaleRates[var54003] / 10^18) >= totalSupply
                    totalSupply += var54005 * crowdsaleRates[var54003] / 10^18
                    require balanceOf[address(arg1)] + (var54005 * crowdsaleRates[var54003] / 10^18) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += var54005 * crowdsaleRates[var54003] / 10^18
                    emit Transfer((var54005 * crowdsaleRates[var54003] / 10^18), 0, arg1);
                    emit TokenPurchase(msg.value, var54005 * crowdsaleRates[var54003] / 10^18, msg.sender, arg1);
            else:
                require block.timestamp <= 426341 * 3600
                require crowdsaleWeiRaised + msg.value >= crowdsaleWeiRaised
                require crowdsaleWeiRaised + msg.value <= 5000 * 10^18
                require block.timestamp >= 425608 * 3600
                require block.timestamp <= 426341 * 3600
                require 425608 * 3600 <= block.timestamp
                idx = 0
                while idx < crowdsaleUserCaps.length:
                    require idx < crowdsaleMinElapsedTimeLevels.length
                    mem[0] = 7
                    if block.timestamp - (425608 * 3600) >= crowdsaleMinElapsedTimeLevels[idx]:
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
                require var55003 < crowdsaleWeiAvailableLevels.length
                require var55003 < crowdsaleRates.length
                mem[0] = 6
                if var55006 >= crowdsaleWeiAvailableLevels[var55003]:
                    require crowdsaleWeiAvailableLevels[var55003] <= var55006
                    var55001 = crowdsaleRates[var55003]
                    var55002 = crowdsaleWeiAvailableLevels[var55003]
                    var55003 = var55003 + 1
                    var55005 = var55005
                    var55006 = var55006 - crowdsaleWeiAvailableLevels[var55003]
                    continue 
                if var55006 <= 0:
                    if var55005 > crowdsaleWeiAvailableLevels[var55003]:
                        require crowdsaleWeiAvailableLevels[var55003] <= var55005
                        if not crowdsaleWeiAvailableLevels[var55003]:
                            var55001 = crowdsaleRates[var55003]
                            var55002 = crowdsaleWeiAvailableLevels[var55003]
                            var55003 = var55003 + 1
                            var55005 = var55005 - crowdsaleWeiAvailableLevels[var55003]
                            var55006 = var55006
                            continue 
                        require crowdsaleWeiAvailableLevels[var55003]
                        require crowdsaleWeiAvailableLevels[var55003] * crowdsaleRates[var55003] / crowdsaleWeiAvailableLevels[var55003] == crowdsaleRates[var55003]
                        require crowdsaleWeiAvailableLevels[var55003] * crowdsaleRates[var55003] >= 0
                        var55001 = crowdsaleRates[var55003]
                        var55002 = crowdsaleWeiAvailableLevels[var55003]
                        var55003 = var55003 + 1
                        var55005 = var55005 - crowdsaleWeiAvailableLevels[var55003]
                        var55006 = var55006
                        continue 
                else:
                    require var55006 <= crowdsaleWeiAvailableLevels[var55003]
                    if var55005 > crowdsaleWeiAvailableLevels[var55003] - var55006:
                        require crowdsaleWeiAvailableLevels[var55003] - var55006 <= var55005
                        if not crowdsaleWeiAvailableLevels[var55003] - var55006:
                            var55001 = crowdsaleRates[var55003]
                            var55002 = crowdsaleWeiAvailableLevels[var55003] - var55006
                            var55003 = var55003 + 1
                            var55005 = var55005 - crowdsaleWeiAvailableLevels[var55003] + var55006
                            var55006 = 0
                            continue 
                        require crowdsaleWeiAvailableLevels[var55003] - var55006
                        require (crowdsaleWeiAvailableLevels[var55003] * crowdsaleRates[var55003]) - (var55006 * crowdsaleRates[var55003]) / crowdsaleWeiAvailableLevels[var55003] - var55006 == crowdsaleRates[var55003]
                        require (crowdsaleWeiAvailableLevels[var55003] * crowdsaleRates[var55003]) - (var55006 * crowdsaleRates[var55003]) >= 0
                        var55001 = crowdsaleRates[var55003]
                        var55002 = crowdsaleWeiAvailableLevels[var55003] - var55006
                        var55003 = var55003 + 1
                        var55005 = var55005 - crowdsaleWeiAvailableLevels[var55003] + var55006
                        var55006 = 0
                        continue 
                require var55005
                require var55005
                require var55005 * crowdsaleRates[var55003] / var55005 == crowdsaleRates[var55003]
                require var55005 * crowdsaleRates[var55003] >= 0
                require var55005 * crowdsaleRates[var55003] / 10^18
                require crowdsaleWeiRaised + msg.value >= crowdsaleWeiRaised
                crowdsaleWeiRaised += msg.value
                require totalSupply + (var55005 * crowdsaleRates[var55003] / 10^18) >= totalSupply
                totalSupply += var55005 * crowdsaleRates[var55003] / 10^18
                require balanceOf[address(arg1)] + (var55005 * crowdsaleRates[var55003] / 10^18) >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += var55005 * crowdsaleRates[var55003] / 10^18
                emit Transfer((var55005 * crowdsaleRates[var55003] / 10^18), 0, arg1);
                emit TokenPurchase(msg.value, var55005 * crowdsaleRates[var55003] / 10^18, msg.sender, arg1);
            if block.timestamp <= 426341 * 3600:
                require crowdsaleContributions[address(arg1)] + msg.value >= crowdsaleContributions[address(arg1)]
                crowdsaleContributions[address(arg1)] += msg.value
    require deposited[address(arg1)] + msg.value >= deposited[address(arg1)]
    deposited[address(arg1)] += msg.value
}

function _fallback() payable {
    mem[64] = 96
    require msg.sender
    require msg.value
    if block.timestamp < 425392 * 3600:
        if block.timestamp >= 425392 * 3600:
            if block.timestamp < 425608 * 3600:
                if block.timestamp < 425392 * 3600:
                    require totalSupply >= totalSupply
                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    emit Transfer(0, 0, msg.sender);
                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                else:
                    require presaleWeiRaised + msg.value >= presaleWeiRaised
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
                require crowdsaleWeiRaised + msg.value >= crowdsaleWeiRaised
                require crowdsaleWeiRaised + msg.value <= 5000 * 10^18
                require block.timestamp >= 425608 * 3600
                require block.timestamp <= 426341 * 3600
                require 425608 * 3600 <= block.timestamp
                idx = 0
                while idx < crowdsaleUserCaps.length:
                    require idx < crowdsaleMinElapsedTimeLevels.length
                    mem[0] = 7
                    if block.timestamp - (425608 * 3600) >= crowdsaleMinElapsedTimeLevels[idx]:
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
                require var52003 < crowdsaleWeiAvailableLevels.length
                require var52003 < crowdsaleRates.length
                mem[0] = 6
                if var52006 >= crowdsaleWeiAvailableLevels[var52003]:
                    require crowdsaleWeiAvailableLevels[var52003] <= var52006
                    var52001 = crowdsaleRates[var52003]
                    var52002 = crowdsaleWeiAvailableLevels[var52003]
                    var52003 = var52003 + 1
                    var52005 = var52005
                    var52006 = var52006 - crowdsaleWeiAvailableLevels[var52003]
                    continue 
                if var52006 <= 0:
                    if var52005 > crowdsaleWeiAvailableLevels[var52003]:
                        require crowdsaleWeiAvailableLevels[var52003] <= var52005
                        if not crowdsaleWeiAvailableLevels[var52003]:
                            var52001 = crowdsaleRates[var52003]
                            var52002 = crowdsaleWeiAvailableLevels[var52003]
                            var52003 = var52003 + 1
                            var52005 = var52005 - crowdsaleWeiAvailableLevels[var52003]
                            var52006 = var52006
                            continue 
                        require crowdsaleWeiAvailableLevels[var52003]
                        require crowdsaleWeiAvailableLevels[var52003] * crowdsaleRates[var52003] / crowdsaleWeiAvailableLevels[var52003] == crowdsaleRates[var52003]
                        require crowdsaleWeiAvailableLevels[var52003] * crowdsaleRates[var52003] >= 0
                        var52001 = crowdsaleRates[var52003]
                        var52002 = crowdsaleWeiAvailableLevels[var52003]
                        var52003 = var52003 + 1
                        var52005 = var52005 - crowdsaleWeiAvailableLevels[var52003]
                        var52006 = var52006
                        continue 
                else:
                    require var52006 <= crowdsaleWeiAvailableLevels[var52003]
                    if var52005 > crowdsaleWeiAvailableLevels[var52003] - var52006:
                        require crowdsaleWeiAvailableLevels[var52003] - var52006 <= var52005
                        if not crowdsaleWeiAvailableLevels[var52003] - var52006:
                            var52001 = crowdsaleRates[var52003]
                            var52002 = crowdsaleWeiAvailableLevels[var52003] - var52006
                            var52003 = var52003 + 1
                            var52005 = var52005 - crowdsaleWeiAvailableLevels[var52003] + var52006
                            var52006 = 0
                            continue 
                        require crowdsaleWeiAvailableLevels[var52003] - var52006
                        require (crowdsaleWeiAvailableLevels[var52003] * crowdsaleRates[var52003]) - (var52006 * crowdsaleRates[var52003]) / crowdsaleWeiAvailableLevels[var52003] - var52006 == crowdsaleRates[var52003]
                        require (crowdsaleWeiAvailableLevels[var52003] * crowdsaleRates[var52003]) - (var52006 * crowdsaleRates[var52003]) >= 0
                        var52001 = crowdsaleRates[var52003]
                        var52002 = crowdsaleWeiAvailableLevels[var52003] - var52006
                        var52003 = var52003 + 1
                        var52005 = var52005 - crowdsaleWeiAvailableLevels[var52003] + var52006
                        var52006 = 0
                        continue 
                require var52005
                require var52005
                require var52005 * crowdsaleRates[var52003] / var52005 == crowdsaleRates[var52003]
                require var52005 * crowdsaleRates[var52003] >= 0
                require var52005 * crowdsaleRates[var52003] / 10^18
                require crowdsaleWeiRaised + msg.value >= crowdsaleWeiRaised
                crowdsaleWeiRaised += msg.value
                require totalSupply + (var52005 * crowdsaleRates[var52003] / 10^18) >= totalSupply
                totalSupply += var52005 * crowdsaleRates[var52003] / 10^18
                require balanceOf[address(msg.sender)] + (var52005 * crowdsaleRates[var52003] / 10^18) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += var52005 * crowdsaleRates[var52003] / 10^18
                emit Transfer((var52005 * crowdsaleRates[var52003] / 10^18), 0, msg.sender);
                emit TokenPurchase(msg.value, var52005 * crowdsaleRates[var52003] / 10^18, msg.sender, msg.sender);
        else:
            require block.timestamp >= 425608 * 3600
            require crowdsaleWeiRaised + msg.value >= crowdsaleWeiRaised
            require crowdsaleWeiRaised + msg.value <= 5000 * 10^18
            require block.timestamp >= 425608 * 3600
            require block.timestamp <= 426341 * 3600
            require 425608 * 3600 <= block.timestamp
            idx = 0
            while idx < crowdsaleUserCaps.length:
                require idx < crowdsaleMinElapsedTimeLevels.length
                mem[0] = 7
                if block.timestamp - (425608 * 3600) >= crowdsaleMinElapsedTimeLevels[idx]:
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
            require var53003 < crowdsaleWeiAvailableLevels.length
            require var53003 < crowdsaleRates.length
            mem[0] = 6
            if var53006 >= crowdsaleWeiAvailableLevels[var53003]:
                require crowdsaleWeiAvailableLevels[var53003] <= var53006
                var53001 = crowdsaleRates[var53003]
                var53002 = crowdsaleWeiAvailableLevels[var53003]
                var53003 = var53003 + 1
                var53005 = var53005
                var53006 = var53006 - crowdsaleWeiAvailableLevels[var53003]
                continue 
            if var53006 <= 0:
                if var53005 > crowdsaleWeiAvailableLevels[var53003]:
                    require crowdsaleWeiAvailableLevels[var53003] <= var53005
                    if not crowdsaleWeiAvailableLevels[var53003]:
                        var53001 = crowdsaleRates[var53003]
                        var53002 = crowdsaleWeiAvailableLevels[var53003]
                        var53003 = var53003 + 1
                        var53005 = var53005 - crowdsaleWeiAvailableLevels[var53003]
                        var53006 = var53006
                        continue 
                    require crowdsaleWeiAvailableLevels[var53003]
                    require crowdsaleWeiAvailableLevels[var53003] * crowdsaleRates[var53003] / crowdsaleWeiAvailableLevels[var53003] == crowdsaleRates[var53003]
                    require crowdsaleWeiAvailableLevels[var53003] * crowdsaleRates[var53003] >= 0
                    var53001 = crowdsaleRates[var53003]
                    var53002 = crowdsaleWeiAvailableLevels[var53003]
                    var53003 = var53003 + 1
                    var53005 = var53005 - crowdsaleWeiAvailableLevels[var53003]
                    var53006 = var53006
                    continue 
            else:
                require var53006 <= crowdsaleWeiAvailableLevels[var53003]
                if var53005 > crowdsaleWeiAvailableLevels[var53003] - var53006:
                    require crowdsaleWeiAvailableLevels[var53003] - var53006 <= var53005
                    if not crowdsaleWeiAvailableLevels[var53003] - var53006:
                        var53001 = crowdsaleRates[var53003]
                        var53002 = crowdsaleWeiAvailableLevels[var53003] - var53006
                        var53003 = var53003 + 1
                        var53005 = var53005 - crowdsaleWeiAvailableLevels[var53003] + var53006
                        var53006 = 0
                        continue 
                    require crowdsaleWeiAvailableLevels[var53003] - var53006
                    require (crowdsaleWeiAvailableLevels[var53003] * crowdsaleRates[var53003]) - (var53006 * crowdsaleRates[var53003]) / crowdsaleWeiAvailableLevels[var53003] - var53006 == crowdsaleRates[var53003]
                    require (crowdsaleWeiAvailableLevels[var53003] * crowdsaleRates[var53003]) - (var53006 * crowdsaleRates[var53003]) >= 0
                    var53001 = crowdsaleRates[var53003]
                    var53002 = crowdsaleWeiAvailableLevels[var53003] - var53006
                    var53003 = var53003 + 1
                    var53005 = var53005 - crowdsaleWeiAvailableLevels[var53003] + var53006
                    var53006 = 0
                    continue 
            require var53005
            require var53005
            require var53005 * crowdsaleRates[var53003] / var53005 == crowdsaleRates[var53003]
            require var53005 * crowdsaleRates[var53003] >= 0
            require var53005 * crowdsaleRates[var53003] / 10^18
            require crowdsaleWeiRaised + msg.value >= crowdsaleWeiRaised
            crowdsaleWeiRaised += msg.value
            require totalSupply + (var53005 * crowdsaleRates[var53003] / 10^18) >= totalSupply
            totalSupply += var53005 * crowdsaleRates[var53003] / 10^18
            require balanceOf[address(msg.sender)] + (var53005 * crowdsaleRates[var53003] / 10^18) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += var53005 * crowdsaleRates[var53003] / 10^18
            emit Transfer((var53005 * crowdsaleRates[var53003] / 10^18), 0, msg.sender);
            emit TokenPurchase(msg.value, var53005 * crowdsaleRates[var53003] / 10^18, msg.sender, msg.sender);
        if block.timestamp >= 425608 * 3600:
            require crowdsaleContributions[address(msg.sender)] + msg.value >= crowdsaleContributions[address(msg.sender)]
            crowdsaleContributions[address(msg.sender)] += msg.value
    else:
        if block.timestamp < 425608 * 3600:
            if block.timestamp <= 425573 * 3600:
                if block.timestamp < 425608 * 3600:
                    if block.timestamp > 425573 * 3600:
                        require totalSupply >= totalSupply
                        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        emit Transfer(0, 0, msg.sender);
                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                    else:
                        require presaleWeiRaised + msg.value >= presaleWeiRaised
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
                    require crowdsaleWeiRaised + msg.value >= crowdsaleWeiRaised
                    require crowdsaleWeiRaised + msg.value <= 5000 * 10^18
                    require block.timestamp >= 425608 * 3600
                    require block.timestamp <= 426341 * 3600
                    require 425608 * 3600 <= block.timestamp
                    idx = 0
                    while idx < crowdsaleUserCaps.length:
                        require idx < crowdsaleMinElapsedTimeLevels.length
                        mem[0] = 7
                        if block.timestamp - (425608 * 3600) >= crowdsaleMinElapsedTimeLevels[idx]:
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
                    require var53003 < crowdsaleWeiAvailableLevels.length
                    require var53003 < crowdsaleRates.length
                    mem[0] = 6
                    if var53006 >= crowdsaleWeiAvailableLevels[var53003]:
                        require crowdsaleWeiAvailableLevels[var53003] <= var53006
                        var53001 = crowdsaleRates[var53003]
                        var53002 = crowdsaleWeiAvailableLevels[var53003]
                        var53003 = var53003 + 1
                        var53005 = var53005
                        var53006 = var53006 - crowdsaleWeiAvailableLevels[var53003]
                        continue 
                    if var53006 <= 0:
                        if var53005 > crowdsaleWeiAvailableLevels[var53003]:
                            require crowdsaleWeiAvailableLevels[var53003] <= var53005
                            if not crowdsaleWeiAvailableLevels[var53003]:
                                var53001 = crowdsaleRates[var53003]
                                var53002 = crowdsaleWeiAvailableLevels[var53003]
                                var53003 = var53003 + 1
                                var53005 = var53005 - crowdsaleWeiAvailableLevels[var53003]
                                var53006 = var53006
                                continue 
                            require crowdsaleWeiAvailableLevels[var53003]
                            require crowdsaleWeiAvailableLevels[var53003] * crowdsaleRates[var53003] / crowdsaleWeiAvailableLevels[var53003] == crowdsaleRates[var53003]
                            require crowdsaleWeiAvailableLevels[var53003] * crowdsaleRates[var53003] >= 0
                            var53001 = crowdsaleRates[var53003]
                            var53002 = crowdsaleWeiAvailableLevels[var53003]
                            var53003 = var53003 + 1
                            var53005 = var53005 - crowdsaleWeiAvailableLevels[var53003]
                            var53006 = var53006
                            continue 
                    else:
                        require var53006 <= crowdsaleWeiAvailableLevels[var53003]
                        if var53005 > crowdsaleWeiAvailableLevels[var53003] - var53006:
                            require crowdsaleWeiAvailableLevels[var53003] - var53006 <= var53005
                            if not crowdsaleWeiAvailableLevels[var53003] - var53006:
                                var53001 = crowdsaleRates[var53003]
                                var53002 = crowdsaleWeiAvailableLevels[var53003] - var53006
                                var53003 = var53003 + 1
                                var53005 = var53005 - crowdsaleWeiAvailableLevels[var53003] + var53006
                                var53006 = 0
                                continue 
                            require crowdsaleWeiAvailableLevels[var53003] - var53006
                            require (crowdsaleWeiAvailableLevels[var53003] * crowdsaleRates[var53003]) - (var53006 * crowdsaleRates[var53003]) / crowdsaleWeiAvailableLevels[var53003] - var53006 == crowdsaleRates[var53003]
                            require (crowdsaleWeiAvailableLevels[var53003] * crowdsaleRates[var53003]) - (var53006 * crowdsaleRates[var53003]) >= 0
                            var53001 = crowdsaleRates[var53003]
                            var53002 = crowdsaleWeiAvailableLevels[var53003] - var53006
                            var53003 = var53003 + 1
                            var53005 = var53005 - crowdsaleWeiAvailableLevels[var53003] + var53006
                            var53006 = 0
                            continue 
                    require var53005
                    require var53005
                    require var53005 * crowdsaleRates[var53003] / var53005 == crowdsaleRates[var53003]
                    require var53005 * crowdsaleRates[var53003] >= 0
                    require var53005 * crowdsaleRates[var53003] / 10^18
                    require crowdsaleWeiRaised + msg.value >= crowdsaleWeiRaised
                    crowdsaleWeiRaised += msg.value
                    require totalSupply + (var53005 * crowdsaleRates[var53003] / 10^18) >= totalSupply
                    totalSupply += var53005 * crowdsaleRates[var53003] / 10^18
                    require balanceOf[address(msg.sender)] + (var53005 * crowdsaleRates[var53003] / 10^18) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += var53005 * crowdsaleRates[var53003] / 10^18
                    emit Transfer((var53005 * crowdsaleRates[var53003] / 10^18), 0, msg.sender);
                    emit TokenPurchase(msg.value, var53005 * crowdsaleRates[var53003] / 10^18, msg.sender, msg.sender);
            else:
                require block.timestamp >= 425608 * 3600
                require crowdsaleWeiRaised + msg.value >= crowdsaleWeiRaised
                require crowdsaleWeiRaised + msg.value <= 5000 * 10^18
                require block.timestamp >= 425608 * 3600
                require block.timestamp <= 426341 * 3600
                require 425608 * 3600 <= block.timestamp
                idx = 0
                while idx < crowdsaleUserCaps.length:
                    require idx < crowdsaleMinElapsedTimeLevels.length
                    mem[0] = 7
                    if block.timestamp - (425608 * 3600) >= crowdsaleMinElapsedTimeLevels[idx]:
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
                require var54003 < crowdsaleWeiAvailableLevels.length
                require var54003 < crowdsaleRates.length
                mem[0] = 6
                if var54006 >= crowdsaleWeiAvailableLevels[var54003]:
                    require crowdsaleWeiAvailableLevels[var54003] <= var54006
                    var54001 = crowdsaleRates[var54003]
                    var54002 = crowdsaleWeiAvailableLevels[var54003]
                    var54003 = var54003 + 1
                    var54005 = var54005
                    var54006 = var54006 - crowdsaleWeiAvailableLevels[var54003]
                    continue 
                if var54006 <= 0:
                    if var54005 > crowdsaleWeiAvailableLevels[var54003]:
                        require crowdsaleWeiAvailableLevels[var54003] <= var54005
                        if not crowdsaleWeiAvailableLevels[var54003]:
                            var54001 = crowdsaleRates[var54003]
                            var54002 = crowdsaleWeiAvailableLevels[var54003]
                            var54003 = var54003 + 1
                            var54005 = var54005 - crowdsaleWeiAvailableLevels[var54003]
                            var54006 = var54006
                            continue 
                        require crowdsaleWeiAvailableLevels[var54003]
                        require crowdsaleWeiAvailableLevels[var54003] * crowdsaleRates[var54003] / crowdsaleWeiAvailableLevels[var54003] == crowdsaleRates[var54003]
                        require crowdsaleWeiAvailableLevels[var54003] * crowdsaleRates[var54003] >= 0
                        var54001 = crowdsaleRates[var54003]
                        var54002 = crowdsaleWeiAvailableLevels[var54003]
                        var54003 = var54003 + 1
                        var54005 = var54005 - crowdsaleWeiAvailableLevels[var54003]
                        var54006 = var54006
                        continue 
                else:
                    require var54006 <= crowdsaleWeiAvailableLevels[var54003]
                    if var54005 > crowdsaleWeiAvailableLevels[var54003] - var54006:
                        require crowdsaleWeiAvailableLevels[var54003] - var54006 <= var54005
                        if not crowdsaleWeiAvailableLevels[var54003] - var54006:
                            var54001 = crowdsaleRates[var54003]
                            var54002 = crowdsaleWeiAvailableLevels[var54003] - var54006
                            var54003 = var54003 + 1
                            var54005 = var54005 - crowdsaleWeiAvailableLevels[var54003] + var54006
                            var54006 = 0
                            continue 
                        require crowdsaleWeiAvailableLevels[var54003] - var54006
                        require (crowdsaleWeiAvailableLevels[var54003] * crowdsaleRates[var54003]) - (var54006 * crowdsaleRates[var54003]) / crowdsaleWeiAvailableLevels[var54003] - var54006 == crowdsaleRates[var54003]
                        require (crowdsaleWeiAvailableLevels[var54003] * crowdsaleRates[var54003]) - (var54006 * crowdsaleRates[var54003]) >= 0
                        var54001 = crowdsaleRates[var54003]
                        var54002 = crowdsaleWeiAvailableLevels[var54003] - var54006
                        var54003 = var54003 + 1
                        var54005 = var54005 - crowdsaleWeiAvailableLevels[var54003] + var54006
                        var54006 = 0
                        continue 
                require var54005
                require var54005
                require var54005 * crowdsaleRates[var54003] / var54005 == crowdsaleRates[var54003]
                require var54005 * crowdsaleRates[var54003] >= 0
                require var54005 * crowdsaleRates[var54003] / 10^18
                require crowdsaleWeiRaised + msg.value >= crowdsaleWeiRaised
                crowdsaleWeiRaised += msg.value
                require totalSupply + (var54005 * crowdsaleRates[var54003] / 10^18) >= totalSupply
                totalSupply += var54005 * crowdsaleRates[var54003] / 10^18
                require balanceOf[address(msg.sender)] + (var54005 * crowdsaleRates[var54003] / 10^18) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += var54005 * crowdsaleRates[var54003] / 10^18
                emit Transfer((var54005 * crowdsaleRates[var54003] / 10^18), 0, msg.sender);
                emit TokenPurchase(msg.value, var54005 * crowdsaleRates[var54003] / 10^18, msg.sender, msg.sender);
            if block.timestamp >= 425608 * 3600:
                require crowdsaleContributions[address(msg.sender)] + msg.value >= crowdsaleContributions[address(msg.sender)]
                crowdsaleContributions[address(msg.sender)] += msg.value
        else:
            if block.timestamp <= 425573 * 3600:
                if block.timestamp > 426341 * 3600:
                    if block.timestamp > 425573 * 3600:
                        require totalSupply >= totalSupply
                        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        emit Transfer(0, 0, msg.sender);
                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                    else:
                        require presaleWeiRaised + msg.value >= presaleWeiRaised
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
                    require crowdsaleWeiRaised + msg.value >= crowdsaleWeiRaised
                    require crowdsaleWeiRaised + msg.value <= 5000 * 10^18
                    require block.timestamp >= 425608 * 3600
                    require block.timestamp <= 426341 * 3600
                    require 425608 * 3600 <= block.timestamp
                    idx = 0
                    while idx < crowdsaleUserCaps.length:
                        require idx < crowdsaleMinElapsedTimeLevels.length
                        mem[0] = 7
                        if block.timestamp - (425608 * 3600) >= crowdsaleMinElapsedTimeLevels[idx]:
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
                    require var54003 < crowdsaleWeiAvailableLevels.length
                    require var54003 < crowdsaleRates.length
                    mem[0] = 6
                    if var54006 >= crowdsaleWeiAvailableLevels[var54003]:
                        require crowdsaleWeiAvailableLevels[var54003] <= var54006
                        var54001 = crowdsaleRates[var54003]
                        var54002 = crowdsaleWeiAvailableLevels[var54003]
                        var54003 = var54003 + 1
                        var54005 = var54005
                        var54006 = var54006 - crowdsaleWeiAvailableLevels[var54003]
                        continue 
                    if var54006 <= 0:
                        if var54005 > crowdsaleWeiAvailableLevels[var54003]:
                            require crowdsaleWeiAvailableLevels[var54003] <= var54005
                            if not crowdsaleWeiAvailableLevels[var54003]:
                                var54001 = crowdsaleRates[var54003]
                                var54002 = crowdsaleWeiAvailableLevels[var54003]
                                var54003 = var54003 + 1
                                var54005 = var54005 - crowdsaleWeiAvailableLevels[var54003]
                                var54006 = var54006
                                continue 
                            require crowdsaleWeiAvailableLevels[var54003]
                            require crowdsaleWeiAvailableLevels[var54003] * crowdsaleRates[var54003] / crowdsaleWeiAvailableLevels[var54003] == crowdsaleRates[var54003]
                            require crowdsaleWeiAvailableLevels[var54003] * crowdsaleRates[var54003] >= 0
                            var54001 = crowdsaleRates[var54003]
                            var54002 = crowdsaleWeiAvailableLevels[var54003]
                            var54003 = var54003 + 1
                            var54005 = var54005 - crowdsaleWeiAvailableLevels[var54003]
                            var54006 = var54006
                            continue 
                    else:
                        require var54006 <= crowdsaleWeiAvailableLevels[var54003]
                        if var54005 > crowdsaleWeiAvailableLevels[var54003] - var54006:
                            require crowdsaleWeiAvailableLevels[var54003] - var54006 <= var54005
                            if not crowdsaleWeiAvailableLevels[var54003] - var54006:
                                var54001 = crowdsaleRates[var54003]
                                var54002 = crowdsaleWeiAvailableLevels[var54003] - var54006
                                var54003 = var54003 + 1
                                var54005 = var54005 - crowdsaleWeiAvailableLevels[var54003] + var54006
                                var54006 = 0
                                continue 
                            require crowdsaleWeiAvailableLevels[var54003] - var54006
                            require (crowdsaleWeiAvailableLevels[var54003] * crowdsaleRates[var54003]) - (var54006 * crowdsaleRates[var54003]) / crowdsaleWeiAvailableLevels[var54003] - var54006 == crowdsaleRates[var54003]
                            require (crowdsaleWeiAvailableLevels[var54003] * crowdsaleRates[var54003]) - (var54006 * crowdsaleRates[var54003]) >= 0
                            var54001 = crowdsaleRates[var54003]
                            var54002 = crowdsaleWeiAvailableLevels[var54003] - var54006
                            var54003 = var54003 + 1
                            var54005 = var54005 - crowdsaleWeiAvailableLevels[var54003] + var54006
                            var54006 = 0
                            continue 
                    require var54005
                    require var54005
                    require var54005 * crowdsaleRates[var54003] / var54005 == crowdsaleRates[var54003]
                    require var54005 * crowdsaleRates[var54003] >= 0
                    require var54005 * crowdsaleRates[var54003] / 10^18
                    require crowdsaleWeiRaised + msg.value >= crowdsaleWeiRaised
                    crowdsaleWeiRaised += msg.value
                    require totalSupply + (var54005 * crowdsaleRates[var54003] / 10^18) >= totalSupply
                    totalSupply += var54005 * crowdsaleRates[var54003] / 10^18
                    require balanceOf[address(msg.sender)] + (var54005 * crowdsaleRates[var54003] / 10^18) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += var54005 * crowdsaleRates[var54003] / 10^18
                    emit Transfer((var54005 * crowdsaleRates[var54003] / 10^18), 0, msg.sender);
                    emit TokenPurchase(msg.value, var54005 * crowdsaleRates[var54003] / 10^18, msg.sender, msg.sender);
            else:
                require block.timestamp <= 426341 * 3600
                require crowdsaleWeiRaised + msg.value >= crowdsaleWeiRaised
                require crowdsaleWeiRaised + msg.value <= 5000 * 10^18
                require block.timestamp >= 425608 * 3600
                require block.timestamp <= 426341 * 3600
                require 425608 * 3600 <= block.timestamp
                idx = 0
                while idx < crowdsaleUserCaps.length:
                    require idx < crowdsaleMinElapsedTimeLevels.length
                    mem[0] = 7
                    if block.timestamp - (425608 * 3600) >= crowdsaleMinElapsedTimeLevels[idx]:
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
                require var55003 < crowdsaleWeiAvailableLevels.length
                require var55003 < crowdsaleRates.length
                mem[0] = 6
                if var55006 >= crowdsaleWeiAvailableLevels[var55003]:
                    require crowdsaleWeiAvailableLevels[var55003] <= var55006
                    var55001 = crowdsaleRates[var55003]
                    var55002 = crowdsaleWeiAvailableLevels[var55003]
                    var55003 = var55003 + 1
                    var55005 = var55005
                    var55006 = var55006 - crowdsaleWeiAvailableLevels[var55003]
                    continue 
                if var55006 <= 0:
                    if var55005 > crowdsaleWeiAvailableLevels[var55003]:
                        require crowdsaleWeiAvailableLevels[var55003] <= var55005
                        if not crowdsaleWeiAvailableLevels[var55003]:
                            var55001 = crowdsaleRates[var55003]
                            var55002 = crowdsaleWeiAvailableLevels[var55003]
                            var55003 = var55003 + 1
                            var55005 = var55005 - crowdsaleWeiAvailableLevels[var55003]
                            var55006 = var55006
                            continue 
                        require crowdsaleWeiAvailableLevels[var55003]
                        require crowdsaleWeiAvailableLevels[var55003] * crowdsaleRates[var55003] / crowdsaleWeiAvailableLevels[var55003] == crowdsaleRates[var55003]
                        require crowdsaleWeiAvailableLevels[var55003] * crowdsaleRates[var55003] >= 0
                        var55001 = crowdsaleRates[var55003]
                        var55002 = crowdsaleWeiAvailableLevels[var55003]
                        var55003 = var55003 + 1
                        var55005 = var55005 - crowdsaleWeiAvailableLevels[var55003]
                        var55006 = var55006
                        continue 
                else:
                    require var55006 <= crowdsaleWeiAvailableLevels[var55003]
                    if var55005 > crowdsaleWeiAvailableLevels[var55003] - var55006:
                        require crowdsaleWeiAvailableLevels[var55003] - var55006 <= var55005
                        if not crowdsaleWeiAvailableLevels[var55003] - var55006:
                            var55001 = crowdsaleRates[var55003]
                            var55002 = crowdsaleWeiAvailableLevels[var55003] - var55006
                            var55003 = var55003 + 1
                            var55005 = var55005 - crowdsaleWeiAvailableLevels[var55003] + var55006
                            var55006 = 0
                            continue 
                        require crowdsaleWeiAvailableLevels[var55003] - var55006
                        require (crowdsaleWeiAvailableLevels[var55003] * crowdsaleRates[var55003]) - (var55006 * crowdsaleRates[var55003]) / crowdsaleWeiAvailableLevels[var55003] - var55006 == crowdsaleRates[var55003]
                        require (crowdsaleWeiAvailableLevels[var55003] * crowdsaleRates[var55003]) - (var55006 * crowdsaleRates[var55003]) >= 0
                        var55001 = crowdsaleRates[var55003]
                        var55002 = crowdsaleWeiAvailableLevels[var55003] - var55006
                        var55003 = var55003 + 1
                        var55005 = var55005 - crowdsaleWeiAvailableLevels[var55003] + var55006
                        var55006 = 0
                        continue 
                require var55005
                require var55005
                require var55005 * crowdsaleRates[var55003] / var55005 == crowdsaleRates[var55003]
                require var55005 * crowdsaleRates[var55003] >= 0
                require var55005 * crowdsaleRates[var55003] / 10^18
                require crowdsaleWeiRaised + msg.value >= crowdsaleWeiRaised
                crowdsaleWeiRaised += msg.value
                require totalSupply + (var55005 * crowdsaleRates[var55003] / 10^18) >= totalSupply
                totalSupply += var55005 * crowdsaleRates[var55003] / 10^18
                require balanceOf[address(msg.sender)] + (var55005 * crowdsaleRates[var55003] / 10^18) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += var55005 * crowdsaleRates[var55003] / 10^18
                emit Transfer((var55005 * crowdsaleRates[var55003] / 10^18), 0, msg.sender);
                emit TokenPurchase(msg.value, var55005 * crowdsaleRates[var55003] / 10^18, msg.sender, msg.sender);
            if block.timestamp <= 426341 * 3600:
                require crowdsaleContributions[address(msg.sender)] + msg.value >= crowdsaleContributions[address(msg.sender)]
                crowdsaleContributions[address(msg.sender)] += msg.value
    require deposited[address(msg.sender)] + msg.value >= deposited[address(msg.sender)]
    deposited[address(msg.sender)] += msg.value
}



}
