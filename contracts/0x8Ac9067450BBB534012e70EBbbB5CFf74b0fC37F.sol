contract main {




// =====================  Runtime code  =====================


#
#  - removeValidator(address arg1)
#  - validatorList()
#  - getNextValidator(address arg1)
#  - addValidator(address arg1, address arg2)
#  - initialize(uint256 arg1, address[] arg2, address[] arg3, address arg4)
#  - isValidator(address arg1)
#
const getBridgeValidatorsInterfacesVersion = 2, 1, 0

const F_ADDR = 0xffffffffffffffffffffffffffffffffffffffff


mapping of uint256 validatorCount;
mapping of address validatorReward;
mapping of uint8 stor4;

function validatorCount() {
    return validatorCount[Mask(112, 0, 'validatorCount', 0)]
}

function isInitialized() {
    return bool(stor4[Mask(104, 0, 'isInitialized', 0)])
}

function getValidatorRewardAddress(address arg1) {
    return validatorReward['validatorsRewards'][arg1]
}

function requiredSignatures() {
    return validatorCount['requiredSignatures']
}

function owner() {
    return validatorReward['owner', 0 % 1099511627776]
}

function deployedAtBlock() {
    return validatorCount['deployedAtBlock']
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == validatorReward['owner', 0 % 1099511627776]
    require arg1
    emit OwnershipTransferred(validatorReward['owner', 0 % 1099511627776], address(arg1));
    validatorReward['owner', 0 % 1099511627776] = arg1
}

function setRequiredSignatures(uint256 arg1) {
    require msg.sender == validatorReward['owner', 0 % 1099511627776]
    require validatorCount[Mask(112, 0, 'validatorCount', 0)] >= arg1
    require arg1
    validatorCount[Mask(144, 0, 'requiredSignatures', 0)] = arg1
    emit RequiredSignaturesChanged(arg1);
}



}
