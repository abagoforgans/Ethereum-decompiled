contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor4;
uint256 stor11;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;

function _fallback() payable {
    stor4 = 0
    stor11 = 0
    require not msg.value
    stor0 = msg.sender
    stor16 = 5
    stor17 = 65
    stor18 = 25
    stor19 = 5
    stor20 = 350000
    return code.data[107 len 2828]
}



// =====================  Runtime code  =====================


address stor0;
array of struct tickets;
mapping of uint256 sub_2bee2b7b;
uint256 finishBlock;
uint256 blockDelay;
array of uint256 sub_176b56a5;
uint256 stor6;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 sub_8cc64524;
array of uint256 winners;
uint256 stor13;
uint256 stor14;
uint256 stor15;
array of uint256 sub_81620a5d;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 sub_8d5d4e4d;

function countTickets() {
    return tickets.length
}

function sub_176b56a5(?) {
    require arg1 < 3
    return sub_176b56a5[arg1]
}

function sub_2bee2b7b(?) {
    return sub_2bee2b7b[Mask(40, 216, arg1)]
}

function finishBlock() {
    return finishBlock
}

function tickets(uint256 arg1) {
    require arg1 < tickets.length
    return Mask(40, 216, tickets[arg1].field_0), tickets[arg1].field_256
}

function sub_81620a5d(?) {
    require arg1 < 4
    return sub_81620a5d[arg1]
}

function sub_8cc64524(?) {
    return sub_8cc64524
}

function sub_8d5d4e4d(?) {
    return sub_8d5d4e4d
}

function winners(uint256 arg1) {
    require arg1 < 4
    return winners[arg1]
}

function blockDelay() {
    return blockDelay
}

function del() {
    require stor0 == msg.sender
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert 
}

function sub_de2af4b0(?) {
    return (tickets.length - 1 == sub_8cc64524)
}

function FinishLottery() {
    require stor0 == msg.sender
    require not finishBlock
    finishBlock = block.number + 5
}

function sub_eb9a258b(?) {
    require stor0 == msg.sender
    require not finishBlock
    tickets.length++
    if not tickets.length <= tickets.length + 1:
        idx = 2 * tickets.length + 1
        while 2 * tickets.length > idx:
            tickets[idx].field_0 = 0
            tickets[idx].field_256 = 0
            idx = idx + 2
            continue 
    tickets[tickets.length].field_0 = Mask(40, 216, arg1) >> 216
    tickets[tickets.length].field_256 = arg2
    sub_2bee2b7b[Mask(40, 216, arg1)] = tickets.length - 1
}

