contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    stor1 = code.data[3162 len 32]
    return code.data[39 len 3123]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
uint256 stor1;

function totalSupply() payable {
    return totalSupply
}

function totalDebt(address arg1) payable {
    return totalDebt[address(arg1)].field_1280
}

function balanceOf(address arg1) payable {
    return totalDebt[address(arg1)].field_1536
}

function debtor(address arg1, uint256 arg2) payable {
    require arg2 < totalDebt[address(arg1)].field_512
    return stor[arg2 + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'totalDebt', 2)))].field_0
}

function numDebtors(address arg1) payable {
    return totalDebt[address(arg1)].field_512
}

function allowance(address arg1, address arg2) payable {
    return totalDebt[address(arg1)][3][address(arg2)].field_0
}

function balanceOf(address arg1, address arg2) payable {
    return totalDebt[address(arg1)][1][address(arg2)].field_0
}

function _fallback() payable {
    revert 
}

function maximumCredit(address arg1) payable {
    if not totalDebt[address(arg1)].field_0:
        return stor1
    return totalDebt[address(arg1)].field_1024
}

function approve(address arg1, uint256 arg2) payable {
    totalDebt[address(msg.sender)][3][address(arg1)].field_0 = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setMaximumCredit(uint256 arg1) payable {
    if arg1 <= 655360:
        if not totalDebt[address(msg.sender)].field_0:
            totalDebt[address(msg.sender)].field_0 = 1
        totalDebt[address(msg.sender)].field_1024 = arg1
}

function debtors(address arg1) payable {
    if totalDebt[address(arg1)].field_512:
        mem[160] = totalDebt[address(arg1)][2].field_0
        idx = 160
        s = 0
        while (32 * totalDebt[address(arg1)].field_512) + 128 > idx:
            mem[idx + 32] = totalDebt[address(arg1)][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=totalDebt[address(arg1)].field_512, data=mem[160 len 32 * totalDebt[address(arg1)].field_512])
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    if totalDebt[address(arg1)][3][address(msg.sender)].field_0 < arg3:
        return 0
    if arg1 == arg2:
        return 0
    if not totalDebt[address(arg2)].field_0:
        totalDebt[address(arg2)].field_0 = 1
        totalDebt[address(arg2)].field_1024 = stor1
    if arg3 > totalDebt[address(arg2)].field_1024 + totalDebt[address(arg1)][1][address(arg2)].field_0:
        return 0
    emit Transfer(arg3, arg1, arg2);
    if arg3 < totalDebt[address(arg1)][1][address(arg2)].field_0:
        if 0 == totalDebt[address(arg1)][1][address(arg2)].field_256:
            totalDebt[address(arg1)][1][address(arg2)].field_256 = totalDebt[address(arg1)].field_512 + 1
            totalDebt[address(arg1)].field_512++
            if not totalDebt[address(arg1)].field_512 <= totalDebt[address(arg1)].field_512 + 1:
                idx = totalDebt[address(arg1)].field_512 + 1
                while totalDebt[address(arg1)].field_512 > idx:
                    totalDebt[address(arg1)][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
            stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'totalDebt', 2))) + totalDebt[address(arg1)].field_512].field_0 = arg2 or Mask(96, 160, stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'totalDebt', 2))) + totalDebt[address(arg1)].field_512].field_0)
        totalDebt[address(arg1)][1][address(arg2)].field_0 -= arg3
        totalDebt[address(arg2)].field_1280 -= arg3
        totalDebt[arg1].field_1536 -= arg3
        totalSupply -= arg3
    else:
        if totalDebt[address(arg1)][1][address(arg2)].field_256 > 0:
            require totalDebt[address(arg1)].field_512 - 1 < totalDebt[address(arg1)].field_512
            require totalDebt[address(arg1)][1][address(arg2)].field_256 - 1 < totalDebt[address(arg1)].field_512
            stor[totalDebt[address(arg1)][1][address(arg2)].field_256 + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'totalDebt', 2)))].field_0 = stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'totalDebt', 2))) + totalDebt[address(arg1)].field_512].field_0
            totalDebt[address(arg1)].field_512--
            if not totalDebt[address(arg1)].field_512 <= totalDebt[address(arg1)].field_512 - 1:
                idx = totalDebt[address(arg1)].field_512 - 1
                while totalDebt[address(arg1)].field_512 > idx:
                    totalDebt[address(arg1)][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
            totalDebt[address(arg1)][1][stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'totalDebt', 2))) + totalDebt[address(arg1)].field_512].field_0].field_256 = totalDebt[address(arg1)][1][address(arg2)].field_256
            totalDebt[address(arg1)][1][address(arg2)].field_256 = 0
            totalDebt[address(arg1)][1][address(arg2)].field_0 = 0
        totalDebt[address(arg2)].field_1280 -= totalDebt[address(arg1)][1][address(arg2)].field_0
        totalDebt[arg1].field_1536 -= totalDebt[address(arg1)][1][address(arg2)].field_0
        totalSupply -= totalDebt[address(arg1)][1][address(arg2)].field_0
        if arg3 - totalDebt[address(arg1)][1][address(arg2)].field_0 != 0:
            if arg3 - totalDebt[address(arg1)][1][address(arg2)].field_0 <= totalDebt[address(arg2)].field_1024:
                if 0 == totalDebt[address(arg2)][1][address(arg1)].field_256:
                    totalDebt[address(arg2)][1][address(arg1)].field_256 = totalDebt[address(arg2)].field_512 + 1
                    totalDebt[address(arg2)].field_512++
                    if not totalDebt[address(arg2)].field_512 <= totalDebt[address(arg2)].field_512 + 1:
                        idx = totalDebt[address(arg2)].field_512 + 1
                        while totalDebt[address(arg2)].field_512 > idx:
                            totalDebt[address(arg2)][idx + 2].field_0 = 0
                            idx = idx + 1
                            continue 
                    stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'totalDebt', 2))) + totalDebt[address(arg2)].field_512].field_0 = arg1 or Mask(96, 160, stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'totalDebt', 2))) + totalDebt[address(arg2)].field_512].field_0)
                totalDebt[address(arg2)][1][address(arg1)].field_0 = arg3 - totalDebt[address(arg1)][1][address(arg2)].field_0 + totalDebt[address(arg2)][1][address(arg1)].field_0
                totalDebt[address(arg1)].field_1280 = arg3 - totalDebt[address(arg1)][1][address(arg2)].field_0 + totalDebt[address(arg1)].field_1280
                totalDebt[arg2].field_1536 = arg3 - totalDebt[address(arg1)][1][address(arg2)].field_0 + totalDebt[arg2].field_1536
                totalSupply = arg3 - totalDebt[address(arg1)][1][address(arg2)].field_0 + totalSupply
    totalDebt[address(arg1)][3][address(msg.sender)].field_0 -= arg3
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    if msg.sender == arg1:
        return 0
    if not totalDebt[address(arg1)].field_0:
        totalDebt[address(arg1)].field_0 = 1
        totalDebt[address(arg1)].field_1024 = stor1
    if arg2 > totalDebt[address(arg1)].field_1024 + totalDebt[address(msg.sender)][1][address(arg1)].field_0:
        return 0
    emit Transfer(arg2, msg.sender, arg1);
    if arg2 < totalDebt[address(msg.sender)][1][address(arg1)].field_0:
        if 0 == totalDebt[address(msg.sender)][1][address(arg1)].field_256:
            totalDebt[address(msg.sender)][1][address(arg1)].field_256 = totalDebt[address(msg.sender)].field_512 + 1
            totalDebt[address(msg.sender)].field_512++
            if not totalDebt[address(msg.sender)].field_512 <= totalDebt[address(msg.sender)].field_512 + 1:
                idx = totalDebt[address(msg.sender)].field_512 + 1
                while totalDebt[address(msg.sender)].field_512 > idx:
                    totalDebt[address(msg.sender)][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
            stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'totalDebt', 2))) + totalDebt[address(msg.sender)].field_512].field_0 = arg1 or Mask(96, 160, stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'totalDebt', 2))) + totalDebt[address(msg.sender)].field_512].field_0)
        totalDebt[address(msg.sender)][1][address(arg1)].field_0 -= arg2
        totalDebt[address(arg1)].field_1280 -= arg2
        totalDebt[msg.sender].field_1536 -= arg2
        totalSupply -= arg2
    else:
        if totalDebt[address(msg.sender)][1][address(arg1)].field_256 > 0:
            require totalDebt[address(msg.sender)].field_512 - 1 < totalDebt[address(msg.sender)].field_512
            require totalDebt[address(msg.sender)][1][address(arg1)].field_256 - 1 < totalDebt[address(msg.sender)].field_512
            stor[totalDebt[address(msg.sender)][1][address(arg1)].field_256 + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'totalDebt', 2)))].field_0 = stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'totalDebt', 2))) + totalDebt[address(msg.sender)].field_512].field_0
            totalDebt[address(msg.sender)].field_512--
            if not totalDebt[address(msg.sender)].field_512 <= totalDebt[address(msg.sender)].field_512 - 1:
                idx = totalDebt[address(msg.sender)].field_512 - 1
                while totalDebt[address(msg.sender)].field_512 > idx:
                    totalDebt[address(msg.sender)][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
            totalDebt[address(msg.sender)][1][stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'totalDebt', 2))) + totalDebt[address(msg.sender)].field_512].field_0].field_256 = totalDebt[address(msg.sender)][1][address(arg1)].field_256
            totalDebt[address(msg.sender)][1][address(arg1)].field_256 = 0
            totalDebt[address(msg.sender)][1][address(arg1)].field_0 = 0
        totalDebt[address(arg1)].field_1280 -= totalDebt[address(msg.sender)][1][address(arg1)].field_0
        totalDebt[msg.sender].field_1536 -= totalDebt[address(msg.sender)][1][address(arg1)].field_0
        totalSupply -= totalDebt[address(msg.sender)][1][address(arg1)].field_0
        if arg2 - totalDebt[address(msg.sender)][1][address(arg1)].field_0 != 0:
            if arg2 - totalDebt[address(msg.sender)][1][address(arg1)].field_0 <= totalDebt[address(arg1)].field_1024:
                if 0 == totalDebt[address(arg1)][1][address(msg.sender)].field_256:
                    totalDebt[address(arg1)][1][address(msg.sender)].field_256 = totalDebt[address(arg1)].field_512 + 1
                    totalDebt[address(arg1)].field_512++
                    if not totalDebt[address(arg1)].field_512 <= totalDebt[address(arg1)].field_512 + 1:
                        idx = totalDebt[address(arg1)].field_512 + 1
                        while totalDebt[address(arg1)].field_512 > idx:
                            totalDebt[address(arg1)][idx + 2].field_0 = 0
                            idx = idx + 1
                            continue 
                    stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'totalDebt', 2))) + totalDebt[address(arg1)].field_512].field_0 = msg.sender or Mask(96, 160, stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'totalDebt', 2))) + totalDebt[address(arg1)].field_512].field_0)
                totalDebt[address(arg1)][1][address(msg.sender)].field_0 = arg2 - totalDebt[address(msg.sender)][1][address(arg1)].field_0 + totalDebt[address(arg1)][1][address(msg.sender)].field_0
                totalDebt[address(msg.sender)].field_1280 = arg2 - totalDebt[address(msg.sender)][1][address(arg1)].field_0 + totalDebt[address(msg.sender)].field_1280
                totalDebt[arg1].field_1536 = arg2 - totalDebt[address(msg.sender)][1][address(arg1)].field_0 + totalDebt[arg1].field_1536
                totalSupply = arg2 - totalDebt[address(msg.sender)][1][address(arg1)].field_0 + totalSupply
    return 1
}

