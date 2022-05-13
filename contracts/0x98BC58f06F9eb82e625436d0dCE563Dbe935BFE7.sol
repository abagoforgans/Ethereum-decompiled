contract main {




// =====================  Runtime code  =====================


const isPricingStrategy = 1

const isSane(address arg1) = 1

const isPresalePurchase(address arg1) = 0


address owner;
uint256 oneTokenInWei;
uint256 minimumInWei;

function minimumInWei() {
    return minimumInWei
}

function oneTokenInWei() {
    return oneTokenInWei
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function setMinimum(uint256 arg1) {
    require msg.sender == owner
    minimumInWei = arg1
}

function setTokenPrice(uint256 arg1) {
    require msg.sender == owner
    oneTokenInWei = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function calculatePrice(uint256 arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5) {
    if arg1 < minimumInWei:
        return 0
    if not arg1:
        if oneTokenInWei:
            return (0 / oneTokenInWei)
    else:
        if arg1:
            if arg1 * 10^arg5 / arg1 == 10^arg5:
                if oneTokenInWei:
                    return (arg1 * 10^arg5 / oneTokenInWei)
    revert
}



}
