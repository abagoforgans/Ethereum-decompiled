contract main {


// =======================  Init code  ======================


address stor3;

function _fallback() {
    stor3 = msg.sender
    return code.data[97 len 7428]
}



// =====================  Runtime code  =====================


const name = 'LOLPresale Token'

const decimals = 18

const symbol = 'LOLP'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint256 startDate;
uint256 endDate;
uint256 saleCap;
address walletAddress;
uint256 weiRaised;
mapping of uint256 sub_4d71d65e;

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

function sub_4d71d65e(?) {
    return sub_4d71d65e[arg1]
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

function destroyToken() {
    require msg.sender == owner
    if block.timestamp >= startDate:
        if block.timestamp < endDate:
            require balanceOf[1] <= 0
    require balanceOf[stor7] + balanceOf[1] >= balanceOf[stor7]
    balanceOf[stor7] += balanceOf[1]
    balanceOf[1] = 0
    selfdestruct(walletAddress)
}

function getRateAt(uint256 arg1) {
    if arg1 >= startDate:
        return 2720
    else:
        return 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function setUserID(bytes32 arg1) {
    sub_4d71d65e[address(msg.sender)] = arg1
    emit UserIDChanged(msg.sender, arg1);
}

function saleActive() {
    if block.timestamp < startDate:
        return block.timestamp >= startDate
    if block.timestamp >= endDate:
        return (block.timestamp < endDate)
    return (balanceOf[1] > 0)
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function finalize() {
    require msg.sender == owner
    if block.timestamp >= startDate:
        if block.timestamp < endDate:
            require balanceOf[1] <= 0
    require balanceOf[stor7] + balanceOf[1] >= balanceOf[stor7]
    balanceOf[stor7] += balanceOf[1]
    balanceOf[1] = 0
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
    require balanceOf[stor7] >= arg2
    require weiRaised + (arg2 / 2720) >= weiRaised
    require arg2 <= balanceOf[stor7]
    balanceOf[stor7] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit PreICOTokenPushed(arg2, arg1);
    weiRaised += arg2 / 2720
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
    balanceOf[stor7] = arg5 - saleCap
    balanceOf[1] = saleCap
}

function _fallback() payable {
    require block.timestamp >= startDate
    require block.timestamp < endDate
    require balanceOf[1] > 0
    require msg.value >= 10^18
    require weiRaised + msg.value >= weiRaised
    if block.timestamp < startDate:
        if not msg.value:
            require balanceOf[1] >= 0
            if 0 <= balanceOf[1]:
                if balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]:
                    emit TokenPurchase(msg.value, 0, msg.sender);
                    weiRaised += msg.value
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
        else:
            if msg.value:
                if not 0 / msg.value:
                    require balanceOf[1] >= 0
                    if 0 <= balanceOf[1]:
                        if balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]:
                            emit TokenPurchase(msg.value, 0, msg.sender);
                            weiRaised += msg.value
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
    else:
        if not msg.value:
            require balanceOf[1] >= 2720 * msg.value
            if 2720 * msg.value <= balanceOf[1]:
                balanceOf[1] += -2720 * msg.value
                if balanceOf[address(msg.sender)] + (2720 * msg.value) >= balanceOf[address(msg.sender)]:
                    balanceOf[address(msg.sender)] += 2720 * msg.value
                    emit TokenPurchase(msg.value, 2720 * msg.value, msg.sender);
                    weiRaised += msg.value
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
        else:
            if msg.value:
                if 2720 * msg.value / msg.value == 2720:
                    require balanceOf[1] >= 2720 * msg.value
                    if 2720 * msg.value <= balanceOf[1]:
                        balanceOf[1] += -2720 * msg.value
                        if balanceOf[address(msg.sender)] + (2720 * msg.value) >= balanceOf[address(msg.sender)]:
                            balanceOf[address(msg.sender)] += 2720 * msg.value
                            emit TokenPurchase(msg.value, 2720 * msg.value, msg.sender);
                            weiRaised += msg.value
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
    revert
}



}
