contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor1;
address stor3;
mapping of uint8 stor7;
array of address stor8;
array of uint256 stor11;
array of uint256 stor12;
uint8 stor13;

function _fallback() {
    stor3 = msg.sender
    bool(stor11.length) = 0
    stor11.length.field_1 = 8
    stor11.length.field_8 = 'ChainPay' / 256
    idx = 0
    while stor11.length + 31 / 32 > idx:
        stor11[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor12.length) = 0
    stor12.length.field_1 = 3
    stor12.length.field_8 = 'CIP' / 256
    idx = 0
    while stor12.length + 31 / 32 > idx:
        stor12[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor13 = 18
    stor1 = 6060660 * 10^18
    stor0[stor3] = stor1
    stor8.length++
    if not stor8.length <= stor8.length + 1:
        idx = stor8.length + 1
        while stor8.length > idx:
            uint256(stor8[idx]) = 0
            idx = idx + 1
            continue 
    require stor8.length < stor8.length
    address(stor8[stor8.length]) = stor3
    stor7[stor3] = 1
    return code.data[896 len 13879]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
uint8 stor4; offset 160
uint128 stor4; offset 160
address pendingOwner;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of uint8 stor7;
array of address holders;
address migrationAgentAddress;
uint256 migrationCountComplete;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address migrationGateAddress; offset 8

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function userWhiteListContracts(address arg1, address arg2) {
    return bool(stor6[arg1][arg2])
}

function holders(uint256 arg1) {
    require arg1 < holders.length
    return address(holders[arg1])
}

function decimals() {
    return decimals
}

function erc223Activated() {
    return bool(uint8(stor4.field_160))
}

function migrationCountComplete() {
    return migrationCountComplete
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
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

function migrationGate() {
    return migrationGateAddress
}

function isHolder(address arg1) {
    return bool(stor7[arg1])
}

function whiteListContracts(address arg1) {
    return bool(stor5[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function pendingOwner() {
    return pendingOwner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    pendingOwner = arg1
}

function setMigrationGate(address arg1) {
    require msg.sender == owner
    migrationGateAddress = arg1
}

function setMigrationAgent(address arg1) {
    require msg.sender == owner
    migrationAgentAddress = arg1
}

function setUserWhiteListContract(address arg1, bool arg2) {
    stor6[address(msg.sender)][address(arg1)] = uint8(arg2)
}

function setERC223Activated(bool arg1) {
    require msg.sender == owner
    Mask(96, 0, stor4.field_160) = Mask(96, 0, arg1)
}

function setWhiteListContract(address arg1, bool arg2) {
    require msg.sender == owner
    stor5[address(arg1)] = uint8(arg2)
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function claimOwnership() {
    require msg.sender == pendingOwner
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function burnTokenBurn(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function migrate() {
    require migrationAgentAddress
    require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = 0
    require balanceOf[address(msg.sender)] <= totalSupply
    totalSupply -= balanceOf[address(msg.sender)]
    require ext_code.size(migrationAgentAddress)
    call migrationAgentAddress.migrateFrom(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, balanceOf[address(msg.sender)]
    require ext_call.success
    emit Migrate(balanceOf[address(msg.sender)], msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1 != this.address
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if uint8(stor4.field_160):
        if not stor5[address(arg1)]:
            if not stor6[address(msg.sender)][address(arg1)]:
                if ext_code.size(arg1) > 0:
                    require ext_code.size(arg1)
                    call arg1.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, arg2, 96, 0
                    require ext_call.success
    if bool(stor7[address(arg1)]) != 1:
        holders.length++
        if not holders.length <= holders.length + 1:
            idx = holders.length + 1
            while holders.length > idx:
                uint256(holders[idx]) = 0
                idx = idx + 1
                continue 
        require holders.length < holders.length
        address(holders[holders.length]) = arg1
        stor7[address(arg1)] = 1
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    require arg1 != this.address
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if uint8(stor4.field_160):
        if not stor5[address(arg1)]:
            if not stor6[address(msg.sender)][address(arg1)]:
                if ext_code.size(arg1) > 0:
                    require ext_code.size(arg1)
                    call arg1.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
                    require ext_call.success
    if bool(stor7[address(arg1)]) != 1:
        holders.length++
        if not holders.length <= holders.length + 1:
            idx = holders.length + 1
            while holders.length > idx:
                uint256(holders[idx]) = 0
                idx = idx + 1
                continue 
        require holders.length < holders.length
        address(holders[holders.length]) = arg1
        stor7[address(arg1)] = 1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2 != this.address
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    if uint8(stor4.field_160):
        if not stor5[address(arg2)]:
            if not stor6[address(arg1)][address(arg2)]:
                if not stor6[address(msg.sender)][address(arg2)]:
                    if ext_code.size(arg2) > 0:
                        require ext_code.size(arg2)
                        call arg2.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, arg3, 96, 0
                        require ext_call.success
    if bool(stor7[address(arg2)]) != 1:
        holders.length++
        if not holders.length <= holders.length + 1:
            idx = holders.length + 1
            while holders.length > idx:
                uint256(holders[idx]) = 0
                idx = idx + 1
                continue 
        require holders.length < holders.length
        address(holders[holders.length]) = arg2
        stor7[address(arg2)] = 1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require arg2 != this.address
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    if uint8(stor4.field_160):
        if not stor5[address(arg2)]:
            if not stor6[address(arg1)][address(arg2)]:
                if not stor6[address(msg.sender)][address(arg2)]:
                    if ext_code.size(arg2) > 0:
                        require ext_code.size(arg2)
                        call arg2.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, arg3, Array(len=arg4.length, data=arg4[all])
                        require ext_call.success
    if bool(stor7[address(arg2)]) != 1:
        holders.length++
        if not holders.length <= holders.length + 1:
            idx = holders.length + 1
            while holders.length > idx:
                uint256(holders[idx]) = 0
                idx = idx + 1
                continue 
        require holders.length < holders.length
        address(holders[holders.length]) = arg2
        stor7[address(arg2)] = 1
    return 1
}

function migrateHolders(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    require migrationAgentAddress
    require migrationCountComplete + arg1 >= migrationCountComplete
    if migrationCountComplete + arg1 <= holders.length:
        s = 0
        s = 0
        idx = migrationCountComplete
        while idx < migrationCountComplete + arg1:
            require idx < holders.length
            require balanceOf[address(stor8[idx])] <= balanceOf[address(stor8[idx])]
            mem[0] = address(holders[idx])
            mem[32] = 0
            balanceOf[address(stor8[idx])] = 0
            require balanceOf[address(stor8[idx])] <= totalSupply
            totalSupply -= balanceOf[address(stor8[idx])]
            mem[100] = address(holders[idx])
            mem[132] = balanceOf[address(stor8[idx])]
            require ext_code.size(migrationAgentAddress)
            call migrationAgentAddress.migrateFrom(address arg1, uint256 arg2) with:
                 gas gas_remaining - 710 wei
                args address(holders[idx]), balanceOf[address(stor8[idx])]
            require ext_call.success
            mem[96] = balanceOf[address(stor8[idx])]
            emit Migrate(balanceOf[address(stor8[idx])], address(holders[idx]));
            s = balanceOf[address(stor8[idx])]
            s = address(holders[idx])
            idx = idx + 1
            continue 
        migrationCountComplete += arg1
    else:
        s = 0
        s = 0
        idx = migrationCountComplete
        while idx < holders.length:
            require balanceOf[address(stor8[idx])] <= balanceOf[address(stor8[idx])]
            mem[0] = address(holders[idx])
            mem[32] = 0
            balanceOf[address(stor8[idx])] = 0
            require balanceOf[address(stor8[idx])] <= totalSupply
            totalSupply -= balanceOf[address(stor8[idx])]
            mem[100] = address(holders[idx])
            mem[132] = balanceOf[address(stor8[idx])]
            require ext_code.size(migrationAgentAddress)
            call migrationAgentAddress.migrateFrom(address arg1, uint256 arg2) with:
                 gas gas_remaining - 710 wei
                args address(holders[idx]), balanceOf[address(stor8[idx])]
            require ext_call.success
            mem[96] = balanceOf[address(stor8[idx])]
            emit Migrate(balanceOf[address(stor8[idx])], address(holders[idx]));
            s = balanceOf[address(stor8[idx])]
            s = address(holders[idx])
            idx = idx + 1
            continue 
        migrationCountComplete = holders.length
    return 1
}

function transferMulti(address[] arg1, uint256[] arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 192] = 0
    require msg.sender == migrationGateAddress
    require arg1.length == arg2.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 224] = arg1.length
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + ceil32(arg1.length) + 256
    s = 0
    t = 0
    t = 0
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _195 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _199 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 224]
        mem[(32 * arg1.length) + (32 * arg2.length) + idx + 256 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        if not mem[(32 * idx) + 140 len 20]:
            s = s
            t = mem[(32 * idx) + (32 * arg1.length) + 160]
            t = mem[(32 * idx) + 128]
            idx = idx + 1
            continue 
        mem[0] = msg.sender
        mem[32] = 0
        if mem[(32 * idx) + (32 * arg1.length) + 160] > balanceOf[address(msg.sender)]:
            s = s
            t = mem[(32 * idx) + (32 * arg1.length) + 160]
            t = mem[(32 * idx) + 128]
            idx = idx + 1
            continue 
        require mem[(32 * idx) + 140 len 20] != this.address
        _212 = mem[64]
        mem[64] = mem[64] + 32
        mem[_212] = 0
        require address(_195)
        require _199 <= balanceOf[address(msg.sender)]
        require _199 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= _199
        require balanceOf[address(_195)] + _199 >= balanceOf[address(_195)]
        balanceOf[address(_195)] += _199
        mem[mem[64]] = _199
        emit Transfer(_199, msg.sender, address(_195));
        if uint8(stor4.field_160):
            if not stor5[address(_195)]:
                mem[32] = sha3(address(msg.sender), 6)
                if not stor6[address(msg.sender)][address(_195)]:
                    if ext_code.size(_195) > 0:
                        mem[mem[64]] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _199
                        mem[mem[64] + 68] = 96
                        mem[mem[64] + 100] = 0
                        s = 0
                        while s < 0:
                            mem[mem[64] + s + 132] = mem[_212 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(_195))
                        call address(_195).tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, _199, 96, 0
                        require ext_call.success
        mem[0] = address(_195)
        mem[32] = 7
        if bool(stor7[address(_195)]) != 1:
            holders.length++
            if not holders.length <= holders.length + 1:
                s = sha3(8) + holders.length + 1
                while sha3(8) + holders.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            require holders.length < holders.length
            address(holders[holders.length]) = address(_195)
            mem[0] = address(_195)
            mem[32] = 7
            stor7[address(_195)] = 1
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 224]
        mem[(32 * arg1.length) + (32 * arg2.length) + idx + 256 len 8] = Mask(8, -(2770416197572506628786610481164896232817494750300970526334678523626827808768, 0) + 256, 0) << (2770416197572506628786610481164896232817494750300970526334678523626827808768, 0) - 256
        s = 1
        t = _199
        t = _195
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
    _194 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
    mem[mem[64] + 64 len ceil32(mem[(32 * arg1.length) + (32 * arg2.length) + 224])] = mem[(32 * arg1.length) + (32 * arg2.length) + 256 len ceil32(mem[(32 * arg1.length) + (32 * arg2.length) + 224])]
    if not _194 % 32:
        return 32, mem[mem[64] + 32 len _194 + 32]
    mem[floor32(_194) + mem[64] + 64] = mem[floor32(_194) + mem[64] + -(_194 % 32) + 96 len _194 % 32]
    return 32, mem[mem[64] + 32 len floor32(_194) + 64]
}



}
