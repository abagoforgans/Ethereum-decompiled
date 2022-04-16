contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
address stor6;
uint256 stor8;
address stor9;
address stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;

function _fallback() payable {
    stor8 = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[7813 len 32] >= block.timestamp
    require code.data[7889 len 20]
    require code.data[8017 len 20]
    stor4 = code.data[7813 len 32]
    stor5 = code.data[7813 len 32] + (240 * 24 * 3600)
    stor2 = code.data[7845 len 32]
    require code.data[7845 len 32] >= code.data[7813 len 32] + (240 * 24 * 3600)
    stor3 = code.data[7845 len 32] + (672 * 24 * 3600)
    stor6 = code.data[7889 len 20]
    stor10 = code.data[8017 len 20]
    stor9 = msg.sender
    stor11 = code.data[7941 len 32]
    stor12 = code.data[7909 len 32]
    stor13 = code.data[7973 len 32]
    create contract with 0 wei
                    code: code.data[4468 len 3345], 28500000 * 10^18, msg.sender, code.data[8017 len 20], 59375 * 10^17 * 3600, 2850000 * 10^18, 11875 * 10^17 * 3600
    require create.new_address
    stor1 = address(create.new_address)
    return code.data[520 len 3948]
}



// =====================  Runtime code  =====================


const PRICE_STAGE_TWO = 345 * 10^18

const ALLOC_ADVISORS_BOUNTIES = 2850000 * 10^18

const PRICE_PREBUY = (125 * 10^15 * 3600)

const STAGE_FOUR_TIME_END = (672 * 24 * 3600)

const STAGE_TWO_TIME_END = (336 * 24 * 3600)

const STAGE_ONE_TIME_END = (168 * 24 * 3600)

const ALLOC_CROWDSALE = (59375 * 10^17 * 3600)

const PRICE_STAGE_ONE = 375 * 10^18

const TOTAL_SUPPLY = 28500000 * 10^18

const PRICE_STAGE_ONE_BONUS = 435 * 10^18

const BASIC_RATE = 300

const ALLOC_TEAM = (11875 * 10^17 * 3600)

const PRICE_STAGE_FOUR = 300 * 10^18

const PRICE_PREBUY_BONUS = (1375 * 10^14 * 3600)

const PRICE_STAGE_FOUR_BONUS = 300 * 10^18

const PRICE_STAGE_TWO_BONUS = 375 * 10^18

const PRICE_STAGE_THREE_BONUS = 345 * 10^18

const PRICE_STAGE_THREE = 321 * 10^18

const PRICE_STANDARD = 300 * 10^18

const STAGE_THREE_TIME_END = (504 * 24 * 3600)


address owner;
address tokenAddress;
uint256 startTime;
uint256 endTime;
uint256 privateStartTime;
uint256 privateEndTime;
address walletAddress;
uint256 weiRaised;
uint256 smxSold;
address ownerAddress;
uint8 stor10; offset 160
uint128 stor10; offset 160
address smxTeamAddress;
uint256 cap;
uint256 privateCap;
uint256 bonusThresholdWei;

function privateEndTime() {
    return privateEndTime
}

function smxTeamAddress() {
    return smxTeamAddress
}

function endTime() {
    return endTime
}

