contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
mapping of uint256 stor5;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    bool(stor1.length) = 0
    stor1.length.field_1 = 10
    stor1.length.field_8 = 'VIP Tokens' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = 'VIP' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 18
    address(stor0.field_0) = msg.sender
    stor4 = 300 * 10^6 * 10^18
    stor5[address(msg.sender)] = stor4
    emit Transfer(stor4, 0, msg.sender);
    return code.data[558 len 4444]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balances;
mapping of uint256 allowance;
mapping of struct frozenAccount;
address migrationAgentAddress;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function stopped() {
    return bool(uint8(stor0.field_160))
}

function migrationAgent() {
    return migrationAgentAddress
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return frozenAccount[arg1].field_0, 
           frozenAccount[arg1].field_256,
           frozenAccount[arg1].field_512,
           frozenAccount[arg1].field_768,
           bool(frozenAccount[arg1].field_1024)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function close() {
    require owner == msg.sender
    selfdestruct(owner)
}

function setMigrationAgent(address arg1) {
    require owner == msg.sender
    migrationAgentAddress = arg1
    emit UpgradeAgentSet(arg1);
}

function toggleContractActive() {
    require owner == msg.sender
    Mask(96, 0, stor0.field_160) = Mask(96, 0, not uint8(stor0.field_160))
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    require owner != arg1
    emit OwnerUpdate(owner, arg1);
    owner = arg1
}

function migrate() {
    require migrationAgentAddress
    require balances[address(msg.sender)] <= balances[address(msg.sender)]
    balances[address(msg.sender)] = 0
    require balances[address(msg.sender)] <= totalSupply
    totalSupply -= balances[address(msg.sender)]
    require ext_code.size(migrationAgentAddress)
    call migrationAgentAddress.migrateFrom(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, balances[address(msg.sender)]
    require ext_call.success
    emit Upgrade(balances[address(msg.sender)], msg.sender, migrationAgentAddress);
}

function _fallback() payable {
    require migrationAgentAddress
    require balances[address(msg.sender)] > 0
    require migrationAgentAddress
    require balances[address(msg.sender)] <= balances[address(msg.sender)]
    balances[address(msg.sender)] = 0
    require balances[address(msg.sender)] <= totalSupply
    totalSupply -= balances[address(msg.sender)]
    require ext_code.size(migrationAgentAddress)
    call migrationAgentAddress.migrateFrom(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, balances[address(msg.sender)]
    require ext_call.success
    emit Upgrade(balances[address(msg.sender)], msg.sender, migrationAgentAddress);
    call msg.sender with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor0.field_160)
    require 68 == calldata.size
    if not frozenAccount[address(msg.sender)].field_1024:
        require balances[address(msg.sender)] >= arg2
    else:
        if block.timestamp < frozenAccount[address(msg.sender)].field_256:
            require balances[address(msg.sender)] - frozenAccount[address(msg.sender)].field_0 >= arg2
        else:
            require frozenAccount[address(msg.sender)].field_512
            require frozenAccount[address(msg.sender)].field_0 <= balances[address(msg.sender)]
            if frozenAccount[address(msg.sender)].field_768 + (block.timestamp - frozenAccount[address(msg.sender)].field_256 / frozenAccount[address(msg.sender)].field_512 * frozenAccount[address(msg.sender)].field_768) > 100:
                frozenAccount[address(msg.sender)].field_1024 = 0
                frozenAccount[address(msg.sender)].field_0 = 0
                frozenAccount[address(msg.sender)].field_256 = 0
                frozenAccount[address(msg.sender)].field_512 = 0
                frozenAccount[address(msg.sender)].field_768 = 0
                require balances[address(msg.sender)] >= arg2
            else:
                if frozenAccount[address(msg.sender)].field_768 + (block.timestamp - frozenAccount[address(msg.sender)].field_256 / frozenAccount[address(msg.sender)].field_512 * frozenAccount[address(msg.sender)].field_768) >= 100:
                    frozenAccount[address(msg.sender)].field_1024 = 0
                    frozenAccount[address(msg.sender)].field_0 = 0
                    frozenAccount[address(msg.sender)].field_256 = 0
                    frozenAccount[address(msg.sender)].field_512 = 0
                    frozenAccount[address(msg.sender)].field_768 = 0
                require balances[address(msg.sender)] - ((100 * frozenAccount[address(msg.sender)].field_0) - (frozenAccount[address(msg.sender)].field_768 * frozenAccount[address(msg.sender)].field_0) - (block.timestamp - frozenAccount[address(msg.sender)].field_256 / frozenAccount[address(msg.sender)].field_512 * frozenAccount[address(msg.sender)].field_768 * frozenAccount[address(msg.sender)].field_0) / 100) >= arg2
    require arg1
    require arg1 != msg.sender
    require arg2 > 0
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require arg2 + balances[arg1] >= balances[arg1]
    balances[address(arg1)] = arg2 + balances[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function freezeAccount(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require owner == msg.sender
    if not frozenAccount[address(arg1)].field_1024:
        require balances[address(arg1)] >= 0
    else:
        if block.timestamp < frozenAccount[address(arg1)].field_256:
            require balances[address(arg1)] - frozenAccount[address(arg1)].field_0 >= 0
        else:
            require frozenAccount[address(arg1)].field_512
            require frozenAccount[address(arg1)].field_0 <= balances[address(arg1)]
            if frozenAccount[address(arg1)].field_768 + (block.timestamp - frozenAccount[address(arg1)].field_256 / frozenAccount[address(arg1)].field_512 * frozenAccount[address(arg1)].field_768) > 100:
                frozenAccount[address(arg1)].field_1024 = 0
                frozenAccount[address(arg1)].field_0 = 0
                frozenAccount[address(arg1)].field_256 = 0
                frozenAccount[address(arg1)].field_512 = 0
                frozenAccount[address(arg1)].field_768 = 0
                require balances[address(arg1)] >= 0
            else:
                if frozenAccount[address(arg1)].field_768 + (block.timestamp - frozenAccount[address(arg1)].field_256 / frozenAccount[address(arg1)].field_512 * frozenAccount[address(arg1)].field_768) >= 100:
                    frozenAccount[address(arg1)].field_1024 = 0
                    frozenAccount[address(arg1)].field_0 = 0
                    frozenAccount[address(arg1)].field_256 = 0
                    frozenAccount[address(arg1)].field_512 = 0
                    frozenAccount[address(arg1)].field_768 = 0
                require balances[address(arg1)] - ((100 * frozenAccount[address(arg1)].field_0) - (frozenAccount[address(arg1)].field_768 * frozenAccount[address(arg1)].field_0) - (block.timestamp - frozenAccount[address(arg1)].field_256 / frozenAccount[address(arg1)].field_512 * frozenAccount[address(arg1)].field_768 * frozenAccount[address(arg1)].field_0) / 100) >= 0
    require arg2 > 0
    require not frozenAccount[address(arg1)].field_1024
    require balances[address(msg.sender)] >= arg2
    require arg3 > block.timestamp
    require arg5 > 0
    require arg6 > 0
    require arg6 <= 100
    if 5 == arg4:
        if arg5:
            require arg5
            require 8760 * 24 * 3600 * arg5 / arg5 == 8760 * 24 * 3600
        frozenAccount[address(arg1)].field_0 = arg2
        frozenAccount[address(arg1)].field_256 = arg3
        frozenAccount[address(arg1)].field_512 = 8760 * 24 * 3600 * arg5
    else:
        if 4 == arg4:
            if arg5:
                require arg5
                require 24 * 3600 * arg5 / arg5 == 24 * 3600
            frozenAccount[address(arg1)].field_0 = arg2
            frozenAccount[address(arg1)].field_256 = arg3
            frozenAccount[address(arg1)].field_512 = 24 * 3600 * arg5
        else:
            if 3 == arg4:
                if arg5:
                    require arg5
                    require 3600 * arg5 / arg5 == 3600
                frozenAccount[address(arg1)].field_0 = arg2
                frozenAccount[address(arg1)].field_256 = arg3
                frozenAccount[address(arg1)].field_512 = 3600 * arg5
            else:
                if arg4 != 2:
                    require 1 == arg4
                    frozenAccount[address(arg1)].field_0 = arg2
                    frozenAccount[address(arg1)].field_256 = arg3
                    frozenAccount[address(arg1)].field_512 = arg5
                else:
                    if arg5:
                        require arg5
                        require 60 * arg5 / arg5 == 60
                    frozenAccount[address(arg1)].field_0 = arg2
                    frozenAccount[address(arg1)].field_256 = arg3
                    frozenAccount[address(arg1)].field_512 = 60 * arg5
    frozenAccount[address(arg1)].field_768 = arg6
    frozenAccount[address(arg1)].field_1024 = 1
    emit FrozenFunds(arg2, arg3, arg4, arg5, arg6, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor0.field_160)
    if not frozenAccount[address(arg1)].field_1024:
        require balances[address(arg1)] >= arg3
    else:
        if block.timestamp < frozenAccount[address(arg1)].field_256:
            require balances[address(arg1)] - frozenAccount[address(arg1)].field_0 >= arg3
        else:
            require frozenAccount[address(arg1)].field_512
            require frozenAccount[address(arg1)].field_0 <= balances[address(arg1)]
            if frozenAccount[address(arg1)].field_768 + (block.timestamp - frozenAccount[address(arg1)].field_256 / frozenAccount[address(arg1)].field_512 * frozenAccount[address(arg1)].field_768) > 100:
                frozenAccount[address(arg1)].field_1024 = 0
                frozenAccount[address(arg1)].field_0 = 0
                frozenAccount[address(arg1)].field_256 = 0
                frozenAccount[address(arg1)].field_512 = 0
                frozenAccount[address(arg1)].field_768 = 0
                require balances[address(arg1)] >= arg3
            else:
                if frozenAccount[address(arg1)].field_768 + (block.timestamp - frozenAccount[address(arg1)].field_256 / frozenAccount[address(arg1)].field_512 * frozenAccount[address(arg1)].field_768) >= 100:
                    frozenAccount[address(arg1)].field_1024 = 0
                    frozenAccount[address(arg1)].field_0 = 0
                    frozenAccount[address(arg1)].field_256 = 0
                    frozenAccount[address(arg1)].field_512 = 0
                    frozenAccount[address(arg1)].field_768 = 0
                require balances[address(arg1)] - ((100 * frozenAccount[address(arg1)].field_0) - (frozenAccount[address(arg1)].field_768 * frozenAccount[address(arg1)].field_0) - (block.timestamp - frozenAccount[address(arg1)].field_256 / frozenAccount[address(arg1)].field_512 * frozenAccount[address(arg1)].field_768 * frozenAccount[address(arg1)].field_0) / 100) >= arg3
    require arg3 > 0
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balances[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if not frozenAccount[address(arg1)].field_1024:
        require balances[address(arg1)] >= arg3
    else:
        if block.timestamp < frozenAccount[address(arg1)].field_256:
            require balances[address(arg1)] - frozenAccount[address(arg1)].field_0 >= arg3
        else:
            require frozenAccount[address(arg1)].field_512
            require frozenAccount[address(arg1)].field_0 <= balances[address(arg1)]
            if frozenAccount[address(arg1)].field_768 + (block.timestamp - frozenAccount[address(arg1)].field_256 / frozenAccount[address(arg1)].field_512 * frozenAccount[address(arg1)].field_768) > 100:
                frozenAccount[address(arg1)].field_1024 = 0
                frozenAccount[address(arg1)].field_0 = 0
                frozenAccount[address(arg1)].field_256 = 0
                frozenAccount[address(arg1)].field_512 = 0
                frozenAccount[address(arg1)].field_768 = 0
                require balances[address(arg1)] >= arg3
            else:
                if frozenAccount[address(arg1)].field_768 + (block.timestamp - frozenAccount[address(arg1)].field_256 / frozenAccount[address(arg1)].field_512 * frozenAccount[address(arg1)].field_768) >= 100:
                    frozenAccount[address(arg1)].field_1024 = 0
                    frozenAccount[address(arg1)].field_0 = 0
                    frozenAccount[address(arg1)].field_256 = 0
                    frozenAccount[address(arg1)].field_512 = 0
                    frozenAccount[address(arg1)].field_768 = 0
                require balances[address(arg1)] - ((100 * frozenAccount[address(arg1)].field_0) - (frozenAccount[address(arg1)].field_768 * frozenAccount[address(arg1)].field_0) - (block.timestamp - frozenAccount[address(arg1)].field_256 / frozenAccount[address(arg1)].field_512 * frozenAccount[address(arg1)].field_768 * frozenAccount[address(arg1)].field_0) / 100) >= arg3
    require arg2
    require arg2 != arg1
    require arg3 > 0
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require arg3 + balances[arg2] >= balances[arg2]
    balances[address(arg2)] = arg3 + balances[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transferAndFreeze(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require owner == msg.sender
    if not frozenAccount[address(arg1)].field_1024:
        require balances[address(arg1)] >= 0
    else:
        if block.timestamp < frozenAccount[address(arg1)].field_256:
            require balances[address(arg1)] - frozenAccount[address(arg1)].field_0 >= 0
        else:
            require frozenAccount[address(arg1)].field_512
            require frozenAccount[address(arg1)].field_0 <= balances[address(arg1)]
            if frozenAccount[address(arg1)].field_768 + (block.timestamp - frozenAccount[address(arg1)].field_256 / frozenAccount[address(arg1)].field_512 * frozenAccount[address(arg1)].field_768) > 100:
                frozenAccount[address(arg1)].field_1024 = 0
                frozenAccount[address(arg1)].field_0 = 0
                frozenAccount[address(arg1)].field_256 = 0
                frozenAccount[address(arg1)].field_512 = 0
                frozenAccount[address(arg1)].field_768 = 0
                require balances[address(arg1)] >= 0
            else:
                if frozenAccount[address(arg1)].field_768 + (block.timestamp - frozenAccount[address(arg1)].field_256 / frozenAccount[address(arg1)].field_512 * frozenAccount[address(arg1)].field_768) >= 100:
                    frozenAccount[address(arg1)].field_1024 = 0
                    frozenAccount[address(arg1)].field_0 = 0
                    frozenAccount[address(arg1)].field_256 = 0
                    frozenAccount[address(arg1)].field_512 = 0
                    frozenAccount[address(arg1)].field_768 = 0
                require balances[address(arg1)] - ((100 * frozenAccount[address(arg1)].field_0) - (frozenAccount[address(arg1)].field_768 * frozenAccount[address(arg1)].field_0) - (block.timestamp - frozenAccount[address(arg1)].field_256 / frozenAccount[address(arg1)].field_512 * frozenAccount[address(arg1)].field_768 * frozenAccount[address(arg1)].field_0) / 100) >= 0
    require arg2 > 0
    require not frozenAccount[address(arg1)].field_1024
    require arg3 > block.timestamp
    require arg5 > 0
    require arg6 > 0
    require arg6 <= 100
    if not frozenAccount[address(msg.sender)].field_1024:
        require balances[address(msg.sender)] >= arg2
    else:
        if block.timestamp < frozenAccount[address(msg.sender)].field_256:
            require balances[address(msg.sender)] - frozenAccount[address(msg.sender)].field_0 >= arg2
        else:
            require frozenAccount[address(msg.sender)].field_512
            require frozenAccount[address(msg.sender)].field_0 <= balances[address(msg.sender)]
            if frozenAccount[address(msg.sender)].field_768 + (block.timestamp - frozenAccount[address(msg.sender)].field_256 / frozenAccount[address(msg.sender)].field_512 * frozenAccount[address(msg.sender)].field_768) > 100:
                frozenAccount[address(msg.sender)].field_1024 = 0
                frozenAccount[address(msg.sender)].field_0 = 0
                frozenAccount[address(msg.sender)].field_256 = 0
                frozenAccount[address(msg.sender)].field_512 = 0
                frozenAccount[address(msg.sender)].field_768 = 0
                require balances[address(msg.sender)] >= arg2
            else:
                if frozenAccount[address(msg.sender)].field_768 + (block.timestamp - frozenAccount[address(msg.sender)].field_256 / frozenAccount[address(msg.sender)].field_512 * frozenAccount[address(msg.sender)].field_768) >= 100:
                    frozenAccount[address(msg.sender)].field_1024 = 0
                    frozenAccount[address(msg.sender)].field_0 = 0
                    frozenAccount[address(msg.sender)].field_256 = 0
                    frozenAccount[address(msg.sender)].field_512 = 0
                    frozenAccount[address(msg.sender)].field_768 = 0
                require balances[address(msg.sender)] - ((100 * frozenAccount[address(msg.sender)].field_0) - (frozenAccount[address(msg.sender)].field_768 * frozenAccount[address(msg.sender)].field_0) - (block.timestamp - frozenAccount[address(msg.sender)].field_256 / frozenAccount[address(msg.sender)].field_512 * frozenAccount[address(msg.sender)].field_768 * frozenAccount[address(msg.sender)].field_0) / 100) >= arg2
    require arg1
    require arg1 != msg.sender
    require arg2 > 0
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require arg2 + balances[arg1] >= balances[arg1]
    balances[address(arg1)] = arg2 + balances[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    if 5 == arg4:
        if arg5:
            require arg5
            require 8760 * 24 * 3600 * arg5 / arg5 == 8760 * 24 * 3600
        frozenAccount[address(arg1)].field_0 = arg2
        frozenAccount[address(arg1)].field_256 = arg3
        frozenAccount[address(arg1)].field_512 = 8760 * 24 * 3600 * arg5
    else:
        if 4 == arg4:
            if arg5:
                require arg5
                require 24 * 3600 * arg5 / arg5 == 24 * 3600
            frozenAccount[address(arg1)].field_0 = arg2
            frozenAccount[address(arg1)].field_256 = arg3
            frozenAccount[address(arg1)].field_512 = 24 * 3600 * arg5
        else:
            if 3 == arg4:
                if arg5:
                    require arg5
                    require 3600 * arg5 / arg5 == 3600
                frozenAccount[address(arg1)].field_0 = arg2
                frozenAccount[address(arg1)].field_256 = arg3
                frozenAccount[address(arg1)].field_512 = 3600 * arg5
            else:
                if arg4 != 2:
                    require 1 == arg4
                    frozenAccount[address(arg1)].field_0 = arg2
                    frozenAccount[address(arg1)].field_256 = arg3
                    frozenAccount[address(arg1)].field_512 = arg5
                else:
                    if arg5:
                        require arg5
                        require 60 * arg5 / arg5 == 60
                    frozenAccount[address(arg1)].field_0 = arg2
                    frozenAccount[address(arg1)].field_256 = arg3
                    frozenAccount[address(arg1)].field_512 = 60 * arg5
    frozenAccount[address(arg1)].field_768 = arg6
    frozenAccount[address(arg1)].field_1024 = 1
    emit FrozenFunds(arg2, arg3, arg4, arg5, arg6, arg1);
}



}
