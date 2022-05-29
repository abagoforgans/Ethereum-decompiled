contract main {




// =====================  Runtime code  =====================


#
#  - transferfix(address arg1, uint256 arg2)
#
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of struct stor10;
uint256 stor11;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
address stor6;
mapping of uint8 stor7;
mapping of uint256 frozenTimestamp;
array of struct stor9;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getFrozenAccount(address arg1) {
    return bool(stor7[address(arg1)])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function getFrozenTimestamp(address arg1) {
    return frozenTimestamp[address(arg1)]
}

function kill() {
    require msg.sender == stor6
    selfdestruct(stor6)
}

function _fallback() payable {
    revert
}

function freeze(address arg1, bool arg2) {
    require msg.sender == stor6
    require arg1 != stor6
    stor7[address(arg1)] = uint8(arg2)
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function addTimeT(address arg1, uint256 arg2) {
    require msg.sender == stor6
    require arg2 > block.timestamp
    stor9[address(arg1)].field_256 = arg2
    return 1
}

function freezeWithTimestamp(address arg1, uint256 arg2) {
    require msg.sender == stor6
    require arg1 != stor6
    frozenTimestamp[address(arg1)] = arg2
    return 1
}

function changeAdmin(address arg1) {
    require msg.sender == stor6
    require arg1
    require balanceOf[address(arg1)] + balanceOf[stor6] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += balanceOf[stor6]
    balanceOf[stor6] = 0
    stor6 = arg1
    emit Transfer(balanceOf[stor6], stor6, arg1);
    return 1
}

function removeRule(address arg1) {
    require msg.sender == stor6
    if not stor9[address(arg1)].field_0:
        return 0
    stor9[address(arg1)].field_0 = 0
    stor9[address(arg1)].field_256 = 0
    uint8(stor9[address(arg1)].field_512) = 0
    stor9[address(arg1)].field_768 = 0
    idx = 0
    while stor9[address(arg1)].field_768 > idx:
        stor9[address(arg1)][idx + 3].field_0 = 0
        idx = idx + 1
        continue 
    stor9[address(arg1)].field_1024 = 0
    idx = 0
    while stor9[address(arg1)].field_1024 + 31 / 32 > idx:
        stor9[address(arg1)][idx + 4].field_0 = 0
        idx = idx + 1
        continue 
    require 1 <= stor9[address(arg1)].field_0
    require stor9[address(arg1)].field_0 - 1 < stor10.length
    Mask(96, 0, stor10[stor9[address(arg1)].field_0].field_0) = 1
    stor11--
    return 1
}

function multiFreeze(address[] arg1, bool[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == stor6
    require arg1.length == arg2.length
    require arg1.length > 0
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require mem[(32 * idx) + 140 len 20] != stor6
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 7
        stor7[mem[(32 * idx) + 140 len 20]] = uint8(bool(mem[(32 * idx) + (32 * arg1.length) + 160]))
        require idx + 1 >= idx
        s = mem[(32 * idx) + (32 * arg1.length) + 160]
        s = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
    return 1
}

function multiFreezeWithTimestamp(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == stor6
    require arg1.length == arg2.length
    require arg1.length > 0
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require mem[(32 * idx) + 140 len 20] != stor6
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 8
        frozenTimestamp[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx + 1 >= idx
        s = mem[(32 * idx) + (32 * arg1.length) + 160]
        s = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
    return 1
}

function addRule(address arg1, uint8 arg2, uint256[] arg3, uint8[] arg4) {
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require msg.sender == stor6
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = 0
    mem[(32 * arg3.length) + (32 * arg4.length) + 192] = 0
    mem[(32 * arg3.length) + (32 * arg4.length) + 224] = 96
    mem[(32 * arg3.length) + (32 * arg4.length) + 256] = 96
    require arg1
    require arg3.length == arg4.length
    require arg3.length > 0
    require 0 < arg3.length
    require not mem[128]
    require 0 < arg4.length
    require arg2 <= mem[(32 * arg3.length) + 191 len 1]
    idx = 1
    while idx < arg3.length:
        require idx < arg3.length
        require 1 <= idx
        require idx - 1 < arg3.length
        require mem[(32 * idx - 1) + 128] < mem[(32 * idx) + 128]
        require idx < arg4.length
        require 1 <= idx
        require idx - 1 < arg4.length
        require mem[(32 * idx - 1) + (32 * arg3.length) + 191 len 1] <= mem[(32 * idx) + (32 * arg3.length) + 191 len 1]
        require idx + 1 >= idx
        idx = idx + 1
        continue 
    require 1 <= arg4.length
    require arg4.length - 1 < arg4.length
    require mem[(32 * arg4.length - 1) + (32 * arg3.length) + 191 len 1] == 100
    stor9[address(arg1)].field_256 = 0
    uint8(stor9[address(arg1)].field_512) = arg2
    stor9[address(arg1)].field_768 = arg3.length
    if not arg3.length:
        idx = 0
        while stor9[address(arg1)].field_768 > idx:
            stor9[address(arg1)][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg3.length) + 128 > idx:
            stor9[address(arg1)][s + 3].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
        while stor9[address(arg1)].field_768 > idx:
            stor9[address(arg1)][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    stor9[address(arg1)].field_1024 = arg4.length
    if not arg4.length:
        idx = 0
        while stor9[address(arg1)].field_1024 + 31 / 32 > idx:
            uint8(stor9[address(arg1)][idx + 4].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg3.length) + 160
        while (32 * arg3.length) + (32 * arg4.length) + 160 > idx:
            stor9[address(arg1)][4].field_0 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor9[address(arg1)][4].field_0
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
        s = sha3(sha3(address(arg1), 9) + 4)
        while idx:
            stor[s] = !(255 * 256^idx) and stor[s]
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg4.length) + 31) >> 5 * None + 3 / 32)
        while stor9[address(arg1)].field_1024 + 31 / 32 > idx:
            uint8(stor9[address(arg1)][idx + 4].field_0) = 0
            idx = idx + 1
            continue 
    if stor9[address(arg1)].field_0 > 0:
        return 1
    stor10.length++
    if stor10.length > stor10.length + 1:
        idx = stor10.length + 1
        while stor10.length > idx:
            address(stor10[idx].field_0) = 0
            uint8(stor10[idx].field_160) = 0
            idx = idx + 1
            continue 
    require stor10.length + 1 >= stor10.length
    stor9[address(arg1)].field_0 = stor10.length + 1
    require stor10.length < stor10.length
    address(stor10[stor10.length].field_0) = arg1
    stor11++
    return 0
}

function transfer(address arg1, uint256 arg2) {
    require not stor7[address(msg.sender)]
    require block.timestamp > frozenTimestamp[address(msg.sender)]
    if var15002 >= stor10.length:
        require arg2 <= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] - arg2 >= 0
        if stor9[address(msg.sender)].field_0 > 0:
            if arg1 != msg.sender:
                require stor9[address(msg.sender)][5][address(arg1)].field_0 + arg2 >= stor9[address(msg.sender)][5][address(arg1)].field_0
                stor9[address(msg.sender)][5][address(arg1)].field_0 += arg2
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
        return 1
    require var17003 < stor10.length
    if var21001:
        idx = var21003
        while idx + 1 < stor10.length:
            mem[0] = 10
            if uint8(stor10[idx].field_416):
                idx = idx + 1
                continue 
            if var52001:
                require var56001 < stor10.length
                if not var62001:
                    require var83002 + var83001 >= var83002
                    # nil
                else:
                    if stor[var77004]:
                        if not var80001:
                            require 1 <= name[var80005]
                            # nil
                        else:
                            if not var84002:
                                # nil
                            else:
                                require var88003
                                # nil
                    else:
                        if not var79001:
                            require 1 <= name[var101004]
                            # nil
                        else:
                            if not var83002:
                                # nil
                            else:
                                require var87003
                                require var89001 / var89002 == var89003
                                # nil
            else:
                require arg2 <= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] - arg2 >= 0
                if stor9[address(msg.sender)].field_0 > 0:
                    if arg1 != msg.sender:
                        require stor9[address(msg.sender)][5][address(arg1)].field_0 + arg2 >= stor9[address(msg.sender)][5][address(arg1)].field_0
                        stor9[address(msg.sender)][5][address(arg1)].field_0 += arg2
                require arg2 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2
                require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
                return 1
        require arg2 <= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] - arg2 >= 0
        if stor9[address(msg.sender)].field_0 > 0:
            if arg1 != msg.sender:
                require stor9[address(msg.sender)][5][address(arg1)].field_0 + arg2 >= stor9[address(msg.sender)][5][address(arg1)].field_0
                stor9[address(msg.sender)][5][address(arg1)].field_0 += arg2
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
        return 1
    if not var46001:
        require arg2 <= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] - arg2 >= 0
        if stor9[address(msg.sender)].field_0 > 0:
            if arg1 != msg.sender:
                require stor9[address(msg.sender)][5][address(arg1)].field_0 + arg2 >= stor9[address(msg.sender)][5][address(arg1)].field_0
                stor9[address(msg.sender)][5][address(arg1)].field_0 += arg2
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
        return 1
    require var50001 < stor10.length
    if not var56001:
        require var77002 + var77001 >= var77002
        # nil
    else:
        if not stor[var71004]:
            if var73001:
                if not var77002:
                    require var85001 / 100 <= var85007
                    # nil
                else:
                    require var81003
                    require var83001 / var83002 == var83003
                    # nil
            else:
                require 1 <= name[var95004]
                if var71002 < name[var95004] - 1:
                    # nil
                else:
                    require 1 <= name[var95004]
                    require name[var95004] - 1 < name[var95004]
                    require stor[var95004] + stor[sha3(var95004 + 2) + stor2[var95004] - 1] >= stor[var95004]
                    if block.timestamp < stor[var95004] + stor[sha3(var95004 + 2) + stor2[var95004] - 1]:
                        # nil
                    else:
                        require 1 <= name[var95004]
                        require name[var95004] - 1 < symbol[var95004]
                        if not var95003:
                            require 0 <= var95003
                            # nil
                        else:
                            require var95003
                            require var95003 * stor((0.03125 / stor[('array', ('var', 95004), ('name', 'stor2', 2))] - 1) + sha3(var95004 + 3))[uint8(stor2[var95004] - 1)] / var95003 == stor((0.03125 / stor[('array', ('var', 95004), ('name', 'stor2', 2))] - 1) + sha3(var95004 + 3))[uint8(stor2[var95004] - 1)]
                            require var95003 * stor((0.03125 / stor[('array', ('var', 95004), ('name', 'stor2', 2))] - 1) + sha3(var95004 + 3))[uint8(stor2[var95004] - 1)] / 100 <= var95003
                            # nil
        else:
            if var74001:
                if not var78002:
                    # nil
                else:
                    require var82003
                    require var84001 / var84002 == var84003
                    # nil
            else:
                require 1 <= name[var74005]
                if var72002 < name[var74005] - 1:
                    # nil
                else:
                    require 1 <= name[var74005]
                    require name[var74005] - 1 < name[var74005]
                    require stor[var74005] + stor[sha3(var74005 + 2) + stor2[var74005] - 1] >= stor[var74005]
                    if block.timestamp < stor[var74005] + stor[sha3(var74005 + 2) + stor2[var74005] - 1]:
                        # nil
                    else:
                        require 1 <= name[var74005]
                        require name[var74005] - 1 < symbol[var74005]
                        if not var74004:
                            require 0 <= var74004
                            # nil
                        else:
                            require var74004
                            require var74004 * stor((0.03125 / stor[('array', ('var', 74005), ('name', 'stor2', 2))] - 1) + sha3(var74005 + 3))[uint8(stor2[var74005] - 1)] / var74004 == stor((0.03125 / stor[('array', ('var', 74005), ('name', 'stor2', 2))] - 1) + sha3(var74005 + 3))[uint8(stor2[var74005] - 1)]
                            require var74004 * stor((0.03125 / stor[('array', ('var', 74005), ('name', 'stor2', 2))] - 1) + sha3(var74005 + 3))[uint8(stor2[var74005] - 1)] / 100 <= var74004
                            # nil
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor7[address(arg1)]
    require block.timestamp > frozenTimestamp[address(arg1)]
    if var14002 >= stor10.length:
        require 0 <= balanceOf[address(arg1)]
        require arg3 <= balanceOf[address(arg1)]
        require arg3 <= allowance[address(arg1)][address(msg.sender)]
        if stor9[address(arg1)].field_0 > 0:
            if arg1 != arg2:
                require stor9[address(arg1)][5][address(arg2)].field_0 + arg3 >= stor9[address(arg1)][5][address(arg2)].field_0
                stor9[address(arg1)][5][address(arg2)].field_0 += arg3
        require arg3 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg3
        require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
        balanceOf[address(arg2)] += arg3
        require arg3 <= allowance[address(arg1)][address(msg.sender)]
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Transfer(arg3, arg1, arg2);
        return 1
    require var16003 < stor10.length
    if var20001:
        idx = var20003
        while idx + 1 < stor10.length:
            mem[0] = 10
            if uint8(stor10[idx].field_416):
                idx = idx + 1
                continue 
            if var51001:
                require var55001 < stor10.length
                if not var61001:
                    require var82002 + var82001 >= var82002
                    # nil
                else:
                    if stor[var76004]:
                        if not var79001:
                            require 1 <= name[var79005]
                            # nil
                        else:
                            if not var83002:
                                # nil
                            else:
                                require var87003
                                # nil
                    else:
                        if not var78001:
                            require 1 <= name[var100004]
                            # nil
                        else:
                            if not var82002:
                                # nil
                            else:
                                require var86003
                                require var88001 / var88002 == var88003
                                # nil
            else:
                require 0 <= balanceOf[address(arg1)]
                require arg3 <= balanceOf[address(arg1)]
                require arg3 <= allowance[address(arg1)][address(msg.sender)]
                if stor9[address(arg1)].field_0 > 0:
                    if arg1 != arg2:
                        require stor9[address(arg1)][5][address(arg2)].field_0 + arg3 >= stor9[address(arg1)][5][address(arg2)].field_0
                        stor9[address(arg1)][5][address(arg2)].field_0 += arg3
                require arg3 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] -= arg3
                require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                balanceOf[address(arg2)] += arg3
                require arg3 <= allowance[address(arg1)][address(msg.sender)]
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Transfer(arg3, arg1, arg2);
                return 1
        require 0 <= balanceOf[address(arg1)]
        require arg3 <= balanceOf[address(arg1)]
        require arg3 <= allowance[address(arg1)][address(msg.sender)]
        if stor9[address(arg1)].field_0 > 0:
            if arg1 != arg2:
                require stor9[address(arg1)][5][address(arg2)].field_0 + arg3 >= stor9[address(arg1)][5][address(arg2)].field_0
                stor9[address(arg1)][5][address(arg2)].field_0 += arg3
        require arg3 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg3
        require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
        balanceOf[address(arg2)] += arg3
        require arg3 <= allowance[address(arg1)][address(msg.sender)]
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Transfer(arg3, arg1, arg2);
        return 1
    if not var45001:
        require 0 <= balanceOf[address(arg1)]
        require arg3 <= balanceOf[address(arg1)]
        require arg3 <= allowance[address(arg1)][address(msg.sender)]
        if stor9[address(arg1)].field_0 > 0:
            if arg1 != arg2:
                require stor9[address(arg1)][5][address(arg2)].field_0 + arg3 >= stor9[address(arg1)][5][address(arg2)].field_0
                stor9[address(arg1)][5][address(arg2)].field_0 += arg3
        require arg3 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg3
        require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
        balanceOf[address(arg2)] += arg3
        require arg3 <= allowance[address(arg1)][address(msg.sender)]
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Transfer(arg3, arg1, arg2);
        return 1
    require var49001 < stor10.length
    if not var55001:
        require var76002 + var76001 >= var76002
        # nil
    else:
        if not stor[var70004]:
            if var72001:
                if not var76002:
                    require var84001 / 100 <= var84007
                    # nil
                else:
                    require var80003
                    require var82001 / var82002 == var82003
                    # nil
            else:
                require 1 <= name[var94004]
                if var70002 < name[var94004] - 1:
                    # nil
                else:
                    require 1 <= name[var94004]
                    require name[var94004] - 1 < name[var94004]
                    require stor[var94004] + stor[sha3(var94004 + 2) + stor2[var94004] - 1] >= stor[var94004]
                    if block.timestamp < stor[var94004] + stor[sha3(var94004 + 2) + stor2[var94004] - 1]:
                        # nil
                    else:
                        require 1 <= name[var94004]
                        require name[var94004] - 1 < symbol[var94004]
                        if not var94003:
                            require 0 <= var94003
                            # nil
                        else:
                            require var94003
                            require var94003 * stor((0.03125 / stor[('array', ('var', 94004), ('name', 'stor2', 2))] - 1) + sha3(var94004 + 3))[uint8(stor2[var94004] - 1)] / var94003 == stor((0.03125 / stor[('array', ('var', 94004), ('name', 'stor2', 2))] - 1) + sha3(var94004 + 3))[uint8(stor2[var94004] - 1)]
                            require var94003 * stor((0.03125 / stor[('array', ('var', 94004), ('name', 'stor2', 2))] - 1) + sha3(var94004 + 3))[uint8(stor2[var94004] - 1)] / 100 <= var94003
                            # nil
        else:
            if var73001:
                if not var77002:
                    # nil
                else:
                    require var81003
                    require var83001 / var83002 == var83003
                    # nil
            else:
                require 1 <= name[var73005]
                if var71002 < name[var73005] - 1:
                    # nil
                else:
                    require 1 <= name[var73005]
                    require name[var73005] - 1 < name[var73005]
                    require stor[var73005] + stor[sha3(var73005 + 2) + stor2[var73005] - 1] >= stor[var73005]
                    if block.timestamp < stor[var73005] + stor[sha3(var73005 + 2) + stor2[var73005] - 1]:
                        # nil
                    else:
                        require 1 <= name[var73005]
                        require name[var73005] - 1 < symbol[var73005]
                        if not var73004:
                            require 0 <= var73004
                            # nil
                        else:
                            require var73004
                            require var73004 * stor((0.03125 / stor[('array', ('var', 73005), ('name', 'stor2', 2))] - 1) + sha3(var73005 + 3))[uint8(stor2[var73005] - 1)] / var73004 == stor((0.03125 / stor[('array', ('var', 73005), ('name', 'stor2', 2))] - 1) + sha3(var73005 + 3))[uint8(stor2[var73005] - 1)]
                            require var73004 * stor((0.03125 / stor[('array', ('var', 73005), ('name', 'stor2', 2))] - 1) + sha3(var73005 + 3))[uint8(stor2[var73005] - 1)] / 100 <= var73004
                            # nil
}

