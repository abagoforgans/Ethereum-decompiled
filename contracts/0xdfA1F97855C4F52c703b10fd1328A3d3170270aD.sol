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
mapping of uint256 preico;
array of uint256 pricingEndsAt;
array of uint256 stor3;
uint256 trancheCount;

function getPricingStartsAt() {
    return pricingEndsAt.length
}

function trancheCount() {
    return trancheCount
}

function getPricingEndsAt() {
    require trancheCount - 1 < 10
    return pricingEndsAt[stor22 - 1]
}

function owner() {
    return owner
}

function preicoAddresses(address arg1) {
    return preico[arg1]
}

function _fallback() payable {
    revert
}

function safeSub(uint256 arg1, uint256 arg2) {
    require arg2 <= arg1
    return (arg1 - arg2)
}

function tranches(uint256 arg1) {
    require arg1 < 10
    return pricingEndsAt[arg1], stor3[arg1]
}

function getTranche(uint256 arg1) {
    require arg1 < 10
    return pricingEndsAt[arg1], stor3[arg1]
}

function safeAdd(uint256 arg1, uint256 arg2) {
    require arg2 + arg1 >= arg1
    return (arg2 + arg1)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function setPreicoAddress(address arg1, uint256 arg2) {
    require owner == msg.sender
    preico[address(arg1)] = arg2
}

function safeMul(uint256 arg1, uint256 arg2) {
    if arg1:
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
        return stor3[idx - 1]
    return 0
}

function calculatePrice(uint256 arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5) {
    if preico[address(arg4)] <= 0:
        idx = 0
        while idx < 10:
            if arg2 >= pricingEndsAt[idx]:
                idx = idx + 1
                continue 
            require idx - 1 < 10
            if not arg1:
                if stor3[idx - 1]:
                    return (10^arg5 * arg1 / stor3[idx - 1])
            else:
                if arg1:
                    require 10^arg5 * arg1 / arg1 == 10^arg5
                    if stor3[idx - 1]:
                        return (10^arg5 * arg1 / stor3[idx - 1])
            revert
        if arg1:
            if arg1:
                require 10^arg5 * arg1 / arg1 == 10^arg5
    else:
        if not arg1:
            if preico[address(arg4)]:
                return (10^arg5 * arg1 / preico[address(arg4)])
        else:
            if arg1:
                require 10^arg5 * arg1 / arg1 == 10^arg5
                if preico[address(arg4)]:
                    return (10^arg5 * arg1 / preico[address(arg4)])
    revert
}



}
