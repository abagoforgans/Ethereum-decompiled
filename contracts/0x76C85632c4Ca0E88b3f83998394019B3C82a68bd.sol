contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor2;
address stor3;
uint256 stor4;

function _fallback() {
    stor0[address(msg.sender)] = code.data[1962 len 32]
    stor2 = code.data[1962 len 32]
    stor3 = code.data[2006 len 20]
    stor4 = code.data[2026 len 32]
    return code.data[122 len 1840]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 stor3; offset 160
address walletAddress;
uint256 creationTime;

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

function _fallback() payable {
    revert 
}

function sub_45954e5a(?) {
    if 0xadbff675ea47b81c50fbed8f705fef39a822346fb709461d58e2ecaabe31e58f == sha3(arg1):
        stor3 = 1
        emit EmergencyStopActivated()
}

function approve(address arg1, uint256 arg2) {
    require bool(stor3) != 1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function currentSwapRate() {
    if creationTime + (336 * 24 * 3600) > block.timestamp:
        return 120
    if creationTime + (1419 * 3600) <= block.timestamp:
        return 0
    return 100
}

function transfer(address arg1, uint256 arg2) {
    require bool(stor3) != 1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require bool(stor3) != 1
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
    if creationTime + (336 * 24 * 3600) > block.timestamp:
        require balanceOf[address(arg1)] + (120 * arg2) >= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] + (120 * arg2) >= 120 * arg2
        require totalSupply + (120 * arg2) >= totalSupply
        require totalSupply + (120 * arg2) >= 120 * arg2
        balanceOf[address(arg1)] += 120 * arg2
        totalSupply += 120 * arg2
        emit TokenMint(address(arg1), 120 * arg2);
    else:
        if creationTime + (1419 * 3600) <= block.timestamp:
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
