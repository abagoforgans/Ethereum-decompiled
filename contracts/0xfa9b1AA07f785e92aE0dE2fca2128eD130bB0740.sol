contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
mapping of uint256 stor4;
address stor6;
array of uint256 stor7;
array of uint256 stor8;
array of uint256 stor9;
uint8 stor10;
uint256 stor11;

function _fallback() payable {
    bool(stor7.length) = 0
    stor7.length.field_1 = 9
    stor7.length.field_8 = 'Token 0.1' / 256
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor8.length) = 0
    stor8.length.field_1 = 12
    stor8.length.field_8 = 'NeuroDAO 3.0' / 256
    idx = 0
    while stor8.length + 31 / 32 > idx:
        stor8[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor9.length) = 0
    stor9.length.field_1 = 4
    stor9.length.field_8 = 'NDAO' / 256
    idx = 0
    while stor9.length + 31 / 32 > idx:
        stor9[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor10 = 0
    stor0 = msg.sender
    stor6 = code.data[6378 len 20]
    require ext_code.size(code.data[6378 len 20])
    call code.data[6378 len 20].0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor2 = ext_call.return_data[0]
    require ext_code.size(stor6)
    call stor6.0x70a08231 with:
         gas gas_remaining - 710 wei
        args stor6
    require ext_call.success
    stor4[address(this.address)] = ext_call.return_data[0]
    stor4[stor6] = stor2 - ext_call.return_data[0]
    emit Transfer(stor4[stor6], this.address, stor6);
    stor11 = code.data[6398 len 32]
    return code.data[896 len 5470]
}



// =====================  Runtime code  =====================


address owner;
address candidateAddress;
uint256 totalSupply;
mapping of struct specials;
mapping of struct holders;
uint256 freezedMoment;
address originalAddress;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 startTime;
mapping of uint256 allowed;
address migrationAgentAddress;
uint256 totalMigrated;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function holders(address arg1) {
    return holders[arg1].field_0, holders[arg1].field_256, holders[arg1].field_512
}

function decimals() {
    return decimals
}

function specials(address arg1) {
    return specials[arg1].field_0, bool(specials[arg1].field_256)
}

function original() {
    return originalAddress
}

