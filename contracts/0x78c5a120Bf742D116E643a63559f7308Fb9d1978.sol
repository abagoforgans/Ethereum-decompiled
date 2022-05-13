contract main {




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

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setPreicoAddress(address arg1, uint256 arg2) {
    require msg.sender == owner
    preico[address(arg1)] = arg2
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
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

function calculatePrice(uint256 arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5) {
    if preico[address(arg4)] <= 0:
        idx = 0
        while idx < 10:
            if arg2 >= pricingEndsAt[idx]:
                idx = idx + 1
                continue 
            require idx - 1 < 10
            require ext_code.size(0x3bb67f66d534b6bd80fa70d1345eb881c8f7addf)
            delegate 0x3bb67f66d534b6bd80fa70d1345eb881c8f7addf.0x1d3b9edf with:
                 gas gas_remaining wei
                args arg1, 10^arg5
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require stor3[idx - 1]
            return (delegate.return_data[0] / stor3[idx - 1])
        require ext_code.size(0x3bb67f66d534b6bd80fa70d1345eb881c8f7addf)
        delegate 0x3bb67f66d534b6bd80fa70d1345eb881c8f7addf.0x1d3b9edf with:
             gas gas_remaining wei
            args arg1, 10^arg5
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
        require ext_code.size(0x3bb67f66d534b6bd80fa70d1345eb881c8f7addf)
        delegate 0x3bb67f66d534b6bd80fa70d1345eb881c8f7addf.0x1d3b9edf with:
             gas gas_remaining wei
            args arg1, 10^arg5
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if preico[address(arg4)]:
            return (delegate.return_data[0] / preico[address(arg4)])
    revert
}



}
