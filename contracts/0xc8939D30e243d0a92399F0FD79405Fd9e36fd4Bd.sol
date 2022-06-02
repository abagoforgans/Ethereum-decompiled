contract main {




// =====================  Runtime code  =====================


address owner;
address beneficiaryAddress;
mapping of uint8 stor2;
uint8 stor3;
address stor3; offset 8
uint128 stor4; offset 160
uint8 stor5;
uint16 stor5;
uint64 stor5; offset 88
uint256 stor5; offset 88
uint256 stor5;

function beneficiary() {
    return beneficiaryAddress
}

function owner() {
    return owner
}

function managers(address arg1) {
    return bool(stor2[arg1])
}

function _fallback() payable {
    revert
}

function setManager(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Only owner'
    stor2[address(arg1)] = 1
}

function deleteManager(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Only owner'
    stor2[address(arg1)] = 0
}

function setBeneficiary(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Only owner'
    beneficiaryAddress = arg1
}

function sub_19dad680(?) {
    if not stor2[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 'Only managers allowed'
    uint8(stor3.field_0) = 1
}

function withdrawalAll() {
    if owner != msg.sender:
        revert with 0, 'Only owner'
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Only owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer to null address is not allowed'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawal(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 'Only owner'
    if arg1 > eth.balance(this.address):
        revert with 0, 'Insufficient balance'
    call beneficiaryAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0d9bf380(?) {
    if not stor2[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 'Only managers allowed'
    require ext_code.size(address(stor3.field_8))
    call address(stor3.field_8).0x3fa595fb with:
         gas gas_remaining wei
        args uint8(stor5.field_0), 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8d1fa9f9(?) {
    if not stor2[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 'Only managers allowed'
    require ext_code.size(address(stor3.field_8))
    if ('signextend', 7, ('signextend', 7, ('param', 'arg3'))) < 0:
        call address(stor3.field_8).0x3fa595fb with:
             gas gas_remaining wei
            args uint8(stor5.field_0), ('signextend', 7, ('signextend', 7, ('mul', -1, ('signextend', 7, ('param', 'arg3'))))), 1, 0, 0, 0, 0, 0, 0
    else:
        call address(stor3.field_8).0x3fa595fb with:
             gas gas_remaining wei
            args uint8(stor5.field_0), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg3')))), 1, 0, 0, 0, 0, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor3.field_8))
    call address(stor3.field_8).0x3916d3b0 with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('add', ('signextend', 7, ('stor', ('name', 'stor4', 4))), ('signextend', 7, ('type', 168, ('field', 88, ('stor', ('name', 'stor5', 5)))))))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('type', 256, ('field', 0, ('stor', ('name', 'stor5', 5))))))), uint8(stor5.field_0), uint16(stor5.field_0), 1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor3.field_8))
    if ('signextend', 7, ('signextend', 7, ('param', 'arg3'))) >= 0:
        call address(stor3.field_8).0x3af81605 with:
             gas gas_remaining wei
            args ('signextend', 7, ('signextend', 7, ('add', ('signextend', 7, ('type', 168, ('field', 88, ('stor', ('name', 'stor5', 5))))), ('signextend', 7, ('stor', ('name', 'stor4', 4)))))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('type', 256, ('field', 0, ('stor', ('name', 'stor5', 5))))))), arg2 << 240, this.address, arg1
    else:
        call address(stor3.field_8).0x3af81605 with:
             gas gas_remaining wei
            args ('signextend', 7, ('signextend', 7, ('add', ('signextend', 7, ('type', 168, ('field', 88, ('stor', ('name', 'stor5', 5))))), ('signextend', 7, ('stor', ('name', 'stor4', 4)))))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('type', 256, ('field', 0, ('stor', ('name', 'stor5', 5))))))), arg2 << 240, address(arg1), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor3.field_8))
    call address(stor3.field_8).0x3af81605 with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('add', ('signextend', 7, ('stor', ('name', 'stor4', 4))), ('signextend', 7, ('type', 168, ('field', 88, ('stor', ('name', 'stor5', 5)))))))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('type', 256, ('field', 0, ('stor', ('name', 'stor5', 5))))))), uint16(stor5.field_0), this.address, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint64(stor5.field_88) = uint64(('signextend', 7, ('add', 1, ('signextend', 7, ('type', 168, ('field', 88, ('stor', ('name', 'stor5', 5))))))))
}



}
