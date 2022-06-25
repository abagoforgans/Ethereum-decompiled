contract main {




// =====================  Runtime code  =====================


address owner;
address sub_9d3c8cc4Address;
address beneficiaryAddress;
uint8 stor4;
mapping of uint8 stor5;
array of struct contracts;

function beneficiary() payable {
    return beneficiaryAddress
}

function contracts(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < contracts.length
    return contracts[arg1].field_0, bool(contracts[arg1].field_160)
}

function owner() payable {
    return owner
}

function sub_9d3c8cc4(?) payable {
    return sub_9d3c8cc4Address
}

function managers(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function _fallback() payable {
    revert
}

function setSecondary(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner'
    sub_9d3c8cc4Address = arg1
}

function setBeneficiary(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner'
    beneficiaryAddress = arg1
}

function setManager(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if sub_9d3c8cc4Address != msg.sender:
            revert with 0, 'Only owner or secondary'
    stor5[address(arg1)] = 1
}

function deleteManager(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if sub_9d3c8cc4Address != msg.sender:
            revert with 0, 'Only owner or secondary'
    stor5[address(arg1)] = 0
}

function setMaintenanceStatus(bool arg1) payable {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    stor4 = uint8(arg1)
    emit 0xf887ef1c: arg1
}

function sub_9d172a57(?) payable {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    contracts.length++
    contracts[contracts.length].field_0 = arg1
    contracts[contracts.length].field_160 = 1
}

function withdrawalAll() payable {
    if owner != msg.sender:
        revert with 0, 'Only owner'
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit BeneficiaryPayout(eth.balance(this.address));
}

function withdrawERC20Token(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Only owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args beneficiaryAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xc1d94b74: address(arg1), arg2
}

function withdrawal(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner'
    if arg1 > eth.balance(this.address):
        revert with 0, 'Insufficient balance'
    call beneficiaryAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit BeneficiaryPayout(arg1);
}

function sub_6e89abe8(?) payable {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    idx = 0
    while idx < contracts.length:
        mem[0] = 6
        if contracts[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        require idx < contracts.length
        contracts[idx].field_160 = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x5472616e7366657220746f206e756c6c2061646472657373206973206e6f7420616c6c6f776500,
                    mem[203 len 25]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_4d129cc2(?) payable {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    idx = 0
    while idx < contracts.length:
        mem[0] = 6
        if contracts[idx].field_160:
            require idx < contracts.length
            mem[0] = 6
            mem[96] = 0x9679976000000000000000000000000000000000000000000000000000000000
            mem[100] = arg1
            require ext_code.size(contracts[idx].field_0)
            call contracts[idx].field_0.0x96799760 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_365d7934(?) payable {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    idx = 0
    while idx < contracts.length:
        mem[0] = 6
        if contracts[idx].field_160:
            require idx < contracts.length
            mem[0] = 6
            if contracts[idx].field_0 != arg1:
                require idx < contracts.length
                mem[0] = 6
                mem[96] = 0xd0ebdbe700000000000000000000000000000000000000000000000000000000
                mem[100] = arg1
                require ext_code.size(contracts[idx].field_0)
                call contracts[idx].field_0.0xd0ebdbe7 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_499a3b78(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    mem[0] = msg.sender
    mem[32] = 5
    if stor5[msg.sender]:
        idx = 0
        while idx < arg1.length:
            _23 = mem[64]
            mem[64] = mem[64] + 64
            require idx < mem[96]
            mem[_23] = mem[(32 * idx) + 140 len 20]
            mem[_23 + 32] = 1
            contracts.length++
            mem[0] = 6
            contracts[contracts.length].field_0 = mem[_23 + 12 len 20]
            contracts[contracts.length].field_160 = 1
            idx = idx + 1
            continue 
    else:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
        idx = 0
        while idx < arg1.length:
            _25 = mem[64]
            mem[64] = mem[64] + 64
            require idx < mem[96]
            mem[_25] = mem[(32 * idx) + 140 len 20]
            mem[_25 + 32] = 1
            contracts.length++
            mem[0] = 6
            contracts[contracts.length].field_0 = mem[_25 + 12 len 20]
            contracts[contracts.length].field_160 = 1
            idx = idx + 1
            continue 
}

function sub_e76abdfb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if stor5[msg.sender]:
        idx = 0
        while idx < contracts.length:
            mem[0] = 6
            if contracts[idx].field_160:
                s = 0
                while s < arg1.length:
                    require s < arg1.length
                    require idx < contracts.length
                    mem[0] = 6
                    if contracts[idx].field_0 != mem[(32 * s) + 140 len 20]:
                        require idx < contracts.length
                        mem[0] = 6
                        require s < arg1.length
                        _59 = mem[(32 * s) + 128]
                        mem[(32 * arg1.length) + 128] = 0xd0ebdbe700000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg1.length) + 132] = address(_59)
                        require ext_code.size(contracts[idx].field_0)
                        call contracts[idx].field_0.0xd0ebdbe7 with:
                             gas gas_remaining wei
                            args address(_59)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    else:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
        idx = 0
        while idx < contracts.length:
            mem[0] = 6
            if contracts[idx].field_160:
                s = 0
                while s < arg1.length:
                    require s < arg1.length
                    require idx < contracts.length
                    mem[0] = 6
                    if contracts[idx].field_0 != mem[(32 * s) + 140 len 20]:
                        require idx < contracts.length
                        mem[0] = 6
                        require s < arg1.length
                        _62 = mem[(32 * s) + 128]
                        mem[(32 * arg1.length) + 128] = 0xd0ebdbe700000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg1.length) + 132] = address(_62)
                        require ext_code.size(contracts[idx].field_0)
                        call contracts[idx].field_0.0xd0ebdbe7 with:
                             gas gas_remaining wei
                            args address(_62)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
}



}
