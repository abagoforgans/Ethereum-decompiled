contract main {


// =======================  Init code  ======================


address stor0;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() {
    stor0 = msg.sender
    stor4 = 4216530
    stor5 = 152470
    stor6 = 1333333 * 10^18
    stor3 = 0x2c974b2d0ba1716e644c1fc59982a89ddd2ff724
    return code.data[217 len 3828]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
address withdrawalAddress;
address tokenAddress;
uint256 lastBlockClaimed;
uint256 blockDelay;
uint256 reward;

function reward() {
    return reward
}

function owner() {
    return owner
}

function tokenAddress() {
    return tokenAddress
}

function newOwner() {
    return newOwner
}

function blockDelay() {
    return blockDelay
}

function withdrawalAddress() {
    return withdrawalAddress
}

function lastBlockClaimed() {
    return lastBlockClaimed
}

function _fallback() payable {
    revert
}

function setBlockDelay(uint256 arg1) {
    require msg.sender == owner
    blockDelay = arg1
}

function setWithdrawalAddress(address arg1) {
    require msg.sender == owner
    withdrawalAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1 != owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function getTokenBalance() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function salvageTokensFromContract(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require arg1 != tokenAddress
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
}

function claimReward() {
    require msg.sender == owner
    require block.number >= lastBlockClaimed + blockDelay
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    if ext_call.return_data[0] > reward:
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args withdrawalAddress, reward
        require ext_call.success
        lastBlockClaimed += blockDelay
        emit ClaimExecuted(reward, block.number, withdrawalAddress);
    else:
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args withdrawalAddress, ext_call.return_data[0]
        require ext_call.success
        lastBlockClaimed += blockDelay
        emit ClaimExecuted(ext_call.return_data[0], block.number, withdrawalAddress);
}



}
