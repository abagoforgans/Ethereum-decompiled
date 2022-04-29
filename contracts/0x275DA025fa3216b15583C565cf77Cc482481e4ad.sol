contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;

function _fallback() {
    stor0 = msg.sender
    require code.data[4968 len 20]
    require code.data[5032 len 20]
    stor1 = code.data[4968 len 20]
    require msg.sender == stor0
    require code.data[5000 len 20]
    stor2 = code.data[5000 len 20]
    stor3 = code.data[5032 len 20]
    return code.data[645 len 4311]
}



// =====================  Runtime code  =====================


address owner;
address purposeAddress;
address dubiAddress;
address hodlerAddress;
mapping of struct item;

function hodler() {
    return hodlerAddress
}

function dubi() {
    return dubiAddress
}

function purpose() {
    return purposeAddress
}

function owner() {
    return owner
}

function getItem(address arg1, uint256 arg2) {
    return item[address(arg1)][arg2].field_0, 
           item[address(arg1)][arg2].field_256,
           item[address(arg1)][arg2].field_512,
           bool(item[address(arg1)][arg2].field_672)
}

function _fallback() payable {
    revert
}

function changeDubiAddress(address arg1) {
    require msg.sender == owner
    require arg1
    dubiAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function release(address arg1, uint256 arg2) {
    require arg1
    require arg2 > 0
    require item[address(arg1)][arg2].field_0 == arg2
    require not item[address(arg1)][arg2].field_672
    require item[address(arg1)][arg2].field_512 == msg.sender
    item[address(arg1)][arg2].field_672 = 1
    require ext_code.size(hodlerAddress)
    call hodlerAddress.release(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args item[address(arg1)][arg2].field_0
    require ext_call.success
    require ext_code.size(purposeAddress)
    call purposeAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(purposeAddress)
    call purposeAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}

function hodl(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require arg1
    require arg2 > 0
    require item[address(msg.sender)][arg2].field_0 != arg2
    item[address(msg.sender)][arg2].field_0 = arg2
    item[address(msg.sender)][arg2].field_256 = msg.sender
    item[address(msg.sender)][arg2].field_512 = arg1
    item[address(msg.sender)][arg2].field_672 = 0
    require ext_code.size(purposeAddress)
    call purposeAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg3
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(hodlerAddress)
    call hodlerAddress.hodl(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining - 710 wei
        args arg2, arg3, arg4
    require ext_call.success
    require ext_code.size(dubiAddress)
    call dubiAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(dubiAddress)
    call dubiAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}



}
