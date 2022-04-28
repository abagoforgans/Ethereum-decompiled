contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


const isPricingStrategy = 1

const isSane(address arg1) = 1

const MAX_TRANCHES = 10


address owner;
address newOwner;
mapping of uint256 preico;
array of uint256 pricingEndsAt;
array of uint256 stor4;
uint256 trancheCount;

function getPricingStartsAt() {
    return pricingEndsAt.length
}

function trancheCount() {
    return trancheCount
}

function getPricingEndsAt() {
    require trancheCount - 1 < 10
    return pricingEndsAt[stor23 - 1]
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function preicoAddresses(address arg1) {
    return preico[arg1]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    newOwner = arg1
}

function safeSub(uint256 arg1, uint256 arg2) {
    require arg2 <= arg1
    return (arg1 - arg2)
}

function tranches(uint256 arg1) {
    require arg1 < 10
    return pricingEndsAt[arg1], stor4[arg1]
}

function getTranche(uint256 arg1) {
    require arg1 < 10
    return pricingEndsAt[arg1], stor4[arg1]
}

function safeAdd(uint256 arg1, uint256 arg2) {
    require arg2 + arg1 >= arg1
    return (arg2 + arg1)
}

function setPreicoAddress(address arg1, uint256 arg2) {
    require owner == msg.sender
    preico[address(arg1)] = arg2
}

function acceptOwnership() {
    require newOwner == msg.sender
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
}

function safeMul(uint256 arg1, uint256 arg2) {
    if not arg1:
        return (arg2 * arg1)
    require arg1
    require arg2 * arg1 / arg1 == arg2
    return (arg2 * arg1)
}

function getCurrentPrice(uint256 arg1) {
    idx = 0
    while idx < 10:
        if arg1 >= pricingEndsAt[idx]:
            idx = idx + 1
            continue 
        require idx - 1 < 10
        return stor4[idx - 1]
    return 0
}

function calculatePrice(uint256 arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5) {
    if preico[address(arg4)] <= 0:
        idx = 0
        while idx < 10:
            if arg2 >= pricingEndsAt[idx]:
                idx = idx + 1
                continue 
            else:
                require idx - 1 < 10
                if not arg1:
                    require stor4[idx - 1]
                    return (10^arg5 * arg1 / stor4[idx - 1])
                else:
                    require arg1
                    require 10^arg5 * arg1 / arg1 == 10^arg5
                    require stor4[idx - 1]
                    return (10^arg5 * arg1 / stor4[idx - 1])
        require arg1
        require arg1
        require 10^arg5 * arg1 / arg1 == 10^arg5
        revert
    else:
        if not arg1:
            require preico[address(arg4)]
            return (10^arg5 * arg1 / preico[address(arg4)])
        else:
            require arg1
            require 10^arg5 * arg1 / arg1 == 10^arg5
            require preico[address(arg4)]
            return (10^arg5 * arg1 / preico[address(arg4)])
}



}
