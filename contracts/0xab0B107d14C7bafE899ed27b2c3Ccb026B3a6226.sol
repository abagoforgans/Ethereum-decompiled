contract main {




// =====================  Runtime code  =====================


address owner;
address beneficiaryAddress;
mapping of uint8 stor2;
uint8 stor3;
address mainContractAddress; offset 8
address landContractAddress;
address sub_52c08f5dAddress;
address sub_9918e0caAddress;

function landContract() {
    return landContractAddress
}

function beneficiary() {
    return beneficiaryAddress
}

function sub_52c08f5d(?) {
    return sub_52c08f5dAddress
}

function owner() {
    return owner
}

function sub_9918e0ca(?) {
    return sub_9918e0caAddress
}

function mainContract() {
    return mainContractAddress
}

function managers(address arg1) {
    return bool(stor2[arg1])
}

function _fallback() payable {
  stop
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
    stor3 = 1
}

function sub_5661d186(?) {
    if not stor2[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 'Only managers allowed'
    sub_9918e0caAddress = arg1
}

function sub_81d9e0cf(?) {
    if not stor2[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 'Only managers allowed'
    landContractAddress = arg1
}

function sub_ac916222(?) {
    if not stor2[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 'Only managers allowed'
    sub_52c08f5dAddress = arg1
}

function setMain(address arg1) {
    if not stor2[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 'Only managers allowed'
    mainContractAddress = arg1
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

function sub_adea7a6a(?) {
    require ext_code.size(sub_9918e0caAddress)
    call sub_9918e0caAddress.0x7de46265 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
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

function sub_5541315b(?) {
    if not stor2[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 'Only managers allowed'
    require ext_code.size(sub_52c08f5dAddress)
    call sub_52c08f5dAddress.0x127a5652 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6c0db7e3(?) {
    if not stor2[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 'Only managers allowed'
    require ext_code.size(sub_52c08f5dAddress)
    call sub_52c08f5dAddress.0x127a5652 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_51320bed(?) {
    require msg.sender == landContractAddress
    require ext_code.size(sub_52c08f5dAddress)
    call sub_52c08f5dAddress.0x3916d3b0 with:
         gas gas_remaining wei
        args 0, uint32(('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1'))))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), 2, arg3, arg4 << 248, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_dceb45e0(?) {
    require msg.sender == landContractAddress
    require ext_code.size(sub_52c08f5dAddress)
    call sub_52c08f5dAddress.'S.|3' with:
         gas gas_remaining wei
        args address(arg4), 64, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] < 0:
        require ext_code.size(sub_52c08f5dAddress)
        call sub_52c08f5dAddress.0xe3533422 with:
             gas gas_remaining wei
            args address(arg4), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(landContractAddress)
    call landContractAddress.0x70748343 with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(landContractAddress)
    call landContractAddress.tokens(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_code.size(sub_52c08f5dAddress)
    call sub_52c08f5dAddress.0x56fce427 with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 1 == uint8(ext_call.return_data[32]):
        require ext_code.size(sub_52c08f5dAddress)
        call sub_52c08f5dAddress.0x56fce427 with:
             gas gas_remaining wei
            args ('signextend', 7, ('signextend', 7, ('add', -1, ('signextend', 7, ('param', 'arg1'))))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), address(arg3), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if 2 == uint8(ext_call.return_data[32]):
            require ext_code.size(sub_52c08f5dAddress)
            call sub_52c08f5dAddress.0x56fce427 with:
                 gas gas_remaining wei
                args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('add', -1, ('signextend', 7, ('param', 'arg2'))))), address(arg3), arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if 3 == uint8(ext_call.return_data[32]):
                require ext_code.size(sub_52c08f5dAddress)
                call sub_52c08f5dAddress.0x56fce427 with:
                     gas gas_remaining wei
                    args ('signextend', 7, ('signextend', 7, ('add', -1, ('signextend', 7, ('param', 'arg1'))))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), address(arg3), arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_52c08f5dAddress)
                call sub_52c08f5dAddress.0x56fce427 with:
                     gas gas_remaining wei
                    args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('add', -1, ('signextend', 7, ('param', 'arg2'))))), address(arg3), arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_52c08f5dAddress)
                call sub_52c08f5dAddress.0x56fce427 with:
                     gas gas_remaining wei
                    args ('signextend', 7, ('signextend', 7, ('add', -1, ('signextend', 7, ('param', 'arg1'))))), ('signextend', 7, ('signextend', 7, ('add', -1, ('signextend', 7, ('param', 'arg2'))))), address(arg3), arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) > 0:
        if mainContractAddress:
            call mainContractAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
