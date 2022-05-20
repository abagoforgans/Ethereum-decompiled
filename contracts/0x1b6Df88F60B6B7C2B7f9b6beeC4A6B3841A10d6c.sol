contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 allowance;
uint256 contributionInWei;
address stor3;
address stor4;

function contributionInWei() {
    return contributionInWei
}

function allowance(address arg1) {
    return allowance[arg1]
}

function owner() {
    return owner
}

function setWalletAddress(address arg1) {
    require msg.sender == owner
    stor4 = arg1
}

function setContributionInWei(uint256 arg1) {
    require msg.sender == owner
    contributionInWei = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function changeAllowance(address arg1, uint256 arg2) {
    require msg.sender == owner
    allowance[address(arg1)] = arg2
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(uint256 arg1) {
    require msg.sender == owner
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function _fallback() payable {
    require allowance[address(msg.sender)] > 0
    require msg.value >= contributionInWei
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, allowance[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    allowance[address(msg.sender)] = 0
    call stor4 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
