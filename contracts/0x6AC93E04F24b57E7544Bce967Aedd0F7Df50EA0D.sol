contract main {




// =====================  Runtime code  =====================


uint256 adminComission;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 jackpot;
address stor7;
mapping of uint256 balanceOf;
array of address stor9;
array of struct stor10;

function getAdminComission() {
    return adminComission
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function getJackpot() {
    return jackpot
}

function _fallback() payable {
    require msg.sender == stor7
    jackpot += msg.value
}

function updateParams(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require msg.sender == stor7
    stor4 = arg1
    stor1 = arg3
    stor2 = arg4
    stor3 = arg5
    stor5 = arg2
}

function withdrawAdmin() {
    require msg.sender == stor7
    require adminComission > 0
    adminComission = 0
    call stor7 with:
       value adminComission wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getLotteryAtIndex(uint256 arg1) {
    if stor10[arg1].field_256:
        mem[128] = stor10[arg1][1].field_0
        idx = 128
        s = 0
        while (32 * stor10[arg1].field_256) + 96 > idx:
            mem[idx + 32] = stor10[arg1][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor10[arg1].field_256) + 224 len floor32(stor10[arg1].field_256)] = mem[128 len floor32(stor10[arg1].field_256)]
    return Array(len=stor10[arg1].field_256, data=mem[128 len floor32(stor10[arg1].field_256)], mem[(32 * stor10[arg1].field_256) + floor32(stor10[arg1].field_256) + 224 len (32 * stor10[arg1].field_256) - floor32(stor10[arg1].field_256)]), 
           jackpot
}

function checkWin(uint256 arg1, address arg2) {
    idx = 0
    s = 0
    while idx < stor10[arg1].field_256:
        require idx < stor10[arg1].field_256
        mem[0] = arg1
        mem[32] = 10
        if stor10[arg1][idx + 1].field_0 != arg2:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if block.hash(arg1) xor arg2 % 16:
    else:
        if Mask(4, 4, block.hash(arg1) xor arg2):
            if s:
                return (2 * stor4)
        else:
            if not Mask(4, 8, block.hash(arg1) xor arg2):
                if s:
                    return jackpot
            else:
                if s:
                    return (4 * stor4)
        ('iszero', ('var', 1))
    return 0
}

function buyTicket() payable {
    require msg.value == stor4
    idx = 0
    while idx < stor10[block.number + stor5].field_256:
        require idx < stor10[block.number + stor5].field_256
        require stor10[block.number + stor5][idx + 1].field_0 != msg.sender
        mem[0] = block.number + stor5
        mem[32] = 10
        idx = idx + 1
        continue 
    jackpot += msg.value
    stor10[block.number + stor5].field_256++
    stor[('array', 1, ('map', ('add', 'number', ('stor', ('name', 'stor5', 5))), ('name', 'stor10', 10))) + stor10[block.number + stor5].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('add', 'number', ('stor', ('name', 'stor5', 5))), ('name', 'stor10', 10))) + stor10[block.number + stor5].field_256].field_0)
    stor10[block.number + stor5][2][msg.sender].field_0 = 0
}

function buyTicketWithRef(address arg1) payable {
    require msg.value == stor4
    idx = 0
    while idx < stor10[block.number + stor5].field_256:
        require idx < stor10[block.number + stor5].field_256
        require stor10[block.number + stor5][idx + 1].field_0 != msg.sender
        mem[0] = block.number + stor5
        mem[32] = 10
        idx = idx + 1
        continue 
    jackpot += msg.value
    stor10[block.number + stor5].field_256++
    stor[('array', 1, ('map', ('add', 'number', ('stor', ('name', 'stor5', 5))), ('name', 'stor10', 10))) + stor10[block.number + stor5].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('add', 'number', ('stor', ('name', 'stor5', 5))), ('name', 'stor10', 10))) + stor10[block.number + stor5].field_256].field_0)
    stor10[block.number + stor5][2][msg.sender].field_0 = 0
    if arg1:
        if 0 < stor2:
            balanceOf[address(arg1)] += msg.value * stor2 / 100
            idx = 0
            while idx < stor9.length:
                mem[0] = 9
                if stor9[idx] != arg1:
                    idx = idx + 1
                    continue 
            stor9.length++
            stor9[stor9.length] = arg1
}

