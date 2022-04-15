contract main {


// =======================  Init code  ======================


address stor3;

function _fallback() {
    stor3 = msg.sender
    return code.data[62 len 3985]
}



// =====================  Runtime code  =====================


const name = 'Gene BTC'

const decimals = 18

const symbol = 'GBC'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint256 startDate;
uint256 endDate;
uint256 saleCap;
address walletAddress;
uint256 weiRaised;
mapping of uint256 geneBlockChainUserIDs;
uint256 stor7FF6;

function saleCap() {
    return saleCap
}

function startDate() {
    return startDate
}

function totalSupply() {
    return totalSupply
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function GeneBlockChainUserIDs(address arg1) {
    return geneBlockChainUserIDs[arg1]
}

function owner() {
    return owner
}

function endDate() {
    return endDate
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function setUserID(bytes32 arg1) {
    geneBlockChainUserIDs[address(msg.sender)] = arg1
    emit UserIDChanged(msg.sender, arg1);
}

function saleActive() {
    if block.timestamp < startDate:
        return block.timestamp >= startDate
    if block.timestamp >= endDate:
        return (block.timestamp < endDate)
    return (stor7FF6 > 0)
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function getRateAt(uint256 arg1) {
    if arg1 < startDate:
        return 0
    if arg1 < startDate + (168 * 24 * 3600):
        return 840
    if arg1 < startDate + (888 * 24 * 3600):
        return 770
    if arg1 > endDate:
        return 0
    return 700
}

function finalize() {
    require owner == msg.sender
    if block.timestamp >= startDate:
        if block.timestamp < endDate:
            require stor7FF6 <= 0
    require stor7FF6 + balanceOf[stor7] >= balanceOf[stor7]
    balanceOf[stor7] += stor7FF6
    stor7FF6 = 0
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function push(address arg1, uint256 arg2) {
    require owner == msg.sender
    require balanceOf[stor7] >= arg2
    require arg2 <= balanceOf[stor7]
    balanceOf[stor7] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit PreICOTokenPushed(arg2, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function initialize(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require owner == msg.sender
    require not walletAddress
    require arg2 >= block.timestamp
    require arg2 < arg3
    require arg1
    require arg5 > arg4
    startDate = arg2
    endDate = arg3
    saleCap = arg4
    walletAddress = arg1
    totalSupply = arg5
    require arg4 <= arg5
    balanceOf[stor7] = arg5 - arg4
    stor7FF6 = saleCap
}

function _fallback() payable {
    require block.timestamp >= startDate
    require block.timestamp < endDate
    require stor7FF6 > 0
    require msg.value >= 10^17
    require msg.value + weiRaised >= weiRaised
    if block.timestamp < startDate:
        if msg.value:
            require msg.value
            require not 0 / msg.value
        require stor7FF6 >= 0
        require 0 <= stor7FF6
        require balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[address(msg.sender)] = balanceOf[msg.sender]
        emit TokenPurchase(msg.value, 0, msg.sender);
    else:
        if block.timestamp < startDate + (168 * 24 * 3600):
            if msg.value:
                require msg.value
                require 840 * msg.value / msg.value == 840
            require stor7FF6 >= 840 * msg.value
            require 840 * msg.value <= stor7FF6
            stor7FF6 += -840 * msg.value
            require (840 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[address(msg.sender)] = (840 * msg.value) + balanceOf[msg.sender]
            emit TokenPurchase(msg.value, 840 * msg.value, msg.sender);
        else:
            if block.timestamp < startDate + (888 * 24 * 3600):
                if msg.value:
                    require msg.value
                    require 770 * msg.value / msg.value == 770
                require stor7FF6 >= 770 * msg.value
                require 770 * msg.value <= stor7FF6
                stor7FF6 += -770 * msg.value
                require (770 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                balanceOf[address(msg.sender)] = (770 * msg.value) + balanceOf[msg.sender]
                emit TokenPurchase(msg.value, 770 * msg.value, msg.sender);
            else:
                if block.timestamp > endDate:
                    if msg.value:
                        require msg.value
                        require not 0 / msg.value
                    require stor7FF6 >= 0
                    require 0 <= stor7FF6
                    require balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = balanceOf[msg.sender]
                    emit TokenPurchase(msg.value, 0, msg.sender);
                else:
                    if msg.value:
                        require msg.value
                        require 700 * msg.value / msg.value == 700
                    require stor7FF6 >= 700 * msg.value
                    require 700 * msg.value <= stor7FF6
                    stor7FF6 += -700 * msg.value
                    require (700 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = (700 * msg.value) + balanceOf[msg.sender]
                    emit TokenPurchase(msg.value, 700 * msg.value, msg.sender);
    weiRaised += msg.value
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
