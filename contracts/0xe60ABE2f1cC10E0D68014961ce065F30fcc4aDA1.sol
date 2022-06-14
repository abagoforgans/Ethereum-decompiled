contract main {




// =====================  Runtime code  =====================


#
#  - sub_cbb859c1(?)
#
array of uint256 sub_0e3a3faf;
array of uint256 sub_1e925633;
array of struct sub_a8af1f24;
uint256 i;
uint256 sub_e9ab979f;
array of uint256 bet;
array of address player;
address stor1E85;
mapping of uint8 stor2000196;
uint256 stor1E85;
array of uint256 sub_3bab87a1;

function sub_0e3a3faf(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_0e3a3faf.length
    return sub_0e3a3faf[arg1]
}

function sub_1e925633(?) {
    require calldata.size - 4 >= 32
    require arg1 < 999999
    return sub_1e925633[arg1]
}

function sub_3bab87a1(?) {
    require calldata.size - 4 >= 32
    require arg1 < 18
    return sub_3bab87a1[arg1]
}

function bet(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < 8
    return bet[arg1]
}

function sub_8ff193af(?) {
    require calldata.size - 4 >= 32
    return bool(stor1E85[arg1])
}

function player(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < player.length
    return player[arg1]
}

function sub_a8af1f24(?) {
    require calldata.size - 4 >= 32
    require arg1 < 999999
    return sub_a8af1f24[arg1].field_0
}

function i() {
    return i
}

function sub_e9ab979f(?) {
    return sub_e9ab979f
}

function sub_5e59a03f(?) {
    require msg.sender == stor1E85
    selfdestruct(stor1E85)
}

function _fallback() payable {
    revert
}

function getadd() {
    idx = 0
    while idx <= player.length:
        require idx < player.length
        mem[0] = 2000194
        if player[idx] != msg.sender:
            idx = idx + 1
            continue 
        return idx
    return 0
}

function reset(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor1E85
    require arg1 < sub_0e3a3faf.length
    sub_0e3a3faf[arg1] = 0
    require arg1 < 999999
    sub_a8af1f24[arg1].field_0 = 0
    sub_1e925633[arg1] = 0
}

function sub_4c644b38(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor1E85
    call stor1E85 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2c2d0d29(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor1E85
    if arg1 == 1:
        s = 2000209
        idx = 2000227
        while 2000245 > idx:
            stor[s] = stor[idx]
            s = s + 1
            idx = idx + 1
            continue 
        idx = 2000227
        while 2000227 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    else:
        if arg1 == 2:
            s = 2000209
            idx = 2000245
            while 2000263 > idx:
                stor[s] = stor[idx]
                s = s + 1
                idx = idx + 1
                continue 
            idx = 2000227
            while 2000227 > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        else:
            if arg1 == 3:
                s = 2000209
                idx = 2000263
                while 2000281 > idx:
                    stor[s] = stor[idx]
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = 2000227
                while 2000227 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
}

function cashin() payable {
    require msg.value > 10^15
    if not stor1E85[address(msg.sender)]:
        player.length++
        player[player.length] = msg.sender
        sub_0e3a3faf.length++
        sub_0e3a3faf[sub_0e3a3faf.length] = msg.value / 10^15
        stor1E85[address(msg.sender)] = 1
    else:
        if bool(stor1E85[address(msg.sender)]) == 1:
            idx = 0
            while idx <= player.length:
                require idx < player.length
                mem[0] = 2000194
                if player[idx] != msg.sender:
                    idx = idx + 1
                    continue 
                i = idx
                require i < player.length
                require i < sub_0e3a3faf.length
                require i < 999999
                sub_1e925633[stor1E84] = sub_0e3a3faf[stor1E84]
                require i < sub_0e3a3faf.length
                require i < sub_0e3a3faf.length
                if not sub_0e3a3faf[stor1E84]:
                    sub_0e3a3faf[stor1E84] = msg.value / 10^15
                else:
                    if sub_0e3a3faf[stor1E84]:
                        require i < 999999
                        require i < sub_0e3a3faf.length
                        sub_0e3a3faf[stor1E84] = (msg.value / 10^15) + sub_1e925633[stor1E84]
            require i < sub_0e3a3faf.length
            require i < 999999
            sub_1e925633[stor1E84] = sub_0e3a3faf[stor1E84]
            require i < sub_0e3a3faf.length
            require i < sub_0e3a3faf.length
            if not sub_0e3a3faf[stor1E84]:
                sub_0e3a3faf[stor1E84] = msg.value / 10^15
            else:
                if sub_0e3a3faf[stor1E84]:
                    require i < 999999
                    require i < sub_0e3a3faf.length
                    sub_0e3a3faf[stor1E84] = (msg.value / 10^15) + sub_1e925633[stor1E84]
}

function double() {
    idx = 0
    while idx <= player.length:
        require idx < player.length
        mem[0] = 2000194
        if player[idx] != msg.sender:
            idx = idx + 1
            continue 
        i = idx
        require i < player.length
        require i < player.length
        require msg.sender == player[stor1E84]
        require i < 999999
        require sub_a8af1f24[stor1E84].field_0
        idx = 256
        s = 2000197
        while 352 > idx + 32:
            mem[idx + 32] = sub_1e925633[s]
            idx = idx + 32
            s = s + 1
            continue 
        require i < 999999
        if sha3(block.difficulty, block.timestamp, stor1E85, mem[288 len 64]) % 3:
            sub_a8af1f24[stor1E84].field_0 = 0
        else:
            bool(sub_a8af1f24[stor1E84].field_0) = 0
            uint255(sub_a8af1f24[stor1E84].field_1) = uint255(sub_a8af1f24[stor1E84].field_0)
        emit 0xa32fe7d3: Array(len=6, data='double'), sha3(block.difficulty, block.timestamp, stor1E85, mem[288 len 64]) % 3, msg.sender, block.timestamp
        return (sha3(block.difficulty, block.timestamp, stor1E85, mem[288 len 64]) % 3)
    require i < player.length
    require msg.sender == player[stor1E84]
    require i < 999999
    require sub_a8af1f24[stor1E84].field_0
    idx = 192
    s = 2000197
    while 288 > idx + 32:
        mem[idx + 32] = sub_1e925633[s]
        idx = idx + 32
        s = s + 1
        continue 
    require i < 999999
    if sha3(block.difficulty, block.timestamp, stor1E85, mem[224 len 64]) % 3:
        sub_a8af1f24[stor1E84].field_0 = 0
    else:
        bool(sub_a8af1f24[stor1E84].field_0) = 0
        uint255(sub_a8af1f24[stor1E84].field_1) = uint255(sub_a8af1f24[stor1E84].field_0)
    emit 0xa32fe7d3: Array(len=6, data='double'), sha3(block.difficulty, block.timestamp, stor1E85, mem[224 len 64]) % 3, msg.sender, block.timestamp
    return (sha3(block.difficulty, block.timestamp, stor1E85, mem[224 len 64]) % 3)
}

function pay() {
    idx = 0
    while idx <= player.length:
        require idx < player.length
        mem[0] = 2000194
        if player[idx] != msg.sender:
            idx = idx + 1
            continue 
        i = idx
        require i < player.length
        require i < player.length
        require msg.sender == player[stor1E84]
        require i < sub_0e3a3faf.length
        require i < 999999
        if not sub_0e3a3faf[stor1E84]:
            require sub_a8af1f24[stor1E84].field_0
        require i < sub_0e3a3faf.length
        call stor1E85 with:
           value (10^13 * sub_0e3a3faf[stor1E84]) + (10^13 * sub_a8af1f24[stor1E84].field_0) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require i < player.length
        call player[stor1E84] with:
           value (275 * 10^9 * 3600 * sub_0e3a3faf[stor1E84]) + (275 * 10^9 * 3600 * sub_a8af1f24[stor1E84].field_0) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require i < 999999
        sub_a8af1f24[stor1E84].field_0 = 0
        require i < sub_0e3a3faf.length
        sub_0e3a3faf[stor1E84] = 0
    require i < player.length
    require msg.sender == player[stor1E84]
    require i < sub_0e3a3faf.length
    require i < 999999
    if not sub_0e3a3faf[stor1E84]:
        require sub_a8af1f24[stor1E84].field_0
    require i < sub_0e3a3faf.length
    call stor1E85 with:
       value (10^13 * sub_0e3a3faf[stor1E84]) + (10^13 * sub_a8af1f24[stor1E84].field_0) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require i < player.length
    call player[stor1E84] with:
       value (275 * 10^9 * 3600 * sub_0e3a3faf[stor1E84]) + (275 * 10^9 * 3600 * sub_a8af1f24[stor1E84].field_0) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require i < 999999
    sub_a8af1f24[stor1E84].field_0 = 0
    require i < sub_0e3a3faf.length
    sub_0e3a3faf[stor1E84] = 0
}



}
