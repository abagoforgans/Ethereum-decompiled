contract main {




// =====================  Runtime code  =====================


address owner;
address escrowContractAddress;
address sub_84b02a11Address;
array of uint256 stor3;
uint256 stor4;
uint256 stor5;
uint64 stor6;
uint64 stor6; offset 64

function sub_84b02a11(?) {
    return sub_84b02a11Address
}

function owner() {
    return owner
}

function escrowContract() {
    return escrowContractAddress
}

function _fallback() payable {
    revert
}

function sub_698698af(?) {
    require msg.sender == owner
    uint64(stor6.field_0) = arg1
}

function sub_50e3d17e(?) {
    require msg.sender == owner
    uint64(stor6.field_64) = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function sub_07f38d7b(?) {
    require msg.sender == owner
    require arg1 < 3
    stor3[arg1] = arg2
    emit 0x53b82d85: arg1 << 248, arg2
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setContractAddresses(address arg1, address arg2) {
    require msg.sender == owner
    escrowContractAddress = arg1
    sub_84b02a11Address = arg2
}

function sub_bf78e04c(?) {
    require arg1 > stor3.length
    require arg2
    require arg2 != msg.sender
    require uint64(block.timestamp) + uint64(stor6.field_64) >= uint64(stor6.field_64)
    require arg3 > uint64(block.timestamp) + uint64(stor6.field_64)
    require uint64(block.timestamp) + uint64(stor6.field_0) >= uint64(stor6.field_0)
    require arg3 <= uint64(block.timestamp) + uint64(stor6.field_0)
    require ext_code.size(sub_84b02a11Address)
    call sub_84b02a11Address.0x8c12d7e with:
         gas gas_remaining wei
        args 0, uint32(arg1), msg.sender, address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(escrowContractAddress)
    call escrowContractAddress.deposit(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d79221c1(?) {
    require arg1 > stor4
    require arg2
    require arg3
    require arg2 != msg.sender
    require arg3 != msg.sender
    require arg3 != arg2
    if arg4 > 0:
        require uint64(block.timestamp) + uint64(stor6.field_64) >= uint64(stor6.field_64)
        require arg4 > uint64(block.timestamp) + uint64(stor6.field_64)
        require uint64(block.timestamp) + uint64(stor6.field_0) >= uint64(stor6.field_0)
        require arg4 <= uint64(block.timestamp) + uint64(stor6.field_0)
    require ext_code.size(sub_84b02a11Address)
    call sub_84b02a11Address.0xcc6dd417 with:
         gas gas_remaining wei
        args 0, uint32(arg1), msg.sender, address(arg2), arg3, arg4 << 192
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(escrowContractAddress)
    call escrowContractAddress.deposit(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1e98fc15(?) {
    require ext_code.size(sub_84b02a11Address)
    call sub_84b02a11Address.getEscrow(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    require ext_call.return_data[287 len 1] == 3
    require 1 == ext_call.return_data[319 len 1]
    require msg.sender == ext_call.return_data[108 len 20]
    require ext_code.size(sub_84b02a11Address)
    call sub_84b02a11Address.0x1e98fc15 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(escrowContractAddress)
    if stor5 <= ext_call.return_data[0]:
        call escrowContractAddress.withdraw(address arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(ext_call.return_data[32]), ext_call.return_data[0], stor5
    else:
        call escrowContractAddress.withdraw(address arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(ext_call.return_data[32]), ext_call.return_data[0], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_79bdaa36(?) {
    require ext_code.size(sub_84b02a11Address)
    call sub_84b02a11Address.getEscrow(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    require ext_call.return_data[287 len 1] == 3
    require 1 == ext_call.return_data[319 len 1]
    require msg.sender == ext_call.return_data[108 len 20]
    if ext_call.return_data[184 len 8] > 0:
        require ext_call.return_data[184 len 8] < uint64(block.timestamp)
    require ext_code.size(sub_84b02a11Address)
    call sub_84b02a11Address.0x79bdaa36 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(escrowContractAddress)
    call escrowContractAddress.0xc5e8dc1 with:
         gas gas_remaining wei
        args address(ext_call.return_data[32]), address(ext_call.return_data[64]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(escrowContractAddress)
    if stor4 <= ext_call.return_data[0]:
        call escrowContractAddress.withdraw(address arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(ext_call.return_data[64]), ext_call.return_data[0], stor4
    else:
        call escrowContractAddress.withdraw(address arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(ext_call.return_data[64]), ext_call.return_data[0], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_bc2ec861(?) {
    require ext_code.size(sub_84b02a11Address)
    call sub_84b02a11Address.getEscrow(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    require ext_call.return_data[287 len 1] == 1
    require 1 == ext_call.return_data[319 len 1]
    require ext_call.return_data[184 len 8] < uint64(block.timestamp)
    if ext_call.return_data[44 len 20] != msg.sender:
        require msg.sender == ext_call.return_data[76 len 20]
    require ext_code.size(sub_84b02a11Address)
    call sub_84b02a11Address.0xbc2ec861 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(escrowContractAddress)
    call escrowContractAddress.0xc5e8dc1 with:
         gas gas_remaining wei
        args address(ext_call.return_data[32]), address(ext_call.return_data[64]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(escrowContractAddress)
    if stor3.length <= ext_call.return_data[0]:
        call escrowContractAddress.withdraw(address arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(ext_call.return_data[64]), ext_call.return_data[0], stor3.length
    else:
        call escrowContractAddress.withdraw(address arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(ext_call.return_data[64]), ext_call.return_data[0], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
