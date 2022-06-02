contract main {




// =====================  Runtime code  =====================


address hubAddress;
uint256 sub_07f19651;
mapping of struct sub_56582bf9;

function sub_07f19651(?) {
    return sub_07f19651
}

function sub_2ba97595(?) {
    return bool(sub_56582bf9[address(arg1)].field_768)
}

function hub() {
    return hubAddress
}

function sub_56582bf9(?) {
    return sub_56582bf9[address(arg1)].field_1280
}

function sub_5ffe0282(?) {
    return sub_56582bf9[address(arg1)].field_256
}

function getStake(address arg1) {
    return sub_56582bf9[address(arg1)].field_0
}

function sub_9344ea6e(?) {
    return sub_56582bf9[address(arg1)].field_1024
}

function getReputation(address arg1) {
    return sub_56582bf9[address(arg1)].field_512
}

function profile(address arg1) {
    return sub_56582bf9[arg1].field_0, 
           sub_56582bf9[arg1].field_256,
           sub_56582bf9[arg1].field_512,
           bool(sub_56582bf9[arg1].field_768),
           sub_56582bf9[arg1].field_1024,
           sub_56582bf9[arg1].field_1280,
           sub_56582bf9[arg1].field_1536
}

function sub_b56e4129(?) {
    return sub_56582bf9[address(arg1)].field_1536
}

function _fallback() payable {
    revert
}

function sub_c7eb4522(?) {
    require ext_code.size(hubAddress)
    call hubAddress.0x16279055 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function can only be called by ontracts!'
    hubAddress = arg1
}

function sub_48fd564b(?) {
    require ext_code.size(hubAddress)
    call hubAddress.0x16279055 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function can only be called by ontracts!'
    sub_07f19651 = arg1
}

function sub_50c3ff57(?) {
    require ext_code.size(hubAddress)
    call hubAddress.0x16279055 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function can only be called by ontracts!'
    sub_56582bf9[address(arg1)].field_256 = arg2
}

function sub_67b6d271(?) {
    require ext_code.size(hubAddress)
    call hubAddress.0x16279055 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function can only be called by ontracts!'
    sub_56582bf9[address(arg1)].field_1024 = arg2
}

function sub_7fdc3676(?) {
    require ext_code.size(hubAddress)
    call hubAddress.0x16279055 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function can only be called by ontracts!'
    sub_56582bf9[address(arg1)].field_1536 = arg2
}

function sub_82aa2928(?) {
    require ext_code.size(hubAddress)
    call hubAddress.0x16279055 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function can only be called by ontracts!'
    sub_56582bf9[address(arg1)].field_1280 = arg2
}

function sub_9385067f(?) {
    require ext_code.size(hubAddress)
    call hubAddress.0x16279055 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function can only be called by ontracts!'
    sub_56582bf9[address(arg1)].field_768 = uint8(arg2)
}

function setStake(address arg1, uint256 arg2) {
    require ext_code.size(hubAddress)
    call hubAddress.0x16279055 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function can only be called by ontracts!'
    sub_56582bf9[address(arg1)].field_0 = arg2
}

function setReputation(address arg1, uint256 arg2) {
    require ext_code.size(hubAddress)
    call hubAddress.0x16279055 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function can only be called by ontracts!'
    sub_56582bf9[address(arg1)].field_512 = arg2
}

function sub_a6748ef5(?) {
    require ext_code.size(hubAddress)
    call hubAddress.0x16279055 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function can only be called by ontracts!'
    sub_56582bf9[address(arg1)].field_256 += 3 * arg5
    sub_56582bf9[arg2].field_256 += arg5
    sub_56582bf9[arg3].field_256 += arg5
    sub_56582bf9[arg4].field_256 += arg5
}

function transferTokens(address arg1, uint256 arg2) {
    require ext_code.size(hubAddress)
    call hubAddress.0x16279055 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function can only be called by ontracts!'
    require ext_code.size(hubAddress)
    call hubAddress.0x9d76ea58 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
