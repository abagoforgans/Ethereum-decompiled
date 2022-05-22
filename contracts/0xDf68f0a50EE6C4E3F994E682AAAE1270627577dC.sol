contract main {




// =====================  Runtime code  =====================


address sub_6f2436ccAddress;
array of uint256 name;
array of uint256 description;
mapping of uint256 sub_4ccf9e93;

function name() {
    return name[0 len name.length]
}

function supply(uint256 arg1) {
    return sub_4ccf9e93[arg1]
}

function sub_4ccf9e93(?) {
    return sub_4ccf9e93[arg1]
}

function sub_6f2436cc(?) {
    return sub_6f2436ccAddress
}

function description() {
    return description[0 len description.length]
}

function _fallback() payable {
    revert
}

function supportsInterface(bytes4 arg1) {
    if 0x74793a1500000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0x9aa2f28300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function register(uint256 arg1, uint256 arg2) {
    require ext_code.size(sub_6f2436ccAddress)
    call sub_6f2436ccAddress.0x42f6b6ce with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'contract'
    sub_4ccf9e93[arg1] = arg2
}

function setValue(uint256 arg1, uint256 arg2) {
    require ext_code.size(sub_6f2436ccAddress)
    call sub_6f2436ccAddress.0x42f6b6ce with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).isCreatorOf(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'creator'
    sub_4ccf9e93[arg1] = arg2
}



}