function getInfo() {
    idx = 320
    s = 5
    while 416 > idx + 32:
        mem[idx + 32] = tickets[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    idx = 416
    s = 12
    while 544 > idx + 32:
        mem[idx + 32] = tickets[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    return finishBlock, 
           tickets.length,
           sub_176b56a5.length,
           mem[352 len 64],
           sub_8d5d4e4d,
           winners.length,
           mem[448 len 96],
           tickets.length - 1 == sub_8cc64524
}

function sub_890c0557(?) {
    require stor0 == msg.sender
    require block.number >= finishBlock
    require block.hash(finishBlock - 1)
    sub_176b56a5.length = (block.hash(finishBlock - 1) % 10) + 1
    s = 0
    idx = 0
    s = (block.hash(finishBlock - 1) % 10) + 1
    s = block.hash(finishBlock - 1)
    while idx < 255:
        s = var24002
        t = var24005
        while s < 32:
            require 256^s
            t = 0
            while uint8(t) < 1:
                require uint8(t) < 3
                if (block.hash(finishBlock + -idx - 1) / 256^s % 10) + 1 != sub_176b56a5[uint8(t)]:
                    t = t + 1
                    continue 
                if uint8(t) == 1:
                    stor6 = (block.hash(finishBlock + -idx - 1) / 256^s % 10) + 1
                    stor9 = 2^((block.hash(finishBlock + -idx - 1) / 256^s % 10) + 1)
                s = s + 1
                t = (block.hash(finishBlock + -idx - 1) / 256^s % 10) + 1
                continue 
            if uint8(t) == 1:
                stor6 = (block.hash(finishBlock + -idx - 1) / 256^s % 10) + 1
                stor9 = 2^((block.hash(finishBlock + -idx - 1) / 256^s % 10) + 1)
            s = s + 1
            t = (block.hash(finishBlock + -idx - 1) / 256^s % 10) + 1
            continue 
        s = s
        idx = idx + 1
        s = t
        s = block.hash(finishBlock + -idx - 1)
        continue 
}

function sub_bc944636(?) {
    require tickets.length - 1 == sub_8cc64524
    require sub_2bee2b7b[Mask(40, 216, arg1)]
    require sub_2bee2b7b[Mask(40, 216, arg1)] - 1 < tickets.length
    if tickets[stor2[Mask(40, 216, arg1)] - 1].field_256 and stor8 != stor8:
        if tickets[stor2[Mask(40, 216, arg1)] - 1].field_256 and stor9 != stor9:
            if tickets[stor2[Mask(40, 216, arg1)] - 1].field_256 and stor10 != stor10:
                require winners.length
                return (sub_8d5d4e4d * sub_81620a5d.length / 100 / winners.length)
            require stor13
            return (sub_8d5d4e4d * stor17 / 100 / stor13)
        if tickets[stor2[Mask(40, 216, arg1)] - 1].field_256 and stor10 != stor10:
            require stor13
            return (sub_8d5d4e4d * stor17 / 100 / stor13)
        require stor14
        return (sub_8d5d4e4d * stor18 / 100 / stor14)
    if tickets[stor2[Mask(40, 216, arg1)] - 1].field_256 and stor9 != stor9:
        if tickets[stor2[Mask(40, 216, arg1)] - 1].field_256 and stor10 != stor10:
            require stor13
            return (sub_8d5d4e4d * stor17 / 100 / stor13)
        require stor14
        return (sub_8d5d4e4d * stor18 / 100 / stor14)
    if tickets[stor2[Mask(40, 216, arg1)] - 1].field_256 and stor10 != stor10:
        require stor14
        return (sub_8d5d4e4d * stor18 / 100 / stor14)
    require stor15
    return (sub_8d5d4e4d * stor19 / 100 / stor15)
}

function sub_67053c63(?) {
    mem[96] = 0
    mem[128 len 64] = 0
    require stor0 == msg.sender
    require block.number >= finishBlock
    s = 0
    idx = sub_8cc64524
    s = arg1
    while idx < tickets.length:
        require idx < tickets.length
        require idx < tickets.length
        mem[0] = 1
        if tickets[idx].field_256 and stor8 != stor8:
            if tickets[idx].field_256 and stor9 != stor9:
                if tickets[idx].field_256 and stor10 != stor10:
                    if s - 1:
                        s = 0
                        idx = idx + 1
                        s = s - 1
                        continue 
                else:
                    mem[96] = mem[96] + 1
                    if s - 1:
                        s = 1
                        idx = idx + 1
                        s = s - 1
                        continue 
            else:
                if tickets[idx].field_256 and stor10 != stor10:
                    mem[96] = mem[96] + 1
                    if s - 1:
                        s = 1
                        idx = idx + 1
                        s = s - 1
                        continue 
                else:
                    mem[128] = mem[128] + 1
                    if s - 1:
                        s = 2
                        idx = idx + 1
                        s = s - 1
                        continue 
        else:
            if tickets[idx].field_256 and stor9 != stor9:
                if tickets[idx].field_256 and stor10 != stor10:
                    mem[96] = mem[96] + 1
                    if s - 1:
                        s = 1
                        idx = idx + 1
                        s = s - 1
                        continue 
                else:
                    mem[128] = mem[128] + 1
                    if s - 1:
                        s = 2
                        idx = idx + 1
                        s = s - 1
                        continue 
            else:
                if tickets[idx].field_256 and stor10 != stor10:
                    mem[128] = mem[128] + 1
                    if s - 1:
                        s = 2
                        idx = idx + 1
                        s = s - 1
                        continue 
                else:
                    mem[160] = mem[160] + 1
                    if s - 1:
                        s = 3
                        idx = idx + 1
                        s = s - 1
                        continue 
        ('iszero', ('add', -1, ('var', 1)))
        sub_8cc64524 = idx - 1
        if mem[96] > 0:
            stor13 += mem[96]
        if mem[128] > 0:
            stor14 += mem[128]
        if mem[160] > 0:
            stor15 += mem[160]
        if sub_8cc64524 == tickets.length - 1:
            winners.length = tickets.length - stor15 - stor14 - stor13
    sub_8cc64524 = idx - 1
    if mem[96] > 0:
        stor13 += mem[96]
    if mem[128] > 0:
        stor14 += mem[128]
    if mem[160] > 0:
        stor15 += mem[160]
    if sub_8cc64524 == tickets.length - 1:
        winners.length = tickets.length - stor15 - stor14 - stor13
}



}