function standard() {
    return standard[0 len standard.length]
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function candidate() {
    return candidateAddress
}

function balanceOf(address arg1) {
    return holders[address(arg1)].field_0
}

function startTime() {
    return startTime
}

function migrationAgent() {
    return migrationAgentAddress
}

function owner() {
    return owner
}

function totalMigrated() {
    return totalMigrated
}

function symbol() {
    return symbol[0 len symbol.length]
}

function freezedMoment() {
    return freezedMoment
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function killMe() {
    require owner == msg.sender
    require not totalSupply
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function freezeTheMoment() {
    require owner == msg.sender
    freezedMoment = block.timestamp
}

function changeOwner(address arg1) {
    require owner == msg.sender
    require arg1
    candidateAddress = arg1
}

function confirmOwner() {
    require candidateAddress == msg.sender
    owner = candidateAddress
    candidateAddress = 0
}

function approve(address arg1, uint256 arg2) {
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function sealManualMigration(bool arg1) {
    require owner == msg.sender
    if not arg1:
        require not holders[stor6].field_0
    originalAddress = 0
}

function setMigrationAgent(address arg1) {
    require owner == msg.sender
    require not originalAddress
    require not migrationAgentAddress
    migrationAgentAddress = arg1
}

function withdraw() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function freezedBalanceOf(address arg1) {
    if holders[address(arg1)].field_512 > freezedMoment:
        return holders[address(arg1)].field_256
    return holders[address(arg1)].field_0
}

function burn(uint256 arg1) {
    require not originalAddress
    require holders[address(msg.sender)].field_0 >= arg1
    if holders[address(msg.sender)].field_512 <= freezedMoment:
        holders[address(msg.sender)].field_512 = block.timestamp
        holders[address(msg.sender)].field_256 = holders[address(msg.sender)].field_0
    holders[address(msg.sender)].field_0 -= arg1
    totalSupply -= arg1
    emit Burned(arg1, msg.sender);
}

function migrateManual(address arg1) {
    require owner == msg.sender
    require originalAddress
    require not holders[address(arg1)].field_0
    require ext_code.size(originalAddress)
    call originalAddress.0x1fa5e43b with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    holders[address(arg1)].field_0 = ext_call.return_data[0]
    require ext_code.size(originalAddress)
    call originalAddress.0x42d6f0d5 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    specials[address(arg1)].field_0 = ext_call.return_data[0]
    specials[address(arg1)].field_256 = uint8(bool(ext_call.return_data[32]))
    holders[stor6].field_0 -= ext_call.return_data[0]
    emit Transfer(ext_call.return_data[0], originalAddress, arg1);
}

function mintTokens(uint256 arg1, address arg2, bool arg3) {
    require not originalAddress
    require owner == msg.sender
    require holders[address(this.address)].field_0 > 0
    require holders[address(msg.sender)].field_0 + arg1 > holders[address(msg.sender)].field_0
    require arg1 > 0
    if holders[address(arg2)].field_512 <= freezedMoment:
        holders[address(arg2)].field_512 = block.timestamp
        holders[address(arg2)].field_256 = holders[address(arg2)].field_0
    if holders[address(this.address)].field_512 <= freezedMoment:
        holders[address(this.address)].field_512 = block.timestamp
        holders[address(this.address)].field_256 = holders[address(this.address)].field_0
    if not holders[address(arg2)].field_0:
        specials[address(arg2)].field_256 = uint8(arg3)
    holders[address(arg2)].field_0 += arg1
    specials[address(arg2)].field_0 += arg1
    holders[address(this.address)].field_0 -= arg1
    emit Transfer(arg1, this.address, arg2);
}

function migrate() {
    require migrationAgentAddress
    require holders[address(msg.sender)].field_0
    if holders[address(msg.sender)].field_512 <= freezedMoment:
        holders[address(msg.sender)].field_512 = block.timestamp
        holders[address(msg.sender)].field_256 = holders[address(msg.sender)].field_0
    if holders[address(this.address)].field_512 <= freezedMoment:
        holders[address(this.address)].field_512 = block.timestamp
        holders[address(this.address)].field_256 = holders[address(this.address)].field_0
    holders[address(msg.sender)].field_0 = 0
    holders[this.address].field_0 += holders[address(msg.sender)].field_0
    totalMigrated += holders[address(msg.sender)].field_0
    require ext_code.size(migrationAgentAddress)
    call migrationAgentAddress.migrateFrom(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, holders[address(msg.sender)].field_0
    require ext_call.success
    emit Transfer(holders[address(msg.sender)].field_0, msg.sender, this.address);
    emit Migrate(holders[address(msg.sender)].field_0, msg.sender, migrationAgentAddress);
}

function migrateManual2(address[] arg1, uint256 arg2) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    idx = 0
    while idx < arg2:
        require idx < mem[96]
        _27 = mem[(32 * idx) + 128]
        require owner == msg.sender
        require originalAddress
        require not holders[mem[(32 * idx) + 140 len 20]].field_0
        require ext_code.size(originalAddress)
        call originalAddress.0x1fa5e43b with:
             gas gas_remaining - 710 wei
            args address(mem[(32 * idx) + 128])
        require ext_call.success
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        holders[address(mem[(32 * idx) + 128])].field_0 = ext_call.return_data[0]
        mem[mem[64] + 64] = 0
        require ext_code.size(originalAddress)
        call originalAddress.0x42d6f0d5 with:
             gas gas_remaining - 710 wei
            args address(_27)
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        require ext_call.success
        _41 = mem[64]
        mem[64] = mem[64] + 64
        mem[_41] = ext_call.return_data[0]
        mem[_41 + 32] = bool(ext_call.return_data[32])
        specials[address(_27)].field_0 = ext_call.return_data[0]
        specials[address(_27)].field_256 = uint8(bool(ext_call.return_data[32]))
        mem[32] = 4
        holders[stor6].field_0 -= ext_call.return_data[0]
        mem[0] = originalAddress
        mem[mem[64]] = ext_call.return_data[0]
        emit Transfer(ext_call.return_data[0], originalAddress, address(_27));
        idx = idx + 1
        continue 
}

function availableTokens(address arg1) {
    mem[0] = arg1
    mem[32] = 3
    if not specials[address(arg1)].field_0:
        return holders[address(arg1)].field_0
    mem[96] = 0
    mem[128 len 352] = 0
    if block.timestamp >= startTime + (8760 * 24 * 3600):
        if not specials[address(arg1)].field_256:
            if holders[address(arg1)].field_0 > 0:
                return holders[address(arg1)].field_0
        else:
            if (block.timestamp - startTime / 8760 * 24 * 3600) + 1 >= 5:
                if holders[address(arg1)].field_0 > 0:
                    return holders[address(arg1)].field_0
            else:
                if holders[address(arg1)].field_0 > (80 * specials[address(arg1)].field_0) - (20 * block.timestamp - startTime / 8760 * 24 * 3600 * specials[address(arg1)].field_0) / 100:
                    return (holders[address(arg1)].field_0 - ((80 * specials[address(arg1)].field_0) - (20 * block.timestamp - startTime / 8760 * 24 * 3600 * specials[address(arg1)].field_0) / 100))
        return 0
    mem[64] = 864
    mem[480] = 1
    mem[512] = 2
    mem[544] = 3
    mem[576] = 4
    mem[608] = 4
    mem[640] = 4
    mem[672] = 5
    mem[704] = 6
    mem[736] = 7
    mem[768] = 8
    mem[800] = 9
    mem[832] = 10
    require block.timestamp - startTime / 672 * 24 * 3600 < 12
    if not specials[address(arg1)].field_256:
        if not mem[(32 * block.timestamp - startTime / 672 * 24 * 3600) + 511 len 1]:
            if holders[address(arg1)].field_0 > 0:
                return holders[address(arg1)].field_0
            else:
                return 0
        if holders[address(arg1)].field_0 <= (100 * specials[address(arg1)].field_0) - (mem[(32 * block.timestamp - startTime / 672 * 24 * 3600) + 511 len 1] * specials[address(arg1)].field_0) / 100:
            return 0
        mem[864] = holders[address(arg1)].field_0 - ((100 * specials[address(arg1)].field_0) - (mem[(32 * block.timestamp - startTime / 672 * 24 * 3600) + 511 len 1] * specials[address(arg1)].field_0) / 100)
    else:
        if not mem[(32 * block.timestamp - startTime / 672 * 24 * 3600) + 511 len 1]:
            if (block.timestamp - startTime / 8760 * 24 * 3600) + 1 >= 5:
                if holders[address(arg1)].field_0 > 0:
                    return holders[address(arg1)].field_0
            else:
                if holders[address(arg1)].field_0 > (80 * specials[address(arg1)].field_0) - (20 * block.timestamp - startTime / 8760 * 24 * 3600 * specials[address(arg1)].field_0) / 100:
                    return (holders[address(arg1)].field_0 - ((80 * specials[address(arg1)].field_0) - (20 * block.timestamp - startTime / 8760 * 24 * 3600 * specials[address(arg1)].field_0) / 100))
            return 0
        if holders[address(arg1)].field_0 <= (500 * specials[address(arg1)].field_0) - (mem[(32 * block.timestamp - startTime / 672 * 24 * 3600) + 511 len 1] * specials[address(arg1)].field_0) / 500:
            return 0
        mem[864] = holders[address(arg1)].field_0 - ((500 * specials[address(arg1)].field_0) - (mem[(32 * block.timestamp - startTime / 672 * 24 * 3600) + 511 len 1] * specials[address(arg1)].field_0) / 500)
    return memory
      from 864
       len 32
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not originalAddress
    mem[0] = arg1
    mem[32] = 3
    if not specials[address(arg1)].field_0:
        require holders[address(arg1)].field_0 >= arg3
    else:
        mem[96] = 0
        mem[128 len 352] = 0
        if block.timestamp >= startTime + (8760 * 24 * 3600):
            if not specials[address(arg1)].field_256:
                if holders[address(arg1)].field_0 > 0:
                    require holders[address(arg1)].field_0 >= arg3
                else:
                    require 0 >= arg3
            else:
                if (block.timestamp - startTime / 8760 * 24 * 3600) + 1 >= 5:
                    if holders[address(arg1)].field_0 > 0:
                        require holders[address(arg1)].field_0 >= arg3
                    else:
                        require 0 >= arg3
                else:
                    if holders[address(arg1)].field_0 > (80 * specials[address(arg1)].field_0) - (20 * block.timestamp - startTime / 8760 * 24 * 3600 * specials[address(arg1)].field_0) / 100:
                        require holders[address(arg1)].field_0 - ((80 * specials[address(arg1)].field_0) - (20 * block.timestamp - startTime / 8760 * 24 * 3600 * specials[address(arg1)].field_0) / 100) >= arg3
                    else:
                        require 0 >= arg3
        else:
            mem[64] = 864
            mem[480] = 1
            mem[512] = 2
            mem[544] = 3
            mem[576] = 4
            mem[608] = 4
            mem[640] = 4
            mem[672] = 5
            mem[704] = 6
            mem[736] = 7
            mem[768] = 8
            mem[800] = 9
            mem[832] = 10
            require block.timestamp - startTime / 672 * 24 * 3600 < 12
            if not specials[address(arg1)].field_256:
                if not mem[(32 * block.timestamp - startTime / 672 * 24 * 3600) + 511 len 1]:
                    if holders[address(arg1)].field_0 > 0:
                        require holders[address(arg1)].field_0 >= arg3
                    else:
                        require 0 >= arg3
                else:
                    if holders[address(arg1)].field_0 > (100 * specials[address(arg1)].field_0) - (mem[(32 * block.timestamp - startTime / 672 * 24 * 3600) + 511 len 1] * specials[address(arg1)].field_0) / 100:
                        require holders[address(arg1)].field_0 - ((100 * specials[address(arg1)].field_0) - (mem[(32 * block.timestamp - startTime / 672 * 24 * 3600) + 511 len 1] * specials[address(arg1)].field_0) / 100) >= arg3
                    else:
                        require 0 >= arg3
            else:
                if mem[(32 * block.timestamp - startTime / 672 * 24 * 3600) + 511 len 1]:
                    if holders[address(arg1)].field_0 > (500 * specials[address(arg1)].field_0) - (mem[(32 * block.timestamp - startTime / 672 * 24 * 3600) + 511 len 1] * specials[address(arg1)].field_0) / 500:
                        require holders[address(arg1)].field_0 - ((500 * specials[address(arg1)].field_0) - (mem[(32 * block.timestamp - startTime / 672 * 24 * 3600) + 511 len 1] * specials[address(arg1)].field_0) / 500) >= arg3
                    else:
                        require 0 >= arg3
                else:
                    if (block.timestamp - startTime / 8760 * 24 * 3600) + 1 >= 5:
                        if holders[address(arg1)].field_0 > 0:
                            require holders[address(arg1)].field_0 >= arg3
                        else:
                            require 0 >= arg3
                    else:
                        if holders[address(arg1)].field_0 > (80 * specials[address(arg1)].field_0) - (20 * block.timestamp - startTime / 8760 * 24 * 3600 * specials[address(arg1)].field_0) / 100:
                            require holders[address(arg1)].field_0 - ((80 * specials[address(arg1)].field_0) - (20 * block.timestamp - startTime / 8760 * 24 * 3600 * specials[address(arg1)].field_0) / 100) >= arg3
                        else:
                            require 0 >= arg3
    require holders[address(arg2)].field_0 + arg3 >= holders[address(arg2)].field_0
    require allowed[address(arg1)][address(msg.sender)] >= arg3
    if holders[address(arg1)].field_512 <= freezedMoment:
        holders[address(arg1)].field_512 = block.timestamp
        holders[address(arg1)].field_256 = holders[address(arg1)].field_0
    if holders[address(arg2)].field_512 <= freezedMoment:
        holders[address(arg2)].field_512 = block.timestamp
        holders[address(arg2)].field_256 = holders[address(arg2)].field_0
    holders[address(arg1)].field_0 -= arg3
    holders[arg2].field_0 += arg3
    allowed[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function transfer(address arg1, uint256 arg2) {
    require not originalAddress
    mem[0] = msg.sender
    mem[32] = 3
    if not specials[address(msg.sender)].field_0:
        require holders[address(msg.sender)].field_0 >= arg2
    else:
        mem[96] = 0
        mem[128 len 352] = 0
        if block.timestamp >= startTime + (8760 * 24 * 3600):
            if not specials[address(msg.sender)].field_256:
                if holders[address(msg.sender)].field_0 > 0:
                    require holders[address(msg.sender)].field_0 >= arg2
                else:
                    require 0 >= arg2
            else:
                if (block.timestamp - startTime / 8760 * 24 * 3600) + 1 >= 5:
                    if holders[address(msg.sender)].field_0 > 0:
                        require holders[address(msg.sender)].field_0 >= arg2
                    else:
                        require 0 >= arg2
                else:
                    if holders[address(msg.sender)].field_0 > (80 * specials[address(msg.sender)].field_0) - (20 * block.timestamp - startTime / 8760 * 24 * 3600 * specials[address(msg.sender)].field_0) / 100:
                        require holders[address(msg.sender)].field_0 - ((80 * specials[address(msg.sender)].field_0) - (20 * block.timestamp - startTime / 8760 * 24 * 3600 * specials[address(msg.sender)].field_0) / 100) >= arg2
                    else:
                        require 0 >= arg2
        else:
            mem[64] = 864
            mem[480] = 1
            mem[512] = 2
            mem[544] = 3
            mem[576] = 4
            mem[608] = 4
            mem[640] = 4
            mem[672] = 5
            mem[704] = 6
            mem[736] = 7
            mem[768] = 8
            mem[800] = 9
            mem[832] = 10
            require block.timestamp - startTime / 672 * 24 * 3600 < 12
            if not specials[address(msg.sender)].field_256:
                if not mem[(32 * block.timestamp - startTime / 672 * 24 * 3600) + 511 len 1]:
                    if holders[address(msg.sender)].field_0 > 0:
                        require holders[address(msg.sender)].field_0 >= arg2
                    else:
                        require 0 >= arg2
                else:
                    if holders[address(msg.sender)].field_0 > (100 * specials[address(msg.sender)].field_0) - (mem[(32 * block.timestamp - startTime / 672 * 24 * 3600) + 511 len 1] * specials[address(msg.sender)].field_0) / 100:
                        require holders[address(msg.sender)].field_0 - ((100 * specials[address(msg.sender)].field_0) - (mem[(32 * block.timestamp - startTime / 672 * 24 * 3600) + 511 len 1] * specials[address(msg.sender)].field_0) / 100) >= arg2
                    else:
                        require 0 >= arg2
            else:
                if mem[(32 * block.timestamp - startTime / 672 * 24 * 3600) + 511 len 1]:
                    if holders[address(msg.sender)].field_0 > (500 * specials[address(msg.sender)].field_0) - (mem[(32 * block.timestamp - startTime / 672 * 24 * 3600) + 511 len 1] * specials[address(msg.sender)].field_0) / 500:
                        require holders[address(msg.sender)].field_0 - ((500 * specials[address(msg.sender)].field_0) - (mem[(32 * block.timestamp - startTime / 672 * 24 * 3600) + 511 len 1] * specials[address(msg.sender)].field_0) / 500) >= arg2
                    else:
                        require 0 >= arg2
                else:
                    if (block.timestamp - startTime / 8760 * 24 * 3600) + 1 >= 5:
                        if holders[address(msg.sender)].field_0 > 0:
                            require holders[address(msg.sender)].field_0 >= arg2
                        else:
                            require 0 >= arg2
                    else:
                        if holders[address(msg.sender)].field_0 > (80 * specials[address(msg.sender)].field_0) - (20 * block.timestamp - startTime / 8760 * 24 * 3600 * specials[address(msg.sender)].field_0) / 100:
                            require holders[address(msg.sender)].field_0 - ((80 * specials[address(msg.sender)].field_0) - (20 * block.timestamp - startTime / 8760 * 24 * 3600 * specials[address(msg.sender)].field_0) / 100) >= arg2
                        else:
                            require 0 >= arg2
    require holders[address(arg1)].field_0 + arg2 >= holders[address(arg1)].field_0
    if holders[address(msg.sender)].field_512 <= freezedMoment:
        holders[address(msg.sender)].field_512 = block.timestamp
        holders[address(msg.sender)].field_256 = holders[address(msg.sender)].field_0
    if holders[address(arg1)].field_512 <= freezedMoment:
        holders[address(arg1)].field_512 = block.timestamp
        holders[address(arg1)].field_256 = holders[address(arg1)].field_0
    holders[address(msg.sender)].field_0 -= arg2
    holders[arg1].field_0 += arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}