function withdrawForWinner(uint256 arg1) {
    require arg1 > block.number - 100
    require stor10[arg1].field_256 > 0
    require not stor10[arg1][2][msg.sender].field_0
    idx = 0
    s = 0
    while idx < stor10[arg1].field_256:
        require idx < stor10[arg1].field_256
        mem[0] = arg1
        mem[32] = 10
        if stor10[arg1][idx + 1].field_0 != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    require not block.hash(arg1) xor msg.sender % 16
    require s
    if Mask(4, 4, block.hash(arg1) xor msg.sender):
        require 2 * stor4 > 0
        stor10[arg1][2][msg.sender].field_0 = 1
        if 2 * stor4 <= jackpot:
            if 2 * stor4 != jackpot:
                call msg.sender with:
                   value (100 * 2 * stor4) - (stor1 * 2 * stor4) / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = 0
                s = (2 * stor4) - ((100 * 2 * stor4) - (stor1 * 2 * stor4) / 100)
                while idx < stor9.length:
                    mem[0] = stor9[idx]
                    mem[32] = 8
                    if balanceOf[stor9[idx]] <= 0:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < stor9.length
                    mem[0] = stor9[idx]
                    mem[32] = 8
                    if balanceOf[stor9[idx]] >= s:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < stor9.length
                    call stor9[idx] with:
                       value balanceOf[stor9[idx]] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < stor9.length
                    mem[0] = stor9[idx]
                    mem[32] = 8
                    balanceOf[stor9[idx]] = 0
                    idx = idx + 1
                    s = s - balanceOf[stor9[idx]]
                    continue 
                if s > 0:
                    call stor7 with:
                       value s wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                jackpot -= 2 * stor4
            else:
                call msg.sender with:
                   value (100 * 99 * 2 * stor4 / 100) - (stor1 * 99 * 2 * stor4 / 100) / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = 0
                s = (99 * 2 * stor4 / 100) - ((100 * 99 * 2 * stor4 / 100) - (stor1 * 99 * 2 * stor4 / 100) / 100)
                while idx < stor9.length:
                    mem[0] = stor9[idx]
                    mem[32] = 8
                    if balanceOf[stor9[idx]] <= 0:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < stor9.length
                    mem[0] = stor9[idx]
                    mem[32] = 8
                    if balanceOf[stor9[idx]] >= s:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < stor9.length
                    call stor9[idx] with:
                       value balanceOf[stor9[idx]] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < stor9.length
                    mem[0] = stor9[idx]
                    mem[32] = 8
                    balanceOf[stor9[idx]] = 0
                    idx = idx + 1
                    s = s - balanceOf[stor9[idx]]
                    continue 
                if s > 0:
                    call stor7 with:
                       value s wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                jackpot -= 99 * 2 * stor4 / 100
        else:
            if jackpot != jackpot:
                call msg.sender with:
                   value (100 * jackpot) - (stor1 * jackpot) / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = 0
                s = jackpot - ((100 * jackpot) - (stor1 * jackpot) / 100)
                while idx < stor9.length:
                    mem[0] = stor9[idx]
                    mem[32] = 8
                    if balanceOf[stor9[idx]] <= 0:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < stor9.length
                    mem[0] = stor9[idx]
                    mem[32] = 8
                    if balanceOf[stor9[idx]] >= s:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < stor9.length
                    call stor9[idx] with:
                       value balanceOf[stor9[idx]] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < stor9.length
                    mem[0] = stor9[idx]
                    mem[32] = 8
                    balanceOf[stor9[idx]] = 0
                    idx = idx + 1
                    s = s - balanceOf[stor9[idx]]
                    continue 
                if s > 0:
                    call stor7 with:
                       value s wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                jackpot = 0
            else:
                call msg.sender with:
                   value (100 * 99 * jackpot / 100) - (stor1 * 99 * jackpot / 100) / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = 0
                s = (99 * jackpot / 100) - ((100 * 99 * jackpot / 100) - (stor1 * 99 * jackpot / 100) / 100)
                while idx < stor9.length:
                    mem[0] = stor9[idx]
                    mem[32] = 8
                    if balanceOf[stor9[idx]] <= 0:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < stor9.length
                    mem[0] = stor9[idx]
                    mem[32] = 8
                    if balanceOf[stor9[idx]] >= s:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < stor9.length
                    call stor9[idx] with:
                       value balanceOf[stor9[idx]] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < stor9.length
                    mem[0] = stor9[idx]
                    mem[32] = 8
                    balanceOf[stor9[idx]] = 0
                    idx = idx + 1
                    s = s - balanceOf[stor9[idx]]
                    continue 
                if s > 0:
                    call stor7 with:
                       value s wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                jackpot -= 99 * jackpot / 100
    else:
        if not Mask(4, 8, block.hash(arg1) xor msg.sender):
            require jackpot > 0
            stor10[arg1][2][msg.sender].field_0 = 1
            if jackpot != jackpot:
                call msg.sender with:
                   value (100 * jackpot) - (stor1 * jackpot) / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = 0
                s = jackpot - ((100 * jackpot) - (stor1 * jackpot) / 100)
                while idx < stor9.length:
                    mem[0] = stor9[idx]
                    mem[32] = 8
                    if balanceOf[stor9[idx]] <= 0:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < stor9.length
                    mem[0] = stor9[idx]
                    mem[32] = 8
                    if balanceOf[stor9[idx]] >= s:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < stor9.length
                    call stor9[idx] with:
                       value balanceOf[stor9[idx]] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < stor9.length
                    mem[0] = stor9[idx]
                    mem[32] = 8
                    balanceOf[stor9[idx]] = 0
                    idx = idx + 1
                    s = s - balanceOf[stor9[idx]]
                    continue 
                if s > 0:
                    call stor7 with:
                       value s wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                jackpot = 0
            else:
                call msg.sender with:
                   value (100 * 99 * jackpot / 100) - (stor1 * 99 * jackpot / 100) / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = 0
                s = (99 * jackpot / 100) - ((100 * 99 * jackpot / 100) - (stor1 * 99 * jackpot / 100) / 100)
                while idx < stor9.length:
                    mem[0] = stor9[idx]
                    mem[32] = 8
                    if balanceOf[stor9[idx]] <= 0:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < stor9.length
                    mem[0] = stor9[idx]
                    mem[32] = 8
                    if balanceOf[stor9[idx]] >= s:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < stor9.length
                    call stor9[idx] with:
                       value balanceOf[stor9[idx]] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < stor9.length
                    mem[0] = stor9[idx]
                    mem[32] = 8
                    balanceOf[stor9[idx]] = 0
                    idx = idx + 1
                    s = s - balanceOf[stor9[idx]]
                    continue 
                if s > 0:
                    call stor7 with:
                       value s wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                jackpot -= 99 * jackpot / 100
        else:
            require 4 * stor4 > 0
            stor10[arg1][2][msg.sender].field_0 = 1
            if 4 * stor4 <= jackpot:
                if 4 * stor4 != jackpot:
                    call msg.sender with:
                       value (100 * 4 * stor4) - (stor1 * 4 * stor4) / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = 0
                    s = (4 * stor4) - ((100 * 4 * stor4) - (stor1 * 4 * stor4) / 100)
                    while idx < stor9.length:
                        mem[0] = stor9[idx]
                        mem[32] = 8
                        if balanceOf[stor9[idx]] <= 0:
                            idx = idx + 1
                            s = s
                            continue 
                        require idx < stor9.length
                        mem[0] = stor9[idx]
                        mem[32] = 8
                        if balanceOf[stor9[idx]] >= s:
                            idx = idx + 1
                            s = s
                            continue 
                        require idx < stor9.length
                        call stor9[idx] with:
                           value balanceOf[stor9[idx]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < stor9.length
                        mem[0] = stor9[idx]
                        mem[32] = 8
                        balanceOf[stor9[idx]] = 0
                        idx = idx + 1
                        s = s - balanceOf[stor9[idx]]
                        continue 
                    if s > 0:
                        call stor7 with:
                           value s wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    jackpot -= 4 * stor4
                else:
                    call msg.sender with:
                       value (100 * 99 * 4 * stor4 / 100) - (stor1 * 99 * 4 * stor4 / 100) / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = 0
                    s = (99 * 4 * stor4 / 100) - ((100 * 99 * 4 * stor4 / 100) - (stor1 * 99 * 4 * stor4 / 100) / 100)
                    while idx < stor9.length:
                        mem[0] = stor9[idx]
                        mem[32] = 8
                        if balanceOf[stor9[idx]] <= 0:
                            idx = idx + 1
                            s = s
                            continue 
                        require idx < stor9.length
                        mem[0] = stor9[idx]
                        mem[32] = 8
                        if balanceOf[stor9[idx]] >= s:
                            idx = idx + 1
                            s = s
                            continue 
                        require idx < stor9.length
                        call stor9[idx] with:
                           value balanceOf[stor9[idx]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < stor9.length
                        mem[0] = stor9[idx]
                        mem[32] = 8
                        balanceOf[stor9[idx]] = 0
                        idx = idx + 1
                        s = s - balanceOf[stor9[idx]]
                        continue 
                    if s > 0:
                        call stor7 with:
                           value s wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    jackpot -= 99 * 4 * stor4 / 100
            else:
                if jackpot != jackpot:
                    call msg.sender with:
                       value (100 * jackpot) - (stor1 * jackpot) / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = 0
                    s = jackpot - ((100 * jackpot) - (stor1 * jackpot) / 100)
                    while idx < stor9.length:
                        mem[0] = stor9[idx]
                        mem[32] = 8
                        if balanceOf[stor9[idx]] <= 0:
                            idx = idx + 1
                            s = s
                            continue 
                        require idx < stor9.length
                        mem[0] = stor9[idx]
                        mem[32] = 8
                        if balanceOf[stor9[idx]] >= s:
                            idx = idx + 1
                            s = s
                            continue 
                        require idx < stor9.length
                        call stor9[idx] with:
                           value balanceOf[stor9[idx]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < stor9.length
                        mem[0] = stor9[idx]
                        mem[32] = 8
                        balanceOf[stor9[idx]] = 0
                        idx = idx + 1
                        s = s - balanceOf[stor9[idx]]
                        continue 
                    if s > 0:
                        call stor7 with:
                           value s wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    jackpot = 0
                else:
                    call msg.sender with:
                       value (100 * 99 * jackpot / 100) - (stor1 * 99 * jackpot / 100) / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = 0
                    s = (99 * jackpot / 100) - ((100 * 99 * jackpot / 100) - (stor1 * 99 * jackpot / 100) / 100)
                    while idx < stor9.length:
                        mem[0] = stor9[idx]
                        mem[32] = 8
                        if balanceOf[stor9[idx]] <= 0:
                            idx = idx + 1
                            s = s
                            continue 
                        require idx < stor9.length
                        mem[0] = stor9[idx]
                        mem[32] = 8
                        if balanceOf[stor9[idx]] >= s:
                            idx = idx + 1
                            s = s
                            continue 
                        require idx < stor9.length
                        call stor9[idx] with:
                           value balanceOf[stor9[idx]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < stor9.length
                        mem[0] = stor9[idx]
                        mem[32] = 8
                        balanceOf[stor9[idx]] = 0
                        idx = idx + 1
                        s = s - balanceOf[stor9[idx]]
                        continue 
                    if s > 0:
                        call stor7 with:
                           value s wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    jackpot -= 99 * jackpot / 100
}



}
