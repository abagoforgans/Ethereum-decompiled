contract main {


// =======================  Init code  ======================


uint256 stor3;
uint256 stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint8 stor10;
uint256 stor11;

function _fallback() payable {
    stor6 = 1000000000 * 10^18
    stor7 = 1000000000 * 10^18
    stor8 = 0
    stor9 = 5760
    stor10 = 0
    stor11 = 0
    require not msg.value
    stor5 = code.data[3982 len 20]
    stor3 = code.data[4002 len 32]
    stor4 = code.data[4034 len 32]
    return code.data[156 len 3814]
}



// =====================  Runtime code  =====================


const name = 'CHEX Token'

const decimals = 18

const symbol = 'CHX'

const MIN_ETHER = 10^15


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 startBlock;
uint256 endBlock;
address founderAddress;
uint256 tokenCap;
uint256 crowdsaleAllocation;
uint256 crowdsaleSupply;
uint256 transferLockup;
uint8 frozen;
uint256 etherRaised;

function frozen() {
    return bool(frozen)
}

function endBlock() {
    return endBlock
}

function totalSupply() {
    return totalSupply
}

function crowdsaleAllocation() {
    return crowdsaleAllocation
}

function startBlock() {
    return startBlock
}

function founder() {
    return founderAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function transferLockup() {
    return transferLockup
}

function etherRaised() {
    return etherRaised
}

function crowdsaleSupply() {
    return crowdsaleSupply
}

function tokenCap() {
    return tokenCap
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function freeze() {
    require founderAddress == msg.sender
    frozen = 1
}

function unfreeze() {
    require founderAddress == msg.sender
    frozen = 0
}

function changeFounder(address arg1) {
    require founderAddress == msg.sender
    require arg1
    founderAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdrawFunds() {
    require founderAddress == msg.sender
    require eth.balance(this.address)
    call founderAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function price() {
    if block.number < startBlock:
        return 42007
    if block.number > endBlock:
        return 21000
    require endBlock - startBlock
    return ((21 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10) + 21000)
}

function compareAndApprove(address arg1, uint256 arg2, uint256 arg3) {
    if arg2 != allowance[address(msg.sender)][address(arg1)]:
        return 0
    if arg3:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg3
    emit Approval(arg3, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if block.number <= endBlock + transferLockup:
        if founderAddress != msg.sender:
            return 0
    require calldata.size >= 68
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if block.number <= endBlock + transferLockup:
        if founderAddress != msg.sender:
            return 0
    require calldata.size >= 100
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function buy(address arg1) payable {
    require not frozen
    require arg1
    require msg.value >= 10^15
    if block.number < startBlock:
        if msg.value:
            require msg.value
            require 42007 * msg.value / msg.value == 42007
        require (42007 * msg.value) + totalSupply >= totalSupply
        require (42007 * msg.value) + totalSupply <= tokenCap
        require (42007 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += 42007 * msg.value
        totalSupply += 42007 * msg.value
        if block.number <= endBlock:
            crowdsaleSupply = (42007 * msg.value) + totalSupply
            require msg.value + etherRaised >= etherRaised
            etherRaised += msg.value
        emit Transfer((42007 * msg.value), 0, arg1);
    else:
        if block.number > endBlock:
            if msg.value:
                require msg.value
                require 21000 * msg.value / msg.value == 21000
            require (21000 * msg.value) + totalSupply >= totalSupply
            require (21000 * msg.value) + totalSupply <= tokenCap
            require (21000 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += 21000 * msg.value
            totalSupply += 21000 * msg.value
            if block.number <= endBlock:
                crowdsaleSupply = (21000 * msg.value) + totalSupply
                require msg.value + etherRaised >= etherRaised
                etherRaised += msg.value
            emit Transfer((21000 * msg.value), 0, arg1);
        else:
            require endBlock - startBlock
            if msg.value:
                require msg.value
                require (21000 * msg.value) + (21 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) / msg.value == (21 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10) + 21000
            require (21000 * msg.value) + (21 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) + totalSupply >= totalSupply
            require (21000 * msg.value) + (21 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) + totalSupply <= tokenCap
            require (21000 * msg.value) + (21 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] = (21000 * msg.value) + (21 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) + balanceOf[address(arg1)]
            totalSupply = (21000 * msg.value) + (21 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) + totalSupply
            if block.number <= endBlock:
                crowdsaleSupply = (21000 * msg.value) + (21 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) + totalSupply
                require msg.value + etherRaised >= etherRaised
                etherRaised += msg.value
            emit Transfer(((21000 * msg.value) + (21 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value)), 0, arg1);
}

function _fallback() payable {
    require not frozen
    require msg.sender
    require msg.value >= 10^15
    if block.number < startBlock:
        if msg.value:
            require msg.value
            require 42007 * msg.value / msg.value == 42007
        require (42007 * msg.value) + totalSupply >= totalSupply
        require (42007 * msg.value) + totalSupply <= tokenCap
        require (42007 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 42007 * msg.value
        totalSupply += 42007 * msg.value
        if block.number <= endBlock:
            crowdsaleSupply = (42007 * msg.value) + totalSupply
            require msg.value + etherRaised >= etherRaised
            etherRaised += msg.value
        emit Transfer((42007 * msg.value), 0, msg.sender);
    else:
        if block.number > endBlock:
            if msg.value:
                require msg.value
                require 21000 * msg.value / msg.value == 21000
            require (21000 * msg.value) + totalSupply >= totalSupply
            require (21000 * msg.value) + totalSupply <= tokenCap
            require (21000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 21000 * msg.value
            totalSupply += 21000 * msg.value
            if block.number <= endBlock:
                crowdsaleSupply = (21000 * msg.value) + totalSupply
                require msg.value + etherRaised >= etherRaised
                etherRaised += msg.value
            emit Transfer((21000 * msg.value), 0, msg.sender);
        else:
            require endBlock - startBlock
            if msg.value:
                require msg.value
                require (21000 * msg.value) + (21 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) / msg.value == (21 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10) + 21000
            require (21000 * msg.value) + (21 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) + totalSupply >= totalSupply
            require (21000 * msg.value) + (21 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) + totalSupply <= tokenCap
            require (21000 * msg.value) + (21 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (21000 * msg.value) + (21 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) + balanceOf[address(msg.sender)]
            totalSupply = (21000 * msg.value) + (21 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) + totalSupply
            if block.number <= endBlock:
                crowdsaleSupply = (21000 * msg.value) + (21 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) + totalSupply
                require msg.value + etherRaised >= etherRaised
                etherRaised += msg.value
            emit Transfer(((21000 * msg.value) + (21 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value)), 0, msg.sender);
}



}
