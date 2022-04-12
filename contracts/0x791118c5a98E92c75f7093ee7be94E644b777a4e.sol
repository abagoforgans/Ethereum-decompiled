contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor3;
address stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    stor3 = 1000 * 10^18
    require not msg.value
    stor0 = msg.sender
    require code.data[3544 len 32] > 0
    require code.data[3576 len 32] > 0
    stor6 = msg.sender
    stor7 = code.data[3544 len 32]
    stor8 = code.data[3576 len 32]
    stor3 = 10^18 * code.data[3608 len 32]
    return code.data[192 len 3352]
}



// =====================  Runtime code  =====================


const name = 'Fluence Presale Token'

const decimals = 18

const basicTokensPerEth = 1500

const expertThreshold = 100 * 10^18

const advancedThreshold = 5 * 10^18

const symbol = 'FPT'

const basicThreshold = 5 * 10^17

const advancedTokensPerEth = 2250

const expertTokensPerEth = 3000

const SUPPLY_LIMIT = 6 * 10^6


uint8 stor0; offset 160
address owner;
mapping of uint256 balanceOf;
uint256 totalSupply;
uint256 softCap;
mapping of uint256 etherContributions;
uint256 etherCollected;
address beneficiaryAddress;
uint256 startAtBlock;
uint256 endAtBlock;

function totalSupply() {
    return totalSupply
}

function beneficiary() {
    return beneficiaryAddress
}

function etherContributions(address arg1) {
    return etherContributions[arg1]
}

function etherCollected() {
    return etherCollected
}

function endAtBlock() {
    return endAtBlock
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function startAtBlock() {
    return startAtBlock
}

function owner() {
    return owner
}

function softCap() {
    return softCap
}

function halted() {
    return bool(stor0)
}

function halt() {
    require owner == msg.sender
    stor0 = 1
}

function unhalt() {
    require owner == msg.sender
    require stor0
    stor0 = 0
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function setBeneficiary(address arg1) {
    require owner == msg.sender
    require arg1
    beneficiaryAddress = arg1
}

function withdraw() {
    require owner == msg.sender
    require etherCollected >= softCap
    require eth.balance(this.address) > 0
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function refund() {
    require not stor0
    require block.number > endAtBlock
    require etherCollected < softCap
    require eth.balance(this.address) > 0
    require balanceOf[address(msg.sender)] > 0
    balanceOf[address(msg.sender)] = 0
    require etherContributions[address(msg.sender)] > 0
    etherContributions[address(msg.sender)] = 0
    require etherCollected >= etherContributions[address(msg.sender)]
    etherCollected -= etherContributions[address(msg.sender)]
    require totalSupply >= balanceOf[address(msg.sender)]
    totalSupply -= balanceOf[address(msg.sender)]
    call msg.sender with:
       value etherContributions[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Refunded(etherContributions[address(msg.sender)], msg.sender);
}

function _fallback() payable {
    require not stor0
    require block.number >= startAtBlock
    require block.number <= endAtBlock
    require totalSupply < 6 * 10^6
    if msg.value < 5 * 10^17:
        require owner == msg.sender
    if msg.value >= 100 * 10^18:
        if msg.value:
            require msg.value
            require 3000 * msg.value / msg.value == 3000
        require 3000 * msg.value > 0
        require (3000 * msg.value) + totalSupply >= totalSupply
        require (3000 * msg.value) + totalSupply >= 3000 * msg.value
        totalSupply += 3000 * msg.value
        require (3000 * msg.value) + totalSupply <= 6 * 10^6
        require msg.value + etherContributions[address(msg.sender)] >= etherContributions[address(msg.sender)]
        require msg.value + etherContributions[address(msg.sender)] >= msg.value
        etherContributions[address(msg.sender)] += msg.value
        require msg.value + etherCollected >= etherCollected
        require msg.value + etherCollected >= msg.value
        etherCollected += msg.value
        require (3000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require (3000 * msg.value) + balanceOf[address(msg.sender)] >= 3000 * msg.value
        balanceOf[address(msg.sender)] += 3000 * msg.value
        emit NewContribution(3000 * msg.value, msg.value, msg.sender);
    else:
        if msg.value < 5 * 10^18:
            if msg.value:
                require msg.value
                require 1500 * msg.value / msg.value == 1500
            require 1500 * msg.value > 0
            require (1500 * msg.value) + totalSupply >= totalSupply
            require (1500 * msg.value) + totalSupply >= 1500 * msg.value
            totalSupply += 1500 * msg.value
            require (1500 * msg.value) + totalSupply <= 6 * 10^6
            require msg.value + etherContributions[address(msg.sender)] >= etherContributions[address(msg.sender)]
            require msg.value + etherContributions[address(msg.sender)] >= msg.value
            etherContributions[address(msg.sender)] += msg.value
            require msg.value + etherCollected >= etherCollected
            require msg.value + etherCollected >= msg.value
            etherCollected += msg.value
            require (1500 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            require (1500 * msg.value) + balanceOf[address(msg.sender)] >= 1500 * msg.value
            balanceOf[address(msg.sender)] += 1500 * msg.value
            emit NewContribution(1500 * msg.value, msg.value, msg.sender);
        else:
            if msg.value:
                require msg.value
                require 2250 * msg.value / msg.value == 2250
            require 2250 * msg.value > 0
            require (2250 * msg.value) + totalSupply >= totalSupply
            require (2250 * msg.value) + totalSupply >= 2250 * msg.value
            totalSupply += 2250 * msg.value
            require (2250 * msg.value) + totalSupply <= 6 * 10^6
            require msg.value + etherContributions[address(msg.sender)] >= etherContributions[address(msg.sender)]
            require msg.value + etherContributions[address(msg.sender)] >= msg.value
            etherContributions[address(msg.sender)] += msg.value
            require msg.value + etherCollected >= etherCollected
            require msg.value + etherCollected >= msg.value
            etherCollected += msg.value
            require (2250 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            require (2250 * msg.value) + balanceOf[address(msg.sender)] >= 2250 * msg.value
            balanceOf[address(msg.sender)] += 2250 * msg.value
            emit NewContribution(2250 * msg.value, msg.value, msg.sender);
    if totalSupply == 6 * 10^6:
        emit GoalReached(etherCollected);
}



}
