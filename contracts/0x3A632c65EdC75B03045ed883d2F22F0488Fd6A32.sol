contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


const MAX_MILESTONE = 10


address preicoContractAddress;
uint256 preicoPrice;
array of uint256 stor2;
array of uint256 stor3;
uint256 milestoneCount;

function milestoneCount() {
    return milestoneCount
}

function preicoContractAddress() {
    return preicoContractAddress
}

function preicoPrice() {
    return preicoPrice
}

function _fallback() payable {
    revert 
}

function milestones(uint256 arg1) {
    require arg1 < 10
    return stor2[arg1], stor3[arg1]
}

function getMilestone(uint256 arg1) {
    require arg1 < 10
    return stor2[arg1], stor3[arg1]
}

function getCurrentPrice() {
    idx = 0
    while idx < 10:
        if block.timestamp >= stor2[idx]:
            idx = idx + 1
            continue 
        require idx - 1 < 10
        return stor3[idx - 1]
    return 0
}

function calculatePrice(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) {
    if preicoContractAddress != arg4:
        idx = 0
        while idx < 10:
            if block.timestamp >= stor2[idx]:
                idx = idx + 1
                continue 
            require idx - 1 < 10
            require stor3[idx - 1]
            return (arg1 / stor3[idx - 1])
        revert 
    require preicoPrice
    return (arg1 / preicoPrice)
}



}
