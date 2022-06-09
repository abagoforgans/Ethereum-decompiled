contract main {




// =====================  Runtime code  =====================


#
#  - sub_6ebf9f65(?)
#  - sub_9f2091d8(?)
#  - guessNumber(uint256 arg1)
#  - sub_cca8c5ec(?)
#
array of struct sub_2b6f7ec9;
mapping of uint256 stor1;
mapping of uint256 stor2;
address stor3;
address stor4;
address stor5;
address stor6;
address stor7;

function sub_238a4894(?) {
    return bool(sub_2b6f7ec9[arg1].field_1536)
}

function sub_2b6f7ec9(?) {
    if not sub_2b6f7ec9[arg2].field_1536:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'this day has not been calculated.'
    return sub_2b6f7ec9[arg2][5][arg1].field_0
}

function sub_33406502(?) {
    return sub_2b6f7ec9[arg2][arg1].field_0
}

function sub_a018fa3d(?) {
    return sub_2b6f7ec9[arg1].field_768
}

function sub_ed9198e8(?) {
    return sub_2b6f7ec9[arg1].field_1792
}

function _fallback() payable {
    revert
}

function sub_8c5e83b9(?) {
    return sub_2b6f7ec9[arg1].field_768, 
           bool(sub_2b6f7ec9[arg1].field_1536),
           sub_2b6f7ec9[arg1].field_1792,
           sub_2b6f7ec9[arg1].field_2304
}

function sub_efc6419f(?) {
    require 0x8af29a1303e122df47bee2e82906b98c3821c4d3 == msg.sender
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2e9785f1(?) {
    require ext_code.size(stor3)
    call stor3.0x24d7806c with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'admin only'
    require arg1
    stor4 = arg1
}

function sub_cbd7079c(?) {
    require ext_code.size(stor3)
    call stor3.0x24d7806c with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'admin only'
    require arg1
    stor5 = arg1
}

function sub_b974f1c2(?) {
    require ext_code.size(stor3)
    call stor3.0x24d7806c with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'admin only'
    require arg1
    stor6 = arg1
    stor7 = arg1
}

function sub_883884d8(?) {
    if not sub_2b6f7ec9[arg2].field_1536:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'this day has not been calculated.'
    if sub_2b6f7ec9[arg2][arg1].field_0 == sub_2b6f7ec9[arg2].field_768:
        return 0
    idx = 1
    while idx != 6:
        require sub_2b6f7ec9[arg2].field_768 + sub_2b6f7ec9[arg2][4][idx].field_0 >= sub_2b6f7ec9[arg2][4][idx].field_0
        if sub_2b6f7ec9[arg2].field_768 + sub_2b6f7ec9[arg2][4][idx].field_0 != sub_2b6f7ec9[arg2][arg1].field_0:
            mem[0] = arg2
            mem[32] = 0
            if sub_2b6f7ec9[arg2].field_768 <= sub_2b6f7ec9[arg2][4][idx].field_0:
                idx = idx + 1
                continue 
            mem[0] = arg2
            mem[32] = 0
            require sub_2b6f7ec9[arg2][4][idx].field_0 <= sub_2b6f7ec9[arg2].field_768
            if sub_2b6f7ec9[arg2].field_768 - sub_2b6f7ec9[arg2][4][idx].field_0 != sub_2b6f7ec9[arg2][arg1].field_0:
                idx = idx + 1
                continue 
        return idx
    return -1
}

function sub_aa881914(?) {
    if not sub_2b6f7ec9[arg2].field_1536:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'this day has not been calculated.'
    if sub_2b6f7ec9[arg2][arg1].field_0 != sub_2b6f7ec9[arg2].field_768:
        idx = 1
        while idx != 6:
            require sub_2b6f7ec9[arg2].field_768 + sub_2b6f7ec9[arg2][4][idx].field_0 >= sub_2b6f7ec9[arg2][4][idx].field_0
            if sub_2b6f7ec9[arg2].field_768 + sub_2b6f7ec9[arg2][4][idx].field_0 != sub_2b6f7ec9[arg2][arg1].field_0:
                mem[0] = arg2
                mem[32] = 0
                if sub_2b6f7ec9[arg2].field_768 <= sub_2b6f7ec9[arg2][4][idx].field_0:
                    idx = idx + 1
                    continue 
                mem[0] = arg2
                mem[32] = 0
                require sub_2b6f7ec9[arg2][4][idx].field_0 <= sub_2b6f7ec9[arg2].field_768
                if sub_2b6f7ec9[arg2].field_768 - sub_2b6f7ec9[arg2][4][idx].field_0 != sub_2b6f7ec9[arg2][arg1].field_0:
                    idx = idx + 1
                    continue 
            if -1 == idx:
                return 0
            if not idx:
                require sub_2b6f7ec9[arg2][5][0].field_0 > 0
                if sub_2b6f7ec9[arg2][5][0].field_0:
                    return (sub_2b6f7ec9[arg2].field_1792 / 10 / sub_2b6f7ec9[arg2][5][0].field_0)
            else:
                if 1 == idx:
                    require sub_2b6f7ec9[arg2][5][1].field_0 > 0
                    if sub_2b6f7ec9[arg2][5][1].field_0:
                        return (sub_2b6f7ec9[arg2].field_1792 / 20 / sub_2b6f7ec9[arg2][5][1].field_0)
                else:
                    if 2 == idx:
                        require sub_2b6f7ec9[arg2][5][2].field_0 > 0
                        if sub_2b6f7ec9[arg2][5][2].field_0:
                            return (sub_2b6f7ec9[arg2].field_1792 / 50 / sub_2b6f7ec9[arg2][5][2].field_0)
                    else:
                        if idx != 3:
                            if 4 == idx:
                                require sub_2b6f7ec9[arg2][5][4].field_0 > 0
                                if sub_2b6f7ec9[arg2][5][4].field_0:
                                    return (sub_2b6f7ec9[arg2].field_1792 / 100 / sub_2b6f7ec9[arg2][5][4].field_0)
                            else:
                                if idx != 5:
                                    revert with 0, 'impossible position'
                                require sub_2b6f7ec9[arg2][5][5].field_0 > 0
                                if sub_2b6f7ec9[arg2][5][5].field_0:
                                    return (sub_2b6f7ec9[arg2].field_1792 / 200 / sub_2b6f7ec9[arg2][5][5].field_0)
                        else:
                            if not sub_2b6f7ec9[arg2].field_1792:
                                require sub_2b6f7ec9[arg2][5][3].field_0 > 0
                                if sub_2b6f7ec9[arg2][5][3].field_0:
                                    return (0 / sub_2b6f7ec9[arg2][5][3].field_0)
                            else:
                                require 3 * sub_2b6f7ec9[arg2].field_1792 / sub_2b6f7ec9[arg2].field_1792 == 3
                                require sub_2b6f7ec9[arg2][5][3].field_0 > 0
                                if sub_2b6f7ec9[arg2][5][3].field_0:
                                    return (3 * sub_2b6f7ec9[arg2].field_1792 / 200 / sub_2b6f7ec9[arg2][5][3].field_0)
                            ('iszero', ('field', 0, ('stor', ('map', 3, ('array', 5, ('map', ('param', 'arg2'), ('name', 'sub_2b6f7ec9', 0)))))))
            revert
        return 0
    require sub_2b6f7ec9[arg2][5][0].field_0 > 0
    require sub_2b6f7ec9[arg2][5][0].field_0
    return (sub_2b6f7ec9[arg2].field_1792 / 10 / sub_2b6f7ec9[arg2][5][0].field_0)
}

function getWinners(uint256 arg1, uint256 arg2) {
    require sub_2b6f7ec9[arg2][4][arg1].field_0 + sub_2b6f7ec9[arg2].field_768 >= sub_2b6f7ec9[arg2].field_768
    if 0 == arg1:
        if not sub_2b6f7ec9[arg2][1][sub_2b6f7ec9[arg2][4][arg1].field_0 + sub_2b6f7ec9[arg2].field_768].field_0:
            mem[(32 * sub_2b6f7ec9[arg2][1][sub_2b6f7ec9[arg2][4][arg1].field_0 + sub_2b6f7ec9[arg2].field_768].field_0) + 128] = 32
            mem[(32 * sub_2b6f7ec9[arg2][1][sub_2b6f7ec9[arg2][4][arg1].field_0 + sub_2b6f7ec9[arg2].field_768].field_0) + 160] = sub_2b6f7ec9[arg2][1][sub_2b6f7ec9[arg2][4][arg1].field_0 + sub_2b6f7ec9[arg2].field_768].field_0
            mem[(32 * sub_2b6f7ec9[arg2][1][sub_2b6f7ec9[arg2][4][arg1].field_0 + sub_2b6f7ec9[arg2].field_768].field_0) + 192 len floor32(sub_2b6f7ec9[arg2][1][sub_2b6f7ec9[arg2][4][arg1].field_0 + sub_2b6f7ec9[arg2].field_768].field_0)] = mem[128 len floor32(sub_2b6f7ec9[arg2][1][sub_2b6f7ec9[arg2][4][arg1].field_0 + sub_2b6f7ec9[arg2].field_768].field_0)]
            return memory
              from (32 * sub_2b6f7ec9[arg2][1][sub_2b6f7ec9[arg2][4][arg1].field_0 + sub_2b6f7ec9[arg2].field_768].field_0) + 128
               len (96 * sub_2b6f7ec9[arg2][1][sub_2b6f7ec9[arg2][4][arg1].field_0 + sub_2b6f7ec9[arg2].field_768].field_0) + 64
        mem[128] = sub_2b6f7ec9[arg2][1][sub_2b6f7ec9[arg2][4][arg1].field_0 + sub_2b6f7ec9[arg2].field_768].field_0
        idx = 128
        s = 0
        while (32 * sub_2b6f7ec9[arg2][1][sub_2b6f7ec9[arg2][4][arg1].field_0 + sub_2b6f7ec9[arg2].field_768].field_0) + 96 > idx:
            mem[idx + 32] = sub_2b6f7ec9[arg2][1][sub_2b6f7ec9[arg2][4][arg1].field_0 + sub_2b6f7ec9[arg2].field_768][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_2b6f7ec9[arg2][1][sub_2b6f7ec9[arg2][4][arg1].field_0 + sub_2b6f7ec9[arg2].field_768].field_0) + 192 len floor32(sub_2b6f7ec9[arg2][1][sub_2b6f7ec9[arg2][4][arg1].field_0 + sub_2b6f7ec9[arg2].field_768].field_0)] = mem[128 len floor32(sub_2b6f7ec9[arg2][1][sub_2b6f7ec9[arg2][4][arg1].field_0 + sub_2b6f7ec9[arg2].field_768].field_0)]
        return Array(len=sub_2b6f7ec9[arg2][1][sub_2b6f7ec9[arg2][4][arg1].field_0 + sub_2b6f7ec9[arg2].field_768].field_0, data=mem[128 len floor32(sub_2b6f7ec9[arg2][1][sub_2b6f7ec9[arg2][4][arg1].field_0 + sub_2b6f7ec9[arg2].field_768].field_0)], mem[(32 * sub_2b6f7ec9[arg2][1][sub_2b6f7ec9[arg2][4][arg1].field_0 + sub_2b6f7ec9[arg2].field_768].field_0) + floor32(sub_2b6f7ec9[arg2][1][sub_2b6f7ec9[arg2][4][arg1].field_0 + sub_2b6f7ec9[arg2].field_768].field_0) + 192 len (32 * sub_2b6f7ec9[arg2][1][sub_2b6f7ec9[arg2][4][arg1].field_0 + sub_2b6f7ec9[arg2].field_768].field_0) - floor32(sub_2b6f7ec9[arg2][1][sub_2b6f7ec9[arg2][4][arg1].field_0 + sub_2b6f7ec9[arg2].field_768].field_0)]), 
    if sub_2b6f7ec9[arg2][5][arg1].field_0:
        mem[128 len 32 * sub_2b6f7ec9[arg2][5][arg1].field_0] = code.data[10979 len 32 * sub_2b6f7ec9[arg2][5][arg1].field_0]
    idx = 0
    while idx != sub_2b6f7ec9[arg2][1][sub_2b6f7ec9[arg2][4][arg1].field_0 + sub_2b6f7ec9[arg2].field_768].field_0:
        require idx < sub_2b6f7ec9[arg2][1][sub_2b6f7ec9[arg2][4][arg1].field_0 + sub_2b6f7ec9[arg2].field_768].field_0
        mem[0] = sha3(sub_2b6f7ec9[arg2][4][arg1].field_0 + sub_2b6f7ec9[arg2].field_768, sha3(arg2, 0) + 1)
        require idx < sub_2b6f7ec9[arg2][5][arg1].field_0
        mem[(32 * idx) + 128] = sub_2b6f7ec9[arg2][1][sub_2b6f7ec9[arg2][4][arg1].field_0 + sub_2b6f7ec9[arg2].field_768][idx].field_0
        idx = idx + 1
        continue 
    if sub_2b6f7ec9[arg2].field_768 > sub_2b6f7ec9[arg2][4][arg1].field_0:
        require sub_2b6f7ec9[arg2][4][arg1].field_0 <= sub_2b6f7ec9[arg2].field_768
        idx = 0
        while idx != sub_2b6f7ec9[arg2][1][sub_2b6f7ec9[arg2].field_768 - sub_2b6f7ec9[arg2][4][arg1].field_0].field_0:
            require idx < sub_2b6f7ec9[arg2][1][sub_2b6f7ec9[arg2].field_768 - sub_2b6f7ec9[arg2][4][arg1].field_0].field_0
            mem[0] = sha3(sub_2b6f7ec9[arg2].field_768 - sub_2b6f7ec9[arg2][4][arg1].field_0, sha3(arg2, 0) + 1)
            require idx + sub_2b6f7ec9[arg2][1][sub_2b6f7ec9[arg2][4][arg1].field_0 + sub_2b6f7ec9[arg2].field_768].field_0 >= sub_2b6f7ec9[arg2][1][sub_2b6f7ec9[arg2][4][arg1].field_0 + sub_2b6f7ec9[arg2].field_768].field_0
            require idx + sub_2b6f7ec9[arg2][1][sub_2b6f7ec9[arg2][4][arg1].field_0 + sub_2b6f7ec9[arg2].field_768].field_0 < sub_2b6f7ec9[arg2][5][arg1].field_0
            mem[(32 * idx + sub_2b6f7ec9[arg2][1][sub_2b6f7ec9[arg2][4][arg1].field_0 + sub_2b6f7ec9[arg2].field_768].field_0) + 128] = sub_2b6f7ec9[arg2][1][sub_2b6f7ec9[arg2].field_768 - sub_2b6f7ec9[arg2][4][arg1].field_0][idx].field_0
            idx = idx + 1
            continue 
    mem[(32 * sub_2b6f7ec9[arg2][5][arg1].field_0) + 192 len floor32(sub_2b6f7ec9[arg2][5][arg1].field_0)] = mem[128 len floor32(sub_2b6f7ec9[arg2][5][arg1].field_0)]
    return Array(len=sub_2b6f7ec9[arg2][5][arg1].field_0, data=mem[128 len floor32(sub_2b6f7ec9[arg2][5][arg1].field_0)], mem[(32 * sub_2b6f7ec9[arg2][5][arg1].field_0) + floor32(sub_2b6f7ec9[arg2][5][arg1].field_0) + 192 len (32 * sub_2b6f7ec9[arg2][5][arg1].field_0) - floor32(sub_2b6f7ec9[arg2][5][arg1].field_0)]), 
}

function sub_a613e4bf(?) {
    require ext_code.size(stor6)
    call stor6.0x5d76a28d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(stor6)
    call stor6.0x9e14d659 with:
         gas gas_remaining wei
        args ext_call.return_data[64], arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 1
    if not ext_call.return_data[0]:
        return 2
    if ext_call.return_data[32]:
        return 3
    require 8 * 3600 <= block.timestamp
    require (block.timestamp - (8 * 3600) / 24 * 3600) + 1 >= block.timestamp - (8 * 3600) / 24 * 3600
    if sub_2b6f7ec9[(block.timestamp - (8 * 3600) / 24 * 3600) + 1][arg1].field_0:
        return 4
    if stor1[ext_call.return_data[64]][arg1]:
        if sub_2b6f7ec9[stor1[ext_call.return_data[64]][arg1]].field_1536:
            if not sub_2b6f7ec9[stor1[ext_call.return_data[64]][arg1]].field_1536:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'this day has not been calculated.'
            if sub_2b6f7ec9[stor1[ext_call.return_data[64]][arg1]][arg1].field_0 == sub_2b6f7ec9[stor1[ext_call.return_data[64]][arg1]].field_768:
                return 5
            idx = 1
            while idx != 6:
                require sub_2b6f7ec9[stor1[ext_call.return_data[64]][arg1]].field_768 + sub_2b6f7ec9[stor1[ext_call.return_data[64]][arg1]][4][idx].field_0 >= sub_2b6f7ec9[stor1[ext_call.return_data[64]][arg1]][4][idx].field_0
                if sub_2b6f7ec9[stor1[ext_call.return_data[64]][arg1]].field_768 + sub_2b6f7ec9[stor1[ext_call.return_data[64]][arg1]][4][idx].field_0 != sub_2b6f7ec9[stor1[ext_call.return_data[64]][arg1]][arg1].field_0:
                    mem[0] = stor1[ext_call.return_data[64]][arg1]
                    mem[32] = 0
                    if sub_2b6f7ec9[stor1[ext_call.return_data[64]][arg1]].field_768 <= sub_2b6f7ec9[stor1[ext_call.return_data[64]][arg1]][4][idx].field_0:
                        idx = idx + 1
                        continue 
                    mem[0] = stor1[ext_call.return_data[64]][arg1]
                    mem[32] = 0
                    require sub_2b6f7ec9[stor1[ext_call.return_data[64]][arg1]][4][idx].field_0 <= sub_2b6f7ec9[stor1[ext_call.return_data[64]][arg1]].field_768
                    if sub_2b6f7ec9[stor1[ext_call.return_data[64]][arg1]].field_768 - sub_2b6f7ec9[stor1[ext_call.return_data[64]][arg1]][4][idx].field_0 != sub_2b6f7ec9[stor1[ext_call.return_data[64]][arg1]][arg1].field_0:
                        idx = idx + 1
                        continue 
                if idx != -1:
                    return 5
                if stor2[ext_call.return_data[64]][arg1]:
                    if sub_2b6f7ec9[stor2[ext_call.return_data[64]][arg1]].field_1536:
                        if not sub_2b6f7ec9[stor2[ext_call.return_data[64]][arg1]].field_1536:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'this day has not been calculated.'
                        if sub_2b6f7ec9[stor2[ext_call.return_data[64]][arg1]][arg1].field_0 == sub_2b6f7ec9[stor2[ext_call.return_data[64]][arg1]].field_768:
                            return 5
                        idx = 1
                        while idx != 6:
                            require sub_2b6f7ec9[stor2[ext_call.return_data[64]][arg1]].field_768 + sub_2b6f7ec9[stor2[ext_call.return_data[64]][arg1]][4][idx].field_0 >= sub_2b6f7ec9[stor2[ext_call.return_data[64]][arg1]][4][idx].field_0
                            if sub_2b6f7ec9[stor2[ext_call.return_data[64]][arg1]].field_768 + sub_2b6f7ec9[stor2[ext_call.return_data[64]][arg1]][4][idx].field_0 != sub_2b6f7ec9[stor2[ext_call.return_data[64]][arg1]][arg1].field_0:
                                mem[0] = stor2[ext_call.return_data[64]][arg1]
                                mem[32] = 0
                                if sub_2b6f7ec9[stor2[ext_call.return_data[64]][arg1]].field_768 <= sub_2b6f7ec9[stor2[ext_call.return_data[64]][arg1]][4][idx].field_0:
                                    idx = idx + 1
                                    continue 
                                mem[0] = stor2[ext_call.return_data[64]][arg1]
                                mem[32] = 0
                                require sub_2b6f7ec9[stor2[ext_call.return_data[64]][arg1]][4][idx].field_0 <= sub_2b6f7ec9[stor2[ext_call.return_data[64]][arg1]].field_768
                                if sub_2b6f7ec9[stor2[ext_call.return_data[64]][arg1]].field_768 - sub_2b6f7ec9[stor2[ext_call.return_data[64]][arg1]][4][idx].field_0 != sub_2b6f7ec9[stor2[ext_call.return_data[64]][arg1]][arg1].field_0:
                                    idx = idx + 1
                                    continue 
                            if -1 == idx:
                                return 0
                            return 5
                        return 0
                    else:
                        return 0
                else:
                    return 0
    if stor2[ext_call.return_data[64]][arg1]:
        if sub_2b6f7ec9[stor2[ext_call.return_data[64]][arg1]].field_1536:
            if not sub_2b6f7ec9[stor2[ext_call.return_data[64]][arg1]].field_1536:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'this day has not been calculated.'
            if sub_2b6f7ec9[stor2[ext_call.return_data[64]][arg1]][arg1].field_0 == sub_2b6f7ec9[stor2[ext_call.return_data[64]][arg1]].field_768:
                return 5
            idx = 1
            while idx != 6:
                require sub_2b6f7ec9[stor2[ext_call.return_data[64]][arg1]].field_768 + sub_2b6f7ec9[stor2[ext_call.return_data[64]][arg1]][4][idx].field_0 >= sub_2b6f7ec9[stor2[ext_call.return_data[64]][arg1]][4][idx].field_0
                if sub_2b6f7ec9[stor2[ext_call.return_data[64]][arg1]].field_768 + sub_2b6f7ec9[stor2[ext_call.return_data[64]][arg1]][4][idx].field_0 != sub_2b6f7ec9[stor2[ext_call.return_data[64]][arg1]][arg1].field_0:
                    mem[0] = stor2[ext_call.return_data[64]][arg1]
                    mem[32] = 0
                    if sub_2b6f7ec9[stor2[ext_call.return_data[64]][arg1]].field_768 <= sub_2b6f7ec9[stor2[ext_call.return_data[64]][arg1]][4][idx].field_0:
                        idx = idx + 1
                        continue 
                    mem[0] = stor2[ext_call.return_data[64]][arg1]
                    mem[32] = 0
                    require sub_2b6f7ec9[stor2[ext_call.return_data[64]][arg1]][4][idx].field_0 <= sub_2b6f7ec9[stor2[ext_call.return_data[64]][arg1]].field_768
                    if sub_2b6f7ec9[stor2[ext_call.return_data[64]][arg1]].field_768 - sub_2b6f7ec9[stor2[ext_call.return_data[64]][arg1]][4][idx].field_0 != sub_2b6f7ec9[stor2[ext_call.return_data[64]][arg1]][arg1].field_0:
                        idx = idx + 1
                        continue 
                if -1 == idx:
                    return 0
                return 5
            return 0
        else:
            return 0
    else:
        return 0
}



}
