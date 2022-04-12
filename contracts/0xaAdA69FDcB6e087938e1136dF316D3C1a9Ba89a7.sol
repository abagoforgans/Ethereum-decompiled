contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


const isPricingStrategy = 1

const isSane = 1

const MAX_TRANCHES = 10


address owner;
uint256 preSalePrice;
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

function getPreSalePrice() {
    return preSalePrice
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function tranches(uint256 arg1) {
    require arg1 < 10
    return pricingEndsAt[arg1], stor3[arg1]
}

function getTranche(uint256 arg1) {
    require arg1 < 10
    return pricingEndsAt[arg1], stor3[arg1]
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
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

function sub_6f3a6bff(?) {
    if not arg1:
        if preSalePrice:
            return (10^arg2 * arg1 / preSalePrice)
    else:
        if arg1:
            if 10^arg2 * arg1 / arg1 == 10^arg2:
                if preSalePrice:
                    return (10^arg2 * arg1 / preSalePrice)
    revert
}

function calculatePrice(uint256 arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5) {
    idx = 0
    while idx < 10:
        if arg3 >= pricingEndsAt[idx]:
            idx = idx + 1
            continue 
        else:
            require idx - 1 < 10
            if not arg1:
                require stor3[idx - 1]
                return (10^arg5 * arg1 / stor3[idx - 1])
            else:
                require arg1
                require 10^arg5 * arg1 / arg1 == 10^arg5
                require stor3[idx - 1]
                return (10^arg5 * arg1 / stor3[idx - 1])
    require arg1
    require arg1
    require 10^arg5 * arg1 / arg1 == 10^arg5
    revert
}



}
