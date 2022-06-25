contract main {




// =====================  Runtime code  =====================


address tokenContractAddress;
address owner;
mapping of uint8 stor2;
mapping of uint256 sub_8384f829;
mapping of uint256 sub_2086a877;
uint256 sub_6f865e6f;
uint256 mintingAvailable;
uint8 stor7; offset 32
uint32 sub_48d8f78e;
uint256 stor7; offset 40

function sub_2086a877(?) {
    return sub_2086a877[arg1]
}

function sub_48d8f78e(?) {
    return sub_48d8f78e
}

function tokenContract() {
    return tokenContractAddress
}

function sub_6f865e6f(?) {
    return sub_6f865e6f
}

function sub_8384f829(?) {
    return sub_8384f829[arg1]
}

function mintingAvailable() {
    return mintingAvailable
}

function owner() {
    return owner
}

function sub_c2302e5e(?) {
    return bool(stor2[arg1])
}

function _fallback() payable {
    revert
}

function sub_c6863fe3(?) {
    require msg.sender == owner
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function getCoinAge(address arg1) {
    return (block.timestamp - sub_2086a877[address(arg1)])
}

function ceil(uint256 arg1, uint256 arg2) {
    require arg2
    return (arg1 + arg2 - 1 / arg2 * arg2)
}

function lockContract() {
    require msg.sender == owner
    Mask(216, 0, stor7.field_40) = 1
    return 1
}

function getMintingReward(address arg1) {
    require sub_48d8f78e
    require uint8(stor7.field_32)
    return (block.timestamp - sub_2086a877[address(arg1)] / sub_48d8f78e * sub_8384f829[address(msg.sender)] / uint8(stor7.field_32))
}

function stopMint() {
    require sub_2086a877[address(msg.sender)] <= block.timestamp
    require bool(stor2[address(msg.sender)]) == 1
    stor2[address(msg.sender)] = 0
    require sub_48d8f78e
    require uint8(stor7.field_32)
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_8384f829[address(msg.sender)] + (block.timestamp - sub_2086a877[address(msg.sender)] / sub_48d8f78e * sub_8384f829[address(msg.sender)] / uint8(stor7.field_32))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_8384f829[address(msg.sender)] = 0
}

function stopContract() {
    require msg.sender == owner
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function mint(uint256 arg1) payable {
    require sub_6f865e6f <= mintingAvailable
    require not stor2[address(msg.sender)]
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= uint8(stor7.field_32)
    require sub_2086a877[address(msg.sender)] <= block.timestamp
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor2[address(msg.sender)] = 1
    sub_8384f829[address(msg.sender)] = arg1
    sub_2086a877[address(msg.sender)] = block.timestamp
}



}
