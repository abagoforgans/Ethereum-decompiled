contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
uint256 stor6;
uint256 stor7;
mapping of uint256 stor9;

function _fallback() payable {
    mem[128] = 'Token 0.1'
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'Token 0.1' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    mem[160 len -4851] = code.data[5306 len -4851]
    stor9[address(msg.sender)] = mem[160]
    stor4 = mem[160]
    stor1[] = Array(len=mem[mem[192] + 160], data=mem[mem[192] + 192 len mem[mem[192] + 160]])
    stor2[] = Array(len=mem[mem[256] + 160], data=mem[mem[256] + 192 len mem[mem[256] + 160]])
    stor3 = mem[255 len 1]
    stor6 = block.timestamp - (24 * 3600)
    stor7 = 24000 * 10^18
    return code.data[455 len 4851]
}



// =====================  Runtime code  =====================


array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
array of address sub_5747e4a7;
uint256 lastDistribution;
uint256 reward;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_19d7934a(?) {
    require arg1 < stor8.length
    require arg2 < stor8[arg1].field_0
    require arg3 < 2
    return stor[arg3 + (2 * arg2) + ('array', ('param', 'arg1'), ('name', 'stor8', 8))].field_0
}

function reward() {
    return reward
}

function decimals() {
    return decimals
}

