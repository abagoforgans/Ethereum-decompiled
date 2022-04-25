contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


const isPricingStrategy = 1

const MAX_MILESTONE = 10


address owner;
mapping of uint256 preico;
array of uint256 pricingEndsAt;
array of uint256 stor3;
uint256 milestoneCount;

function milestoneCount() {
    return milestoneCount
}

function getPricingStartsAt() {
    return pricingEndsAt.length
}

function getPricingEndsAt() {
    require milestoneCount - 1 < 10
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

function milestones(uint256 arg1) {
    require arg1 < 10
    return pricingEndsAt[arg1], stor3[arg1]
}

function getMilestone(uint256 arg1) {
    require arg1 < 10
    return pricingEndsAt[arg1], stor3[arg1]
}

function isPresalePurchase(address arg1) {
    if preico[address(arg1)] <= 0:
        return 0
    return 1
}

function setPreicoAddress(address arg1, uint256 arg2) {
    require owner == msg.sender
    preico[address(arg1)] = arg2
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getCurrentPrice() {
    idx = 0
    while idx < 10:
        if block.timestamp >= pricingEndsAt[idx]:
            idx = idx + 1
            continue 
        require idx - 1 < 10
        return stor3[idx - 1]
    return 0
}

function isSane(address arg1) {
    require ext_code.size(arg1)
    call arg1.0xaf468682 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0] != pricingEndsAt.length:
        return (ext_call.return_data[0] == pricingEndsAt.length)
    require milestoneCount - 1 < 10
    require ext_code.size(arg1)
    call arg1.endsAt() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return (ext_call.return_data[0] == pricingEndsAt[stor22 - 1])
}

function calculatePrice(uint256 arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5) {
    if preico[address(arg4)] <= 0:
        idx = 0
        while idx < 10:
            if block.timestamp >= pricingEndsAt[idx]:
                idx = idx + 1
                continue 
            require idx - 1 < 10
            require ext_code.size(0xcd1279f36dbfd19d7ad917f5d86e375a8d7c970d)
            delegate 0xcd1279f36dbfd19d7ad917f5d86e375a8d7c970d.0x1d3b9edf with:
                 gas gas_remaining - 710 wei
                args arg1, 10^arg5
            require delegate.return_code
            require stor3[idx - 1]
            return (delegate.return_data[0] / stor3[idx - 1])
        require ext_code.size(0xcd1279f36dbfd19d7ad917f5d86e375a8d7c970d)
        delegate 0xcd1279f36dbfd19d7ad917f5d86e375a8d7c970d.0x1d3b9edf with:
             gas gas_remaining - 710 wei
            args arg1, 10^arg5
        require delegate.return_code
    else:
        require ext_code.size(0xcd1279f36dbfd19d7ad917f5d86e375a8d7c970d)
        delegate 0xcd1279f36dbfd19d7ad917f5d86e375a8d7c970d.0x1d3b9edf with:
             gas gas_remaining - 710 wei
            args arg1, 10^arg5
        require delegate.return_code
        if preico[address(arg4)]:
            return (delegate.return_data[0] / preico[address(arg4)])
    revert
}



}
