contract main {




// =====================  Runtime code  =====================


const RTOKEN_DECIMALS = 18


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor6; offset 160
uint128 stor6; offset 160
address owner;
address registryAddress;

function mintingFinished() {
    return bool(uint8(stor6.field_160))
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function registry() {
    return registryAddress
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
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
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function finishMinting() {
    require msg.sender == owner
    require not uint8(stor6.field_160)
    Mask(96, 0, stor6.field_160) = 1
    emit MintFinished()
    return 1
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function _service() {
    require ext_code.size(registryAddress)
    call registryAddress.0xd598d4c9 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor6.field_160)
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 >= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] = 0
    else:
        require arg2 <= allowance[address(msg.sender)][address(arg1)]
        allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function detectTransferRestriction(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(registryAddress)
    call registryAddress.0xd598d4c9 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x803fcd43 with:
         gas gas_remaining wei
        args 0, 0, 0, address(arg1), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[31 len 1]
}

function transfer(address arg1, uint256 arg2) {
    require msg.sender
    require arg1
    require ext_code.size(registryAddress)
    call registryAddress.0xd598d4c9 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x803fcd43 with:
         gas gas_remaining wei
        args 0, 0, msg.sender, msg.sender, arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit CheckStatus(ext_call.return_data[31 len 1], arg2, msg.sender, msg.sender, arg1);
    if uint8(ext_call.return_data[0]):
        return 0
    require arg2 <= balanceOf[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg1
    require arg2
    require ext_code.size(registryAddress)
    call registryAddress.0xd598d4c9 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x803fcd43 with:
         gas gas_remaining wei
        args 0, 0, msg.sender, address(arg1), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit CheckStatus(ext_call.return_data[31 len 1], arg3, msg.sender, arg1, arg2);
    if uint8(ext_call.return_data[0]):
        return 0
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function messageForTransferRestriction(uint8 arg1) {
    require ext_code.size(registryAddress)
    call registryAddress.0xd598d4c9 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0xd7fb8dc000000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xd7fb8dc0 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _8 = mem[96 len 4], uint8(arg1) << 216
    require mem[96 len 4], uint8(arg1) << 216 <= 4294967296
    require mem[96 len 4], uint8(arg1) << 216 + 32 <= return_data.size
    require mem[mem[96 len 4], uint8(arg1) << 216 + 96] <= 4294967296 and mem[96 len 4], uint8(arg1) << 216 + mem[mem[96 len 4], uint8(arg1) << 216 + 96] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_8 + 96]
    _12 = mem[_8 + 96]
    mem[ceil32(return_data.size) + 160 len ceil32(mem[_8 + 96])] = mem[_8 + 128 len ceil32(mem[_8 + 96])]
    if not _12 % 32:
        return 32, mem[ceil32(return_data.size) + 128 len _12 + 32]
    mem[floor32(_12) + ceil32(return_data.size) + 160] = mem[floor32(_12) + ceil32(return_data.size) + -(_12 % 32) + 192 len _12 % 32]
    return 32, mem[ceil32(return_data.size) + 128 len floor32(_12) + 64]
}



}