function transferOtherFrom(address arg1, address arg2, address arg3, uint256 arg4) payable {
    if totalDebt[address(arg1)][3][address(msg.sender)].field_0 < arg4:
        return 0
    if arg1 == arg2:
        return 0
    if arg2 == arg3:
        return 0
    if not totalDebt[address(arg2)].field_0:
        totalDebt[address(arg2)].field_0 = 1
        totalDebt[address(arg2)].field_1024 = stor1
    if totalDebt[address(arg1)][1][address(arg3)].field_0 < arg4:
        return 0
    if totalDebt[address(arg2)][1][address(arg3)].field_0 + arg4 > totalDebt[address(arg2)].field_1024:
        return 0
    if totalDebt[address(arg1)][1][address(arg3)].field_0 != arg4:
        if totalDebt[address(arg1)][1][address(arg3)].field_256 != 0:
            totalDebt[address(arg1)][1][address(arg3)].field_0 -= arg4
            totalDebt[address(arg1)].field_1536 -= arg4
            if 0 == totalDebt[arg2][1][address(arg3)].field_256:
                totalDebt[arg2][1][address(arg3)].field_256 = totalDebt[arg2].field_512 + 1
                totalDebt[arg2].field_512++
                if not totalDebt[arg2].field_512 <= totalDebt[arg2].field_512 + 1:
                    idx = totalDebt[arg2].field_512 + 1
                    while totalDebt[arg2].field_512 > idx:
                        totalDebt[arg2][idx + 2].field_0 = 0
                        idx = idx + 1
                        continue 
                stor[('array', 2, ('map', ('param', 'arg2'), ('name', 'totalDebt', 2))) + totalDebt[arg2].field_512].field_0 = arg3 or Mask(96, 160, stor[('array', 2, ('map', ('param', 'arg2'), ('name', 'totalDebt', 2))) + totalDebt[arg2].field_512].field_0)
        else:
            totalDebt[address(arg1)][1][address(arg3)].field_256 = totalDebt[address(arg1)].field_512 + 1
            totalDebt[address(arg1)].field_512++
            if not totalDebt[address(arg1)].field_512 <= totalDebt[address(arg1)].field_512 + 1:
                idx = totalDebt[address(arg1)].field_512 + 1
                while totalDebt[address(arg1)].field_512 > idx:
                    totalDebt[address(arg1)][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
            stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'totalDebt', 2))) + totalDebt[address(arg1)].field_512].field_0 = arg3 or Mask(96, 160, stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'totalDebt', 2))) + totalDebt[address(arg1)].field_512].field_0)
            totalDebt[address(arg1)][1][address(arg3)].field_0 -= arg4
            totalDebt[address(arg1)].field_1536 -= arg4
            if 0 == totalDebt[arg2][1][address(arg3)].field_256:
                totalDebt[arg2][1][address(arg3)].field_256 = totalDebt[arg2].field_512 + 1
                totalDebt[arg2].field_512++
                if not totalDebt[arg2].field_512 <= totalDebt[arg2].field_512 + 1:
                    idx = totalDebt[arg2].field_512 + 1
                    while totalDebt[arg2].field_512 > idx:
                        totalDebt[arg2][idx + 2].field_0 = 0
                        idx = idx + 1
                        continue 
                stor[('array', 2, ('map', ('param', 'arg2'), ('name', 'totalDebt', 2))) + totalDebt[arg2].field_512].field_0 = arg3 or Mask(96, 160, stor[('array', 2, ('map', ('param', 'arg2'), ('name', 'totalDebt', 2))) + totalDebt[arg2].field_512].field_0)
    else:
        if totalDebt[address(arg1)][1][address(arg3)].field_256 > 0:
            require totalDebt[address(arg1)].field_512 - 1 < totalDebt[address(arg1)].field_512
            require totalDebt[address(arg1)][1][address(arg3)].field_256 - 1 < totalDebt[address(arg1)].field_512
            stor[totalDebt[address(arg1)][1][address(arg3)].field_256 + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'totalDebt', 2)))].field_0 = stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'totalDebt', 2))) + totalDebt[address(arg1)].field_512].field_0
            totalDebt[address(arg1)].field_512--
            if not totalDebt[address(arg1)].field_512 <= totalDebt[address(arg1)].field_512 - 1:
                idx = totalDebt[address(arg1)].field_512 - 1
                while totalDebt[address(arg1)].field_512 > idx:
                    totalDebt[address(arg1)][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
            totalDebt[address(arg1)][1][stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'totalDebt', 2))) + totalDebt[address(arg1)].field_512].field_0].field_256 = totalDebt[address(arg1)][1][address(arg3)].field_256
            totalDebt[address(arg1)][1][address(arg3)].field_256 = 0
            totalDebt[address(arg1)][1][address(arg3)].field_0 = 0
        totalDebt[address(arg1)].field_1536 -= arg4
        if 0 == totalDebt[arg2][1][address(arg3)].field_256:
            totalDebt[arg2][1][address(arg3)].field_256 = totalDebt[arg2].field_512 + 1
            totalDebt[arg2].field_512++
            if not totalDebt[arg2].field_512 <= totalDebt[arg2].field_512 + 1:
                idx = totalDebt[arg2].field_512 + 1
                while totalDebt[arg2].field_512 > idx:
                    totalDebt[arg2][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
            stor[('array', 2, ('map', ('param', 'arg2'), ('name', 'totalDebt', 2))) + totalDebt[arg2].field_512].field_0 = arg3 or Mask(96, 160, stor[('array', 2, ('map', ('param', 'arg2'), ('name', 'totalDebt', 2))) + totalDebt[arg2].field_512].field_0)
    totalDebt[arg2][1][address(arg3)].field_0 = totalDebt[address(arg2)][1][address(arg3)].field_0 + arg4
    totalDebt[address(arg2)].field_1536 += arg4
    emit Transfer(arg4, arg1, arg2);
    totalDebt[address(arg1)][3][address(msg.sender)].field_0 -= arg4
    return 1
}

