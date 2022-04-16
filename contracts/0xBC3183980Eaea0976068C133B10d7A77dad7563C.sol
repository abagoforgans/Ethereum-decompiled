contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
address stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;

function _fallback() payable {
    stor6 = 10000000 * 10^18
    stor7 = 10^18
    require not msg.value
    stor3 = msg.sender
    stor0 = stor6
    stor1[address(msg.sender)] = stor6
    stor5 = stor3
    stor4 = stor3
    stor8 = block.timestamp
    stor9 = stor8 + (720 * 24 * 3600)
    return code.data[423 len 7610]
}



// =====================  Runtime code  =====================


const name = 'PresaleMidex'

const decimals = 18

const symbol = 'PMDX'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
address exchangeRegulatorWalletAddress;
address walletAddress;
uint256 initialSupply;
uint256 amountToken;
uint256 startTime;
uint256 endTime;

function amountToken() {
    return amountToken
}

function totalSupply() {
    return totalSupply
}

function endTime() {
    return endTime
}

function initialSupply() {
    return initialSupply
}

function wallet() {
    return walletAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function startTime() {
    return startTime
}

function exchangeRegulatorWallet() {
    return exchangeRegulatorWalletAddress
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function setEndTime(uint256 arg1) {
    require msg.sender == owner
    endTime = arg1
}

function setWallet(address arg1) {
    require msg.sender == owner
    walletAddress = arg1
}

function setExchangeRegulatorWallet(address arg1) {
    require msg.sender == owner
    exchangeRegulatorWalletAddress = arg1
}

function setAmountToken(uint256 arg1) {
    if owner != msg.sender:
        require msg.sender == exchangeRegulatorWalletAddress
    amountToken = arg1
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

function burn() {
    require msg.sender == owner
    require balanceOf[address(msg.sender)] <= totalSupply
    totalSupply -= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = 0
    emit Burn(msg.sender, balanceOf[address(msg.sender)]);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require block.timestamp > startTime
    require block.timestamp < endTime
    require balanceOf[stor3] > 0
    require amountToken
    if msg.value / amountToken:
        require msg.value / amountToken
        require 10^18 * msg.value / amountToken / msg.value / amountToken == 10^18
    require balanceOf[address(msg.sender)] + (10^18 * msg.value / amountToken) >= balanceOf[address(msg.sender)]
    if balanceOf[stor3] >= 10^18 * msg.value / amountToken:
        balanceOf[address(msg.sender)] += 10^18 * msg.value / amountToken
        balanceOf[stor3] += -1 * 10^18 * msg.value / amountToken
        emit Transfer((10^18 * msg.value / amountToken), owner, msg.sender);
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        if balanceOf[stor3] / 10^18:
            require balanceOf[stor3] / 10^18
            require balanceOf[stor3] / 10^18 * amountToken / balanceOf[stor3] / 10^18 == amountToken
        balanceOf[address(msg.sender)] += balanceOf[stor3]
        balanceOf[stor3] = 0
        emit Transfer(balanceOf[stor3], owner, msg.sender);
        call walletAddress with:
           value balanceOf[stor3] / 10^18 * amountToken wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
