contract main {




// =====================  Runtime code  =====================


address owner;
address sub_9d3c8cc4Address;
address beneficiaryAddress;
uint8 stor4;
mapping of uint8 stor5;
array of struct stor6;
array of uint256 stor7;
uint256 sub_a81ed407;

function beneficiary() payable {
    return beneficiaryAddress
}

function owner() payable {
    return owner
}

function sub_9d3c8cc4(?) payable {
    return sub_9d3c8cc4Address
}

function sub_a81ed407(?) payable {
    return sub_a81ed407
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

function sub_9bb921dc(?) payable {
    require calldata.size - 4 >= 32
    if arg1 > sub_a81ed407:
        if sub_a81ed407:
            if arg1 % sub_a81ed407 < stor7.length:
                return stor7[arg1 % stor8]
    else:
        if arg1:
            if sub_a81ed407 % arg1 < stor7.length:
                return stor7[stor8 % arg1]
    revert
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

function sub_cff3074c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        stor7.length++
        mem[0] = 7
        stor7[stor7.length] = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
}

function getRandom(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor7.length == sub_a81ed407:
        stor7.length++
        stor7[stor7.length] = sha3(arg1 + block.hash(block.number - 10))
    require sub_a81ed407 < stor7.length
    require stor6.length
    require sha3(stor7[stor8] + block.hash(block.number - 1)) % stor6.length < stor6.length
    require arg2
    sub_a81ed407++
    if not bool(stor6.length):
        return ((sha3(Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor6', 6)))), 0) + 256, sha3(stor7[stor8] + block.hash(block.number - 1)) % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor6', 6)))), 0) - 8, arg2, arg1) % arg2) + 1)
    return ((sha3(0, arg2, arg1) % arg2) + 1)
}

function sub_eabd11ae(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    mem[ceil32(arg1.length) + 160] = uint256(stor6.field_0)
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + stor6.length + 128 > idx:
        mem[idx + 32] = stor6[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + stor6.length + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + stor6.length + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length + stor6.length
    stor6[].field_0 = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
}



}