function transferOther(address arg1, address arg2, uint256 arg3) payable {
    if msg.sender == arg1:
        return 0
    if arg1 == arg2:
        return 0
    if not totalDebt[address(arg1)].field_0:
        totalDebt[address(arg1)].field_0 = 1
        totalDebt[address(arg1)].field_1024 = stor1
    if totalDebt[address(msg.sender)][1][address(arg2)].field_0 < arg3:
        return 0
    if totalDebt[address(arg1)][1][address(arg2)].field_0 + arg3 > totalDebt[address(arg1)].field_1024:
        return 0
    if totalDebt[address(msg.sender)][1][address(arg2)].field_0 != arg3:
        if totalDebt[address(msg.sender)][1][address(arg2)].field_256 != 0:
            totalDebt[address(msg.sender)][1][address(arg2)].field_0 -= arg3
            totalDebt[address(msg.sender)].field_1536 -= arg3
            if 0 == totalDebt[arg1][1][address(arg2)].field_256:
                totalDebt[arg1][1][address(arg2)].field_256 = totalDebt[arg1].field_512 + 1
                totalDebt[arg1].field_512++
                if not totalDebt[arg1].field_512 <= totalDebt[arg1].field_512 + 1:
                    idx = totalDebt[arg1].field_512 + 1
                    while totalDebt[arg1].field_512 > idx:
                        totalDebt[arg1][idx + 2].field_0 = 0
                        idx = idx + 1
                        continue 
                stor[('array', 2, ('map', ('param', 'arg1'), ('name', 'totalDebt', 2))) + totalDebt[arg1].field_512].field_0 = arg2 or Mask(96, 160, stor[('array', 2, ('map', ('param', 'arg1'), ('name', 'totalDebt', 2))) + totalDebt[arg1].field_512].field_0)
        else:
            totalDebt[address(msg.sender)][1][address(arg2)].field_256 = totalDebt[address(msg.sender)].field_512 + 1
            totalDebt[address(msg.sender)].field_512++
            if not totalDebt[address(msg.sender)].field_512 <= totalDebt[address(msg.sender)].field_512 + 1:
                idx = totalDebt[address(msg.sender)].field_512 + 1
                while totalDebt[address(msg.sender)].field_512 > idx:
                    totalDebt[address(msg.sender)][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
            stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'totalDebt', 2))) + totalDebt[address(msg.sender)].field_512].field_0 = arg2 or Mask(96, 160, stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'totalDebt', 2))) + totalDebt[address(msg.sender)].field_512].field_0)
            totalDebt[address(msg.sender)][1][address(arg2)].field_0 -= arg3
            totalDebt[address(msg.sender)].field_1536 -= arg3
            if 0 == totalDebt[arg1][1][address(arg2)].field_256:
                totalDebt[arg1][1][address(arg2)].field_256 = totalDebt[arg1].field_512 + 1
                totalDebt[arg1].field_512++
                if not totalDebt[arg1].field_512 <= totalDebt[arg1].field_512 + 1:
                    idx = totalDebt[arg1].field_512 + 1
                    while totalDebt[arg1].field_512 > idx:
                        totalDebt[arg1][idx + 2].field_0 = 0
                        idx = idx + 1
                        continue 
                stor[('array', 2, ('map', ('param', 'arg1'), ('name', 'totalDebt', 2))) + totalDebt[arg1].field_512].field_0 = arg2 or Mask(96, 160, stor[('array', 2, ('map', ('param', 'arg1'), ('name', 'totalDebt', 2))) + totalDebt[arg1].field_512].field_0)
    else:
        if totalDebt[address(msg.sender)][1][address(arg2)].field_256 > 0:
            require totalDebt[address(msg.sender)].field_512 - 1 < totalDebt[address(msg.sender)].field_512
            require totalDebt[address(msg.sender)][1][address(arg2)].field_256 - 1 < totalDebt[address(msg.sender)].field_512
            stor[totalDebt[address(msg.sender)][1][address(arg2)].field_256 + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'totalDebt', 2)))].field_0 = stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'totalDebt', 2))) + totalDebt[address(msg.sender)].field_512].field_0
            totalDebt[address(msg.sender)].field_512--
            if not totalDebt[address(msg.sender)].field_512 <= totalDebt[address(msg.sender)].field_512 - 1:
                idx = totalDebt[address(msg.sender)].field_512 - 1
                while totalDebt[address(msg.sender)].field_512 > idx:
                    totalDebt[address(msg.sender)][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
            totalDebt[address(msg.sender)][1][stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'totalDebt', 2))) + totalDebt[address(msg.sender)].field_512].field_0].field_256 = totalDebt[address(msg.sender)][1][address(arg2)].field_256
            totalDebt[address(msg.sender)][1][address(arg2)].field_256 = 0
            totalDebt[address(msg.sender)][1][address(arg2)].field_0 = 0
        totalDebt[address(msg.sender)].field_1536 -= arg3
        if 0 == totalDebt[arg1][1][address(arg2)].field_256:
            totalDebt[arg1][1][address(arg2)].field_256 = totalDebt[arg1].field_512 + 1
            totalDebt[arg1].field_512++
            if not totalDebt[arg1].field_512 <= totalDebt[arg1].field_512 + 1:
                idx = totalDebt[arg1].field_512 + 1
                while totalDebt[arg1].field_512 > idx:
                    totalDebt[arg1][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
            stor[('array', 2, ('map', ('param', 'arg1'), ('name', 'totalDebt', 2))) + totalDebt[arg1].field_512].field_0 = arg2 or Mask(96, 160, stor[('array', 2, ('map', ('param', 'arg1'), ('name', 'totalDebt', 2))) + totalDebt[arg1].field_512].field_0)
    totalDebt[arg1][1][address(arg2)].field_0 = totalDebt[address(arg1)][1][address(arg2)].field_0 + arg3
    totalDebt[address(arg1)].field_1536 += arg3
    emit Transfer(arg3, msg.sender, arg1);
    return 1
}



}
