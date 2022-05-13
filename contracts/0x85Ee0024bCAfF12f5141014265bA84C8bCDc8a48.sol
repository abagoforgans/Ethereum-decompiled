contract main {




// =====================  Runtime code  =====================


address owner;
address sub_d63605b8Address;
uint256 sub_ba4c0a93;
uint256 sub_1d7164f3;
mapping of address subscription;

function sub_1d7164f3(?) {
    return sub_1d7164f3
}

function getSubscription(bytes32 arg1, address arg2) {
    return subscription[arg1][address(arg2)]
}

function owner() {
    return owner
}

function sub_9d4597a3(?) {
    return subscription[arg1][arg2]
}

function sub_ba4c0a93(?) {
    return sub_ba4c0a93
}

function sub_d63605b8(?) {
    return sub_d63605b8Address
}

function _fallback() payable {
    emit 0xea2e1aa5: msg.sender, msg.value
}

function sub_717e2768(?) {
    return not not subscription[arg1][address(arg2)]
}

function sub_bf02a036(?) {
    return not not subscription[arg1][address(msg.sender)]
}

function sub_279717ad(?) {
    require msg.sender == owner
    sub_ba4c0a93 = arg1
    sub_1d7164f3 = arg2
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    require arg1 <= eth.balance(this.address)
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b63885b8(?) {
    require ext_code.size(sub_d63605b8Address)
    staticcall sub_d63605b8Address.0x5eedf3d7 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ((ext_call.return_data[0] * arg2) + (arg3 * arg4 * arg2))
}

function sub_67e4fe7e(?) {
    require ext_code.size(sub_d63605b8Address)
    staticcall sub_d63605b8Address.0x5eedf3d7 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ((ext_call.return_data[0] * arg2) + (arg3 * sub_1d7164f3 * arg2))
}

function sub_d24fb955(?) {
    require ext_code.size(sub_d63605b8Address)
    staticcall sub_d63605b8Address.0x5eedf3d7 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ((ext_call.return_data[0] * arg2) + (sub_ba4c0a93 * sub_1d7164f3 * arg2))
}

function sub_6cb78b32(?) payable {
    require ext_code.size(sub_d63605b8Address)
    staticcall sub_d63605b8Address.0xf4463db5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require not subscription[arg1][address(msg.sender)]
    create contract with callvalue wei
                    code: code.data[6744 len 2486], address(this.address), msg.sender, arg1, arg2, arg3, 0, 0, 0, 0
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x4348e08e: address(create.new_address), arg2, arg3, arg1, msg.sender
    subscription[arg1][address(msg.sender)] = address(create.new_address)
    return address(create.new_address)
}

function sub_805118e9(?) payable {
    require ext_code.size(sub_d63605b8Address)
    staticcall sub_d63605b8Address.0xf4463db5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require not subscription[arg1][address(msg.sender)]
    create contract with callvalue wei
                    code: code.data[6744 len 2486], address(this.address), msg.sender, arg1, arg2, sub_1d7164f3, 0, 0, 0, 0
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x4348e08e: address(create.new_address), arg2, sub_1d7164f3, arg1, msg.sender
    subscription[arg1][address(msg.sender)] = address(create.new_address)
    return address(create.new_address)
}

function sub_113c17a1(?) payable {
    require ext_code.size(sub_d63605b8Address)
    staticcall sub_d63605b8Address.0xf4463db5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require not subscription[arg1][address(msg.sender)]
    create contract with callvalue wei
                    code: code.data[6744 len 2486], address(this.address), msg.sender, arg1, sub_ba4c0a93, sub_1d7164f3, 0, 0, 0, 0
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x4348e08e: address(create.new_address), sub_ba4c0a93, sub_1d7164f3, arg1, msg.sender
    subscription[arg1][address(msg.sender)] = address(create.new_address)
    return address(create.new_address)
}

function sub_276cbdcf(?) payable {
    require ext_code.size(sub_d63605b8Address)
    staticcall sub_d63605b8Address.0xf4463db5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require not subscription[arg1][address(msg.sender)]
    create contract with callvalue wei
                    code: code.data[6744 len 2486], address(this.address), msg.sender, arg1, sub_ba4c0a93, sub_1d7164f3, arg2, arg3, arg4, arg5
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2:
        emit 0x9fbceb15: address(create.new_address), sub_ba4c0a93, sub_1d7164f3, arg2, arg3, arg4, arg5, arg1, msg.sender
    else:
        emit 0x4348e08e: address(create.new_address), sub_ba4c0a93, sub_1d7164f3, arg1, msg.sender
    subscription[arg1][address(msg.sender)] = address(create.new_address)
    return address(create.new_address)
}

function sub_e2d46fe5(?) {
    if not subscription[arg1][address(arg2)]:
        return 0
    require ext_code.size(subscription[arg1][address(arg2)])
    staticcall subscription[arg1][address(arg2)].callbackGasLimit() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(subscription[arg1][address(arg2)])
    staticcall subscription[arg1][address(arg2)].0xbf903247 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d63605b8Address)
    staticcall sub_d63605b8Address.0x5eedf3d7 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0])
    require ext_code.size(subscription[arg1][address(arg2)])
    staticcall subscription[arg1][address(arg2)].0xa26c1aa2 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(subscription[arg1][address(arg2)])
    staticcall subscription[arg1][address(arg2)].strikePrice() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(subscription[arg1][address(arg2)])
    staticcall subscription[arg1][address(arg2)].0x3ea4906e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(subscription[arg1][address(arg2)])
    staticcall subscription[arg1][address(arg2)].0x7fc7b9a4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return subscription[arg1][address(arg2)], 
           eth.balance(subscription[arg1][address(arg2)]),
           ext_call.return_data[0],
           ext_call.return_data[0],
           eth.balance(subscription[arg1][address(arg2)]) / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0]),
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0]
}

function sub_8b5180c0(?) {
    require ext_code.size(sub_d63605b8Address)
    staticcall sub_d63605b8Address.0xbaeb69a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require subscription[arg1][address(arg2)]
    require ext_code.size(subscription[arg1][address(arg2)])
    staticcall subscription[arg1][address(arg2)].callbackGasLimit() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(subscription[arg1][address(arg2)])
    staticcall subscription[arg1][address(arg2)].0xbf903247 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d63605b8Address)
    staticcall sub_d63605b8Address.0x5eedf3d7 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0])
    require ext_code.size(subscription[arg1][address(arg2)])
    staticcall subscription[arg1][address(arg2)].0xa26c1aa2 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(subscription[arg1][address(arg2)])
    staticcall subscription[arg1][address(arg2)].strikePrice() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(subscription[arg1][address(arg2)])
    staticcall subscription[arg1][address(arg2)].0x3ea4906e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(subscription[arg1][address(arg2)])
    staticcall subscription[arg1][address(arg2)].0x7fc7b9a4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require eth.balance(subscription[arg1][address(arg2)]) / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0]) >= 1
    require ext_code.size(arg2)
    call arg2.0x7260a34e with:
         gas gas_remaining wei
        args arg1, arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_d63605b8Address)
    staticcall sub_d63605b8Address.0x5eedf3d7 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(subscription[arg1][address(arg2)])
    call subscription[arg1][address(arg2)].takeFee(uint256 arg1) with:
         gas gas_remaining wei
        args (ext_call.return_data[0] + (sub_ba4c0a93 * sub_1d7164f3))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
