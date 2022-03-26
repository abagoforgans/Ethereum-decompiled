contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint8 stor2; offset 8
mapping of uint256 stor3;
uint256 stor5;
address stor6;

function _fallback() payable {
    stor1 = block.timestamp
    stor0 = 1
    stor2 = 1
    stor3[address(msg.sender)] = code.data[4664 len 32]
    stor5 = code.data[4664 len 32]
    stor6 = code.data[4708 len 20]
    return code.data[267 len 4397]
}



// =====================  Runtime code  =====================


const EPOCH_LENGTH = (720 * 24 * 3600)

const UNLOCKED_TIME = (600 * 24 * 3600)

const LOCKED_TIME = (120 * 24 * 3600)


uint256 numOfCurrentEpoch;
uint256 creationTime;
uint8 stor2;
uint8 stor2; offset 8
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address walletAddress;

function numOfCurrentEpoch() {
    return numOfCurrentEpoch
}

function totalSupply() {
    return totalSupply
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

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function tokenSwapLock() {
    return bool(uint8(stor2.field_8))
}

function lock() {
    return bool(uint8(stor2.field_0))
}

function _fallback() payable {
    revert 
}

function disableTokenSwapLock() {
    require msg.sender == walletAddress
    uint8(stor2.field_8) = 0
    emit TokenSwapOver()
}

function currentSwapRate() {
    if creationTime + (168 * 24 * 3600) > block.timestamp:
        return 130
    if creationTime + (336 * 24 * 3600) > block.timestamp:
        return 120
    if creationTime + (672 * 24 * 3600) <= block.timestamp:
        return 0
    return 100
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor2.field_8)
    if (720 * 24 * 3600 * numOfCurrentEpoch) + creationTime < block.timestamp:
        numOfCurrentEpoch = (block.timestamp - creationTime / 720 * 24 * 3600) + 1
    if creationTime + (720 * 24 * 3600 * numOfCurrentEpoch) - (120 * 24 * 3600) < block.timestamp:
        require not uint8(stor2.field_0)
        uint8(stor2.field_0) = 1
        emit Locked()
        return 0
    if uint8(stor2.field_0):
        uint8(stor2.field_0) = 0
        emit Unlocked()
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor2.field_8)
    if (720 * 24 * 3600 * numOfCurrentEpoch) + creationTime < block.timestamp:
        numOfCurrentEpoch = (block.timestamp - creationTime / 720 * 24 * 3600) + 1
    if creationTime + (720 * 24 * 3600 * numOfCurrentEpoch) - (120 * 24 * 3600) < block.timestamp:
        require not uint8(stor2.field_0)
        uint8(stor2.field_0) = 1
        emit Locked()
        return 0
    if uint8(stor2.field_0):
        uint8(stor2.field_0) = 0
        emit Unlocked()
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor2.field_8)
    if (720 * 24 * 3600 * numOfCurrentEpoch) + creationTime < block.timestamp:
        numOfCurrentEpoch = (block.timestamp - creationTime / 720 * 24 * 3600) + 1
    if creationTime + (720 * 24 * 3600 * numOfCurrentEpoch) - (120 * 24 * 3600) < block.timestamp:
        require not uint8(stor2.field_0)
        uint8(stor2.field_0) = 1
        emit Locked()
        return 0
    if uint8(stor2.field_0):
        uint8(stor2.field_0) = 0
        emit Unlocked()
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function mintTokens(address arg1, uint256 arg2) {
    require msg.sender == walletAddress
    if creationTime + (168 * 24 * 3600) > block.timestamp:
        require balanceOf[address(arg1)] + (130 * arg2) >= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] + (130 * arg2) >= 130 * arg2
        require totalSupply + (130 * arg2) >= totalSupply
        require totalSupply + (130 * arg2) >= 130 * arg2
        balanceOf[address(arg1)] += 130 * arg2
        totalSupply += 130 * arg2
        emit TokenMint(address(arg1), 130 * arg2);
    else:
        if creationTime + (336 * 24 * 3600) > block.timestamp:
            require balanceOf[address(arg1)] + (120 * arg2) >= balanceOf[address(arg1)]
            require balanceOf[address(arg1)] + (120 * arg2) >= 120 * arg2
            require totalSupply + (120 * arg2) >= totalSupply
            require totalSupply + (120 * arg2) >= 120 * arg2
            balanceOf[address(arg1)] += 120 * arg2
            totalSupply += 120 * arg2
            emit TokenMint(address(arg1), 120 * arg2);
        else:
            if creationTime + (672 * 24 * 3600) <= block.timestamp:
                require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                require balanceOf[address(arg1)] >= 0
                require totalSupply >= totalSupply
                require totalSupply >= 0
                emit TokenMint(address(arg1), 0);
            else:
                require balanceOf[address(arg1)] + (100 * arg2) >= balanceOf[address(arg1)]
                require balanceOf[address(arg1)] + (100 * arg2) >= 100 * arg2
                require totalSupply + (100 * arg2) >= totalSupply
                require totalSupply + (100 * arg2) >= 100 * arg2
                balanceOf[address(arg1)] += 100 * arg2
                totalSupply += 100 * arg2
                emit TokenMint(address(arg1), 100 * arg2);
}



}
