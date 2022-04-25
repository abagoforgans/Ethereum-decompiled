contract main {


// =======================  Init code  ======================


array of struct stor1;
uint256 stor3;
address stor7;
address stor8;

function _fallback() payable {
    stor3 = -1
    require not msg.value
    stor1.length = 1
    if not stor1.length <= 1:
        idx = 2
        while 2 * stor1.length > idx:
            stor1[idx].field_0 = 0
            stor1[idx].field_256 = 0
            idx = idx + 2
            continue 
    stor7 = msg.sender
    stor8 = msg.sender
    return code.data[203 len 4282]
}



// =====================  Runtime code  =====================


const name = 'SCIENCE BLOCKCHAIN'

const decimals = 0

const symbol = 'SCI'


uint256 totalSupply;
array of struct totalSupplyAt;
mapping of struct balanceOf;
uint8 stor3; offset 160
uint128 stor3; offset 168
address stor3;
uint256 stor3;
mapping of address stor4;
mapping of uint256 stor5;
mapping of uint256 allowance;
uint8 stor7; offset 160
address stor7;
address stor8;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)].field_0
}

function totalSupplyAt(uint256 arg1) {
    require arg1 > 0
    require arg1 < totalSupplyAt.length
    return totalSupplyAt[arg1].field_0
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_618765d8(?) {
    require address(stor7.field_0) == msg.sender
    stor8 = arg1
}

function setOwner(address arg1) {
    require address(stor7.field_0) == msg.sender
    address(stor7.field_0) = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function freezeTransfers() {
    require address(stor7.field_0) == msg.sender
    if not uint8(stor7.field_160):
        uint8(stor7.field_160) = 1
        emit Freeze()
}

function unfreezeTransfers() {
    require address(stor7.field_0) == msg.sender
    if uint8(stor7.field_160):
        uint8(stor7.field_160) = 0
        emit Unfreeze()
}

function sub_9d9bd2b4(?) {
    require uint256(stor4[address(arg1)])
    if uint256(stor4[address(arg1)]) != -1:
        return uint256(stor4[address(arg1)]) != -1, address(stor4[address(arg1)])
    return uint256(stor4[address(arg1)]) != -1, 0
}

function sub_584fc102(?) {
    require arg1 > 0
    require arg1 < totalSupplyAt.length
    if totalSupplyAt[arg1].field_256 != -1:
        return totalSupplyAt[arg1].field_256 != -1, totalSupplyAt[arg1].field_256
    return totalSupplyAt[arg1].field_256 != -1, 0
}

function balanceOfAt(address arg1, uint256 arg2) {
    require arg2 > 0
    require arg2 < totalSupplyAt.length
    if arg2 > balanceOf[address(arg1)].field_256:
        return balanceOf[address(arg1)].field_0
    s = 0
    s = 0
    idx = arg2
    while idx > 0:
        mem[0] = idx
        mem[32] = sha3(s << 248, sha3(address(arg1), 5))
        if not stor5[address(arg1)][s << 248][idx]:
            s = stor5[address(arg1)][s << 248][idx]
            s = s + 1
            idx = idx / 2
            continue 
        return stor5[address(arg1)][s << 248][idx]
    return 0
}

function snapshot() {
    require stor8 == msg.sender
    totalSupplyAt.length++
    if not totalSupplyAt.length <= totalSupplyAt.length + 1:
        idx = 2 * totalSupplyAt.length + 1
        while 2 * totalSupplyAt.length > idx:
            totalSupplyAt[idx].field_0 = 0
            totalSupplyAt[idx].field_256 = 0
            idx = idx + 2
            continue 
    require totalSupplyAt.length < totalSupplyAt.length
    totalSupplyAt[totalSupplyAt.length].field_0 = totalSupply
    totalSupplyAt[totalSupplyAt.length].field_256 = uint256(stor3.field_0)
    emit Snapshot(totalSupplyAt.length);
    return totalSupplyAt.length
}

function burnTokens(uint256 arg1) {
    if arg1 > balanceOf[address(msg.sender)].field_0:
        return 0
    if arg1 > 0:
        mem[0] = msg.sender
        mem[32] = 2
        require balanceOf[address(msg.sender)].field_256 <= -2
        if totalSupplyAt.length > balanceOf[address(msg.sender)].field_256 + 1:
            if balanceOf[address(msg.sender)].field_0 > 0:
                require balanceOf[address(msg.sender)].field_256 + 1 > 0
                require totalSupplyAt.length >= balanceOf[address(msg.sender)].field_256 + 1
                require balanceOf[address(msg.sender)].field_0 > 0
                s = 0
                t = totalSupplyAt.length
                u = totalSupplyAt[sha3(mem[0 len 64])].field_0 + 1
                while u < t:
                    if bool(u) != 1:
                        if bool(t) != 1:
                            s = s + 1
                            t = t / 2
                            u = u / 2
                            continue 
                        mem[0] = t - 1
                        mem[32] = sha3(s << 248, sha3(address(msg.sender), 5))
                        stor5[address(msg.sender)][s << 248][t - 1] = balanceOf[address(msg.sender)].field_0
                        s = s + 1
                        t = t - 1 / 2
                        u = u / 2
                        continue 
                    mem[0] = u
                    mem[32] = sha3(s << 248, sha3(address(msg.sender), 5))
                    stor5[address(msg.sender)][s << 248][u] = balanceOf[address(msg.sender)].field_0
                    if bool(t) != 1:
                        s = s + 1
                        t = t / 2
                        u = u + 1 / 2
                        continue 
                    mem[0] = t - 1
                    mem[32] = sha3(s << 248, sha3(address(msg.sender), 5))
                    stor5[address(msg.sender)][s << 248][t - 1] = balanceOf[address(msg.sender)].field_0
                    s = s + 1
                    t = t - 1 / 2
                    u = u + 1 / 2
                    continue 
            require totalSupplyAt.length >= 1
            balanceOf[address(msg.sender)].field_256 = totalSupplyAt.length - 1
        require balanceOf[address(msg.sender)].field_0 >= arg1
        balanceOf[address(msg.sender)].field_0 -= arg1
        require totalSupply >= arg1
        totalSupply -= arg1
    return 1
}

function createTokens(uint256 arg1) {
    require address(stor7.field_0) == msg.sender
    require -1 >= totalSupply
    if arg1 > -totalSupply - 1:
        return 0
    if arg1 > 0:
        if not uint256(stor4[address(msg.sender)]):
            uint256(stor4[address(msg.sender)]) = uint256(stor3.field_0)
            address(stor3.field_0) = msg.sender
            uint8(stor3.field_160) = 1
            Mask(88, 0, stor3.field_168) = 0
        mem[0] = msg.sender
        mem[32] = 2
        require balanceOf[address(msg.sender)].field_256 <= -2
        if totalSupplyAt.length > balanceOf[address(msg.sender)].field_256 + 1:
            if balanceOf[address(msg.sender)].field_0 > 0:
                require balanceOf[address(msg.sender)].field_256 + 1 > 0
                require totalSupplyAt.length >= balanceOf[address(msg.sender)].field_256 + 1
                require balanceOf[address(msg.sender)].field_0 > 0
                s = 0
                t = totalSupplyAt.length
                u = totalSupplyAt[sha3(mem[0 len 64])].field_0 + 1
                while u < t:
                    if bool(u) != 1:
                        if bool(t) != 1:
                            s = s + 1
                            t = t / 2
                            u = u / 2
                            continue 
                        mem[0] = t - 1
                        mem[32] = sha3(s << 248, sha3(address(msg.sender), 5))
                        stor5[address(msg.sender)][s << 248][t - 1] = balanceOf[address(msg.sender)].field_0
                        s = s + 1
                        t = t - 1 / 2
                        u = u / 2
                        continue 
                    mem[0] = u
                    mem[32] = sha3(s << 248, sha3(address(msg.sender), 5))
                    stor5[address(msg.sender)][s << 248][u] = balanceOf[address(msg.sender)].field_0
                    if bool(t) != 1:
                        s = s + 1
                        t = t / 2
                        u = u + 1 / 2
                        continue 
                    mem[0] = t - 1
                    mem[32] = sha3(s << 248, sha3(address(msg.sender), 5))
                    stor5[address(msg.sender)][s << 248][t - 1] = balanceOf[address(msg.sender)].field_0
                    s = s + 1
                    t = t - 1 / 2
                    u = u + 1 / 2
                    continue 
            require totalSupplyAt.length >= 1
            balanceOf[address(msg.sender)].field_256 = totalSupplyAt.length - 1
        require balanceOf[address(msg.sender)].field_0 <= -arg1 - 1
        balanceOf[address(msg.sender)].field_0 += arg1
        require totalSupply <= -arg1 - 1
        totalSupply += arg1
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if uint8(stor7.field_160):
        return 0
    if arg2 > balanceOf[address(msg.sender)].field_0:
        return 0
    if arg2 > 0:
        if arg1 != msg.sender:
            if not uint256(stor4[address(arg1)]):
                uint256(stor4[address(arg1)]) = uint256(stor3.field_0)
                address(stor3.field_0) = arg1
                uint8(stor3.field_160) = 1
                Mask(88, 0, stor3.field_168) = 0
            mem[0] = msg.sender
            mem[32] = 2
            require balanceOf[address(msg.sender)].field_256 <= -2
            if totalSupplyAt.length > balanceOf[address(msg.sender)].field_256 + 1:
                if balanceOf[address(msg.sender)].field_0 > 0:
                    require balanceOf[address(msg.sender)].field_256 + 1 > 0
                    require totalSupplyAt.length >= balanceOf[address(msg.sender)].field_256 + 1
                    require balanceOf[address(msg.sender)].field_0 > 0
                    s = 0
                    t = totalSupplyAt.length
                    u = totalSupplyAt[sha3(mem[0 len 64])].field_0 + 1
                    while u < t:
                        if bool(u) != 1:
                            if bool(t) != 1:
                                s = s + 1
                                t = t / 2
                                u = u / 2
                                continue 
                            mem[0] = t - 1
                            mem[32] = sha3(s << 248, sha3(address(msg.sender), 5))
                            stor5[address(msg.sender)][s << 248][t - 1] = balanceOf[address(msg.sender)].field_0
                            s = s + 1
                            t = t - 1 / 2
                            u = u / 2
                            continue 
                        mem[0] = u
                        mem[32] = sha3(s << 248, sha3(address(msg.sender), 5))
                        stor5[address(msg.sender)][s << 248][u] = balanceOf[address(msg.sender)].field_0
                        if bool(t) != 1:
                            s = s + 1
                            t = t / 2
                            u = u + 1 / 2
                            continue 
                        mem[0] = t - 1
                        mem[32] = sha3(s << 248, sha3(address(msg.sender), 5))
                        stor5[address(msg.sender)][s << 248][t - 1] = balanceOf[address(msg.sender)].field_0
                        s = s + 1
                        t = t - 1 / 2
                        u = u + 1 / 2
                        continue 
                require totalSupplyAt.length >= 1
                balanceOf[address(msg.sender)].field_256 = totalSupplyAt.length - 1
            mem[0] = arg1
            mem[32] = 2
            require balanceOf[address(arg1)].field_256 <= -2
            if totalSupplyAt.length > balanceOf[address(arg1)].field_256 + 1:
                if balanceOf[address(arg1)].field_0 > 0:
                    require balanceOf[address(arg1)].field_256 + 1 > 0
                    require totalSupplyAt.length >= balanceOf[address(arg1)].field_256 + 1
                    require balanceOf[address(arg1)].field_0 > 0
                    s = 0
                    t = totalSupplyAt.length
                    u = totalSupplyAt[sha3(mem[0 len 64])].field_0 + 1
                    while u < t:
                        if bool(u) != 1:
                            if bool(t) != 1:
                                s = s + 1
                                t = t / 2
                                u = u / 2
                                continue 
                            mem[0] = t - 1
                            mem[32] = sha3(s << 248, sha3(address(arg1), 5))
                            stor5[address(arg1)][s << 248][t - 1] = balanceOf[address(arg1)].field_0
                            s = s + 1
                            t = t - 1 / 2
                            u = u / 2
                            continue 
                        mem[0] = u
                        mem[32] = sha3(s << 248, sha3(address(arg1), 5))
                        stor5[address(arg1)][s << 248][u] = balanceOf[address(arg1)].field_0
                        if bool(t) != 1:
                            s = s + 1
                            t = t / 2
                            u = u + 1 / 2
                            continue 
                        mem[0] = t - 1
                        mem[32] = sha3(s << 248, sha3(address(arg1), 5))
                        stor5[address(arg1)][s << 248][t - 1] = balanceOf[address(arg1)].field_0
                        s = s + 1
                        t = t - 1 / 2
                        u = u + 1 / 2
                        continue 
                require totalSupplyAt.length >= 1
                balanceOf[address(arg1)].field_256 = totalSupplyAt.length - 1
            require balanceOf[address(msg.sender)].field_0 >= arg2
            balanceOf[address(msg.sender)].field_0 -= arg2
            require balanceOf[arg1].field_0 <= -arg2 - 1
            balanceOf[address(arg1)].field_0 = arg2 + balanceOf[arg1].field_0
            emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if uint8(stor7.field_160):
        return 0
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        return 0
    if arg3 > balanceOf[address(arg1)].field_0:
        return 0
    if arg3 > 0:
        if arg1 != arg2:
            if not uint256(stor4[address(arg2)]):
                uint256(stor4[address(arg2)]) = uint256(stor3.field_0)
                address(stor3.field_0) = arg2
                uint8(stor3.field_160) = 1
                Mask(88, 0, stor3.field_168) = 0
            mem[0] = arg1
            mem[32] = 2
            require balanceOf[address(arg1)].field_256 <= -2
            if totalSupplyAt.length > balanceOf[address(arg1)].field_256 + 1:
                if balanceOf[address(arg1)].field_0 > 0:
                    require balanceOf[address(arg1)].field_256 + 1 > 0
                    require totalSupplyAt.length >= balanceOf[address(arg1)].field_256 + 1
                    require balanceOf[address(arg1)].field_0 > 0
                    s = 0
                    t = totalSupplyAt.length
                    u = totalSupplyAt[sha3(mem[0 len 64])].field_0 + 1
                    while u < t:
                        if bool(u) != 1:
                            if bool(t) != 1:
                                s = s + 1
                                t = t / 2
                                u = u / 2
                                continue 
                            mem[0] = t - 1
                            mem[32] = sha3(s << 248, sha3(address(arg1), 5))
                            stor5[address(arg1)][s << 248][t - 1] = balanceOf[address(arg1)].field_0
                            s = s + 1
                            t = t - 1 / 2
                            u = u / 2
                            continue 
                        mem[0] = u
                        mem[32] = sha3(s << 248, sha3(address(arg1), 5))
                        stor5[address(arg1)][s << 248][u] = balanceOf[address(arg1)].field_0
                        if bool(t) != 1:
                            s = s + 1
                            t = t / 2
                            u = u + 1 / 2
                            continue 
                        mem[0] = t - 1
                        mem[32] = sha3(s << 248, sha3(address(arg1), 5))
                        stor5[address(arg1)][s << 248][t - 1] = balanceOf[address(arg1)].field_0
                        s = s + 1
                        t = t - 1 / 2
                        u = u + 1 / 2
                        continue 
                require totalSupplyAt.length >= 1
                balanceOf[address(arg1)].field_256 = totalSupplyAt.length - 1
            mem[0] = arg2
            mem[32] = 2
            require balanceOf[address(arg2)].field_256 <= -2
            if totalSupplyAt.length > balanceOf[address(arg2)].field_256 + 1:
                if balanceOf[address(arg2)].field_0 > 0:
                    require balanceOf[address(arg2)].field_256 + 1 > 0
                    require totalSupplyAt.length >= balanceOf[address(arg2)].field_256 + 1
                    require balanceOf[address(arg2)].field_0 > 0
                    s = 0
                    t = totalSupplyAt.length
                    u = totalSupplyAt[sha3(mem[0 len 64])].field_0 + 1
                    while u < t:
                        if bool(u) != 1:
                            if bool(t) != 1:
                                s = s + 1
                                t = t / 2
                                u = u / 2
                                continue 
                            mem[0] = t - 1
                            mem[32] = sha3(s << 248, sha3(address(arg2), 5))
                            stor5[address(arg2)][s << 248][t - 1] = balanceOf[address(arg2)].field_0
                            s = s + 1
                            t = t - 1 / 2
                            u = u / 2
                            continue 
                        mem[0] = u
                        mem[32] = sha3(s << 248, sha3(address(arg2), 5))
                        stor5[address(arg2)][s << 248][u] = balanceOf[address(arg2)].field_0
                        if bool(t) != 1:
                            s = s + 1
                            t = t / 2
                            u = u + 1 / 2
                            continue 
                        mem[0] = t - 1
                        mem[32] = sha3(s << 248, sha3(address(arg2), 5))
                        stor5[address(arg2)][s << 248][t - 1] = balanceOf[address(arg2)].field_0
                        s = s + 1
                        t = t - 1 / 2
                        u = u + 1 / 2
                        continue 
                require totalSupplyAt.length >= 1
                balanceOf[address(arg2)].field_256 = totalSupplyAt.length - 1
            require balanceOf[address(arg1)].field_0 >= arg3
            balanceOf[address(arg1)].field_0 -= arg3
            require balanceOf[arg2].field_0 <= -arg3 - 1
            balanceOf[address(arg2)].field_0 = arg3 + balanceOf[arg2].field_0
            emit Transfer(arg3, arg1, arg2);
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    return 1
}



}
