contract main {




// =====================  Runtime code  =====================


const name = 'MOBU token'

const decimals = 18

const symbol = 'MOBU'


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address rightAndRolesAddress;
mapping of uint8 stor4;
uint8 stor5;
mapping of struct stor6;
uint256 totalMigrated;
address migrationAgentAddress;

function totalSupply() {
    return totalSupply
}

function paused() {
    return bool(stor5)
}

function rightAndRoles() {
    return rightAndRolesAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function migrationAgent() {
    return migrationAgentAddress
}

function totalMigrated() {
    return totalMigrated
}

function unpausedWallet(address arg1) {
    return bool(stor4[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function defrostDate(address arg1) {
    if block.timestamp <= stor6[address(arg1)].field_256:
        return stor6[address(arg1)].field_256
    else:
        return 0
}

function freezedTokenOf(address arg1) {
    if block.timestamp <= stor6[address(arg1)].field_256:
        return stor6[address(arg1)].field_0
    else:
        return 0
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function setUnpausedWallet(address arg1, bool arg2) {
    require ext_code.size(rightAndRolesAddress)
    call rightAndRolesAddress.onlyRoles(address arg1, uint16 arg2) with:
         gas gas_remaining wei
        args msg.sender, 3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    stor4[address(arg1)] = uint8(arg2)
}

function setMigrationAgent(address arg1) {
    require ext_code.size(rightAndRolesAddress)
    call rightAndRolesAddress.onlyRoles(address arg1, uint16 arg2) with:
         gas gas_remaining wei
        args msg.sender, 6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require not totalMigrated
    migrationAgentAddress = arg1
}

function freezeTokens(address arg1, uint256 arg2, uint256 arg3) {
    require ext_code.size(rightAndRolesAddress)
    call rightAndRolesAddress.onlyRoles(address arg1, uint16 arg2) with:
         gas gas_remaining wei
        args msg.sender, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    stor6[address(arg1)].field_0 = arg2
    stor6[address(arg1)].field_256 = arg3
}

function mint(address arg1, uint256 arg2) {
    require ext_code.size(rightAndRolesAddress)
    call rightAndRolesAddress.onlyRoles(address arg1, uint16 arg2) with:
         gas gas_remaining wei
        args msg.sender, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function markTokens(address arg1, uint256 arg2) {
    require ext_code.size(rightAndRolesAddress)
    call rightAndRolesAddress.onlyRoles(address arg1, uint16 arg2) with:
         gas gas_remaining wei
        args msg.sender, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit TokensMarked(arg2, arg1);
    emit Transfer(arg2, arg1, 0);
}

function setPause(bool arg1) {
    require ext_code.size(rightAndRolesAddress)
    call rightAndRolesAddress.onlyRoles(address arg1, uint16 arg2) with:
         gas gas_remaining wei
        args msg.sender, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if stor5:
        if not arg1:
            stor5 = 0
            emit Unpause()
    else:
        if arg1:
            stor5 = 1
            emit Pause()
        else:
            if stor5:
                if not arg1:
                    stor5 = 0
                    emit Unpause()
}

function transferTokens(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(rightAndRolesAddress)
    call rightAndRolesAddress.onlyRoles(address arg1, uint16 arg2) with:
         gas gas_remaining wei
        args msg.sender, 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function migrate() {
    require balanceOf[msg.sender] > 0
    require migrationAgentAddress
    balanceOf[address(msg.sender)] = 0
    require balanceOf[address(msg.sender)] <= totalSupply
    totalSupply -= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] + totalMigrated >= totalMigrated
    totalMigrated += balanceOf[address(msg.sender)]
    require ext_code.size(migrationAgentAddress)
    call migrationAgentAddress.migrateFrom(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, balanceOf[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Migrate(balanceOf[address(msg.sender)], msg.sender, migrationAgentAddress);
}

function transfer(address arg1, uint256 arg2) {
    if block.timestamp <= stor6[address(msg.sender)].field_256:
        require arg2 + stor6[address(msg.sender)].field_0 >= stor6[address(msg.sender)].field_0
        require balanceOf[address(msg.sender)] >= arg2 + stor6[address(msg.sender)].field_0
    else:
        require arg2 >= 0
        require balanceOf[address(msg.sender)] >= arg2
    if stor5:
        if not stor4[msg.sender]:
            require stor4[address(arg1)]
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if block.timestamp <= stor6[address(arg1)].field_256:
        require arg3 + stor6[address(arg1)].field_0 >= stor6[address(arg1)].field_0
        require balanceOf[address(arg1)] >= arg3 + stor6[address(arg1)].field_0
    else:
        require arg3 >= 0
        require balanceOf[address(arg1)] >= arg3
    if stor5:
        if not stor4[msg.sender]:
            require stor4[address(arg2)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transferAndFreeze(address arg1, uint256 arg2, uint256 arg3) {
    require stor4[msg.sender]
    if block.timestamp <= stor6[address(arg1)].field_256:
        require not stor6[address(arg1)].field_0
    if arg3 > 0:
        stor6[address(arg1)].field_0 = arg2
        stor6[address(arg1)].field_256 = arg3
    if block.timestamp <= stor6[address(msg.sender)].field_256:
        require arg2 + stor6[address(msg.sender)].field_0 >= stor6[address(msg.sender)].field_0
        require balanceOf[address(msg.sender)] >= arg2 + stor6[address(msg.sender)].field_0
    else:
        require arg2 >= 0
        require balanceOf[address(msg.sender)] >= arg2
    if stor5:
        if not stor4[msg.sender]:
            require stor4[address(arg1)]
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function migrateAll(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 132] = msg.sender
    require ext_code.size(rightAndRolesAddress)
    call rightAndRolesAddress.onlyRoles(address arg1, uint16 arg2) with:
         gas gas_remaining wei
        args msg.sender, 6
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _16 = mem[(32 * idx) + 128]
        require migrationAgentAddress
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        balanceOf[mem[(32 * idx) + 140 len 20]] = 0
        require balanceOf[mem[(32 * idx) + 140 len 20]] <= totalSupply
        totalSupply -= balanceOf[mem[(32 * idx) + 140 len 20]]
        require balanceOf[mem[(32 * idx) + 140 len 20]] + totalMigrated >= totalMigrated
        totalMigrated += balanceOf[mem[(32 * idx) + 140 len 20]]
        mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + 164] = balanceOf[mem[0]]
        require ext_code.size(migrationAgentAddress)
        call migrationAgentAddress.migrateFrom(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + 132], balanceOf[mem[0]]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + 128] = balanceOf[mem[0]]
        emit Migrate(balanceOf[mem[0]], address(_16), migrationAgentAddress);
        idx = idx + 1
        continue 
}

function masFreezedTokens(address[] arg1, uint256[] arg2, uint256[] arg3) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 196] = msg.sender
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 228] = 3
    require ext_code.size(rightAndRolesAddress)
    call rightAndRolesAddress.onlyRoles(address arg1, uint16 arg2) with:
         gas gas_remaining wei
        args msg.sender, 3
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg1.length == arg2.length
    require arg1.length == arg3.length
    s = 0
    idx = 0
    while uint16(idx) < arg1.length:
        require uint16(idx) < arg3.length
        require mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(idx)) + 192] < 432635 * 3600
        require uint16(idx) < arg1.length
        mem[0] = mem[(32 * uint16(idx)) + 140 len 20]
        mem[32] = 6
        require uint16(idx) < arg2.length
        stor6[mem[(32 * uint16(idx)) + 140 len 20]].field_0 = mem[(32 * arg1.length) + (32 * uint16(idx)) + 160]
        require uint16(idx) < arg3.length
        stor6[mem[(32 * uint16(idx)) + 140 len 20]].field_256 = mem[(32 * uint16(idx)) + (32 * arg2.length) + (32 * arg1.length) + 192]
        s = sha3(mem[(32 * uint16(idx)) + 140 len 20], 6)
        idx = idx + 1
        continue 
}



}
