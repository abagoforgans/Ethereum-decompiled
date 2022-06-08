contract main {




// =====================  Runtime code  =====================


#
#  - getSubscriptionSigner(bytes32 arg1, bytes arg2)
#  - cancelSubscription(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, bytes arg8)
#  - getSubscriptionHash(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7)
#  - executeSubscription(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, bytes arg8)
#  - isSubscriptionReady(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, bytes arg8)
#
uint8 contractVersion; offset 160
address authorAddress;
address requiredToAddress;
address requiredTokenAddress;
uint256 requiredTokenAmount;
uint256 requiredPeriodSeconds;
uint256 requiredGasPrice;
mapping of uint256 nextValidTimestamp;
mapping of uint256 extraNonce;

function requiredGasPrice() {
    return requiredGasPrice
}

function requiredTokenAmount() {
    return requiredTokenAmount
}

function requiredToAddress() {
    return requiredToAddress
}

function requiredPeriodSeconds() {
    return requiredPeriodSeconds
}

function requiredTokenAddress() {
    return requiredTokenAddress
}

function contractVersion() {
    return contractVersion
}

function extraNonce(address arg1) {
    return extraNonce[arg1]
}

function author() {
    return authorAddress
}

function nextValidTimestamp(bytes32 arg1) {
    return nextValidTimestamp[arg1]
}

function endContract() {
    require msg.sender == authorAddress
    selfdestruct(authorAddress)
}

function _fallback() payable {
    revert
}

function isSubscriptionActive(bytes32 arg1, uint256 arg2) {
    if nextValidTimestamp[arg1] == -1:
        return 0
    require nextValidTimestamp[arg1] + arg2 >= nextValidTimestamp[arg1]
    return block.timestamp <= nextValidTimestamp[arg1] + arg2
}



}
