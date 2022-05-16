contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of address referralList;

function owner() {
    return owner
}

function referralList(address arg1) {
    return referralList[arg1]
}

function investorWhiteList(address arg1) {
    return bool(stor1[arg1])
}

function getReferralOf(address arg1) {
    return referralList[address(arg1)]
}

function isAllowed(address arg1) {
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function addInvestorToWhiteList(address arg1) {
    require msg.sender == owner
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
}

function removeInvestorFromWhiteList(address arg1) {
    require msg.sender == owner
    require arg1
    require stor1[address(arg1)]
    stor1[address(arg1)] = 0
}

function addReferralOf(address arg1, address arg2) {
    require msg.sender == owner
    require arg1
    require arg2
    require not referralList[address(arg1)]
    require arg1 != arg2
    referralList[address(arg1)] = arg2
}



}
