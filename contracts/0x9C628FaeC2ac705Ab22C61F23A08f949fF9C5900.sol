contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;

function _fallback() payable {
    stor4 = 10000000018
    stor5 = block.timestamp
    stor6 = block.timestamp + (168 * 24 * 3600)
    stor7 = 5000000018
    stor8 = msg.sender
    require not msg.value
    stor3 = msg.sender
    stor1[address(msg.sender)] = stor4
    return code.data[261 len 7052]
}



// =====================  Runtime code  =====================


const name = 'Vogel Token'

const decimals = 18

const symbol = 'VOG'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint256 totalSupply;
uint256 startDate;
uint256 endDate;
uint256 saleCap;
address walletAddress;
uint256 weiRaised;
mapping of uint256 sub_4837d6ea;

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

function sub_4837d6ea(?) {
    return sub_4837d6ea[arg1]
}

function wallet() {
    return walletAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
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
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function setUserID(bytes32 arg1) {
    sub_4837d6ea[address(msg.sender)] = arg1
    emit UserIDChanged(msg.sender, arg1);
}

function saleActive() {
    if block.timestamp < startDate:
        return block.timestamp >= startDate
    if block.timestamp >= endDate:
        return (block.timestamp < endDate)
    return (balanceOf[address(msg.sender)] > 0)
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function push(address arg1, uint256 arg2) {
    require msg.sender == owner
    require balanceOf[stor8] >= arg2
    require arg2 <= balanceOf[stor8]
    balanceOf[stor8] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit PreICOTokenPushed(arg2, arg1);
}

function finalize() {
    require msg.sender == owner
    if block.timestamp >= startDate:
        if block.timestamp < endDate:
            require balanceOf[address(msg.sender)] <= 0
    require balanceOf[stor8] + balanceOf[address(msg.sender)] >= balanceOf[stor8]
    balanceOf[stor8] += balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = 0
}

function getRateAt(uint256 arg1) {
    if arg1 < startDate:
        return 0
    if arg1 < startDate + (24 * 3600):
        return 5600
    if arg1 < startDate + (48 * 24 * 3600):
        return 5200
    if arg1 < startDate + (72 * 24 * 3600):
        return 4800
    if arg1 < startDate + (96 * 24 * 3600):
        return 4400
    if arg1 > endDate:
        return 0
    return 4000
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function initialize(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require msg.sender == owner
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
    require saleCap <= arg5
    balanceOf[stor8] = arg5 - saleCap
    balanceOf[address(msg.sender)] = saleCap
}

function _fallback() payable {
    require block.timestamp >= startDate
    require block.timestamp < endDate
    require balanceOf[address(msg.sender)] > 0
    require msg.value >= 10^17
    require weiRaised + msg.value >= weiRaised
    if block.timestamp < startDate:
        if msg.value:
            require msg.value
            require not 0 / msg.value
        require balanceOf[address(msg.sender)] >= 0
        require 0 <= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        emit TokenPurchase(msg.value, 0, msg.sender);
    else:
        if block.timestamp < startDate + (24 * 3600):
            if msg.value:
                require msg.value
                require 5600 * msg.value / msg.value == 5600
            require balanceOf[address(msg.sender)] >= 5600 * msg.value
            require 5600 * msg.value <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += -5600 * msg.value
            require balanceOf[address(msg.sender)] + (5600 * msg.value) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 5600 * msg.value
            emit TokenPurchase(msg.value, 5600 * msg.value, msg.sender);
        else:
            if block.timestamp < startDate + (48 * 24 * 3600):
                if msg.value:
                    require msg.value
                    require 5200 * msg.value / msg.value == 5200
                require balanceOf[address(msg.sender)] >= 5200 * msg.value
                require 5200 * msg.value <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += -5200 * msg.value
                require balanceOf[address(msg.sender)] + (5200 * msg.value) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 5200 * msg.value
                emit TokenPurchase(msg.value, 5200 * msg.value, msg.sender);
            else:
                if block.timestamp < startDate + (72 * 24 * 3600):
                    if msg.value:
                        require msg.value
                        require 4800 * msg.value / msg.value == 4800
                    require balanceOf[address(msg.sender)] >= 4800 * msg.value
                    require 4800 * msg.value <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += -4800 * msg.value
                    require balanceOf[address(msg.sender)] + (4800 * msg.value) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 4800 * msg.value
                    emit TokenPurchase(msg.value, 4800 * msg.value, msg.sender);
                else:
                    if block.timestamp < startDate + (96 * 24 * 3600):
                        if msg.value:
                            require msg.value
                            require 4400 * msg.value / msg.value == 4400
                        require balanceOf[address(msg.sender)] >= 4400 * msg.value
                        require 4400 * msg.value <= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += -4400 * msg.value
                        require balanceOf[address(msg.sender)] + (4400 * msg.value) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 4400 * msg.value
                        emit TokenPurchase(msg.value, 4400 * msg.value, msg.sender);
                    else:
                        if block.timestamp > endDate:
                            if msg.value:
                                require msg.value
                                require not 0 / msg.value
                            require balanceOf[address(msg.sender)] >= 0
                            require 0 <= balanceOf[address(msg.sender)]
                            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            emit TokenPurchase(msg.value, 0, msg.sender);
                        else:
                            if msg.value:
                                require msg.value
                                require 4000 * msg.value / msg.value == 4000
                            require balanceOf[address(msg.sender)] >= 4000 * msg.value
                            require 4000 * msg.value <= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += -4000 * msg.value
                            require balanceOf[address(msg.sender)] + (4000 * msg.value) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 4000 * msg.value
                            emit TokenPurchase(msg.value, 4000 * msg.value, msg.sender);
    weiRaised += msg.value
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
