contract main {




// =====================  Runtime code  =====================


address owner;
address WETHAddress;
array of address sub_07f9b074;

function sub_07f9b074(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_07f9b074.length
    return sub_07f9b074[arg1]
}

function owner() {
    return owner
}

function WETH() {
    return WETHAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function reclaimToken(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_14c5bd30(?) payable {
    require msg.value > 0
    require ext_code.size(WETHAddress)
    call WETHAddress.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    create contract with 0 wei
                    code: code.data[4224 len 5911], owner, WETHAddress
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(WETHAddress)
    call WETHAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(create.new_address), msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    sub_07f9b074.length++
    sub_07f9b074[sub_07f9b074.length] = address(create.new_address)
    emit 0x1173dd01: address(create.new_address), WETHAddress, msg.value
    return address(create.new_address)
}

function sub_fcafae11(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        emit 0xfd19505c: 0
        return 0
    require ext_code.size(arg1)
    call arg1.0xdd62ed3e with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        emit 0xfd19505c: 0
        return 0
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    create contract with 0 wei
                    code: code.data[4224 len 5911], owner, WETHAddress
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(create.new_address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    sub_07f9b074.length++
    sub_07f9b074[sub_07f9b074.length] = address(create.new_address)
    emit 0x1173dd01: address(create.new_address), address(arg1), arg2
    return address(create.new_address)
}



}
