contract main {




// =====================  Runtime code  =====================


address owner;
address sub_9d3c8cc4Address;
address beneficiaryAddress;
uint8 stor4;
mapping of uint8 stor5;
uint8 stor6;
mapping of address sub_b591d3a5;
mapping of uint8 sub_49480bbb;

function beneficiary() {
    return beneficiaryAddress
}

function sub_49480bbb(?) {
    require calldata.size - 4 >= 32
    return sub_49480bbb[arg1]
}

function sub_691c10f2(?) {
    require calldata.size - 4 >= 32
    return bool(sub_b591d3a5[address(arg1)])
}

function owner() {
    return owner
}

function sub_9d3c8cc4(?) {
    return sub_9d3c8cc4Address
}

function sub_b591d3a5(?) {
    require calldata.size - 4 >= 32
    return sub_b591d3a5[arg1]
}

function sub_d14fbf19(?) {
    require calldata.size - 4 >= 32
    return sub_b591d3a5[address(arg1)]
}

function managers(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function _fallback() payable {
    revert
}

function setSecondary(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner'
    sub_9d3c8cc4Address = arg1
}

function setBeneficiary(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner'
    beneficiaryAddress = arg1
}

function setManager(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if sub_9d3c8cc4Address != msg.sender:
            revert with 0, 'Only owner or secondary'
    stor5[address(arg1)] = 1
}

function deleteManager(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if sub_9d3c8cc4Address != msg.sender:
            revert with 0, 'Only owner or secondary'
    stor5[address(arg1)] = 0
}

function sub_7b95d3ea(?) {
    require calldata.size - 4 >= 64
    if not sub_b591d3a5[address(arg1)]:
        return 0
    if not sub_49480bbb[stor7[address(arg1)]]:
        return (arg2 / 100 * stor6)
    return (arg2 / 100 * sub_49480bbb[stor7[address(arg1)]])
}

function sub_26e02b6c(?) {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    sub_b591d3a5[address(arg1)] = 0
}

function sub_db31d080(?) {
    require calldata.size - 4 >= 64
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    sub_49480bbb[address(arg1)] = arg2
}

function setMaintenanceStatus(bool arg1) {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    stor4 = uint8(arg1)
    emit 0xf887ef1c: arg1
}

function withdrawalAll() {
    if owner != msg.sender:
        revert with 0, 'Only owner'
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit BeneficiaryPayout(eth.balance(this.address));
}

function sub_39ad691a(?) {
    require calldata.size - 4 >= 64
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    require arg2 != arg1
    if not sub_b591d3a5[address(arg1)]:
        sub_b591d3a5[address(arg1)] = arg2
    return sub_b591d3a5[address(arg1)]
}

function withdrawERC20Token(address arg1, uint256 arg2) {
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

function withdrawal(uint256 arg1) {
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

function transferOwnership(address arg1) {
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

function sub_7c640924(?) payable {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    if sub_b591d3a5[address(arg1)]:
        call sub_b591d3a5[address(arg1)] with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit 0xe8b95f36: address(arg1), sub_b591d3a5[address(arg1)], msg.value
        else:
            emit FailedPayout(sub_b591d3a5[address(arg1)], msg.value);
    else:
        call beneficiaryAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit BeneficiaryPayout(msg.value);
}



}
