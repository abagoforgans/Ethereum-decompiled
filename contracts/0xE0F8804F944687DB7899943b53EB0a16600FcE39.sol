contract main {




// =====================  Runtime code  =====================


address owner;
address libraryAddress;
mapping of address sub_a7867212;

function owner() {
    return owner
}

function sub_a7867212(?) {
    return sub_a7867212[arg1]
}

function libraryAddress() {
    return libraryAddress
}

function _fallback() payable {
    revert
}

function setLibraryAddress(address arg1) {
    require msg.sender == owner
    libraryAddress = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_216b0089(?) {
    require not sub_a7867212[arg1]
    create contract with 0 wei
                    code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, libraryAddress, 0x5af43d82803e903d91602b57fd5bf3
    sub_a7867212[arg1] = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).init(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit IdentityCreated(address(create.new_address));
    return address(create.new_address)
}



}