function multiTransfer(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require not stor7[address(msg.sender)]
    require block.timestamp > frozenTimestamp[address(msg.sender)]
    require arg1.length == arg2.length
    require arg1.length > 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg2.length
        require s + mem[(32 * idx) + (32 * arg1.length) + 160] >= s
        require idx + 1 >= idx
        idx = idx + 1
        s = s + mem[(32 * idx) + (32 * arg1.length) + 160]
        continue 
    if var19002 >= stor10.length:
        require 0 <= balanceOf[address(msg.sender)]
        require s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length <= balanceOf[address(msg.sender)]
        s = 0
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _376 = mem[(32 * idx) + 128]
            if stor9[address(msg.sender)].field_0 <= 0:
                if idx < arg2.length:
                    if balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]:
                        balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
                        if idx < arg2.length:
                            if mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]:
                                mem[0] = msg.sender
                                mem[32] = 0
                                balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                                if idx < arg2.length:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_376));
                                    if idx + 1 >= idx:
                                        s = _376
                                        idx = idx + 1
                                        continue 
            else:
                if msg.sender == mem[(32 * idx) + 140 len 20]:
                    if idx < arg2.length:
                        if balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]:
                            balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
                            if idx < arg2.length:
                                if mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]:
                                    mem[0] = msg.sender
                                    mem[32] = 0
                                    balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                                    if idx < arg2.length:
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_376));
                                        if idx + 1 >= idx:
                                            s = _376
                                            idx = idx + 1
                                            continue 
                else:
                    if idx < arg2.length:
                        if stor9[address(msg.sender)][5][address(mem[(32 * idx) + 128])].field_0 + mem[(32 * idx) + (32 * arg1.length) + 160] >= stor9[address(msg.sender)][5][address(mem[(32 * idx) + 128])].field_0:
                            stor9[address(msg.sender)][5][address(mem[(32 * idx) + 128])].field_0 += mem[(32 * idx) + (32 * arg1.length) + 160]
                            if idx < arg2.length:
                                if balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]:
                                    balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
                                    if idx < arg2.length:
                                        if mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]:
                                            mem[0] = msg.sender
                                            mem[32] = 0
                                            balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                                            if idx < arg2.length:
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_376));
                                                if idx + 1 >= idx:
                                                    s = _376
                                                    idx = idx + 1
                                                    continue 
            revert
        return 1
    require var21003 < stor10.length
    if var25001:
        idx = var25003
        while idx + 1 < stor10.length:
            mem[0] = 10
            if uint8(stor10[idx].field_416):
                idx = idx + 1
                continue 
            if not var56001:
                require 0 <= balanceOf[address(msg.sender)]
                require s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length <= balanceOf[address(msg.sender)]
                s = 0
                idx = 0
                while idx < arg1.length:
                    require idx < arg1.length
                    _4409 = mem[(32 * idx) + 128]
                    if stor9[address(msg.sender)].field_0 <= 0:
                        if idx < arg2.length:
                            if balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]:
                                balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
                                if idx < arg2.length:
                                    if mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]:
                                        mem[0] = msg.sender
                                        mem[32] = 0
                                        balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                                        if idx < arg2.length:
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                                            emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_4409));
                                            if idx + 1 >= idx:
                                                s = _4409
                                                idx = idx + 1
                                                continue 
                    else:
                        if msg.sender == mem[(32 * idx) + 140 len 20]:
                            if idx < arg2.length:
                                if balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]:
                                    balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
                                    if idx < arg2.length:
                                        if mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]:
                                            mem[0] = msg.sender
                                            mem[32] = 0
                                            balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                                            if idx < arg2.length:
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_4409));
                                                if idx + 1 >= idx:
                                                    s = _4409
                                                    idx = idx + 1
                                                    continue 
                        else:
                            if idx < arg2.length:
                                if stor9[address(msg.sender)][5][address(mem[(32 * idx) + 128])].field_0 + mem[(32 * idx) + (32 * arg1.length) + 160] >= stor9[address(msg.sender)][5][address(mem[(32 * idx) + 128])].field_0:
                                    stor9[address(msg.sender)][5][address(mem[(32 * idx) + 128])].field_0 += mem[(32 * idx) + (32 * arg1.length) + 160]
                                    if idx < arg2.length:
                                        if balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]:
                                            balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
                                            if idx < arg2.length:
                                                if mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]:
                                                    mem[0] = msg.sender
                                                    mem[32] = 0
                                                    balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                                                    if idx < arg2.length:
                                                        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_4409));
                                                        if idx + 1 >= idx:
                                                            s = _4409
                                                            idx = idx + 1
                                                            continue 
                    revert
                return 1
            require var60001 < stor10.length
            if not var66001:
                require var87002 + var87001 >= var87002
                # nil
            else:
                if stor[var81004]:
                    if not var84001:
                        require 1 <= name[var84005]
                        # nil
                    else:
                        # nil
                else:
                    if not var83001:
                        require 1 <= name[var105004]
                        # nil
                    else:
                        if not var87002:
                            # nil
                        else:
                            require var91003
                            # nil
        require 0 <= balanceOf[address(msg.sender)]
        require s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length <= balanceOf[address(msg.sender)]
        s = 0
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _943 = mem[(32 * idx) + 128]
            if stor9[address(msg.sender)].field_0 <= 0:
                if idx < arg2.length:
                    if balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]:
                        balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
                        if idx < arg2.length:
                            if mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]:
                                mem[0] = msg.sender
                                mem[32] = 0
                                balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                                if idx < arg2.length:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_943));
                                    if idx + 1 >= idx:
                                        s = _943
                                        idx = idx + 1
                                        continue 
            else:
                if msg.sender == mem[(32 * idx) + 140 len 20]:
                    if idx < arg2.length:
                        if balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]:
                            balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
                            if idx < arg2.length:
                                if mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]:
                                    mem[0] = msg.sender
                                    mem[32] = 0
                                    balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                                    if idx < arg2.length:
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_943));
                                        if idx + 1 >= idx:
                                            s = _943
                                            idx = idx + 1
                                            continue 
                else:
                    if idx < arg2.length:
                        if stor9[address(msg.sender)][5][address(mem[(32 * idx) + 128])].field_0 + mem[(32 * idx) + (32 * arg1.length) + 160] >= stor9[address(msg.sender)][5][address(mem[(32 * idx) + 128])].field_0:
                            stor9[address(msg.sender)][5][address(mem[(32 * idx) + 128])].field_0 += mem[(32 * idx) + (32 * arg1.length) + 160]
                            if idx < arg2.length:
                                if balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]:
                                    balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
                                    if idx < arg2.length:
                                        if mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]:
                                            mem[0] = msg.sender
                                            mem[32] = 0
                                            balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                                            if idx < arg2.length:
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_943));
                                                if idx + 1 >= idx:
                                                    s = _943
                                                    idx = idx + 1
                                                    continue 
            revert
        return 1
    if not var50001:
        require 0 <= balanceOf[address(msg.sender)]
        require s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length <= balanceOf[address(msg.sender)]
        s = 0
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _2268 = mem[(32 * idx) + 128]
            if stor9[address(msg.sender)].field_0 <= 0:
                if idx < arg2.length:
                    if balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]:
                        balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
                        if idx < arg2.length:
                            if mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]:
                                mem[0] = msg.sender
                                mem[32] = 0
                                balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                                if idx < arg2.length:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_2268));
                                    if idx + 1 >= idx:
                                        s = _2268
                                        idx = idx + 1
                                        continue 
            else:
                if msg.sender == mem[(32 * idx) + 140 len 20]:
                    if idx < arg2.length:
                        if balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]:
                            balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
                            if idx < arg2.length:
                                if mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]:
                                    mem[0] = msg.sender
                                    mem[32] = 0
                                    balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                                    if idx < arg2.length:
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_2268));
                                        if idx + 1 >= idx:
                                            s = _2268
                                            idx = idx + 1
                                            continue 
                else:
                    if idx < arg2.length:
                        if stor9[address(msg.sender)][5][address(mem[(32 * idx) + 128])].field_0 + mem[(32 * idx) + (32 * arg1.length) + 160] >= stor9[address(msg.sender)][5][address(mem[(32 * idx) + 128])].field_0:
                            stor9[address(msg.sender)][5][address(mem[(32 * idx) + 128])].field_0 += mem[(32 * idx) + (32 * arg1.length) + 160]
                            if idx < arg2.length:
                                if balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]:
                                    balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
                                    if idx < arg2.length:
                                        if mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]:
                                            mem[0] = msg.sender
                                            mem[32] = 0
                                            balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                                            if idx < arg2.length:
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_2268));
                                                if idx + 1 >= idx:
                                                    s = _2268
                                                    idx = idx + 1
                                                    continue 
            revert
        return 1
    require var54001 < stor10.length
    if not var60001:
        require var81002 + var81001 >= var81002
        # nil
    else:
        if stor[var75004]:
            if not var78001:
                require 1 <= name[var78005]
                # nil
            else:
                if not var82002:
                    # nil
                else:
                    require var86003
                    # nil
        else:
            if not var77001:
                require 1 <= name[var99004]
                # nil
            else:
                if not var81002:
                    # nil
                else:
                    require var85003
                    require var87001 / var87002 == var87003
                    # nil
}



}
