contract main {




// =====================  Runtime code  =====================


address sub_6f2436ccAddress;
array of uint256 name;
array of uint256 description;
mapping of uint256 totalSupply;
mapping of uint256 value;

function name() {
    return name[0 len name.length]
}

function sub_6f2436cc(?) {
    return sub_6f2436ccAddress
}

function description() {
    return description[0 len description.length]
}

function totalSupply(uint256 arg1) {
    return totalSupply[arg1]
}

function value(uint256 arg1) {
    return value[arg1]
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
    totalSupply[arg1] = arg2
}

function sub_4ccf9e93(?) {
    require arg2 <= block.timestamp
    if not value[arg1]:
        if totalSupply[arg1] >= totalSupply[arg1]:
            return totalSupply[arg1]
    else:
        if (block.timestamp * value[arg1]) - (arg2 * value[arg1]) / value[arg1] == block.timestamp - arg2:
            if ((block.timestamp * value[arg1]) - (arg2 * value[arg1]) / 8760 * 24 * 3600) + totalSupply[arg1] >= totalSupply[arg1]:
                return (((block.timestamp * value[arg1]) - (arg2 * value[arg1]) / 8760 * 24 * 3600) + totalSupply[arg1])
    revert
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
    if value[arg1]:
        revert with 0, 'range'
    if arg2 >= 10000 * 10^18:
        revert with 0, 'range'
    value[arg1] = arg2
}



}
