contract main {




// =====================  Runtime code  =====================


#
#  - sub_cbb859c1(?)
#
array of uint256 sub_0e3a3faf;
array of uint256 sub_1e925633;
array of struct sub_a8af1f24;
uint256 i;
array of uint256 bet;
uint256 sub_e9ab979f;
address stor1E85;
array of address player;
address adminAddress;
mapping of uint8 stor2000196;
uint256 stor1E85;
array of uint256 sub_3bab87a1;

function sub_0e3a3faf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_0e3a3faf.length
    return sub_0e3a3faf[arg1]
}

function sub_1e925633(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 999999
    return sub_1e925633[arg1]
}

function sub_3bab87a1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 18
    return sub_3bab87a1[arg1]
}

function bet(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 8
    return bet[arg1]
}

function sub_8ff193af(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor1E85[arg1])
}

function player(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < player.length
    return player[arg1]
}

function sub_a8af1f24(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 999999
    return sub_a8af1f24[arg1].field_0
}

function i() payable {
    return i
}

function sub_e9ab979f(?) payable {
    return sub_e9ab979f
}

function admin() payable {
    return adminAddress
}

function sub_5e59a03f(?) payable {
    require msg.sender == adminAddress
    selfdestruct(adminAddress)
}

function _fallback() payable {
    revert
}

function getadd() payable {
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

function reset(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == adminAddress
    require arg1 < sub_0e3a3faf.length
    sub_0e3a3faf[arg1] = 0
    require arg1 < 999999
    sub_a8af1f24[arg1].field_0 = 0
    sub_1e925633[arg1] = 0
}

function sub_4c644b38(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == adminAddress
    require ext_code.size(stor1E85)
    call stor1E85.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), adminAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_2c2d0d29(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == adminAddress
    if arg1 == 1:
        s = 2000208
        idx = 2000226
        while 2000244 > idx:
            stor[s] = stor[idx]
            s = s + 1
            idx = idx + 1
            continue 
        idx = 2000226
        while 2000226 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    else:
        if arg1 == 2:
            s = 2000208
            idx = 2000244
            while 2000262 > idx:
                stor[s] = stor[idx]
                s = s + 1
                idx = idx + 1
                continue 
            idx = 2000226
            while 2000226 > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        else:
            if arg1 == 3:
                s = 2000208
                idx = 2000262
                while 2000280 > idx:
                    stor[s] = stor[idx]
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = 2000226
                while 2000226 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
}

function pay() payable {
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
        require i < player.length
        require ext_code.size(stor1E85)
        call stor1E85.0x23b872dd with:
             gas gas_remaining wei
            args adminAddress, player[stor1E84], (10^18 * sub_0e3a3faf[stor1E84]) + (10^18 * sub_a8af1f24[stor1E84].field_0)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
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
    require i < player.length
    require ext_code.size(stor1E85)
    call stor1E85.0x23b872dd with:
         gas gas_remaining wei
        args adminAddress, player[stor1E84], (10^18 * sub_0e3a3faf[stor1E84]) + (10^18 * sub_a8af1f24[stor1E84].field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require i < 999999
    sub_a8af1f24[stor1E84].field_0 = 0
    require i < sub_0e3a3faf.length
    sub_0e3a3faf[stor1E84] = 0
}

function double() payable {
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
        while 320 > idx + 32:
            mem[idx + 32] = sub_1e925633[s]
            idx = idx + 32
            s = s + 1
            continue 
        if bool(sha3(block.difficulty, block.timestamp, stor1E85, mem[288])):
            if bool(sha3(block.difficulty, block.timestamp, stor1E85, mem[288])) == 1:
                require i < 999999
                sub_a8af1f24[stor1E84].field_0 = 0
        else:
            require i < 999999
            bool(sub_a8af1f24[stor1E84].field_0) = 0
            uint255(sub_a8af1f24[stor1E84].field_1) = uint255(sub_a8af1f24[stor1E84].field_0)
        emit 0x83ace25d: Array(len=6, data='double'), sha3(block.difficulty, block.timestamp, stor1E85, mem[288]) << 255, msg.sender, block.timestamp, sub_e9ab979f
        return bool(sha3(block.difficulty, block.timestamp, stor1E85, mem[288]))
    require i < player.length
    require msg.sender == player[stor1E84]
    require i < 999999
    require sub_a8af1f24[stor1E84].field_0
    idx = 192
    s = 2000197
    while 256 > idx + 32:
        mem[idx + 32] = sub_1e925633[s]
        idx = idx + 32
        s = s + 1
        continue 
    if bool(sha3(block.difficulty, block.timestamp, stor1E85, mem[224])):
        if bool(sha3(block.difficulty, block.timestamp, stor1E85, mem[224])) == 1:
            require i < 999999
            sub_a8af1f24[stor1E84].field_0 = 0
    else:
        require i < 999999
        bool(sub_a8af1f24[stor1E84].field_0) = 0
        uint255(sub_a8af1f24[stor1E84].field_1) = uint255(sub_a8af1f24[stor1E84].field_0)
    emit 0x83ace25d: Array(len=6, data='double'), sha3(block.difficulty, block.timestamp, stor1E85, mem[224]) << 255, msg.sender, block.timestamp, sub_e9ab979f
    return bool(sha3(block.difficulty, block.timestamp, stor1E85, mem[224]))
}

function sub_0e6bc49c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 > 0
    if not stor1E85[address(msg.sender)]:
        player.length++
        player[player.length] = msg.sender
        sub_0e3a3faf.length++
        sub_0e3a3faf[sub_0e3a3faf.length] = arg1
        stor1E85[address(msg.sender)] = 1
        require ext_code.size(stor1E85)
        call stor1E85.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, adminAddress, 10^18 * arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
        if bool(stor1E85[address(msg.sender)]) == 1:
            require ext_code.size(stor1E85)
            call stor1E85.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, adminAddress, 10^18 * arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
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
                    sub_0e3a3faf[stor1E84] = arg1
                else:
                    if sub_0e3a3faf[stor1E84]:
                        require i < 999999
                        require i < sub_0e3a3faf.length
                        sub_0e3a3faf[stor1E84] = arg1 + sub_1e925633[stor1E84]
            require i < sub_0e3a3faf.length
            require i < 999999
            sub_1e925633[stor1E84] = sub_0e3a3faf[stor1E84]
            require i < sub_0e3a3faf.length
            require i < sub_0e3a3faf.length
            if not sub_0e3a3faf[stor1E84]:
                sub_0e3a3faf[stor1E84] = arg1
            else:
                if sub_0e3a3faf[stor1E84]:
                    require i < 999999
                    require i < sub_0e3a3faf.length
                    sub_0e3a3faf[stor1E84] = arg1 + sub_1e925633[stor1E84]
}



}
