contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - updatePrice(uint256 arg1)
#
const isPricingStrategy = 1

const calculatePrice(uint256 arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5) = 0

const isSane(address arg1) = 1

const isPresalePurchase(address arg1) = 0

const MAX_MILESTONE = 10


address owner;
uint256 eTHtoUSD;
array of uint256 sub_82010f77;
array of uint256 stor8;
uint256 milestoneCount;

function milestoneCount() {
    return milestoneCount
}

function sub_82010f77(?) {
    require milestoneCount - 1 < 10
    return sub_82010f77[stor27 - 1]
}

function sub_89dbbeb5(?) {
    return sub_82010f77.length
}

function owner() {
    return owner
}

function ETHtoUSD() {
    return eTHtoUSD
}

function _fallback() payable {
    revert
}

function sub_06324179(?) {
    return (arg1 == sub_82010f77.length)
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function milestones(uint256 arg1) {
    require arg1 < 10
    return sub_82010f77[arg1], stor8[arg1]
}

function getMilestone(uint256 arg1) {
    require arg1 < 10
    return sub_82010f77[arg1], stor8[arg1]
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getCurrentPrice(uint256 arg1) {
    idx = 0
    while idx < 10:
        if arg1 >= sub_82010f77[idx]:
            idx = idx + 1
            continue 
        require idx - 1 < 10
        return stor8[idx - 1]
    return 0
}

function sub_539a5c87(?) {
    idx = 0
    while idx < 10:
        if arg2 >= sub_82010f77[idx]:
            idx = idx + 1
            continue 
        require idx - 1 < 10
        require stor8[idx - 1]
        return (10^18 * arg1 * eTHtoUSD / 10^18 / stor8[idx - 1])
    revert
}

function sub_d3b5b40c(?) {
    idx = 0
    while idx < 10:
        if arg2 >= sub_82010f77[idx]:
            idx = idx + 1
            continue 
        require idx - 1 < 10
        require eTHtoUSD
        return (arg1 * stor8[idx - 1] / eTHtoUSD)
    if eTHtoUSD:
        return (0 / eTHtoUSD)
    revert
}



}
