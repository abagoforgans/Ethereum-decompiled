contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
mapping of uint256 stor1;
mapping of uint256 sub_feb591da;
mapping of uint256 sub_cc493abc;
array of address stor4;
uint256 requiredSignatures;
address erc20TokenAddress;

function validatorCount() {
    return stor4.length
}

function initialized() {
    return bool(uint8(stor0.field_160))
}

function erc20Token() {
    return erc20TokenAddress
}

function requiredSignatures() {
    return requiredSignatures
}

function owner() {
    return owner
}

function sub_cc493abc(?) {
    return sub_cc493abc[arg1]
}

function sub_feb591da(?) {
    return sub_feb591da[arg1]
}

function _fallback() payable {
  stop
}

function isValidator(address arg1) {
    return not not stor1[address(arg1)]
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setRequiredSignatures(uint256 arg1) {
    require msg.sender == owner
    if stor4.length < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'New requiredSignatures must be < num of validators'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'New requiredSignatures should be > than 0'
    requiredSignatures = arg1
    emit RequiredSignaturesChanged(arg1);
}

function withdraw() {
    if not stor1[address(msg.sender)]:
        revert with 0, 'Non validator cannot withdraw'
    sub_feb591da[address(msg.sender)] = 0
    call msg.sender with:
       value sub_feb591da[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_cc493abc[address(msg.sender)] = 0
    require ext_code.size(erc20TokenAddress)
    call erc20TokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_cc493abc[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Withdraw failed with ERC20 token'
    emit Withdrawn(msg.sender);
}

function sub_8b8b53ee(?) {
    require stor4.length
    require ext_code.size(erc20TokenAddress)
    call erc20TokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require stor4.length
    idx = 0
    while idx < stor4.length:
        require sub_feb591da[address(stor4[idx])] + (eth.balance(this.address) / stor4.length) >= sub_feb591da[address(stor4[idx])]
        require idx < stor4.length
        sub_feb591da[address(stor4[idx])] += eth.balance(this.address) / stor4.length
        require sub_cc493abc[address(stor4[idx])] + (ext_call.return_data[0] / stor4.length) >= sub_cc493abc[address(stor4[idx])]
        require idx < stor4.length
        mem[0] = address(stor4[idx])
        mem[32] = 3
        sub_cc493abc[address(stor4[idx])] += ext_call.return_data[0] / stor4.length
        idx = idx + 1
        continue 
}

function sub_f9538ff5(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require not uint8(stor0.field_160)
    if not arg3:
        revert with 0, 'New owner cannot be 0x0'
    owner = arg3
    if not arg1:
        revert with 0, 'RequiredSignatures should be > 0'
    if arg2.length < arg1:
        revert with 0, 'Validators number should be > requiredSignatures'
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'Validator address should not be 0x0'
        require idx < arg2.length
        require not stor1[mem[(32 * idx) + 140 len 20]]
        require idx < arg2.length
        stor4.length++
        address(stor4[stor4.length]) = mem[(32 * idx) + 140 len 20]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = stor4.length
        require idx < arg2.length
        mem[(32 * arg2.length) + 128] = mem[(32 * idx) + 140 len 20]
        emit ValidatorAdded(mem[(32 * arg2.length) + 128]);
        idx = idx + 1
        continue 
    if stor4.length < arg1:
        revert with 0, 'Validators number should be > requiredSignatures'
    if not arg4:
        revert with 0, 'ERC20 token should not be 0x0'
    requiredSignatures = arg1
    erc20TokenAddress = arg4
    Mask(96, 0, stor0.field_160) = 1
}

function addValidator(address arg1) {
    require msg.sender == owner
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Validator address should not be 0x0'
    if stor1[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'New validator should not be an existing validator'
    require stor4.length
    require ext_code.size(erc20TokenAddress)
    call erc20TokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require stor4.length
    idx = 0
    while idx < stor4.length:
        require sub_feb591da[address(stor4[idx])] + (eth.balance(this.address) / stor4.length) >= sub_feb591da[address(stor4[idx])]
        require idx < stor4.length
        sub_feb591da[address(stor4[idx])] += eth.balance(this.address) / stor4.length
        require sub_cc493abc[address(stor4[idx])] + (ext_call.return_data[0] / stor4.length) >= sub_cc493abc[address(stor4[idx])]
        require idx < stor4.length
        mem[0] = address(stor4[idx])
        mem[32] = 3
        sub_cc493abc[address(stor4[idx])] += ext_call.return_data[0] / stor4.length
        idx = idx + 1
        continue 
    stor4.length++
    address(stor4[stor4.length]) = arg1
    stor1[address(arg1)] = stor4.length
    emit ValidatorAdded(arg1);
}

function removeValidator(address arg1) {
    require msg.sender == owner
    if stor4.length <= requiredSignatures:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ValidatorCount cannot be < requiredSignatures'
    if not stor1[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot remove address that is not a validator'
    require stor4.length
    require ext_code.size(erc20TokenAddress)
    call erc20TokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require stor4.length
    idx = 0
    while idx < stor4.length:
        require sub_feb591da[address(stor4[idx])] + (eth.balance(this.address) / stor4.length) >= sub_feb591da[address(stor4[idx])]
        require idx < stor4.length
        sub_feb591da[address(stor4[idx])] += eth.balance(this.address) / stor4.length
        require sub_cc493abc[address(stor4[idx])] + (ext_call.return_data[0] / stor4.length) >= sub_cc493abc[address(stor4[idx])]
        require idx < stor4.length
        mem[0] = address(stor4[idx])
        mem[32] = 3
        sub_cc493abc[address(stor4[idx])] += ext_call.return_data[0] / stor4.length
        idx = idx + 1
        continue 
    require stor4.length - 1 < stor4.length
    if stor4.length <= 1:
        stor1[address(arg1)] = 0
        stor4.length--
        if stor4.length > stor4.length - 1:
            s = sha3(4) + stor4.length - 1
            while sha3(4) + stor4.length > stor4.length:
                stor4.length = 0
                s = stor4.length + 1
                continue 
    else:
        stor1[address(stor4[stor4.length])] = stor1[address(arg1)]
        require stor1[address(arg1)] - 1 < stor4.length
        address(stor4[stor1[address(arg1)]]) = address(stor4[stor4.length])
        stor1[address(arg1)] = 0
        stor4.length--
        if stor4.length > stor4.length - 1:
            idx = stor4.length - 1
            while stor4.length > idx:
                uint256(stor4[idx]) = 0
                idx = idx + 1
                continue 
    emit ValidatorRemoved(arg1);
}



}
