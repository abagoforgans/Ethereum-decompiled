contract main {




// =====================  Runtime code  =====================


address owner;
address nominatedOwner;
address associatedContractAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function nominatedOwner() {
    return nominatedOwner
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function associatedContract() {
    return associatedContractAddress
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function nominateNewOwner(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may perform this action'
    nominatedOwner = arg1
    emit OwnerNominated(arg1);
}

function setAssociatedContract(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may perform this action'
    associatedContractAddress = arg1
    emit AssociatedContractUpdated(arg1);
}

function setBalanceOf(address arg1, uint256 arg2) {
    if associatedContractAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Only the associated contract can perform this action'
    balanceOf[address(arg1)] = arg2
}

function acceptOwnership() {
    if nominatedOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You must be nominated before you can accept ownership'
    emit OwnerChanged(owner, nominatedOwner);
    owner = nominatedOwner
    nominatedOwner = 0
}

function setAllowance(address arg1, address arg2, uint256 arg3) {
    if associatedContractAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Only the associated contract can perform this action'
    allowance[address(arg1)][address(arg2)] = arg3
}



}
