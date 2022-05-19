contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address bounty0xTokenAddress;
mapping of uint256 balances;
mapping of uint256 stakes;
address bntyControllerAddress;

function balances(address arg1) {
    return balances[arg1]
}

function bntyController() {
    return bntyControllerAddress
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function owner() {
    return owner
}

function stakes(uint256 arg1, address arg2) {
    return stakes[arg1][arg2]
}

function Bounty0xToken() {
    return bounty0xTokenAddress
}

function _fallback() payable {
    revert
}

function changeBntyController(address arg1) {
    require msg.sender == owner
    bntyControllerAddress = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function stake(uint256 arg1, uint256 arg2) {
    require not uint8(stor0.field_160)
    require balances[address(msg.sender)] >= arg2
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require stakes[arg1][address(msg.sender)] + arg2 >= stakes[arg1][address(msg.sender)]
    stakes[arg1][address(msg.sender)] += arg2
    emit Stake(msg.sender, arg2, arg1);
}

function releaseStake(uint256 arg1, address arg2, address arg3, uint256 arg4) {
    require msg.sender == owner
    require stakes[arg1][address(arg2)] >= arg4
    require arg4 <= stakes[arg1][address(arg2)]
    stakes[arg1][address(arg2)] -= arg4
    require balances[address(arg3)] + arg4 >= balances[address(arg3)]
    balances[address(arg3)] += arg4
    emit StakeReleased(address(arg2), address(arg3), arg4, arg1);
}

function withdraw(uint256 arg1) {
    require not uint8(stor0.field_160)
    require balances[address(msg.sender)] >= arg1
    require arg1 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg1
    require ext_code.size(bounty0xTokenAddress)
    call bounty0xTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Withdraw(arg1, balances[address(msg.sender)], msg.sender);
}

function deposit(uint256 arg1) {
    require not uint8(stor0.field_160)
    require ext_code.size(bounty0xTokenAddress)
    call bounty0xTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require balances[address(msg.sender)] + arg1 >= balances[address(msg.sender)]
    balances[address(msg.sender)] += arg1
    emit Deposit(arg1, balances[address(msg.sender)], msg.sender);
}

function burnStake(uint256 arg1, address arg2) {
    require msg.sender == owner
    require stakes[arg1][address(arg2)] > 0
    stakes[arg1][address(arg2)] = 0
    require ext_code.size(bntyControllerAddress)
    call bntyControllerAddress.destroyTokensInBntyTokenContract(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), stakes[arg1][address(arg2)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Burn(address(arg2), stakes[arg1][address(arg2)], arg1);
}

function releaseManyStakes(uint256[] arg1, address[] arg2, address[] arg3, uint256[] arg4) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require msg.sender == owner
    require arg1.length == arg2.length
    require arg1.length == arg3.length
    require arg1.length == arg4.length
    idx = 0
    while idx < arg1.length:
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
        require idx < mem[96]
        require idx < mem[(32 * arg1.length) + 128]
        require stakes[mem[(32 * idx) + 128]][mem[(32 * idx) + (32 * arg1.length) + 172 len 20]] >= mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
        require idx < mem[96]
        require idx < mem[(32 * arg1.length) + 128]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
        require mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] <= stakes[mem[(32 * idx) + 128]][mem[(32 * idx) + (32 * arg1.length) + 172 len 20]]
        require idx < mem[96]
        require idx < mem[(32 * arg1.length) + 128]
        stakes[mem[(32 * idx) + 128]][mem[(32 * idx) + (32 * arg1.length) + 172 len 20]] -= mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
        require balances[mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]] + mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] >= balances[mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        mem[0] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]
        mem[32] = 2
        balances[mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]] += mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
        require idx < mem[96]
        _84 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _88 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
        _90 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
        mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
        mem[mem[64] + 32] = address(_88)
        mem[mem[64] + 64] = _90
        emit StakeReleased(mem[mem[64]], address(_88), _90, _84);
        idx = idx + 1
        continue 
}

function stakeToMany(uint256[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require not uint8(stor0.field_160)
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        require s + mem[(32 * idx) + (32 * arg1.length) + 160] >= s
        idx = idx + 1
        s = s + mem[(32 * idx) + (32 * arg1.length) + 160]
        continue 
    require balances[address(msg.sender)] >= s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length
    require s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length <= balances[address(msg.sender)]
    balances[address(msg.sender)] += -1 * s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        require stakes[mem[(32 * idx) + 128]][address(msg.sender)] + mem[(32 * idx) + (32 * arg1.length) + 160] >= stakes[mem[(32 * idx) + 128]][address(msg.sender)]
        require idx < arg1.length
        mem[0] = msg.sender
        mem[32] = sha3(mem[(32 * idx) + 128], 3)
        stakes[mem[(32 * idx) + 128]][address(msg.sender)] += mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        _61 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _63 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = msg.sender
        mem[(32 * arg1.length) + (32 * arg2.length) + 192] = _63
        emit Stake(msg.sender, _63, _61);
        idx = idx + 1
        continue 
}



}
