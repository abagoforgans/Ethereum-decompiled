contract main {




// =====================  Runtime code  =====================


address owner;
address sub_9d3c8cc4Address;
address beneficiaryAddress;

function beneficiary() payable {
    return beneficiaryAddress
}

function owner() payable {
    return owner
}

function sub_9d3c8cc4(?) payable {
    return sub_9d3c8cc4Address
}

function _fallback() payable {
    revert
}

function setSecondary(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 10, 0xfe4f6e6c79206f776e6572000000000000000000000000000000000000000000
    sub_9d3c8cc4Address = arg1
}

function setBeneficiary(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 10, 0xfe4f6e6c79206f776e6572000000000000000000000000000000000000000000
    beneficiaryAddress = arg1
}

function withdrawalAll() payable {
    if owner != msg.sender:
        revert with 0, 32, 10, 0xfe4f6e6c79206f776e6572000000000000000000000000000000000000000000
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit BeneficiaryPayout(eth.balance(this.address));
}

function withdrawal(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 10, 0xfe4f6e6c79206f776e6572000000000000000000000000000000000000000000
    if arg1 > eth.balance(this.address):
        revert with 0, 'Insufficient balance'
    call beneficiaryAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit BeneficiaryPayout(arg1);
}

function withdrawERC20Token(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 32, 10, 0xfe4f6e6c79206f776e6572000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args beneficiaryAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xc1d94b74: address(arg1), arg2
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 10, 0xfe4f6e6c79206f776e6572000000000000000000000000000000000000000000
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x5472616e7366657220746f206e756c6c2061646472657373206973206e6f7420616c6c6f776500,
                    mem[203 len 25]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}



}
