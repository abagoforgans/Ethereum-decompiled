contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor1; offset 160
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
address stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;

function _fallback() payable {
    stor1 = 0
    stor3 = 420351 * 3600
    stor4 = 1514764740
    stor5 = 420975 * 3600
    stor6 = 1518739140
    stor7 = 0
    stor8 = 0
    stor9 = 0
    stor10 = 0
    stor11 = 0
    stor12 = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[2614 len 20]
    stor9 = code.data[2614 len 20]
    stor10 = stor5 + (24 * 3600)
    stor11 = stor5 + (96 * 24 * 3600)
    stor12 = stor5 + (480 * 24 * 3600)
    return code.data[250 len 2352]
}



// =====================  Runtime code  =====================


const HARD_CAP = 100000 * 10^18

const PRESALE_ETHER_MIN_CONTRIB = 10^18

const SALE_ETHER_MIN_CONTRIB = 10^17

const TOKEN_PRICE_DENOM = 1

const TOKEN_PRICE_NUM = 2500


address owner;
uint8 stor1; offset 160
address newOwner;
mapping of uint256 balances;
uint256 PRE_SALE_START_TIME;
uint256 PRE_SALE_END_TIME;
uint256 SALE_START_TIME;
uint256 SALE_END_TIME;
uint256 totalEtherContributed;
uint256 totalTokensToSupply;
address walletAddress;
uint256 bonusWindow1EndTime;
uint256 bonusWindow2EndTime;
uint256 bonusWindow3EndTime;

function PRE_SALE_END_TIME() {
    return PRE_SALE_END_TIME
}

function SALE_END_TIME() {
    return SALE_END_TIME
}

function balances(address arg1) {
    return balances[arg1]
}

function bonusWindow2EndTime() {
    return bonusWindow2EndTime
}

function bonusWindow1EndTime() {
    return bonusWindow1EndTime
}

function SALE_START_TIME() {
    return SALE_START_TIME
}

function wallet() {
    return walletAddress
}

function PRE_SALE_START_TIME() {
    return PRE_SALE_START_TIME
}

function paused() {
    return bool(stor1)
}

function owner() {
    return owner
}

function totalEtherContributed() {
    return totalEtherContributed
}

function totalTokensToSupply() {
    return totalTokensToSupply
}

function newOwner() {
    return newOwner
}

function bonusWindow3EndTime() {
    return bonusWindow3EndTime
}

function unpause() {
    require owner == msg.sender
    require stor1
    stor1 = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not stor1
    stor1 = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require owner != arg1
    newOwner = arg1
}

