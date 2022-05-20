contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address serviceAccount;
uint256 servicePercentage;
uint256 affiliatePercentage;
mapping of uint256 pendingWithdrawals;

function members(address arg1) {
    return bool(stor1[arg1])
}

function isValidMember(address arg1) {
    return bool(stor1[address(arg1)])
}

function serviceAccount() {
    return serviceAccount
}

function servicePercentage() {
    return servicePercentage
}

function owner() {
    return owner
}

function affiliatePercentage() {
    return affiliatePercentage
}

function pendingWithdrawals(address arg1) {
    return pendingWithdrawals[arg1]
}

function _fallback() payable {
    revert
}

function addMember(address arg1) {
    require msg.sender == owner
    stor1[address(arg1)] = 1
}

function removeMember(address arg1) {
    require msg.sender == owner
    stor1[address(arg1)] = 0
}

function changeServiceAccount(address arg1) {
    require msg.sender == owner
    serviceAccount = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function changeServicePercentage(uint256 arg1) {
    require msg.sender == owner
    servicePercentage = arg1
}

function changeAffiliatePercentage(uint256 arg1) {
    require msg.sender == owner
    affiliatePercentage = arg1
}

function getFee(uint256 arg1) {
    if not arg1:
        return (servicePercentage * arg1 / 10^18)
    require arg1
    require servicePercentage * arg1 / arg1 == servicePercentage
    return (servicePercentage * arg1 / 10^18)
}

function getAffiliateAmount(uint256 arg1) {
    if not arg1:
        return (affiliatePercentage * arg1 / 10^18)
    require arg1
    require affiliatePercentage * arg1 / arg1 == affiliatePercentage
    return (affiliatePercentage * arg1 / 10^18)
}

function withdraw() {
    pendingWithdrawals[msg.sender] = 0
    call msg.sender with:
       value pendingWithdrawals[msg.sender] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function collect(address arg1) payable {
    require stor1[address(msg.sender)]
    if not arg1:
        pendingWithdrawals[stor2] += msg.value
    else:
        if msg.value:
            require msg.value
            require affiliatePercentage * msg.value / msg.value == affiliatePercentage
        pendingWithdrawals[address(arg1)] += affiliatePercentage * msg.value / 10^18
        require affiliatePercentage * msg.value / 10^18 <= msg.value
        pendingWithdrawals[stor2] = msg.value - (affiliatePercentage * msg.value / 10^18) + pendingWithdrawals[stor2]
}



}
