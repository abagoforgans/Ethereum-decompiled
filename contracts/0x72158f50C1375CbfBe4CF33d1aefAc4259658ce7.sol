contract main {




// =====================  Runtime code  =====================


#
#  - makePayout()
#
address owner;
address company_tokenAddress;
array of address addressOfBountyMembers;

function addressOfBountyMembers(uint256 arg1) {
    require arg1 < addressOfBountyMembers.length
    return addressOfBountyMembers[arg1]
}

function owner() {
    return owner
}

function company_token() {
    return company_tokenAddress
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
    emit OwnerChanged(owner);
}



}
