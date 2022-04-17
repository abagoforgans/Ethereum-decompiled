contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


const isPricingStrategy = 1

const isPresalePurchase(address arg1) = 0

const MAX_MILESTONE = 10


address owner;
array of uint256 pricingEndsAt;
array of uint256 stor2;
uint256 milestoneCount;

function milestoneCount() {
    return milestoneCount
}

function getPricingStartsAt() {
    return pricingEndsAt.length
}

function getPricingEndsAt() {
    require milestoneCount - 1 < 5
    return pricingEndsAt[stor11 - 1]
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function milestones(uint256 arg1) {
    require arg1 < 5
    return pricingEndsAt[arg1], stor2[arg1]
}

function getMilestone(uint256 arg1) {
    require arg1 < 5
    return pricingEndsAt[arg1], stor2[arg1]
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function getCurrentPrice() {
    idx = 0
    while idx < 5:
        if block.timestamp >= pricingEndsAt[idx]:
            idx = idx + 1
            continue 
        require idx - 1 < 5
        return stor2[idx - 1]
    return 0
}

function isSane(address arg1) {
    require ext_code.size(arg1)
    call arg1.startsAt() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0] != pricingEndsAt.length:
        return (ext_call.return_data[0] == pricingEndsAt.length)
    require milestoneCount - 1 < 5
    require ext_code.size(arg1)
    call arg1.endsAt() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return (ext_call.return_data[0] == pricingEndsAt[stor11 - 1])
}

function calculatePrice(uint256 arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5) {
    idx = 0
    while idx < 5:
        if block.timestamp >= pricingEndsAt[idx]:
            idx = idx + 1
            continue 
        require idx - 1 < 5
        require ext_code.size(0x99de037eb5eddbb270e34603321be9773eb2f388)
        delegate 0x99de037eb5eddbb270e34603321be9773eb2f388.0x1d3b9edf with:
             gas gas_remaining - 710 wei
            args arg1, 10^arg5
        require delegate.return_code
        require stor2[idx - 1]
        return (delegate.return_data[0] / stor2[idx - 1])
    require ext_code.size(0x99de037eb5eddbb270e34603321be9773eb2f388)
    delegate 0x99de037eb5eddbb270e34603321be9773eb2f388.0x1d3b9edf with:
         gas gas_remaining - 710 wei
        args arg1, 10^arg5
    require delegate.return_code
    revert
}



}