function cap() {
    return cap
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function startTime() {
    return startTime
}

function privateStartTime() {
    return privateStartTime
}

function owner() {
    return owner
}

function ownerAddress() {
    return ownerAddress
}

function smxSold() {
    return smxSold
}

function halted() {
    return bool(uint8(stor10.field_160))
}

function bonusThresholdWei() {
    return bonusThresholdWei
}

function privateCap() {
    return privateCap
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function toggleHalt(bool arg1) {
    require owner == msg.sender
    Mask(96, 0, stor10.field_160) = Mask(96, 0, arg1)
}

function hasEnded() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    if weiRaised >= cap:
        return weiRaised >= cap
    return (0 == -smxSold + (59375 * 10^17 * 3600))
}

function getCurrentRate(uint256 arg1) {
    if block.timestamp < startTime:
        if arg1 >= bonusThresholdWei:
            return (1375 * 10^14 * 3600)
        return (125 * 10^15 * 3600)
    require startTime <= block.timestamp
    if block.timestamp - startTime > 504 * 24 * 3600:
        return 300 * 10^18
    if block.timestamp - startTime > 336 * 24 * 3600:
        if arg1 >= bonusThresholdWei:
            return 345 * 10^18
        return 321 * 10^18
    if block.timestamp - startTime <= 168 * 24 * 3600:
        if arg1 >= bonusThresholdWei:
            return 435 * 10^18
        return 375 * 10^18
    if arg1 >= bonusThresholdWei:
        return 375 * 10^18
    return 345 * 10^18
}

function buyTokens(address arg1) payable {
    require not uint8(stor10.field_160)
    require arg1
    require msg.value + weiRaised >= weiRaised
    if block.timestamp < privateStartTime:
        if block.timestamp < startTime:
            require block.timestamp >= privateStartTime
            require msg.value
            if block.timestamp >= privateStartTime:
                require msg.value + weiRaised <= privateCap
            else:
                require msg.value + weiRaised <= cap
        else:
            if block.timestamp <= endTime:
                require block.timestamp <= endTime
                require msg.value
                if block.timestamp >= privateStartTime:
                    require msg.value + weiRaised <= privateCap
                else:
                    require msg.value + weiRaised <= cap
            else:
                require block.timestamp >= privateStartTime
                require msg.value
                if block.timestamp >= privateStartTime:
                    require msg.value + weiRaised <= privateCap
                else:
                    require msg.value + weiRaised <= cap
    else:
        if block.timestamp < startTime:
            require block.timestamp < privateEndTime
            require msg.value
            if block.timestamp < privateEndTime:
                require msg.value + weiRaised <= privateCap
            else:
                require msg.value + weiRaised <= cap
        else:
            if block.timestamp <= endTime:
                require block.timestamp <= endTime
                require msg.value
                if block.timestamp < privateEndTime:
                    require msg.value + weiRaised <= privateCap
                else:
                    require msg.value + weiRaised <= cap
            else:
                require block.timestamp < privateEndTime
                require msg.value
                if block.timestamp < privateEndTime:
                    require msg.value + weiRaised <= privateCap
                else:
                    require msg.value + weiRaised <= cap
    require -smxSold + (59375 * 10^17 * 3600) > 0
    if block.timestamp < startTime:
        if msg.value >= bonusThresholdWei:
            if msg.value:
                require msg.value
                require 1375 * 10^14 * 3600 * msg.value / msg.value == 1375 * 10^14 * 3600
            require -smxSold + (59375 * 10^17 * 3600) >= 1375 * 10^14 * 3600 * msg.value / 10^18
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require (1375 * 10^14 * 3600 * msg.value / 10^18) + smxSold >= smxSold
            smxSold += 1375 * 10^14 * 3600 * msg.value / 10^18
            require ext_code.size(tokenAddress)
            call tokenAddress.distribute(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args address(arg1), 1375 * 10^14 * 3600 * msg.value / 10^18
            require ext_call.success
            emit TokenPurchase(msg.value, 1375 * 10^14 * 3600 * msg.value / 10^18, msg.sender, arg1);
        else:
            if msg.value:
                require msg.value
                require 125 * 10^15 * 3600 * msg.value / msg.value == 125 * 10^15 * 3600
            require -smxSold + (59375 * 10^17 * 3600) >= 125 * 10^15 * 3600 * msg.value / 10^18
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require (125 * 10^15 * 3600 * msg.value / 10^18) + smxSold >= smxSold
            smxSold += 125 * 10^15 * 3600 * msg.value / 10^18
            require ext_code.size(tokenAddress)
            call tokenAddress.distribute(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args address(arg1), 125 * 10^15 * 3600 * msg.value / 10^18
            require ext_call.success
            emit TokenPurchase(msg.value, 125 * 10^15 * 3600 * msg.value / 10^18, msg.sender, arg1);
    else:
        require startTime <= block.timestamp
        if block.timestamp - startTime > 504 * 24 * 3600:
            if msg.value:
                require msg.value
                require 300 * 10^18 * msg.value / msg.value == 300 * 10^18
            require -smxSold + (59375 * 10^17 * 3600) >= 300 * 10^18 * msg.value / 10^18
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require (300 * 10^18 * msg.value / 10^18) + smxSold >= smxSold
            smxSold += 300 * 10^18 * msg.value / 10^18
            require ext_code.size(tokenAddress)
            call tokenAddress.distribute(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args address(arg1), 300 * 10^18 * msg.value / 10^18
            require ext_call.success
            emit TokenPurchase(msg.value, 300 * 10^18 * msg.value / 10^18, msg.sender, arg1);
        else:
            if block.timestamp - startTime > 336 * 24 * 3600:
                if msg.value >= bonusThresholdWei:
                    if msg.value:
                        require msg.value
                        require 345 * 10^18 * msg.value / msg.value == 345 * 10^18
                    require -smxSold + (59375 * 10^17 * 3600) >= 345 * 10^18 * msg.value / 10^18
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require (345 * 10^18 * msg.value / 10^18) + smxSold >= smxSold
                    smxSold += 345 * 10^18 * msg.value / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.distribute(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 345 * 10^18 * msg.value / 10^18
                    require ext_call.success
                    emit TokenPurchase(msg.value, 345 * 10^18 * msg.value / 10^18, msg.sender, arg1);
                else:
                    if msg.value:
                        require msg.value
                        require 321 * 10^18 * msg.value / msg.value == 321 * 10^18
                    require -smxSold + (59375 * 10^17 * 3600) >= 321 * 10^18 * msg.value / 10^18
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require (321 * 10^18 * msg.value / 10^18) + smxSold >= smxSold
                    smxSold += 321 * 10^18 * msg.value / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.distribute(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 321 * 10^18 * msg.value / 10^18
                    require ext_call.success
                    emit TokenPurchase(msg.value, 321 * 10^18 * msg.value / 10^18, msg.sender, arg1);
            else:
                if block.timestamp - startTime <= 168 * 24 * 3600:
                    if msg.value >= bonusThresholdWei:
                        if msg.value:
                            require msg.value
                            require 435 * 10^18 * msg.value / msg.value == 435 * 10^18
                        require -smxSold + (59375 * 10^17 * 3600) >= 435 * 10^18 * msg.value / 10^18
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require (435 * 10^18 * msg.value / 10^18) + smxSold >= smxSold
                        smxSold += 435 * 10^18 * msg.value / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.distribute(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 435 * 10^18 * msg.value / 10^18
                        require ext_call.success
                        emit TokenPurchase(msg.value, 435 * 10^18 * msg.value / 10^18, msg.sender, arg1);
                    else:
                        if msg.value:
                            require msg.value
                            require 375 * 10^18 * msg.value / msg.value == 375 * 10^18
                        require -smxSold + (59375 * 10^17 * 3600) >= 375 * 10^18 * msg.value / 10^18
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require (375 * 10^18 * msg.value / 10^18) + smxSold >= smxSold
                        smxSold += 375 * 10^18 * msg.value / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.distribute(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 375 * 10^18 * msg.value / 10^18
                        require ext_call.success
                        emit TokenPurchase(msg.value, 375 * 10^18 * msg.value / 10^18, msg.sender, arg1);
                else:
                    if msg.value >= bonusThresholdWei:
                        if msg.value:
                            require msg.value
                            require 375 * 10^18 * msg.value / msg.value == 375 * 10^18
                        require -smxSold + (59375 * 10^17 * 3600) >= 375 * 10^18 * msg.value / 10^18
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require (375 * 10^18 * msg.value / 10^18) + smxSold >= smxSold
                        smxSold += 375 * 10^18 * msg.value / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.distribute(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 375 * 10^18 * msg.value / 10^18
                        require ext_call.success
                        emit TokenPurchase(msg.value, 375 * 10^18 * msg.value / 10^18, msg.sender, arg1);
                    else:
                        if msg.value:
                            require msg.value
                            require 345 * 10^18 * msg.value / msg.value == 345 * 10^18
                        require -smxSold + (59375 * 10^17 * 3600) >= 345 * 10^18 * msg.value / 10^18
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require (345 * 10^18 * msg.value / 10^18) + smxSold >= smxSold
                        smxSold += 345 * 10^18 * msg.value / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.distribute(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 345 * 10^18 * msg.value / 10^18
                        require ext_call.success
                        emit TokenPurchase(msg.value, 345 * 10^18 * msg.value / 10^18, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require not uint8(stor10.field_160)
    require msg.sender
    require msg.value + weiRaised >= weiRaised
    if block.timestamp < privateStartTime:
        if block.timestamp < startTime:
            require block.timestamp >= privateStartTime
            require msg.value
            if block.timestamp >= privateStartTime:
                require msg.value + weiRaised <= privateCap
            else:
                require msg.value + weiRaised <= cap
        else:
            if block.timestamp <= endTime:
                require block.timestamp <= endTime
                require msg.value
                if block.timestamp >= privateStartTime:
                    require msg.value + weiRaised <= privateCap
                else:
                    require msg.value + weiRaised <= cap
            else:
                require block.timestamp >= privateStartTime
                require msg.value
                if block.timestamp >= privateStartTime:
                    require msg.value + weiRaised <= privateCap
                else:
                    require msg.value + weiRaised <= cap
    else:
        if block.timestamp < startTime:
            require block.timestamp < privateEndTime
            require msg.value
            if block.timestamp < privateEndTime:
                require msg.value + weiRaised <= privateCap
            else:
                require msg.value + weiRaised <= cap
        else:
            if block.timestamp <= endTime:
                require block.timestamp <= endTime
                require msg.value
                if block.timestamp < privateEndTime:
                    require msg.value + weiRaised <= privateCap
                else:
                    require msg.value + weiRaised <= cap
            else:
                require block.timestamp < privateEndTime
                require msg.value
                if block.timestamp < privateEndTime:
                    require msg.value + weiRaised <= privateCap
                else:
                    require msg.value + weiRaised <= cap
    require -smxSold + (59375 * 10^17 * 3600) > 0
    if block.timestamp < startTime:
        if msg.value >= bonusThresholdWei:
            if msg.value:
                require msg.value
                require 1375 * 10^14 * 3600 * msg.value / msg.value == 1375 * 10^14 * 3600
            require -smxSold + (59375 * 10^17 * 3600) >= 1375 * 10^14 * 3600 * msg.value / 10^18
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require (1375 * 10^14 * 3600 * msg.value / 10^18) + smxSold >= smxSold
            smxSold += 1375 * 10^14 * 3600 * msg.value / 10^18
            require ext_code.size(tokenAddress)
            call tokenAddress.distribute(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args msg.sender, 1375 * 10^14 * 3600 * msg.value / 10^18
            require ext_call.success
            emit TokenPurchase(msg.value, 1375 * 10^14 * 3600 * msg.value / 10^18, msg.sender, msg.sender);
        else:
            if msg.value:
                require msg.value
                require 125 * 10^15 * 3600 * msg.value / msg.value == 125 * 10^15 * 3600
            require -smxSold + (59375 * 10^17 * 3600) >= 125 * 10^15 * 3600 * msg.value / 10^18
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require (125 * 10^15 * 3600 * msg.value / 10^18) + smxSold >= smxSold
            smxSold += 125 * 10^15 * 3600 * msg.value / 10^18
            require ext_code.size(tokenAddress)
            call tokenAddress.distribute(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args msg.sender, 125 * 10^15 * 3600 * msg.value / 10^18
            require ext_call.success
            emit TokenPurchase(msg.value, 125 * 10^15 * 3600 * msg.value / 10^18, msg.sender, msg.sender);
    else:
        require startTime <= block.timestamp
        if block.timestamp - startTime > 504 * 24 * 3600:
            if msg.value:
                require msg.value
                require 300 * 10^18 * msg.value / msg.value == 300 * 10^18
            require -smxSold + (59375 * 10^17 * 3600) >= 300 * 10^18 * msg.value / 10^18
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require (300 * 10^18 * msg.value / 10^18) + smxSold >= smxSold
            smxSold += 300 * 10^18 * msg.value / 10^18
            require ext_code.size(tokenAddress)
            call tokenAddress.distribute(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args msg.sender, 300 * 10^18 * msg.value / 10^18
            require ext_call.success
            emit TokenPurchase(msg.value, 300 * 10^18 * msg.value / 10^18, msg.sender, msg.sender);
        else:
            if block.timestamp - startTime > 336 * 24 * 3600:
                if msg.value >= bonusThresholdWei:
                    if msg.value:
                        require msg.value
                        require 345 * 10^18 * msg.value / msg.value == 345 * 10^18
                    require -smxSold + (59375 * 10^17 * 3600) >= 345 * 10^18 * msg.value / 10^18
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require (345 * 10^18 * msg.value / 10^18) + smxSold >= smxSold
                    smxSold += 345 * 10^18 * msg.value / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.distribute(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 345 * 10^18 * msg.value / 10^18
                    require ext_call.success
                    emit TokenPurchase(msg.value, 345 * 10^18 * msg.value / 10^18, msg.sender, msg.sender);
                else:
                    if msg.value:
                        require msg.value
                        require 321 * 10^18 * msg.value / msg.value == 321 * 10^18
                    require -smxSold + (59375 * 10^17 * 3600) >= 321 * 10^18 * msg.value / 10^18
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require (321 * 10^18 * msg.value / 10^18) + smxSold >= smxSold
                    smxSold += 321 * 10^18 * msg.value / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.distribute(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 321 * 10^18 * msg.value / 10^18
                    require ext_call.success
                    emit TokenPurchase(msg.value, 321 * 10^18 * msg.value / 10^18, msg.sender, msg.sender);
            else:
                if block.timestamp - startTime <= 168 * 24 * 3600:
                    if msg.value >= bonusThresholdWei:
                        if msg.value:
                            require msg.value
                            require 435 * 10^18 * msg.value / msg.value == 435 * 10^18
                        require -smxSold + (59375 * 10^17 * 3600) >= 435 * 10^18 * msg.value / 10^18
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require (435 * 10^18 * msg.value / 10^18) + smxSold >= smxSold
                        smxSold += 435 * 10^18 * msg.value / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.distribute(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 435 * 10^18 * msg.value / 10^18
                        require ext_call.success
                        emit TokenPurchase(msg.value, 435 * 10^18 * msg.value / 10^18, msg.sender, msg.sender);
                    else:
                        if msg.value:
                            require msg.value
                            require 375 * 10^18 * msg.value / msg.value == 375 * 10^18
                        require -smxSold + (59375 * 10^17 * 3600) >= 375 * 10^18 * msg.value / 10^18
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require (375 * 10^18 * msg.value / 10^18) + smxSold >= smxSold
                        smxSold += 375 * 10^18 * msg.value / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.distribute(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 375 * 10^18 * msg.value / 10^18
                        require ext_call.success
                        emit TokenPurchase(msg.value, 375 * 10^18 * msg.value / 10^18, msg.sender, msg.sender);
                else:
                    if msg.value >= bonusThresholdWei:
                        if msg.value:
                            require msg.value
                            require 375 * 10^18 * msg.value / msg.value == 375 * 10^18
                        require -smxSold + (59375 * 10^17 * 3600) >= 375 * 10^18 * msg.value / 10^18
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require (375 * 10^18 * msg.value / 10^18) + smxSold >= smxSold
                        smxSold += 375 * 10^18 * msg.value / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.distribute(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 375 * 10^18 * msg.value / 10^18
                        require ext_call.success
                        emit TokenPurchase(msg.value, 375 * 10^18 * msg.value / 10^18, msg.sender, msg.sender);
                    else:
                        if msg.value:
                            require msg.value
                            require 345 * 10^18 * msg.value / msg.value == 345 * 10^18
                        require -smxSold + (59375 * 10^17 * 3600) >= 345 * 10^18 * msg.value / 10^18
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require (345 * 10^18 * msg.value / 10^18) + smxSold >= smxSold
                        smxSold += 345 * 10^18 * msg.value / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.distribute(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 345 * 10^18 * msg.value / 10^18
                        require ext_call.success
                        emit TokenPurchase(msg.value, 345 * 10^18 * msg.value / 10^18, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
