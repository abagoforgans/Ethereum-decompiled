contract main {


// =======================  Init code  ======================


address stor3;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;
address stor9;

function _fallback() {
    stor3 = msg.sender
    stor6 = code.data[3646 len 32]
    stor7 = code.data[3678 len 32]
    stor5 = code.data[3710 len 32]
    stor8 = code.data[3754 len 20]
    stor9 = code.data[3786 len 20]
    return code.data[180 len 3466]
}



// =====================  Runtime code  =====================


const name = 'Watercoin'

const decimals = 18

const symbol = 'Wtc'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
address newOwner;
uint256 capTokens;
uint256 startDate;
uint256 endDate;
address stor8;
address stor9;
uint256 totalTokens;
uint256 totalEthers;

function totalEthers() {
    return totalEthers
}

function startDate() {
    return startDate
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function totalTokens() {
    return totalTokens
}

function owner() {
    return owner
}

function capTokens() {
    return capTokens
}

function endDate() {
    return endDate
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    newOwner = arg1
}

function acceptOwnership() {
    if newOwner == msg.sender:
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner
}

function approve(address arg1, uint256 arg2) {
    require 68 == calldata.size
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function buyPriceAt(uint256 arg1) {
    if arg1 < startDate:
        return 0
    if arg1 < startDate + (192 * 24 * 3600):
        return 4000
    if arg1 < startDate + (792 * 24 * 3600):
        return 3000
    if arg1 > endDate:
        return 0
    return 2000
}

function buyPrice() {
    if block.timestamp < startDate:
        return 0
    if block.timestamp < startDate + (192 * 24 * 3600):
        return 4000
    if block.timestamp < startDate + (792 * 24 * 3600):
        return 3000
    if block.timestamp > endDate:
        return 0
    return 2000
}

function transfer(address arg1, uint256 arg2) {
    require block.timestamp > endDate
    require 68 == calldata.size
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[arg1] + arg2 >= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require block.timestamp > endDate
    require 100 == calldata.size
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] - arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg1)] - arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[arg2] + arg3 >= balanceOf[arg2]
    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function buyTokens(address arg1) payable {
    require block.timestamp >= startDate
    require block.timestamp <= endDate
    require msg.value >= 10^17
    require totalEthers + msg.value >= totalEthers
    totalEthers += msg.value
    require block.timestamp >= startDate
    if block.timestamp < startDate + (192 * 24 * 3600):
        require 4000 * msg.value > 0
        require totalTokens + (4000 * msg.value) >= totalTokens
        totalTokens += 4000 * msg.value
        require totalTokens + (4000 * msg.value) <= capTokens
        require totalSupply + (4000 * msg.value) >= totalSupply
        totalSupply += 4000 * msg.value
        require balanceOf[address(arg1)] + (4000 * msg.value) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += 4000 * msg.value
        call stor8 with:
           value 4 * msg.value / 5 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call stor9 with:
           value msg.value / 5 wei
             gas 2300 * is_zero(value) wei
        emit Collect((4 * msg.value / 5), stor8);
        emit Collect((msg.value / 5), stor9);
        emit BoughtTokens(msg.value, totalEthers, 4000 * msg.value, 4000, arg1);
        emit Transfer((4000 * msg.value), 0, arg1);
    else:
        if block.timestamp < startDate + (792 * 24 * 3600):
            require 3000 * msg.value > 0
            require totalTokens + (3000 * msg.value) >= totalTokens
            totalTokens += 3000 * msg.value
            require totalTokens + (3000 * msg.value) <= capTokens
            require totalSupply + (3000 * msg.value) >= totalSupply
            totalSupply += 3000 * msg.value
            require balanceOf[address(arg1)] + (3000 * msg.value) >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += 3000 * msg.value
            call stor8 with:
               value 4 * msg.value / 5 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call stor9 with:
               value msg.value / 5 wei
                 gas 2300 * is_zero(value) wei
            emit Collect((4 * msg.value / 5), stor8);
            emit Collect((msg.value / 5), stor9);
            emit BoughtTokens(msg.value, totalEthers, 3000 * msg.value, 3000, arg1);
            emit Transfer((3000 * msg.value), 0, arg1);
        else:
            require block.timestamp <= endDate
            require 2000 * msg.value > 0
            require totalTokens + (2000 * msg.value) >= totalTokens
            totalTokens += 2000 * msg.value
            require totalTokens + (2000 * msg.value) <= capTokens
            require totalSupply + (2000 * msg.value) >= totalSupply
            totalSupply += 2000 * msg.value
            require balanceOf[address(arg1)] + (2000 * msg.value) >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += 2000 * msg.value
            call stor8 with:
               value 4 * msg.value / 5 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call stor9 with:
               value msg.value / 5 wei
                 gas 2300 * is_zero(value) wei
            emit Collect((4 * msg.value / 5), stor8);
            emit Collect((msg.value / 5), stor9);
            emit BoughtTokens(msg.value, totalEthers, 2000 * msg.value, 2000, arg1);
            emit Transfer((2000 * msg.value), 0, arg1);
}

function _fallback() payable {
    require block.timestamp >= startDate
    require block.timestamp <= endDate
    require msg.value >= 10^17
    require totalEthers + msg.value >= totalEthers
    totalEthers += msg.value
    require block.timestamp >= startDate
    if block.timestamp < startDate + (192 * 24 * 3600):
        require 4000 * msg.value > 0
        require totalTokens + (4000 * msg.value) >= totalTokens
        totalTokens += 4000 * msg.value
        require totalTokens + (4000 * msg.value) <= capTokens
        require totalSupply + (4000 * msg.value) >= totalSupply
        totalSupply += 4000 * msg.value
        require balanceOf[address(msg.sender)] + (4000 * msg.value) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 4000 * msg.value
        call stor8 with:
           value 4 * msg.value / 5 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call stor9 with:
           value msg.value / 5 wei
             gas 2300 * is_zero(value) wei
        emit Collect((4 * msg.value / 5), stor8);
        emit Collect((msg.value / 5), stor9);
        emit BoughtTokens(msg.value, totalEthers, 4000 * msg.value, 4000, msg.sender);
        emit Transfer((4000 * msg.value), 0, msg.sender);
    else:
        if block.timestamp < startDate + (792 * 24 * 3600):
            require 3000 * msg.value > 0
            require totalTokens + (3000 * msg.value) >= totalTokens
            totalTokens += 3000 * msg.value
            require totalTokens + (3000 * msg.value) <= capTokens
            require totalSupply + (3000 * msg.value) >= totalSupply
            totalSupply += 3000 * msg.value
            require balanceOf[address(msg.sender)] + (3000 * msg.value) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 3000 * msg.value
            call stor8 with:
               value 4 * msg.value / 5 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call stor9 with:
               value msg.value / 5 wei
                 gas 2300 * is_zero(value) wei
            emit Collect((4 * msg.value / 5), stor8);
            emit Collect((msg.value / 5), stor9);
            emit BoughtTokens(msg.value, totalEthers, 3000 * msg.value, 3000, msg.sender);
            emit Transfer((3000 * msg.value), 0, msg.sender);
        else:
            require block.timestamp <= endDate
            require 2000 * msg.value > 0
            require totalTokens + (2000 * msg.value) >= totalTokens
            totalTokens += 2000 * msg.value
            require totalTokens + (2000 * msg.value) <= capTokens
            require totalSupply + (2000 * msg.value) >= totalSupply
            totalSupply += 2000 * msg.value
            require balanceOf[address(msg.sender)] + (2000 * msg.value) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 2000 * msg.value
            call stor8 with:
               value 4 * msg.value / 5 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call stor9 with:
               value msg.value / 5 wei
                 gas 2300 * is_zero(value) wei
            emit Collect((4 * msg.value / 5), stor8);
            emit Collect((msg.value / 5), stor9);
            emit BoughtTokens(msg.value, totalEthers, 2000 * msg.value, 2000, msg.sender);
            emit Transfer((2000 * msg.value), 0, msg.sender);
}



}
