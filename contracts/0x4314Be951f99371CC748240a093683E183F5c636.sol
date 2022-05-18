contract main {




// =====================  Runtime code  =====================


address owner;
address proposedOwner;
address opsAddress;
address adminAddress;
address tokenContractAddress;
address revokeAddress;
uint256 totalLocked;
mapping of struct allocations;

function allocations(address arg1) {
    return allocations[arg1].field_0, allocations[arg1].field_256, bool(allocations[arg1].field_512)
}

function tokenContract() {
    return tokenContractAddress
}

function totalLocked() {
    return totalLocked
}

function owner() {
    return owner
}

function opsAddress() {
    return opsAddress
}

function revokeAddress() {
    return revokeAddress
}

function proposedOwner() {
    return proposedOwner
}

function adminAddress() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function initiateOwnershipTransfer(address arg1) {
    require msg.sender == owner
    proposedOwner = arg1
    emit OwnershipTransferInitiated(arg1);
    return 1
}

function completeOwnershipTransfer() {
    require proposedOwner == msg.sender
    owner = proposedOwner
    proposedOwner = 0
    emit OwnershipTransferCompleted(proposedOwner);
    return 1
}

function setOpsAddress(address arg1) {
    if owner != msg.sender:
        require adminAddress
        require adminAddress == msg.sender
    require owner != arg1
    require arg1 != this.address
    if adminAddress:
        require adminAddress != arg1
    opsAddress = arg1
    emit OpsAddressChanged(arg1);
    return 1
}

function setAdminAddress(address arg1) {
    if owner != msg.sender:
        require adminAddress
        require adminAddress == msg.sender
    require owner != arg1
    require arg1 != this.address
    if opsAddress:
        require arg1 != opsAddress
    adminAddress = arg1
    emit AdminAddressChanged(arg1);
    return 1
}

function setRevokeAddress(address arg1) {
    if owner != msg.sender:
        require revokeAddress
        require msg.sender == revokeAddress
    require owner != arg1
    if adminAddress:
        require adminAddress != arg1
    if opsAddress:
        require arg1 != opsAddress
    revokeAddress = arg1
    emit RevokeAddressChanged(arg1);
    return 1
}

function revokeAllocation(address arg1) {
    require revokeAddress
    require msg.sender == revokeAddress
    require arg1
    require allocations[address(arg1)].field_512
    require allocations[address(arg1)].field_256 <= allocations[address(arg1)].field_0
    allocations[address(arg1)].field_0 = 0
    allocations[address(arg1)].field_256 = 0
    allocations[address(arg1)].field_512 = 0
    require allocations[address(arg1)].field_0 - allocations[address(arg1)].field_256 <= totalLocked
    totalLocked = totalLocked - allocations[address(arg1)].field_0 + allocations[address(arg1)].field_256
    emit AllocationRevoked((allocations[address(arg1)].field_0 - allocations[address(arg1)].field_256), msg.sender, arg1);
    return 1
}

function processAllocation(address arg1, uint256 arg2) {
    require opsAddress
    require msg.sender == opsAddress
    require arg1
    require arg2 > 0
    require allocations[address(arg1)].field_0 > 0
    require allocations[address(arg1)].field_256 <= allocations[address(arg1)].field_0
    if allocations[address(arg1)].field_0 - allocations[address(arg1)].field_256 < arg2:
        return 0
    require arg2 + allocations[address(arg1)].field_256 >= allocations[address(arg1)].field_256
    allocations[address(arg1)].field_256 += arg2
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 <= totalLocked
    totalLocked -= arg2
    emit AllocationProcessed(arg2, msg.sender, arg1);
    return 1
}

function reclaimTokens() {
    require adminAddress
    require adminAddress == msg.sender
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > totalLocked
    require totalLocked <= ext_call.return_data[0]
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20]
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), ext_call.return_data[0] - totalLocked
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit TokensReclaimed((ext_call.return_data[0] - totalLocked));
    return 1
}

function grantAllocation(address arg1, uint256 arg2, bool arg3) {
    if not adminAddress:
        require opsAddress
        require msg.sender == opsAddress
    else:
        if adminAddress != msg.sender:
            require opsAddress
            require msg.sender == opsAddress
    require arg1
    require arg1 != this.address
    require arg2 > 0
    require not allocations[address(arg1)].field_0
    if opsAddress:
        if msg.sender == opsAddress:
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0xb3f05b97 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require not ext_call.return_data[0]
    require arg2 + totalLocked >= totalLocked
    totalLocked += arg2
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require totalLocked <= ext_call.return_data[0]
    allocations[address(arg1)].field_0 = arg2
    allocations[address(arg1)].field_256 = 0
    allocations[address(arg1)].field_512 = uint8(arg3)
    emit AllocationGranted(arg2, arg3, msg.sender, arg1);
    return 1
}



}
