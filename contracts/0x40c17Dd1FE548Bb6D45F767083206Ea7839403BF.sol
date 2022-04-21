contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
mapping of uint256 stor2;
address stor3;
address stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor15;

function _fallback() payable {
    stor3 = 0
    stor4 = 0
    stor5 = 0xbaea019d93335137711d6c29974657fdbd3bf637
    stor6 = 300
    stor7 = 2 * 10^15
    stor8 = 6666666666666
    stor9 = 0
    stor10 = 0
    stor11 = 0
    stor15 = 0
    require not msg.value
    stor1 = msg.sender
    require code.data[4310 len 20]
    require code.data[4342 len 20]
    stor0 = 10^9
    stor3 = code.data[4310 len 20]
    stor4 = code.data[4342 len 20]
    stor2[code.data[4342 len 20]] = 10^9
    emit Transfer(10^9, this.address, stor4);
    return code.data[384 len 3914]
}



// =====================  Runtime code  =====================


const name = 'BlockBankReserveToken'

const decimals = 2

const symbol = 'BBRT'


uint256 totalSupply;
address stor1;
mapping of uint256 balanceOf;
address stor3;
address stor4;
address stor5;
uint256 rate;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint8 stor10;
address migrationAgentAddress; offset 8
uint256 totalMigrated;
mapping of uint8 stor12;
uint256 sub_4295e971;
array of address stor14;
uint256 sub_cf1eb0e1;

function totalSupply() {
    return totalSupply
}

function rate() {
    return rate
}

function sub_4295e971(?) {
    return sub_4295e971
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

function sub_c9d9fc8b(?) {
    return bool(stor10)
}

function sub_cf1eb0e1(?) {
    return sub_cf1eb0e1
}

function setMigrationAgent(address arg1) {
    require stor1 == msg.sender
    migrationAgentAddress = arg1
}

function sub_ff8766ba(?) {
    require stor1 == msg.sender
    stor10 = uint8(arg1)
    emit 0xe5d6db4b: arg1
}

function sub_e5cfc7f0(?) {
    require stor1 == msg.sender
    rate = arg1
    require arg1
    stor8 = stor7 / arg1
    emit 0x50121c0c: rate
}

function sub_86da5069(?) {
    require stor8
    if 10^18 * arg1 / stor8 <= balanceOf[stor4]:
        return (10^18 * arg1 / stor8)
    stor9 = balanceOf[stor4] * stor8
    return balanceOf[stor4]
}

function migrate(address arg1) {
    require stor1 == msg.sender
    require migrationAgentAddress
    balanceOf[address(arg1)] = 0
    totalMigrated += balanceOf[address(arg1)]
    require ext_code.size(migrationAgentAddress)
    call migrationAgentAddress.migrateFrom(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), balanceOf[address(arg1)]
    require ext_call.success
    emit Migrate(balanceOf[address(arg1)], arg1, migrationAgentAddress);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require stor1 == msg.sender
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[msg.sender] -= arg2
    balanceOf[address(arg1)] += arg2
    require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + arg2 + balanceOf[address(arg1)]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_84df6001(?) {
    require stor1 == msg.sender
    sub_4295e971 = arg2
    require arg1 - 1 >= 0
    require arg1 <= arg2
    require arg2 - arg1 < sub_cf1eb0e1
    require arg2 - 1 <= stor14.length
    idx = arg1 - 1
    while idx <= arg2 - 1:
        require idx < stor14.length
        require stor1 == msg.sender
        require migrationAgentAddress
        mem[0] = address(stor14[idx])
        mem[32] = 2
        balanceOf[address(stor14[idx])] = 0
        totalMigrated += balanceOf[address(stor14[idx])]
        mem[100] = address(stor14[idx])
        mem[132] = balanceOf[address(stor14[idx])]
        require ext_code.size(migrationAgentAddress)
        call migrationAgentAddress.migrateFrom(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(stor14[idx]), balanceOf[address(stor14[idx])]
        require ext_call.success
        mem[96] = balanceOf[address(stor14[idx])]
        emit Migrate(balanceOf[address(stor14[idx])], address(stor14[idx]), migrationAgentAddress);
        sub_cf1eb0e1--
        idx = idx + 1
        continue 
}

function finalizePreICO() {
    require stor1 == msg.sender
    require not stor10
    balanceOf[stor5] += (5 * totalSupply) - (5 * balanceOf[stor4]) / 100
    if stor12[stor5]:
        emit Transfer(((5 * totalSupply) - (5 * balanceOf[stor4]) / 100), this.address, stor5);
        balanceOf[stor3] += (15 * totalSupply) - (15 * balanceOf[stor4]) / 100
        if not stor12[stor3]:
            stor12[stor3] = 1
            stor14.length++
            if not stor14.length <= stor14.length + 1:
                idx = stor14.length + 1
                while stor14.length > idx:
                    uint256(stor14[idx]) = 0
                    idx = idx + 1
                    continue 
            address(stor14[stor14.length]) = stor3
            sub_cf1eb0e1++
    else:
        stor12[stor5] = 1
        stor14.length++
        if not stor14.length <= stor14.length + 1:
            idx = stor14.length + 1
            while stor14.length > idx:
                uint256(stor14[idx]) = 0
                idx = idx + 1
                continue 
        address(stor14[stor14.length]) = stor5
        sub_cf1eb0e1++
        emit Transfer(((5 * totalSupply) - (5 * balanceOf[stor4]) / 100), this.address, stor5);
        balanceOf[stor3] += (15 * totalSupply) - (15 * balanceOf[stor4]) / 100
        if not stor12[stor3]:
            stor12[stor3] = 1
            stor14.length++
            if not stor14.length <= stor14.length + 1:
                idx = stor14.length + 1
                while stor14.length > idx:
                    uint256(stor14[idx]) = 0
                    idx = idx + 1
                    continue 
            address(stor14[stor14.length]) = stor3
            sub_cf1eb0e1++
    emit Transfer(((15 * totalSupply) - (15 * balanceOf[stor4]) / 100), this.address, stor3);
    balanceOf[stor4] = 0
    emit Transfer(balanceOf[stor4], stor4, 0);
}

function sub_e1fde3a5(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require stor1 == msg.sender
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _27 = mem[(32 * idx) + 128]
        require idx < arg2.length
        require mem[(32 * idx) + 140 len 20]
        require balanceOf[stor4] >= mem[(32 * idx) + (32 * arg1.length) + 160]
        require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]
        balanceOf[stor4] -= mem[(32 * idx) + (32 * arg1.length) + 160]
        balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
        require balanceOf[address(mem[(32 * idx) + 128])] + balanceOf[stor4] == balanceOf[stor4] + mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[address(mem[(32 * idx) + 128])]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], stor4, address(_27));
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 12
        if not stor12[mem[(32 * idx) + 140 len 20]]:
            mem[32] = 12
            stor12[address(mem[(32 * idx) + 128])] = 1
            stor14.length++
            if not stor14.length <= stor14.length + 1:
                s = stor14.length + sha3(14) + 1
                while sha3(14) + stor14.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            mem[0] = 14
            address(stor14[stor14.length]) = mem[(32 * idx) + 140 len 20]
            sub_cf1eb0e1++
        idx = idx + 1
        continue 
}

