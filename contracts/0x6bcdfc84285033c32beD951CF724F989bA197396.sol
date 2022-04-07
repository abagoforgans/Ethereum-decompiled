contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor2;
uint8 stor3;
mapping of uint256 stor4;
uint256 stor6;

function _fallback() payable {
    stor0 = 12500000 * 10^18
    require not msg.value
    stor4[address(msg.sender)] = code.data[3244 len 32]
    stor6 = code.data[3244 len 32]
    stor1 = code.data[3288 len 20]
    stor2 = code.data[3308 len 32]
    stor3 = 1
    return code.data[153 len 3091]
}



// =====================  Runtime code  =====================


const name = 'FundYourselfNow Token'

const decimals = 18

const symbol = 'FYN'


uint256 tokenCap;
address walletAddress;
uint256 creationTime;
uint8 stor3;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;

function totalSupply() {
    return totalSupply
}

function transferStop() {
    return bool(stor3)
}

function walletAddress() {
    return walletAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function creationTime() {
    return creationTime
}

function tokenCap() {
    return tokenCap
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function stopToken() {
    require walletAddress == msg.sender
    stor3 = 1
    emit EmergencyStopActivated()
}

function disableTokenSwapLock() {
    require walletAddress == msg.sender
    stor3 = 0
    emit TokenSwapOver()
}

function approve(address arg1, uint256 arg2) {
    require bool(stor3) != 1
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function currentSwapRate() {
    if creationTime + (72 * 24 * 3600) > block.timestamp:
        return 140
    if creationTime + (576 * 24 * 3600) > block.timestamp:
        return 120
    if creationTime + (1251 * 3600) <= block.timestamp:
        return 0
    return 100
}

function transfer(address arg1, uint256 arg2) {
    require bool(stor3) != 1
    require 68 == calldata.size
    require walletAddress != arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function mintReserve(address arg1) {
    require walletAddress == msg.sender
    require tokenCap > totalSupply
    require tokenCap >= totalSupply
    require balanceOf[address(arg1)] + tokenCap - totalSupply >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] >= 0
    require tokenCap >= totalSupply
    require tokenCap >= tokenCap - totalSupply
    balanceOf[address(arg1)] = tokenCap - totalSupply + balanceOf[address(arg1)]
    totalSupply = tokenCap
    emit TokenMint(address(arg1), tokenCap - totalSupply);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require bool(stor3) != 1
    require walletAddress != arg2
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function mintTokens(address arg1, uint256 arg2) {
    require walletAddress == msg.sender
    if creationTime + (72 * 24 * 3600) > block.timestamp:
        if arg2:
            require arg2
            require 140 * arg2 / arg2 == 140
    else:
        if creationTime + (576 * 24 * 3600) > block.timestamp:
            if arg2:
                require arg2
                require 120 * arg2 / arg2 == 120
        else:
            if creationTime + (1251 * 3600) <= block.timestamp:
                if arg2:
                    require arg2
                    require not 0 / arg2
            else:
                if arg2:
                    require arg2
                    require 100 * arg2 / arg2 == 100
    if creationTime + (72 * 24 * 3600) > block.timestamp:
        require balanceOf[address(arg1)] + (140 * arg2) >= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] + (140 * arg2) >= 140 * arg2
        require totalSupply + (140 * arg2) >= totalSupply
        require totalSupply + (140 * arg2) >= 140 * arg2
        require totalSupply + (140 * arg2) <= tokenCap
        balanceOf[address(arg1)] += 140 * arg2
        totalSupply += 140 * arg2
        emit TokenMint(address(arg1), 140 * arg2);
    else:
        if creationTime + (576 * 24 * 3600) > block.timestamp:
            require balanceOf[address(arg1)] + (120 * arg2) >= balanceOf[address(arg1)]
            require balanceOf[address(arg1)] + (120 * arg2) >= 120 * arg2
            require totalSupply + (120 * arg2) >= totalSupply
            require totalSupply + (120 * arg2) >= 120 * arg2
            require totalSupply + (120 * arg2) <= tokenCap
            balanceOf[address(arg1)] += 120 * arg2
            totalSupply += 120 * arg2
            emit TokenMint(address(arg1), 120 * arg2);
        else:
            if creationTime + (1251 * 3600) <= block.timestamp:
                require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                require balanceOf[address(arg1)] >= 0
                require totalSupply >= totalSupply
                require totalSupply >= 0
                require totalSupply <= tokenCap
                emit TokenMint(address(arg1), 0);
            else:
                require balanceOf[address(arg1)] + (100 * arg2) >= balanceOf[address(arg1)]
                require balanceOf[address(arg1)] + (100 * arg2) >= 100 * arg2
                require totalSupply + (100 * arg2) >= totalSupply
                require totalSupply + (100 * arg2) >= 100 * arg2
                require totalSupply + (100 * arg2) <= tokenCap
                balanceOf[address(arg1)] += 100 * arg2
                totalSupply += 100 * arg2
                emit TokenMint(address(arg1), 100 * arg2);
}



}
