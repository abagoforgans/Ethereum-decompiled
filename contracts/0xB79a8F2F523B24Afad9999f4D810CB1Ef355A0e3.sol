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

function tranches(uint256 arg1) {
    require arg1 < 10
    return pricingEndsAt[arg1], stor3[arg1]
}

function getTranche(uint256 arg1) {
    require arg1 < 10
    return pricingEndsAt[arg1], stor3[arg1]
}

function isPresalePurchase(address arg1) {
    if preico[address(arg1)] <= 0:
        return 0
    return 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function setPreicoAddress(address arg1, uint256 arg2) {
    require owner == msg.sender
    preico[address(arg1)] = arg2
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
    idx = 0
    while idx < 10:
        if arg2 >= pricingEndsAt[idx]:
            idx = idx + 1
            continue 
        if preico[address(arg4)] > 0:
            require ext_code.size(0x9b1e0d06d14180f0a5ce44d31b71f98450c64392)
            delegate 0x9b1e0d06d14180f0a5ce44d31b71f98450c64392.0x1d3b9edf with:
                 gas gas_remaining - 710 wei
                args arg1, 10^arg5
            require delegate.return_code
            require preico[address(arg4)]
            return (delegate.return_data[0] / preico[address(arg4)])
        s = 0
        while s < 10:
            if arg2 >= pricingEndsAt[s]:
                s = s + 1
                continue 
            require s - 1 < 10
            if arg1 > 10^18:
                if not idx - 1:
                    require ext_code.size(0x9b1e0d06d14180f0a5ce44d31b71f98450c64392)
                    delegate 0x9b1e0d06d14180f0a5ce44d31b71f98450c64392.0x1d3b9edf with:
                         gas gas_remaining - 710 wei
                        args arg1, 10^arg5
                    require delegate.return_code
                    return (delegate.return_data[0] / 2898550724637391)
                if 1 == idx - 1:
                    require ext_code.size(0x9b1e0d06d14180f0a5ce44d31b71f98450c64392)
                    delegate 0x9b1e0d06d14180f0a5ce44d31b71f98450c64392.0x1d3b9edf with:
                         gas gas_remaining - 710 wei
                        args arg1, 10^arg5
                    require delegate.return_code
                    return (delegate.return_data[0] / 3030303030302727)
            require ext_code.size(0x9b1e0d06d14180f0a5ce44d31b71f98450c64392)
            delegate 0x9b1e0d06d14180f0a5ce44d31b71f98450c64392.0x1d3b9edf with:
                 gas gas_remaining - 710 wei
                args arg1, 10^arg5
            require delegate.return_code
            require stor3[s - 1]
            return (delegate.return_data[0] / stor3[s - 1])
        require ext_code.size(0x9b1e0d06d14180f0a5ce44d31b71f98450c64392)
        delegate 0x9b1e0d06d14180f0a5ce44d31b71f98450c64392.0x1d3b9edf with:
             gas gas_remaining - 710 wei
            args arg1, 10^arg5
        require delegate.return_code
        require arg1 > 10^18
        if not idx - 1:
            return (delegate.return_data[0] / 2898550724637391)
        require 1 == idx - 1
        return (delegate.return_data[0] / 3030303030302727)
    if preico[address(arg4)] > 0:
        require ext_code.size(0x9b1e0d06d14180f0a5ce44d31b71f98450c64392)
        delegate 0x9b1e0d06d14180f0a5ce44d31b71f98450c64392.0x1d3b9edf with:
             gas gas_remaining - 710 wei
            args arg1, 10^arg5
        require delegate.return_code
        require preico[address(arg4)]
        return (delegate.return_data[0] / preico[address(arg4)])
    idx = 0
    while idx < 10:
        if arg2 >= pricingEndsAt[idx]:
            idx = idx + 1
            continue 
        require idx - 1 < 10
        require ext_code.size(0x9b1e0d06d14180f0a5ce44d31b71f98450c64392)
        delegate 0x9b1e0d06d14180f0a5ce44d31b71f98450c64392.0x1d3b9edf with:
             gas gas_remaining - 710 wei
            args arg1, 10^arg5
        require delegate.return_code
        if arg1 > 10^18:
            return (delegate.return_data[0] / 2898550724637391)
        require stor3[idx - 1]
        return (delegate.return_data[0] / stor3[idx - 1])
    require ext_code.size(0x9b1e0d06d14180f0a5ce44d31b71f98450c64392)
    delegate 0x9b1e0d06d14180f0a5ce44d31b71f98450c64392.0x1d3b9edf with:
         gas gas_remaining - 710 wei
        args arg1, 10^arg5
    require delegate.return_code
    require arg1 > 10^18
    return (delegate.return_data[0] / 2898550724637391)
}



}