function buyTokens() payable {
    require stor10
    require msg.value > 0
    require stor8
    if msg.value / stor8 <= balanceOf[stor4]:
        require msg.value / stor8 >= 100
        require msg.sender
        require balanceOf[stor4] >= msg.value / stor8
        require balanceOf[address(msg.sender)] + (msg.value / stor8) >= balanceOf[address(msg.sender)]
        balanceOf[stor4] -= msg.value / stor8
        balanceOf[address(msg.sender)] += msg.value / stor8
        require balanceOf[address(msg.sender)] + balanceOf[stor4] == balanceOf[stor4] + (msg.value / stor8) + balanceOf[address(msg.sender)]
        emit Transfer((msg.value / stor8), stor4, msg.sender);
    else:
        stor9 = balanceOf[stor4] * stor8
        require balanceOf[stor4] >= 100
        require msg.sender
        require balanceOf[stor4] >= balanceOf[stor4]
        require balanceOf[address(msg.sender)] + balanceOf[stor4] >= balanceOf[address(msg.sender)]
        balanceOf[stor4] -= balanceOf[stor4]
        balanceOf[address(msg.sender)] += balanceOf[stor4]
        require balanceOf[address(msg.sender)] + balanceOf[stor4] == balanceOf[stor4] + balanceOf[stor4] + balanceOf[address(msg.sender)]
        emit Transfer(balanceOf[stor4], stor4, msg.sender);
    if not stor12[address(msg.sender)]:
        stor12[address(msg.sender)] = 1
        stor14.length++
        if not stor14.length <= stor14.length + 1:
            idx = stor14.length + 1
            while stor14.length > idx:
                uint256(stor14[idx]) = 0
                idx = idx + 1
                continue 
        address(stor14[stor14.length]) = msg.sender
        sub_cf1eb0e1++
    if stor9 <= 0:
        call stor3 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        call msg.sender with:
           value msg.value - stor9 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call stor3 with:
           value stor9 wei
             gas 2300 * is_zero(value) wei
        stor9 = 0
}

function _fallback() payable {
    require stor10
    require msg.value > 0
    require stor8
    if msg.value / stor8 <= balanceOf[stor4]:
        require msg.value / stor8 >= 100
        require msg.sender
        require balanceOf[stor4] >= msg.value / stor8
        require balanceOf[address(msg.sender)] + (msg.value / stor8) >= balanceOf[address(msg.sender)]
        balanceOf[stor4] -= msg.value / stor8
        balanceOf[address(msg.sender)] += msg.value / stor8
        require balanceOf[address(msg.sender)] + balanceOf[stor4] == balanceOf[stor4] + (msg.value / stor8) + balanceOf[address(msg.sender)]
        emit Transfer((msg.value / stor8), stor4, msg.sender);
    else:
        stor9 = balanceOf[stor4] * stor8
        require balanceOf[stor4] >= 100
        require msg.sender
        require balanceOf[stor4] >= balanceOf[stor4]
        require balanceOf[address(msg.sender)] + balanceOf[stor4] >= balanceOf[address(msg.sender)]
        balanceOf[stor4] -= balanceOf[stor4]
        balanceOf[address(msg.sender)] += balanceOf[stor4]
        require balanceOf[address(msg.sender)] + balanceOf[stor4] == balanceOf[stor4] + balanceOf[stor4] + balanceOf[address(msg.sender)]
        emit Transfer(balanceOf[stor4], stor4, msg.sender);
    if not stor12[address(msg.sender)]:
        stor12[address(msg.sender)] = 1
        stor14.length++
        if not stor14.length <= stor14.length + 1:
            idx = stor14.length + 1
            while stor14.length > idx:
                uint256(stor14[idx]) = 0
                idx = idx + 1
                continue 
        address(stor14[stor14.length]) = msg.sender
        sub_cf1eb0e1++
    if stor9 <= 0:
        call stor3 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        call msg.sender with:
           value msg.value - stor9 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call stor3 with:
           value stor9 wei
             gas 2300 * is_zero(value) wei
        stor9 = 0
}



}
