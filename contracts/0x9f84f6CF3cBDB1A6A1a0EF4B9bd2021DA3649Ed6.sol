contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
address stor2;

function _fallback() payable {
    stor0 = 20
    stor1 = 10^stor0
    stor2 = 0xdfc995ec17072566cdcf1d637a8bcebd51a1b234
    require not msg.value
    return code.data[129 len 5914]
}



// =====================  Runtime code  =====================


array of uint256 stor1;
address stor2;
array of struct monsters;
mapping of address monsterToOwner;
mapping of uint256 stor5;
mapping of uint256 stor6;
array of uint256 stor7;
array of uint256 stor8;
array of uint256 stor9;
array of uint256 stor10;

function monsters(uint256 arg1) {
    require arg1 < monsters.length
    mem[352] = monsters[arg1].field_0
    idx = 352
    s = 0
    while monsters[arg1].length + 352 > idx + 32:
        mem[idx + 32] = monsters[(7 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=monsters[arg1].length, data=mem[352 len monsters[arg1].length + (floor32(monsters[arg1].length - 1) + -monsters[arg1].length + 32 % 32)]), 
           monsters[arg1].field_256,
           monsters[arg1].field_512,
           monsters[arg1].field_768,
           monsters[arg1].field_1024,
           monsters[arg1].field_1280,
           monsters[arg1].field_1536
}

function monsterToOwner(uint256 arg1) {
    return monsterToOwner[arg1]
}

function _fallback() payable {
    revert
}

function sub_03673cfb(?) {
    emit 0xfb14bbbb: address(arg1), stor6[address(arg1)], stor5[address(arg1)]
    return stor6[address(arg1)], stor5[address(arg1)]
}

function withdrawFees(uint256 arg1) {
    require msg.sender == stor2
    if eth.balance(this.address) >= arg1:
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function _randomPower(uint256 arg1) {
    idx = 0
    s = block.hash(block.number - 1)
    while idx < 6:
        idx = idx + 1
        s = s / 256
        continue 
    if arg1:
        return (block.hash(block.number - 1) + 1488 % arg1)
    revert
}

function withdraw() {
    if stor6[address(msg.sender)]:
        if eth.balance(this.address) >= stor6[address(msg.sender)]:
            call msg.sender with:
               value stor6[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            stor6[address(msg.sender)] = 0
}

function sub_223dca0e(?) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < stor7.length:
        require idx < stor8.length
        require idx < stor9.length
        require idx < stor10.length
        mem[0] = 10
        mem[mem[64]] = stor7[idx]
        mem[mem[64] + 32] = stor8[idx]
        mem[mem[64] + 64] = stor9[idx]
        mem[mem[64] + 96] = stor10[idx]
        emit 0xa97c4504: stor7[idx], stor8[idx], stor9[idx], stor10[idx]
        idx = idx + 1
        continue 
}

function sub_8062e644(?) {
    require msg.sender == stor2
    require arg1 > 0
    stor7.length++
    if not stor7.length <= stor7.length + 1:
        idx = stor7.length + 1
        while stor7.length > idx:
            stor7[idx] = 0
            idx = idx + 1
            continue 
    stor7[stor7.length] = arg1
    stor9.length++
    if not stor9.length <= stor9.length + 1:
        idx = stor9.length + 1
        while stor9.length > idx:
            stor9[idx] = 0
            idx = idx + 1
            continue 
    stor9[stor9.length] = arg2
    stor8.length++
    if not stor8.length <= stor8.length + 1:
        idx = stor8.length + 1
        while stor8.length > idx:
            stor8[idx] = 0
            idx = idx + 1
            continue 
    stor8[stor8.length] = arg2
    stor10.length++
    if not stor10.length <= stor10.length + 1:
        idx = stor10.length + 1
        while stor10.length > idx:
            stor10[idx] = 0
            idx = idx + 1
            continue 
    stor10[stor10.length] = 0
}

function sub_eea7cb02(?) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < monsters.length:
        mem[0] = idx
        mem[32] = 4
        if monsterToOwner[idx] == arg1:
            require idx < monsters.length
            mem[0] = 3
            if monsters[idx].field_1024 > 0:
                require idx < monsters.length
                mem[0] = 3
                _16 = mem[64]
                mem[mem[64]] = monsters[idx].field_512
                mem[mem[64] + 32] = monsters[idx].field_1024
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = monsters[idx].length
                mem[0] = (7 * idx) + sha3(3)
                mem[mem[64] + 128] = monsters[idx].field_0
                s = mem[64] + 128
                t = sha3(mem[0])
                while _16 + monsters[idx].length + 128 > s + 32:
                    mem[s + 32] = stor1[t]
                    s = s + 32
                    t = t + 1
                    continue 
                emit 0xcbacd040: mem[mem[64] len _16 + monsters[idx].length + (s + -_16 + -monsters[idx].length - 96 % 32) + -mem[64] + 128]
        idx = idx + 1
        continue 
}

function sub_4f206bda(?) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < monsters.length:
        mem[0] = idx
        mem[32] = 4
        if monsterToOwner[idx] != arg1:
            idx = idx + 1
            continue 
        require idx < monsters.length
        mem[0] = 3
        _22 = mem[64]
        mem[mem[64]] = monsters[idx].field_256
        mem[mem[64] + 32] = monsters[idx].field_512
        mem[mem[64] + 64] = monsters[idx].field_768
        mem[mem[64] + 96] = monsters[idx].field_1024
        mem[mem[64] + 128] = monsters[idx].field_1280
        mem[mem[64] + 160] = monsters[idx].field_1536
        mem[mem[64] + 192] = 224
        mem[mem[64] + 224] = monsters[idx].length
        mem[0] = (7 * idx) + sha3(3)
        mem[mem[64] + 256] = monsters[idx].field_0
        s = mem[64] + 256
        t = sha3(mem[0])
        while _22 + monsters[s].length + 256 > s + 32:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        emit 0x28dc214a: mem[mem[64] len _22 + monsters[s].length + (s + -_22 + -monsters[s].length - 224 % 32) + -mem[64] + 256]
        s = s + 1
        continue 
}