function sub_5747e4a7(?) {
    require arg1 < sub_5747e4a7.length
    return address(sub_5747e4a7[arg1])
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function lastDistribution() {
    return lastDistribution
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function give(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function sub_ce8baa4e(?) {
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function claim() {
    idx = 0
    while idx < stor8.length:
        require idx < stor8.length
        mem[0] = 8
        s = var19001
        while s < stor8[idx].field_0:
            require idx < stor8.length
            require s < stor8[idx].field_0
            require idx < stor8.length
            if address(stor[(2 * s) + ('array', ('var', 0), ('name', 'stor8', 8))].field_0) != msg.sender:
                mem[0] = 8
                s = s + 1
                continue 
            require s < stor8[idx].field_0
            mem[32] = 9
            balanceOf[address(msg.sender)] += stor[(2 * s) + ('array', ('var', 0), ('name', 'stor8', 8))].field_256
            require idx < stor8.length
            require s < stor8[idx].field_0
            totalSupply += stor[(2 * s) + ('array', ('var', 0), ('name', 'stor8', 8))].field_256
            require idx < stor8.length
            require s < stor8[idx].field_0
            stor[(2 * s) + ('array', ('var', 0), ('name', 'stor8', 8))].field_0 = 0
            stor[(2 * s) + ('array', ('var', 0), ('name', 'stor8', 8))].field_256 = 0
            mem[0] = 8
            idx = idx + 1
            continue 
        idx = idx + 1
        continue 
}

function sub_a916825d(?) {
    mem[96] = 0
    idx = 0
    while idx < sub_5747e4a7.length:
        mem[0] = 5
        require address(sub_5747e4a7[idx]) != msg.sender
        idx = idx + 1
        continue 
    sub_5747e4a7.length++
    if not sub_5747e4a7.length > sub_5747e4a7.length + 1:
        mem[0] = 5
        address(sub_5747e4a7[sub_5747e4a7.length]) = msg.sender
        if lastDistribution + (24 * 3600) < block.timestamp:
            mem[128] = sub_5747e4a7.length
            require sub_5747e4a7.length
            mem[64] = (32 * sub_5747e4a7.length) + 224
            mem[var23001] = 0
            if var23002 - 1:
                var23001 = var23001 + 32
                var23002 = var23002 - 1
                continue 
            mem[var26002] = (32 * sub_5747e4a7.length) + 160
            if var26003 - 1:
                mem[64] = (32 * sub_5747e4a7.length) + 288
                var23001 = (32 * sub_5747e4a7.length) + 224
                var23002 = 2
                continue 
            require sub_5747e4a7.length
            idx = 0
            while idx < sub_5747e4a7.length:
                _207 = mem[64]
                mem[64] = mem[64] + 64
                mem[0] = 5
                mem[_207] = address(sub_5747e4a7[idx])
                mem[_207 + 32] = reward / sub_5747e4a7.length / sub_5747e4a7.length
                require idx < mem[128]
                mem[(32 * idx) + 160] = _207
                idx = idx + 1
                continue 
            sub_5747e4a7.length = 0
            idx = 0
            while sub_5747e4a7.length > idx:
                uint256(sub_5747e4a7[idx]) = 0
                idx = idx + 1
                continue 
            lastDistribution = block.timestamp
            stor8.length++
            if not stor8.length <= stor8.length + 1:
                mem[0] = 8
                idx = stor8.length + 1
                while sha3(8) + stor8.length > idx + sha3(mem[0]):
                    stor[idx + sha3(mem[0])] = 0
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(idx + sha3(mem[0]))
                    while sha3(idx + sha3(mem[0])) + (2 * stor[idx + sha3(mem[0])]) > s:
                        stor[s] = 0
                        name[s] = 0
                        s = s + 2
                        continue 
                    idx = idx + 1
                    continue 
            stor8[stor8.length].field_0 = mem[128]
            mem[0] = stor8.length + sha3(8)
            if not mem[128]:
                idx = 0
                while 2 * stor8[stor8.length].field_0 > idx:
                    stor8[stor8.length + idx].field_0 = 0
                    stor8[stor8.length + idx].field_256 = 0
                    idx = idx + 2
                    continue 
            else:
                s = 0
                idx = 160
                while (32 * mem[128]) + 160 > idx:
                    t = s + sha3(stor8.length + sha3(8))
                    u = mem[idx]
                    while mem[idx] + 64 > u:
                        stor[t] = mem[u]
                        t = t + 1
                        u = u + 32
                        continue 
                    u = t
                    while s + sha3(stor8.length + sha3(8)) + 2 > u:
                        stor[u] = 0
                        u = u + 1
                        continue 
                    s = s + 2
                    idx = idx + 32
                    continue 
                idx = s
                while sha3(stor8.length + sha3(8)) + (2 * stor8[stor8.length].field_0) > idx:
                    stor[idx] = 0
                    name[idx] = 0
                    idx = idx + 2
                    continue 
    else:
        idx = sub_5747e4a7.length + 1
        while sub_5747e4a7.length > idx:
            uint256(sub_5747e4a7[idx]) = 0
            idx = idx + 1
            continue 
        mem[0] = 5
        address(sub_5747e4a7[sub_5747e4a7.length]) = msg.sender
        if lastDistribution + (24 * 3600) < block.timestamp:
            mem[128] = sub_5747e4a7.length
            require sub_5747e4a7.length
            mem[64] = (32 * sub_5747e4a7.length) + 224
            mem[var29001] = 0
            if var29002 - 1:
                var29001 = var29001 + 32
                var29002 = var29002 - 1
                continue 
            mem[var32002] = (32 * sub_5747e4a7.length) + 160
            if var32003 - 1:
                mem[64] = (32 * sub_5747e4a7.length) + 288
                var29001 = (32 * sub_5747e4a7.length) + 224
                var29002 = 2
                continue 
            require sub_5747e4a7.length
            idx = 0
            while idx < sub_5747e4a7.length:
                _273 = mem[64]
                mem[64] = mem[64] + 64
                mem[0] = 5
                mem[_273] = address(sub_5747e4a7[idx])
                mem[_273 + 32] = reward / sub_5747e4a7.length / sub_5747e4a7.length
                require idx < mem[128]
                mem[(32 * idx) + 160] = _273
                idx = idx + 1
                continue 
            sub_5747e4a7.length = 0
            idx = 0
            while sub_5747e4a7.length > idx:
                uint256(sub_5747e4a7[idx]) = 0
                idx = idx + 1
                continue 
            lastDistribution = block.timestamp
            stor8.length++
            if not stor8.length <= stor8.length + 1:
                mem[0] = 8
                idx = stor8.length + 1
                while sha3(8) + stor8.length > idx + sha3(mem[0]):
                    stor[idx + sha3(mem[0])] = 0
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(idx + sha3(mem[0]))
                    while sha3(idx + sha3(mem[0])) + (2 * stor[idx + sha3(mem[0])]) > s:
                        stor[s] = 0
                        name[s] = 0
                        s = s + 2
                        continue 
                    idx = idx + 1
                    continue 
            stor8[stor8.length].field_0 = mem[128]
            mem[0] = stor8.length + sha3(8)
            if not mem[128]:
                idx = 0
                while 2 * stor8[stor8.length].field_0 > idx:
                    stor8[stor8.length + idx].field_0 = 0
                    stor8[stor8.length + idx].field_256 = 0
                    idx = idx + 2
                    continue 
            else:
                s = 0
                idx = 160
                while (32 * mem[128]) + 160 > idx:
                    t = s + sha3(stor8.length + sha3(8))
                    u = mem[idx]
                    while mem[idx] + 64 > u:
                        stor[t] = mem[u]
                        t = t + 1
                        u = u + 32
                        continue 
                    u = t
                    while s + sha3(stor8.length + sha3(8)) + 2 > u:
                        stor[u] = 0
                        u = u + 1
                        continue 
                    s = s + 2
                    idx = idx + 32
                    continue 
                idx = s
                while sha3(stor8.length + sha3(8)) + (2 * stor8[stor8.length].field_0) > idx:
                    stor[idx] = 0
                    name[idx] = 0
                    idx = idx + 2
                    continue 
}



}
