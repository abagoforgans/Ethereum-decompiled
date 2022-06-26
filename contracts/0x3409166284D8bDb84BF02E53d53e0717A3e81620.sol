contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address sub_3d115334Address;
uint256 sub_d0826cbb;
uint256 commission;
uint256 sub_e118275c;
mapping of address sub_4feeaae2;

function sub_3d115334(?) {
    return sub_3d115334Address
}

function sub_4feeaae2(?) {
    require calldata.size - 4 >= 32
    return sub_4feeaae2[arg1]
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function owner() {
    return owner
}

function sub_d0826cbb(?) {
    return sub_d0826cbb
}

function sub_e118275c(?) {
    return sub_e118275c
}

function commission() {
    return commission
}

function destroy() {
    require msg.sender == owner
    selfdestruct(owner)
}

function destroyAndSend(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    selfdestruct(arg1)
}

function _fallback() payable {
    revert with 0, 'Do not send funds to contract'
}

function pause() {
    require msg.sender == owner
    if uint8(stor0.field_160):
        revert with 0, 'Contract paused'
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function unpause() {
    require msg.sender == owner
    if not uint8(stor0.field_160):
        revert with 0, 'Contract should be paused'
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function setCommission(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    commission = arg1
    require commission + sub_d0826cbb >= commission
    sub_e118275c = commission + sub_d0826cbb
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function removeContract(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if not sub_4feeaae2[arg1][arg2]:
        revert with 0, 'Breeder not enrolled'
    sub_4feeaae2[arg1][arg2] = 0
    emit ContractRemoved(sub_4feeaae2[arg1][arg2]);
}

function sub_489b388c(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 37, code.data[15583 len 37], mem[201 len 27]
    sub_d0826cbb = arg1
    require commission + sub_d0826cbb >= commission
    sub_e118275c = commission + sub_d0826cbb
}

function sub_9d7ac435(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_3d115334Address = arg1
    require ext_code.size(sub_3d115334Address)
    staticcall sub_3d115334Address.supportsInterface(bytes4 arg1) with:
            gas gas_remaining wei
           args 0x9a20483d00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Invalid contract'
}

function createContract(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_160):
        revert with 0, 'Contract paused'
    if msg.value < sub_e118275c:
        revert with 0, 'Invalid value'
    if sub_4feeaae2[arg1][msg.sender]:
        revert with 0, 'Breeder already enrolled'
    require sub_e118275c <= msg.value
    create contract with 0 wei
                    code: code.data[6218 len 9365], msg.sender, address(arg1), sub_3d115334Address, sub_d0826cbb
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_4feeaae2[arg1][msg.sender] = address(create.new_address)
    if msg.value - sub_e118275c <= 0:
        call arg1 with:
           value sub_d0826cbb wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call address(create.new_address) with:
           value msg.value - sub_e118275c wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call arg1 with:
           value sub_d0826cbb wei
             gas 2300 * is_zero(value) wei
    emit ContractCreated(address(create.new_address), address(arg1), msg.sender);
}



}