function sub_dc033b79(?) {
    require msg.sender == monsterToOwner[arg1]
    require arg1 < monsters.length
    if monsters[arg1].field_1024 > 0:
        require arg1 < monsters.length
        require monsters[arg1].field_512 < stor7.length
        idx = 0
        s = block.hash(block.number - 1)
        while idx < 6:
            idx = idx + 1
            s = s / 256
            continue 
        require stor7[stor3[arg1].field_512]
        require stor1.length
        monsters.length++
        if not monsters.length <= monsters.length + 1:
            mem[0] = 3
            idx = (7 * monsters.length) + 7
            while sha3(3) + (7 * monsters.length) > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                if 31 < stor[idx + sha3(mem[0])].length:
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(idx + sha3(mem[0]))
                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                stor[idx + sha3(mem[0]) + 1] = 0
                stor[idx + sha3(mem[0]) + 2] = 0
                stor[idx + sha3(mem[0]) + 3] = 0
                stor[idx + sha3(mem[0]) + 4] = 0
                stor[idx + sha3(mem[0]) + 5] = 0
                stor[idx + sha3(mem[0]) + 6] = 0
                idx = idx + 7
                continue 
        bool(monsters[monsters.length].field_0) = 0
        uint255(monsters[monsters.length].field_1) = 5
        Mask(248, 0, monsters[monsters.length].field_8) = 'Child' / 256
        idx = 0
        while monsters[monsters.length].length + 31 / 32 > idx:
            monsters[(7 * monsters.length) + idx].field_0 = 0
            idx = idx + 1
            continue 
        monsters[monsters.length].field_256 = sha3(monsters.length) % stor1.length
        monsters[monsters.length].field_512 = monsters[arg1].field_512
        monsters[monsters.length].field_768 = block.hash(block.number - 1) + 1488 % stor7[stor3[arg1].field_512]
        monsters[monsters.length].field_1024 = 0
        monsters[monsters.length].field_1280 = 1
        monsters[monsters.length].field_1536 = 0
        monsterToOwner[stor3.length] = msg.sender
        stor5[address(msg.sender)]++
        require arg1 < monsters.length
        monsters[arg1].field_1024--
}

function buyMonster(string arg1, uint256 arg2) payable {
    require arg2 < stor10.length
    require arg2 >= 0
    require arg2 < stor8.length
    if msg.value + stor6[address(msg.sender)] < stor8[arg2]:
        stor6[address(msg.sender)] += msg.value
    else:
        require arg2 < stor8.length
        stor6[address(msg.sender)] = stor6[address(msg.sender)] - stor8[arg2] + msg.value
        require arg2 < stor10.length
        require arg2 >= 0
        idx = 0
        while idx < monsters.length:
            mem[0] = 3
            if monsters[idx].field_512 == arg2:
                require arg2 < stor9.length
                mem[32] = 6
                stor6[stor4[idx]] += stor9[arg2]
                require idx < monsters.length
                mem[0] = 3
                monsters[idx].field_1536 += stor9[arg2]
            idx = idx + 1
            continue 
        require arg2 < stor7.length
        idx = 0
        s = block.hash(block.number - 1)
        while idx < 6:
            idx = idx + 1
            s = s / 256
            continue 
        require stor7[arg2]
        require stor1.length
        monsters.length++
        if not monsters.length <= monsters.length + 1:
            mem[0] = 3
            idx = (7 * monsters.length) + 7
            while sha3(3) + (7 * monsters.length) > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                if 31 < stor[idx + sha3(mem[0])].length:
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(idx + sha3(mem[0]))
                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                stor[idx + sha3(mem[0]) + 1] = 0
                stor[idx + sha3(mem[0]) + 2] = 0
                stor[idx + sha3(mem[0]) + 3] = 0
                stor[idx + sha3(mem[0]) + 4] = 0
                stor[idx + sha3(mem[0]) + 5] = 0
                stor[idx + sha3(mem[0]) + 6] = 0
                idx = idx + 7
                continue 
        monsters[monsters.length][].field_0 = Array(len=arg1.length, data=arg1[all])
        monsters[monsters.length].field_256 = sha3(1) % stor1.length
        monsters[monsters.length].field_512 = arg2
        monsters[monsters.length].field_768 = block.hash(block.number - 1) + 1488 % stor7[arg2]
        if not sha3(1) % stor1.length % 5:
            monsters[monsters.length].field_1024 = 3
        else:
            if sha3(1) % stor1.length % 3:
                monsters[monsters.length].field_1024 = 1
            else:
                monsters[monsters.length].field_1024 = 2
        monsters[monsters.length].field_1280 = 0
        monsters[monsters.length].field_1536 = 0
        monsterToOwner[stor3.length] = msg.sender
        stor5[address(msg.sender)]++
        require arg2 < stor9.length
        require arg2 < stor8.length
        stor8[arg2] += stor9[arg2]
        require arg2 < stor10.length
        stor10[arg2]++
}



}
