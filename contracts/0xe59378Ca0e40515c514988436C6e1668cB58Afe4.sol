contract main {




// =====================  Runtime code  =====================


address owner;
array of address sub_75589792;
mapping of uint256 sub_56798631;
address sub_2848eeb8Address;

function sub_2848eeb8(?) {
    return sub_2848eeb8Address
}

function sub_56798631(?) {
    return sub_56798631[arg1]
}

function sub_75589792(?) {
    require arg1 < sub_75589792.length
    return sub_75589792[arg1]
}

function owner() {
    return owner
}

function isOwner(address arg1) {
    return (arg1 == owner)
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposited(msg.value, msg.sender);
}

function sub_2c4df734(?) {
    require msg.sender == owner
    require arg1
    sub_2848eeb8Address = arg1
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

function removeExecutor(address arg1) {
    require msg.sender == owner
    require sub_56798631[address(arg1)] < sub_75589792.length
    sub_75589792[stor2[address(arg1)]] = 0
}

function isExecutor(address arg1) {
    if not sub_75589792.length:
        return 0
    require sub_56798631[address(arg1)] < sub_75589792.length
    return (sub_75589792[stor2[address(arg1)]] == arg1)
}

function sub_7e804c2b(?) {
    if arg1 == owner:
        return True
    if not sub_75589792.length:
        return 0
    require sub_56798631[address(arg1)] < sub_75589792.length
    return (sub_75589792[stor2[address(arg1)]] == arg1)
}

function sub_49bbb0b9(?) {
    require msg.sender == owner
    require arg1
    if eth.balance(this.address):
        call arg1 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function withdrawEth(address arg1) {
    require msg.sender == owner
    require arg1
    if eth.balance(this.address):
        call arg1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function addExecutor(address arg1) {
    require msg.sender == owner
    require arg1 != owner
    if sub_75589792.length:
        require sub_56798631[address(arg1)] < sub_75589792.length
        require sub_75589792[stor2[address(arg1)]] != arg1
    sub_75589792.length++
    sub_75589792[sub_75589792.length] = arg1
    sub_56798631[address(arg1)] = sub_75589792.length - 1
}

function createForwarder() {
    if owner != msg.sender:
        require sub_75589792.length
        require sub_56798631[address(msg.sender)] < sub_75589792.length
        require sub_75589792[stor2[address(msg.sender)]] == msg.sender
    create contract with 0 wei
                    code: code.data[5581 len 2475]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xca24a59d: msg.sender, address(create.new_address)
    return address(create.new_address)
}

function sub_4e83d9dd(?) {
    require msg.sender == owner
    require arg2
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function withdrawTokens(address arg1, address arg2) {
    require msg.sender == owner
    require arg2
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
