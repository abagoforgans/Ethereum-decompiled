contract main {




// =====================  Runtime code  =====================


address owner;
address stakingContractAddress;
address bounty0xTokenAddress;

function owner() {
    return owner
}

function Bounty0xToken() {
    return bounty0xTokenAddress
}

function stakingContract() {
    return stakingContractAddress
}

function _fallback() payable {
    revert
}

function changeStakingContract(address arg1) {
    require msg.sender == owner
    stakingContractAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function changeControllerInBntyTokenContract(address arg1) {
    require msg.sender == owner
    require ext_code.size(bounty0xTokenAddress)
    call bounty0xTokenAddress.0x3cebb823 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function destroyTokensInBntyTokenContract(address arg1, uint256 arg2) {
    require msg.sender == stakingContractAddress
    require ext_code.size(bounty0xTokenAddress)
    call bounty0xTokenAddress.destroyTokens(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 1
}



}
