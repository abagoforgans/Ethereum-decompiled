contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor3;
uint256 stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;

function _fallback() payable {
    stor3 = 0
    stor4 = 0
    stor5 = 0
    stor6 = 0
    stor7 = 0
    stor8 = 0
    stor9 = 0
    stor10 = 0
    stor11 = 0
    stor12 = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[2210 len 32] >= block.timestamp
    require code.data[2242 len 32] > code.data[2210 len 32]
    require code.data[2274 len 32] > code.data[2242 len 32]
    require code.data[2306 len 32] > code.data[2274 len 32]
    require code.data[2190 len 20]
    stor5 = code.data[2190 len 20]
    stor6 = code.data[2210 len 32]
    stor7 = code.data[2242 len 32]
    stor8 = code.data[2274 len 32]
    stor9 = code.data[2306 len 32]
    stor10 = code.data[2274 len 32] + (24 * 3600)
    stor11 = code.data[2274 len 32] + (96 * 24 * 3600)
    stor12 = code.data[2274 len 32] + (480 * 24 * 3600)
    return code.data[317 len 1861]
}



// =====================  Runtime code  =====================


const PRESALE_ETHER_MIN_CONTRIB = 5 * 10^18

const SALE_ETHER_MIN_CONTRIB = 10^17

const TOKEN_PRICE_DENOM = 1

const TOKEN_PRICE_NUM = 2500


address owner;
address newOwner;
mapping of uint256 balances;
uint256 totalEtherContributed;
uint256 totalTokensToSupply;
address walletAddress;
uint256 preSaleStartTime;
uint256 preSaleEndTime;
uint256 saleStartTime;
uint256 saleEndTime;
uint256 bonusWindow1EndTime;
uint256 bonusWindow2EndTime;
uint256 bonusWindow3EndTime;

function preSaleStartTime() {
    return preSaleStartTime
}

function saleStartTime() {
    return saleStartTime
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

function wallet() {
    return walletAddress
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

function preSaleEndTime() {
    return preSaleEndTime
}

function newOwner() {
    return newOwner
}

function bonusWindow3EndTime() {
    return bonusWindow3EndTime
}

function saleEndTime() {
    return saleEndTime
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
    if block.timestamp < preSaleStartTime:
        require block.timestamp >= saleStartTime
        require block.timestamp < saleEndTime
        require msg.value >= 10^17
    else:
        if block.timestamp >= preSaleEndTime:
            require block.timestamp >= saleStartTime
            require block.timestamp < saleEndTime
            require msg.value >= 10^17
        else:
            if msg.value < 5 * 10^18:
                require block.timestamp >= saleStartTime
                require block.timestamp < saleEndTime
                require msg.value >= 10^17
    if msg.value:
        require msg.value
        require 2500 * msg.value / msg.value == 2500
    if block.timestamp < preSaleStartTime:
        if block.timestamp < saleStartTime:
            require 2500 * msg.value >= 2500 * msg.value
            require (2500 * msg.value) + balances[address(msg.sender)] >= balances[address(msg.sender)]
            balances[address(msg.sender)] += 2500 * msg.value
            require msg.value + totalEtherContributed >= totalEtherContributed
            totalEtherContributed += msg.value
            require (2500 * msg.value) + totalTokensToSupply >= totalTokensToSupply
            totalTokensToSupply += 2500 * msg.value
            emit LogContribution(msg.value, 2500 * msg.value, 0, block.timestamp, msg.sender);
        else:
            if block.timestamp >= saleEndTime:
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
        if block.timestamp < preSaleEndTime:
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
            if block.timestamp < saleStartTime:
                require 2500 * msg.value >= 2500 * msg.value
                require (2500 * msg.value) + balances[address(msg.sender)] >= balances[address(msg.sender)]
                balances[address(msg.sender)] += 2500 * msg.value
                require msg.value + totalEtherContributed >= totalEtherContributed
                totalEtherContributed += msg.value
                require (2500 * msg.value) + totalTokensToSupply >= totalTokensToSupply
                totalTokensToSupply += 2500 * msg.value
                emit LogContribution(msg.value, 2500 * msg.value, 0, block.timestamp, msg.sender);
            else:
                if block.timestamp >= saleEndTime:
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