function confirmOwnership() {
    require newOwner == msg.sender
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function transferFunds() {
    require owner == msg.sender
    call walletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require not stor1
    if block.timestamp < PRE_SALE_START_TIME:
        require block.timestamp >= SALE_START_TIME
        require block.timestamp < SALE_END_TIME
        require msg.value >= 10^17
    else:
        if block.timestamp >= PRE_SALE_END_TIME:
            require block.timestamp >= SALE_START_TIME
            require block.timestamp < SALE_END_TIME
            require msg.value >= 10^17
        else:
            if msg.value < 10^18:
                require block.timestamp >= SALE_START_TIME
                require block.timestamp < SALE_END_TIME
                require msg.value >= 10^17
    require msg.value + totalEtherContributed >= totalEtherContributed
    require msg.value + totalEtherContributed <= 100000 * 10^18
    if msg.value:
        require msg.value
        require 2500 * msg.value / msg.value == 2500
    if block.timestamp < PRE_SALE_START_TIME:
        if block.timestamp < SALE_START_TIME:
            require 2500 * msg.value >= 2500 * msg.value
            require (2500 * msg.value) + balances[address(msg.sender)] >= balances[address(msg.sender)]
            balances[address(msg.sender)] += 2500 * msg.value
            require msg.value + totalEtherContributed >= totalEtherContributed
            totalEtherContributed += msg.value
            require (2500 * msg.value) + totalTokensToSupply >= totalTokensToSupply
            totalTokensToSupply += 2500 * msg.value
            emit LogContribution(msg.value, 2500 * msg.value, 0, block.timestamp, msg.sender);
        else:
            if block.timestamp >= SALE_END_TIME:
                require 2500 * msg.value >= 2500 * msg.value
                require (2500 * msg.value) + balances[address(msg.sender)] >= balances[address(msg.sender)]
                balances[address(msg.sender)] += 2500 * msg.value
                require msg.value + totalEtherContributed >= totalEtherContributed
                totalEtherContributed += msg.value
                require (2500 * msg.value) + totalTokensToSupply >= totalTokensToSupply
                totalTokensToSupply += 2500 * msg.value
                emit LogContribution(msg.value, 2500 * msg.value, 0, block.timestamp, msg.sender);
            else:
                if block.timestamp < bonusWindow1EndTime:
                    if 2500 * msg.value:
                        require 2500 * msg.value
                        require 37500 * msg.value / 2500 * msg.value == 15
                    require (37500 * msg.value / 100) + (2500 * msg.value) >= 2500 * msg.value
                    require (37500 * msg.value / 100) + (2500 * msg.value) + balances[address(msg.sender)] >= balances[address(msg.sender)]
                    balances[address(msg.sender)] = (37500 * msg.value / 100) + (2500 * msg.value) + balances[address(msg.sender)]
                    require msg.value + totalEtherContributed >= totalEtherContributed
                    totalEtherContributed += msg.value
                    require (37500 * msg.value / 100) + (2500 * msg.value) + totalTokensToSupply >= totalTokensToSupply
                    totalTokensToSupply = (37500 * msg.value / 100) + (2500 * msg.value) + totalTokensToSupply
                    emit LogContribution(msg.value, 2500 * msg.value, 37500 * msg.value / 100, block.timestamp, msg.sender);
                else:
                    if block.timestamp < bonusWindow2EndTime:
                        if 2500 * msg.value:
                            require 2500 * msg.value
                            require 25000 * msg.value / 2500 * msg.value == 10
                        require (25000 * msg.value / 100) + (2500 * msg.value) >= 2500 * msg.value
                        require (25000 * msg.value / 100) + (2500 * msg.value) + balances[address(msg.sender)] >= balances[address(msg.sender)]
                        balances[address(msg.sender)] = (25000 * msg.value / 100) + (2500 * msg.value) + balances[address(msg.sender)]
                        require msg.value + totalEtherContributed >= totalEtherContributed
                        totalEtherContributed += msg.value
                        require (25000 * msg.value / 100) + (2500 * msg.value) + totalTokensToSupply >= totalTokensToSupply
                        totalTokensToSupply = (25000 * msg.value / 100) + (2500 * msg.value) + totalTokensToSupply
                        emit LogContribution(msg.value, 2500 * msg.value, 25000 * msg.value / 100, block.timestamp, msg.sender);
                    else:
                        if block.timestamp >= bonusWindow3EndTime:
                            require 2500 * msg.value >= 2500 * msg.value
                            require (2500 * msg.value) + balances[address(msg.sender)] >= balances[address(msg.sender)]
                            balances[address(msg.sender)] += 2500 * msg.value
                            require msg.value + totalEtherContributed >= totalEtherContributed
                            totalEtherContributed += msg.value
                            require (2500 * msg.value) + totalTokensToSupply >= totalTokensToSupply
                            totalTokensToSupply += 2500 * msg.value
                            emit LogContribution(msg.value, 2500 * msg.value, 0, block.timestamp, msg.sender);
                        else:
                            if 2500 * msg.value:
                                require 2500 * msg.value
                                require 12500 * msg.value / 2500 * msg.value == 5
                            require (12500 * msg.value / 100) + (2500 * msg.value) >= 2500 * msg.value
                            require (12500 * msg.value / 100) + (2500 * msg.value) + balances[address(msg.sender)] >= balances[address(msg.sender)]
                            balances[address(msg.sender)] = (12500 * msg.value / 100) + (2500 * msg.value) + balances[address(msg.sender)]
                            require msg.value + totalEtherContributed >= totalEtherContributed
                            totalEtherContributed += msg.value
                            require (12500 * msg.value / 100) + (2500 * msg.value) + totalTokensToSupply >= totalTokensToSupply
                            totalTokensToSupply = (12500 * msg.value / 100) + (2500 * msg.value) + totalTokensToSupply
                            emit LogContribution(msg.value, 2500 * msg.value, 12500 * msg.value / 100, block.timestamp, msg.sender);
    else:
        if block.timestamp < PRE_SALE_END_TIME:
            if 2500 * msg.value:
                require 2500 * msg.value
                require 62500 * msg.value / 2500 * msg.value == 25
            require (62500 * msg.value / 100) + (2500 * msg.value) >= 2500 * msg.value
            require (62500 * msg.value / 100) + (2500 * msg.value) + balances[address(msg.sender)] >= balances[address(msg.sender)]
            balances[address(msg.sender)] = (62500 * msg.value / 100) + (2500 * msg.value) + balances[address(msg.sender)]
            require msg.value + totalEtherContributed >= totalEtherContributed
            totalEtherContributed += msg.value
            require (62500 * msg.value / 100) + (2500 * msg.value) + totalTokensToSupply >= totalTokensToSupply
            totalTokensToSupply = (62500 * msg.value / 100) + (2500 * msg.value) + totalTokensToSupply
            emit LogContribution(msg.value, 2500 * msg.value, 62500 * msg.value / 100, block.timestamp, msg.sender);
        else:
            if block.timestamp < SALE_START_TIME:
                require 2500 * msg.value >= 2500 * msg.value
                require (2500 * msg.value) + balances[address(msg.sender)] >= balances[address(msg.sender)]
                balances[address(msg.sender)] += 2500 * msg.value
                require msg.value + totalEtherContributed >= totalEtherContributed
                totalEtherContributed += msg.value
                require (2500 * msg.value) + totalTokensToSupply >= totalTokensToSupply
                totalTokensToSupply += 2500 * msg.value
                emit LogContribution(msg.value, 2500 * msg.value, 0, block.timestamp, msg.sender);
            else:
                if block.timestamp >= SALE_END_TIME:
                    require 2500 * msg.value >= 2500 * msg.value
                    require (2500 * msg.value) + balances[address(msg.sender)] >= balances[address(msg.sender)]
                    balances[address(msg.sender)] += 2500 * msg.value
                    require msg.value + totalEtherContributed >= totalEtherContributed
                    totalEtherContributed += msg.value
                    require (2500 * msg.value) + totalTokensToSupply >= totalTokensToSupply
                    totalTokensToSupply += 2500 * msg.value
                    emit LogContribution(msg.value, 2500 * msg.value, 0, block.timestamp, msg.sender);
                else:
                    if block.timestamp < bonusWindow1EndTime:
                        if 2500 * msg.value:
                            require 2500 * msg.value
                            require 37500 * msg.value / 2500 * msg.value == 15
                        require (37500 * msg.value / 100) + (2500 * msg.value) >= 2500 * msg.value
                        require (37500 * msg.value / 100) + (2500 * msg.value) + balances[address(msg.sender)] >= balances[address(msg.sender)]
                        balances[address(msg.sender)] = (37500 * msg.value / 100) + (2500 * msg.value) + balances[address(msg.sender)]
                        require msg.value + totalEtherContributed >= totalEtherContributed
                        totalEtherContributed += msg.value
                        require (37500 * msg.value / 100) + (2500 * msg.value) + totalTokensToSupply >= totalTokensToSupply
                        totalTokensToSupply = (37500 * msg.value / 100) + (2500 * msg.value) + totalTokensToSupply
                        emit LogContribution(msg.value, 2500 * msg.value, 37500 * msg.value / 100, block.timestamp, msg.sender);
                    else:
                        if block.timestamp < bonusWindow2EndTime:
                            if 2500 * msg.value:
                                require 2500 * msg.value
                                require 25000 * msg.value / 2500 * msg.value == 10
                            require (25000 * msg.value / 100) + (2500 * msg.value) >= 2500 * msg.value
                            require (25000 * msg.value / 100) + (2500 * msg.value) + balances[address(msg.sender)] >= balances[address(msg.sender)]
                            balances[address(msg.sender)] = (25000 * msg.value / 100) + (2500 * msg.value) + balances[address(msg.sender)]
                            require msg.value + totalEtherContributed >= totalEtherContributed
                            totalEtherContributed += msg.value
                            require (25000 * msg.value / 100) + (2500 * msg.value) + totalTokensToSupply >= totalTokensToSupply
                            totalTokensToSupply = (25000 * msg.value / 100) + (2500 * msg.value) + totalTokensToSupply
                            emit LogContribution(msg.value, 2500 * msg.value, 25000 * msg.value / 100, block.timestamp, msg.sender);
                        else:
                            if block.timestamp >= bonusWindow3EndTime:
                                require 2500 * msg.value >= 2500 * msg.value
                                require (2500 * msg.value) + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                balances[address(msg.sender)] += 2500 * msg.value
                                require msg.value + totalEtherContributed >= totalEtherContributed
                                totalEtherContributed += msg.value
                                require (2500 * msg.value) + totalTokensToSupply >= totalTokensToSupply
                                totalTokensToSupply += 2500 * msg.value
                                emit LogContribution(msg.value, 2500 * msg.value, 0, block.timestamp, msg.sender);
                            else:
                                if 2500 * msg.value:
                                    require 2500 * msg.value
                                    require 12500 * msg.value / 2500 * msg.value == 5
                                require (12500 * msg.value / 100) + (2500 * msg.value) >= 2500 * msg.value
                                require (12500 * msg.value / 100) + (2500 * msg.value) + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                balances[address(msg.sender)] = (12500 * msg.value / 100) + (2500 * msg.value) + balances[address(msg.sender)]
                                require msg.value + totalEtherContributed >= totalEtherContributed
                                totalEtherContributed += msg.value
                                require (12500 * msg.value / 100) + (2500 * msg.value) + totalTokensToSupply >= totalTokensToSupply
                                totalTokensToSupply = (12500 * msg.value / 100) + (2500 * msg.value) + totalTokensToSupply
                                emit LogContribution(msg.value, 2500 * msg.value, 12500 * msg.value / 100, block.timestamp, msg.sender);
}



}
