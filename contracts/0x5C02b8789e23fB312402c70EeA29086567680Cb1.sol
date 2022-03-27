contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
array of struct stor3;

function _fallback() {
    stor0 = msg.sender
    stor3.length = 0
    if not stor3.length <= 0:
        idx = 0
        while 10 * stor3.length > idx:
            stor3[idx].field_0 = 0
            stor3[idx].field_256 = 0
            stor3[idx].field_512 = 0
            stor3[idx].field_1024 = 0
            stor3[idx].field_1280 = 0
            stor3[idx].field_1536 = 0
            stor3[idx].field_1792 = 0
            stor3[idx].field_2048 = 0
            stor3[idx].field_2304 = 0
            idx = idx + 10
            continue 
    stor2 = 0
    return code.data[196 len 5316]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 announcements;
uint256 indexOfCurrentDraw;
array of struct ledger;

function ledger(uint256 arg1) {
    require arg1 < ledger.length
    return ledger[arg1].field_0, 
           ledger[arg1].field_0,
           ledger[arg1].field_0,
           ledger[arg1].field_0,
           ledger[arg1].field_256,
           ledger[arg1].field_512,
           ledger[arg1].field_1024,
           ledger[arg1].field_1280,
           ledger[arg1].field_1536,
           ledger[arg1].field_1792,
           ledger[arg1].field_2048,
           ledger[arg1].field_2304
}

function Announcements() {
    return announcements[0 len announcements.length]
}

function IndexOfCurrentDraw() {
    return indexOfCurrentDraw
}

function _fallback() payable {
    revert 
}

function CheckHash(bytes32 arg1) {
    return sha3(arg1)
}

function announce(string arg1) {
    require stor0 == msg.sender
    announcements[] = Array(len=arg1.length, data=arg1[all])
}

function MyBet(uint8 arg1, address arg2) {
    require arg1 < ledger.length
    idx = 224
    s = 0
    while 352 > idx + 32:
        mem[idx + 32] = stor('map', ('mask_shl', 160, 0, 96, ('param', 'arg2')), ('add', 3, ('mul', 10, ('param', 'arg1')), ('name', 'stor3', 3)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    return stor[(10 * arg1) + ('name', 'ledger', 3) + 3][address(arg2)].field_0, mem[256 len 96]
}

function Refund(uint32 arg1) {
    require arg1 < ledger.length
    require not ledger[arg1].field_24
    require arg1 < ledger.length
    require block.timestamp >= ledger[arg1].field_2304
    require arg1 < ledger.length
    require stor[(10 * arg1) + ('name', 'ledger', 3) + 3][address(msg.sender)].field_256
    require arg1 < ledger.length
    stor[(10 * arg1) + ('name', 'ledger', 3) + 3][address(msg.sender)].field_256 = 0
    call msg.sender with:
       value ledger[arg1].field_2048 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function Play(uint8 arg1, uint8 arg2, uint8 arg3, uint8 arg4) payable {
    require indexOfCurrentDraw < ledger.length
    require msg.value == ledger[stor2].field_2048
    require indexOfCurrentDraw < ledger.length
    require not stor[(10 * stor2) + ('name', 'ledger', 3) + 3][address(msg.sender)].field_24
    require arg1 < arg2
    require arg2 < arg3
    require arg3 < arg4
    require indexOfCurrentDraw < ledger.length
    stor[(10 * stor2) + ('name', 'ledger', 3) + 3][address(msg.sender)].field_0 = arg1
    stor[(10 * stor2) + ('name', 'ledger', 3) + 3][address(msg.sender)].field_8 = arg2
    stor[(10 * stor2) + ('name', 'ledger', 3) + 3][address(msg.sender)].field_16 = arg3
    stor[(10 * stor2) + ('name', 'ledger', 3) + 3][address(msg.sender)].field_24 = arg4
    stor[(10 * stor2) + ('name', 'ledger', 3) + 3][address(msg.sender)].field_256 = 1
}

function next_draw(bytes32 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require stor0 == msg.sender
    ledger.length++
    if not ledger.length <= ledger.length + 1:
        idx = (10 * ledger.length) + 10
        while 10 * ledger.length > idx:
            ledger[idx].field_0 = 0
            ledger[idx].field_256 = 0
            ledger[idx].field_512 = 0
            ledger[idx].field_1024 = 0
            ledger[idx].field_1280 = 0
            ledger[idx].field_1536 = 0
            ledger[idx].field_1792 = 0
            ledger[idx].field_2048 = 0
            ledger[idx].field_2304 = 0
            idx = idx + 10
            continue 
    require indexOfCurrentDraw < ledger.length
    ledger[stor2].field_256 = block.hash(block.number - 1)
    indexOfCurrentDraw = ledger.length - 1
    require ledger.length - 1 < ledger.length
    ledger[ledger.length].field_0 = arg1
    require indexOfCurrentDraw < ledger.length
    ledger[stor2].field_1024 = arg3
    ledger[stor2].field_1280 = arg4
    ledger[stor2].field_1536 = arg5
    ledger[stor2].field_1792 = arg6
    ledger[stor2].field_2048 = arg2
    ledger[stor2].field_2304 = block.timestamp + (336 * 24 * 3600)
    emit NewDrawReadyToPlay(arg1, arg2, arg3, indexOfCurrentDraw);
}

function announce_therand(uint32 arg1, bytes32 arg2) {
    mem[96] = 0
    mem[128 len 96] = 0
    require stor0 == msg.sender
    require arg1 < ledger.length
    require sha3(arg2) == ledger[arg1].field_512
    require arg1 < ledger.length
    mem[224] = arg2
    mem[256] = ledger[arg1].field_256
    ledger[arg1].field_256 = sha3(arg2, ledger[arg1].field_256)
    idx = 0
    s = sha3(arg2, ledger[arg1].field_256)
    while uint8(idx) < 4:
        mem[(32 * uint8(idx)) + 96] = uint8(s)
        t = 0
        while t < uint8(idx):
            require uint8(idx) < 4
            require t < 4
            if mem[(32 * t) + 127 len 1] != uint8(s):
                t = t + 1
                continue 
            idx = idx
            s = s / 256
            continue 
        idx = idx + 1
        s = s / 256
        continue 
    s = 0
    s = 0
    idx = 4
    while uint8(idx) > 1:
        s = 0
        t = 1
        while uint8(s) < uint8(idx - 1):
            require uint8(s + 1) < 4
            require uint8(s) < 4
            if mem[(32 * uint8(s)) + 127 len 1] <= mem[(32 * uint8(s + 1)) + 127 len 1]:
                s = s + 1
                t = t
                continue 
            require uint8(s + 1) < 4
            _74 = mem[(32 * uint8(s + 1)) + 96]
            require uint8(s) < 4
            require uint8(s + 1) < 4
            mem[(32 * uint8(s + 1)) + 96] = mem[(32 * uint8(s)) + 127 len 1]
            mem[(32 * uint8(s)) + 96] = uint8(_74)
            s = s + 1
            t = 0
            continue 
        if not t:
            s = s
            s = t
            idx = idx - 1
            continue 
        require arg1 < ledger.length
        ledger[arg1].field_0 = mem[127 len 1]
        ledger[arg1].field_8 = mem[159 len 1]
        ledger[arg1].field_16 = mem[191 len 1]
        ledger[arg1].field_24 = mem[223 len 1]
        mem[224] = mem[127 len 1]
        mem[256] = mem[159 len 1]
        mem[288] = mem[191 len 1]
        mem[320] = mem[223 len 1]
        emit DrawReadyToPayout(uint32 rg1, uint8 rg2, uint8 rg3, uint8 rg4, uint8 rg5, bytes32 rg6):
                               mem[224 len 128],
                               arg2,
                               arg1,
    require arg1 < ledger.length
    ledger[arg1].field_0 = mem[127 len 1]
    ledger[arg1].field_8 = mem[159 len 1]
    ledger[arg1].field_16 = mem[191 len 1]
    ledger[arg1].field_24 = mem[223 len 1]
    mem[224] = mem[127 len 1]
    mem[256] = mem[159 len 1]
    mem[288] = mem[191 len 1]
    mem[320] = mem[223 len 1]
    emit DrawReadyToPayout(uint32 rg1, uint8 rg2, uint8 rg3, uint8 rg4, uint8 rg5, bytes32 rg6):
                           mem[224 len 128],
                           arg2,
                           arg1,
}

function Withdraw(uint32 arg1) {
    require arg1 < ledger.length
    require stor[(10 * arg1) + ('name', 'ledger', 3) + 3][address(msg.sender)].field_256
    require arg1 < ledger.length
    require ledger[arg1].field_24
    require arg1 < ledger.length
    mem[352] = stor[(10 * arg1) + ('name', 'ledger', 3) + 3][address(msg.sender)].field_0
    idx = 352
    s = 0
    while 480 > idx + 32:
        mem[idx + 32] = stor('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('add', 3, ('mul', 10, ('param', 'arg1')), ('name', 'stor3', 3)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    require arg1 < ledger.length
    mem[320] = ledger[arg1].field_24
    mem[288] = ledger[arg1].field_16
    mem[256] = ledger[arg1].field_8
    mem[224] = ledger[arg1].field_0
    idx = 0
    s = 0
    while uint8(idx) < 4:
        require uint8(idx) < 4
        require uint8(var42006) < 4
        if not var46001:
            if uint8(var46005) != 4:
                require uint8(idx) < 4
                require uint8(var46005) < 4
                if mem[(32 * uint8(var46005)) + 383 len 1] != mem[(32 * uint8(idx)) + 255 len 1]:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = s + 1
                continue 
        else:
            t = var46005
            while uint8(t + 1) < 4:
                require uint8(idx) < 4
                require uint8(t + 1) < 4
                if mem[(32 * uint8(t + 1)) + 383 len 1] < mem[(32 * uint8(idx)) + 255 len 1]:
                    t = t + 1
                    continue 
                if uint8(t + 1) != 4:
                    require uint8(idx) < 4
                    require uint8(t + 1) < 4
                    if mem[(32 * uint8(t + 1)) + 383 len 1] != mem[(32 * uint8(idx)) + 255 len 1]:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = s + 1
                    continue 
                require uint8(s)
                require arg1 < ledger.length
                if uint8(s) != 1:
                    if uint8(s) != 2:
                        if uint8(s) != 3:
                            stor[(10 * arg1) + ('name', 'ledger', 3) + 3][address(msg.sender)].field_256 = 0
                            if uint8(s) != 4:
                                call msg.sender with:
                                     gas 2300 wei
                                require ext_call.success
                                emit PlayerWon(0);
                                call stor0 with:
                                     gas 2300 wei
                            else:
                                call msg.sender with:
                                   value ledger[arg1].field_1024 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit PlayerWon(ledger[arg1].field_1024);
                                call stor0 with:
                                   value ledger[arg1].field_1024 / 100 wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require arg1 < ledger.length
                            stor[(10 * arg1) + ('name', 'ledger', 3) + 3][address(msg.sender)].field_256 = 0
                            if uint8(s) != 4:
                                call msg.sender with:
                                   value ledger[arg1].field_1280 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit PlayerWon(ledger[arg1].field_1280);
                                call stor0 with:
                                   value ledger[arg1].field_1280 / 100 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                call msg.sender with:
                                   value ledger[arg1].field_1024 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit PlayerWon(ledger[arg1].field_1024);
                                call stor0 with:
                                   value ledger[arg1].field_1024 / 100 wei
                                     gas 2300 * is_zero(value) wei
                    else:
                        require arg1 < ledger.length
                        if uint8(s) != 3:
                            stor[(10 * arg1) + ('name', 'ledger', 3) + 3][address(msg.sender)].field_256 = 0
                            if uint8(s) != 4:
                                call msg.sender with:
                                   value ledger[arg1].field_1536 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit PlayerWon(ledger[arg1].field_1536);
                                call stor0 with:
                                   value ledger[arg1].field_1536 / 100 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                call msg.sender with:
                                   value ledger[arg1].field_1024 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit PlayerWon(ledger[arg1].field_1024);
                                call stor0 with:
                                   value ledger[arg1].field_1024 / 100 wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require arg1 < ledger.length
                            stor[(10 * arg1) + ('name', 'ledger', 3) + 3][address(msg.sender)].field_256 = 0
                            if uint8(s) != 4:
                                call msg.sender with:
                                   value ledger[arg1].field_1280 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit PlayerWon(ledger[arg1].field_1280);
                                call stor0 with:
                                   value ledger[arg1].field_1280 / 100 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                call msg.sender with:
                                   value ledger[arg1].field_1024 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit PlayerWon(ledger[arg1].field_1024);
                                call stor0 with:
                                   value ledger[arg1].field_1024 / 100 wei
                                     gas 2300 * is_zero(value) wei
                else:
                    require arg1 < ledger.length
                    if uint8(s) != 2:
                        if uint8(s) != 3:
                            stor[(10 * arg1) + ('name', 'ledger', 3) + 3][address(msg.sender)].field_256 = 0
                            if uint8(s) != 4:
                                call msg.sender with:
                                   value ledger[arg1].field_1792 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit PlayerWon(ledger[arg1].field_1792);
                                call stor0 with:
                                   value ledger[arg1].field_1792 / 100 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                call msg.sender with:
                                   value ledger[arg1].field_1024 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit PlayerWon(ledger[arg1].field_1024);
                                call stor0 with:
                                   value ledger[arg1].field_1024 / 100 wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require arg1 < ledger.length
                            stor[(10 * arg1) + ('name', 'ledger', 3) + 3][address(msg.sender)].field_256 = 0
                            if uint8(s) != 4:
                                call msg.sender with:
                                   value ledger[arg1].field_1280 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit PlayerWon(ledger[arg1].field_1280);
                                call stor0 with:
                                   value ledger[arg1].field_1280 / 100 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                call msg.sender with:
                                   value ledger[arg1].field_1024 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit PlayerWon(ledger[arg1].field_1024);
                                call stor0 with:
                                   value ledger[arg1].field_1024 / 100 wei
                                     gas 2300 * is_zero(value) wei
                    else:
                        require arg1 < ledger.length
                        if uint8(s) != 3:
                            stor[(10 * arg1) + ('name', 'ledger', 3) + 3][address(msg.sender)].field_256 = 0
                            if uint8(s) != 4:
                                call msg.sender with:
                                   value ledger[arg1].field_1536 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit PlayerWon(ledger[arg1].field_1536);
                                call stor0 with:
                                   value ledger[arg1].field_1536 / 100 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                call msg.sender with:
                                   value ledger[arg1].field_1024 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit PlayerWon(ledger[arg1].field_1024);
                                call stor0 with:
                                   value ledger[arg1].field_1024 / 100 wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require arg1 < ledger.length
                            stor[(10 * arg1) + ('name', 'ledger', 3) + 3][address(msg.sender)].field_256 = 0
                            if uint8(s) != 4:
                                call msg.sender with:
                                   value ledger[arg1].field_1280 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit PlayerWon(ledger[arg1].field_1280);
                                call stor0 with:
                                   value ledger[arg1].field_1280 / 100 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                call msg.sender with:
                                   value ledger[arg1].field_1024 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit PlayerWon(ledger[arg1].field_1024);
                                call stor0 with:
                                   value ledger[arg1].field_1024 / 100 wei
                                     gas 2300 * is_zero(value) wei
            if uint8(t + 1) != 4:
                require uint8(idx) < 4
                require uint8(t + 1) < 4
                if mem[(32 * uint8(t + 1)) + 383 len 1] != mem[(32 * uint8(idx)) + 255 len 1]:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = s + 1
                continue 
        require uint8(s)
        require arg1 < ledger.length
        if uint8(s) != 1:
            if uint8(s) != 2:
                if uint8(s) != 3:
                    stor[(10 * arg1) + ('name', 'ledger', 3) + 3][address(msg.sender)].field_256 = 0
                    if uint8(s) != 4:
                        call msg.sender with:
                             gas 2300 wei
                        require ext_call.success
                        emit PlayerWon(0);
                        call stor0 with:
                             gas 2300 wei
                    else:
                        call msg.sender with:
                           value ledger[arg1].field_1024 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit PlayerWon(ledger[arg1].field_1024);
                        call stor0 with:
                           value ledger[arg1].field_1024 / 100 wei
                             gas 2300 * is_zero(value) wei
                else:
                    require arg1 < ledger.length
                    stor[(10 * arg1) + ('name', 'ledger', 3) + 3][address(msg.sender)].field_256 = 0
                    if uint8(s) != 4:
                        call msg.sender with:
                           value ledger[arg1].field_1280 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit PlayerWon(ledger[arg1].field_1280);
                        call stor0 with:
                           value ledger[arg1].field_1280 / 100 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        call msg.sender with:
                           value ledger[arg1].field_1024 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit PlayerWon(ledger[arg1].field_1024);
                        call stor0 with:
                           value ledger[arg1].field_1024 / 100 wei
                             gas 2300 * is_zero(value) wei
            else:
                require arg1 < ledger.length
                if uint8(s) != 3:
                    stor[(10 * arg1) + ('name', 'ledger', 3) + 3][address(msg.sender)].field_256 = 0
                    if uint8(s) != 4:
                        call msg.sender with:
                           value ledger[arg1].field_1536 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit PlayerWon(ledger[arg1].field_1536);
                        call stor0 with:
                           value ledger[arg1].field_1536 / 100 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        call msg.sender with:
                           value ledger[arg1].field_1024 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit PlayerWon(ledger[arg1].field_1024);
                        call stor0 with:
                           value ledger[arg1].field_1024 / 100 wei
                             gas 2300 * is_zero(value) wei
                else:
                    require arg1 < ledger.length
                    stor[(10 * arg1) + ('name', 'ledger', 3) + 3][address(msg.sender)].field_256 = 0
                    if uint8(s) != 4:
                        call msg.sender with:
                           value ledger[arg1].field_1280 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit PlayerWon(ledger[arg1].field_1280);
                        call stor0 with:
                           value ledger[arg1].field_1280 / 100 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        call msg.sender with:
                           value ledger[arg1].field_1024 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit PlayerWon(ledger[arg1].field_1024);
                        call stor0 with:
                           value ledger[arg1].field_1024 / 100 wei
                             gas 2300 * is_zero(value) wei
        else:
            require arg1 < ledger.length
            if uint8(s) != 2:
                if uint8(s) != 3:
                    stor[(10 * arg1) + ('name', 'ledger', 3) + 3][address(msg.sender)].field_256 = 0
                    if uint8(s) != 4:
                        call msg.sender with:
                           value ledger[arg1].field_1792 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit PlayerWon(ledger[arg1].field_1792);
                        call stor0 with:
                           value ledger[arg1].field_1792 / 100 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        call msg.sender with:
                           value ledger[arg1].field_1024 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit PlayerWon(ledger[arg1].field_1024);
                        call stor0 with:
                           value ledger[arg1].field_1024 / 100 wei
                             gas 2300 * is_zero(value) wei
                else:
                    require arg1 < ledger.length
                    stor[(10 * arg1) + ('name', 'ledger', 3) + 3][address(msg.sender)].field_256 = 0
                    if uint8(s) != 4:
                        call msg.sender with:
                           value ledger[arg1].field_1280 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit PlayerWon(ledger[arg1].field_1280);
                        call stor0 with:
                           value ledger[arg1].field_1280 / 100 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        call msg.sender with:
                           value ledger[arg1].field_1024 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit PlayerWon(ledger[arg1].field_1024);
                        call stor0 with:
                           value ledger[arg1].field_1024 / 100 wei
                             gas 2300 * is_zero(value) wei
            else:
                require arg1 < ledger.length
                if uint8(s) != 3:
                    stor[(10 * arg1) + ('name', 'ledger', 3) + 3][address(msg.sender)].field_256 = 0
                    if uint8(s) != 4:
                        call msg.sender with:
                           value ledger[arg1].field_1536 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit PlayerWon(ledger[arg1].field_1536);
                        call stor0 with:
                           value ledger[arg1].field_1536 / 100 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        call msg.sender with:
                           value ledger[arg1].field_1024 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit PlayerWon(ledger[arg1].field_1024);
                        call stor0 with:
                           value ledger[arg1].field_1024 / 100 wei
                             gas 2300 * is_zero(value) wei
                else:
                    require arg1 < ledger.length
                    stor[(10 * arg1) + ('name', 'ledger', 3) + 3][address(msg.sender)].field_256 = 0
                    if uint8(s) != 4:
                        call msg.sender with:
                           value ledger[arg1].field_1280 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit PlayerWon(ledger[arg1].field_1280);
                        call stor0 with:
                           value ledger[arg1].field_1280 / 100 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        call msg.sender with:
                           value ledger[arg1].field_1024 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit PlayerWon(ledger[arg1].field_1024);
                        call stor0 with:
                           value ledger[arg1].field_1024 / 100 wei
                             gas 2300 * is_zero(value) wei
    require uint8(s)
    require arg1 < ledger.length
    if uint8(s) != 1:
        if uint8(s) != 2:
            if uint8(s) != 3:
                stor[(10 * arg1) + ('name', 'ledger', 3) + 3][address(msg.sender)].field_256 = 0
                if uint8(s) != 4:
                    call msg.sender with:
                         gas 2300 wei
                    require ext_call.success
                    emit PlayerWon(0);
                    call stor0 with:
                         gas 2300 wei
                else:
                    call msg.sender with:
                       value ledger[arg1].field_1024 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit PlayerWon(ledger[arg1].field_1024);
                    call stor0 with:
                       value ledger[arg1].field_1024 / 100 wei
                         gas 2300 * is_zero(value) wei
            else:
                require arg1 < ledger.length
                stor[(10 * arg1) + ('name', 'ledger', 3) + 3][address(msg.sender)].field_256 = 0
                if uint8(s) != 4:
                    call msg.sender with:
                       value ledger[arg1].field_1280 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit PlayerWon(ledger[arg1].field_1280);
                    call stor0 with:
                       value ledger[arg1].field_1280 / 100 wei
                         gas 2300 * is_zero(value) wei
                else:
                    call msg.sender with:
                       value ledger[arg1].field_1024 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit PlayerWon(ledger[arg1].field_1024);
                    call stor0 with:
                       value ledger[arg1].field_1024 / 100 wei
                         gas 2300 * is_zero(value) wei
        else:
            require arg1 < ledger.length
            if uint8(s) != 3:
                stor[(10 * arg1) + ('name', 'ledger', 3) + 3][address(msg.sender)].field_256 = 0
                if uint8(s) != 4:
                    call msg.sender with:
                       value ledger[arg1].field_1536 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit PlayerWon(ledger[arg1].field_1536);
                    call stor0 with:
                       value ledger[arg1].field_1536 / 100 wei
                         gas 2300 * is_zero(value) wei
                else:
                    call msg.sender with:
                       value ledger[arg1].field_1024 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit PlayerWon(ledger[arg1].field_1024);
                    call stor0 with:
                       value ledger[arg1].field_1024 / 100 wei
                         gas 2300 * is_zero(value) wei
            else:
                require arg1 < ledger.length
                stor[(10 * arg1) + ('name', 'ledger', 3) + 3][address(msg.sender)].field_256 = 0
                if uint8(s) != 4:
                    call msg.sender with:
                       value ledger[arg1].field_1280 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit PlayerWon(ledger[arg1].field_1280);
                    call stor0 with:
                       value ledger[arg1].field_1280 / 100 wei
                         gas 2300 * is_zero(value) wei
                else:
                    call msg.sender with:
                       value ledger[arg1].field_1024 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit PlayerWon(ledger[arg1].field_1024);
                    call stor0 with:
                       value ledger[arg1].field_1024 / 100 wei
                         gas 2300 * is_zero(value) wei
    else:
        require arg1 < ledger.length
        if uint8(s) != 2:
            if uint8(s) != 3:
                stor[(10 * arg1) + ('name', 'ledger', 3) + 3][address(msg.sender)].field_256 = 0
                if uint8(s) != 4:
                    call msg.sender with:
                       value ledger[arg1].field_1792 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit PlayerWon(ledger[arg1].field_1792);
                    call stor0 with:
                       value ledger[arg1].field_1792 / 100 wei
                         gas 2300 * is_zero(value) wei
                else:
                    call msg.sender with:
                       value ledger[arg1].field_1024 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit PlayerWon(ledger[arg1].field_1024);
                    call stor0 with:
                       value ledger[arg1].field_1024 / 100 wei
                         gas 2300 * is_zero(value) wei
            else:
                require arg1 < ledger.length
                stor[(10 * arg1) + ('name', 'ledger', 3) + 3][address(msg.sender)].field_256 = 0
                if uint8(s) != 4:
                    call msg.sender with:
                       value ledger[arg1].field_1280 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit PlayerWon(ledger[arg1].field_1280);
                    call stor0 with:
                       value ledger[arg1].field_1280 / 100 wei
                         gas 2300 * is_zero(value) wei
                else:
                    call msg.sender with:
                       value ledger[arg1].field_1024 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit PlayerWon(ledger[arg1].field_1024);
                    call stor0 with:
                       value ledger[arg1].field_1024 / 100 wei
                         gas 2300 * is_zero(value) wei
        else:
            require arg1 < ledger.length
            if uint8(s) != 3:
                stor[(10 * arg1) + ('name', 'ledger', 3) + 3][address(msg.sender)].field_256 = 0
                if uint8(s) != 4:
                    call msg.sender with:
                       value ledger[arg1].field_1536 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit PlayerWon(ledger[arg1].field_1536);
                    call stor0 with:
                       value ledger[arg1].field_1536 / 100 wei
                         gas 2300 * is_zero(value) wei
                else:
                    call msg.sender with:
                       value ledger[arg1].field_1024 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit PlayerWon(ledger[arg1].field_1024);
                    call stor0 with:
                       value ledger[arg1].field_1024 / 100 wei
                         gas 2300 * is_zero(value) wei
            else:
                require arg1 < ledger.length
                stor[(10 * arg1) + ('name', 'ledger', 3) + 3][address(msg.sender)].field_256 = 0
                if uint8(s) != 4:
                    call msg.sender with:
                       value ledger[arg1].field_1280 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit PlayerWon(ledger[arg1].field_1280);
                    call stor0 with:
                       value ledger[arg1].field_1280 / 100 wei
                         gas 2300 * is_zero(value) wei
                else:
                    call msg.sender with:
                       value ledger[arg1].field_1024 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit PlayerWon(ledger[arg1].field_1024);
                    call stor0 with:
                       value ledger[arg1].field_1024 / 100 wei
                         gas 2300 * is_zero(value) wei
}



}
